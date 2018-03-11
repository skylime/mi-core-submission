# This script will try to manage the ssl certificates for us, we support
# own ssl certificates, let's encrypt and selfsigned fallbacks for dev
# usage

ssl() {
	local ssl_home=${1}
	local mdata_var=${2}
	local filename=${3}
	local service=${4}

	mkdir -p "${ssl_home}"

	if mdata-get ${mdata_var} 1>/dev/null 2>&1; then
		(
		umask 0027
		mdata-get ${mdata_var} > "${ssl_home}/${filename}.pem"
		# Split files for ${filename} usage
		openssl pkey -in "${ssl_home}/${filename}.pem" -out "${ssl_home}/${filename}.key"
		openssl crl2pkcs7 -nocrl -certfile "${ssl_home}/${filename}.pem" | \
			openssl pkcs7 -print_certs -out "${ssl_home}/${filename}.crt"
		)
	else
		# Try to generate let's encrypt ssl certificate for the hostname
		if /opt/core/bin/ssl-letsencrypt.sh 1>/dev/null; then
			local le_home='/opt/local/etc/letsencrypt/'
			local le_live="${le_home}live/$(hostname)/"
			# Workaround to copy correct files for ssl_home
			(
			umask 0027
			cat ${le_live}fullchain.pem > ${ssl_home}/${filename}.crt
			cat ${le_live}privkey.pem   > ${ssl_home}/${filename}.key
			)
			# Update renew-hook.sh
			grep -q '^#!/usr/bin/env bash' || echo '#!/usr/bin/env bash' > ${le_home}renew-hook.sh
			echo "cat ${le_live}fullchain.pem > ${ssl_home}/${filename}.crt" >> ${le_home}renew-hook.sh
			echo "cat ${le_live}privkey.pem   > ${ssl_home}/${filename}.key" >> ${le_home}renew-hook.sh
			[[ ! -z ${service} ]] && \
				echo "svcadm restart ${service}" >> ${le_home}renew-hook.sh
		else
			# Fallback to selfsigned ssl certificates
			/opt/core/bin/ssl-selfsigned.sh -d ${ssl_home} -f ${filename}
		fi
	fi
}

# Request and manage SSL certificates
ssl /opt/local/etc/exim/ssl submission_ssl exim svc:/pkgsrc/exim:default
ssl /opt/local/etc/dovecot/ssl proxy_mbox_ssl dovecot svc:/pkgsrc/dovecot:default

# Fix permissions
chgrp mail /opt/local/etc/exim/ssl/exim.*
chgrp dovecot /opt/local/etc/dovecot/ssl/dovecot.*
