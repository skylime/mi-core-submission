#!/bin/bash
# Configure dovecot ssl certificates

if mdata-get proxy_mbox_ssl  1>/dev/null 2>&1 && \
   mdata-get proxy_mbox_host 1>/dev/null 2>&1; then

	# Configure ssl certificate and proxy only if required and mdata exists
	mdata-get proxy_mbox_ssl > /opt/local/etc/dovecot/ssl/dovecot.pem
	chmod 400 /opt/local/etc/dovecot/ssl/dovecot.pem

	cat > /opt/local/etc/dovecot/conf.d/core-proxy.conf.ext <<EOF
proxy=y host=$(mdata-get proxy_mbox_host) ssl=any-cert nopassword=y
EOF

fi
