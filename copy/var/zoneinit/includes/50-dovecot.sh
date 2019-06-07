# Only enable if mdata variables are set correctly
if mdata-get proxy_mbox_host 1>/dev/null 2>&1; then
	cat > /opt/local/etc/dovecot/conf.d/core-proxy.conf.ext <<-EOF
		proxy=y host=$(mdata-get proxy_mbox_host) ssl=yes nopassword=y
	EOF

	/usr/sbin/svcadm enable svc:/pkgsrc/dovecot:default

	# Enable munin-plugin for dovecot
	ln -sf /opt/local/lib/munin/plugins/dovecot \
		/opt/local/etc/munin/plugins/dovecot
fi
