#!/usr/bin/env bash
# Generate Diffie-Hellman key if it doesn't exists or if the file is not valid

dovecot_dh_file="/opt/local/etc/dovecot/ssl/dh.pem"

# Verify via OpenSSL if file exists and is valid
if ! openssl dhparam -inform PEM -in ${dovecot_dh_file} -check -noout >/dev/null 2>&1; then
	# Generating new DH key file
	/opt/core/bin/doveadm-gen-dh.sh

	# Updating configuration file for dovecot
	gsed -i 's|^#ssl_dh.*|ssl_dh =</opt/local/etc/dovecot/ssl/dh.pem|g' \
		/opt/local/etc/dovecot/dovecot.conf

	# Restart devecot service to reload DH file
	svcadm restart svc:/pkgsrc/dovecot:default
fi
