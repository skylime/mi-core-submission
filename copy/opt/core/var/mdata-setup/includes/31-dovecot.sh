#!/bin/bash
# Configure dovecot ssl certificates

mdata-get mbox_ssl > /opt/local/etc/dovecot/ssl/dovecot.pem
chmod 400 /opt/local/etc/dovecot/ssl/dovecot.pem

if mdata-get proxy_host 1>/dev/null 2>&1; then
	cat > /opt/local/etc/dovecot/conf.d/core-proxy.conf <<EOF
proxy=y host=$(mdata-get proxy_host) ssl=any-cert port=993 nopassword=y
EOF

fi
