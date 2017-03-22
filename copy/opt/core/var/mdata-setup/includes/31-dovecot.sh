#!/bin/bash
# Configure dovecot proxy host

if mdata-get proxy_mbox_host 1>/dev/null 2>&1; then
	cat > /opt/local/etc/dovecot/conf.d/core-proxy.conf.ext <<EOF
proxy=y host=$(mdata-get proxy_mbox_host) ssl=yes nopassword=y
EOF
fi
