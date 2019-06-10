# Only enable if mdata variables are set correctly
if mdata-get proxy_mbox_host 1>/dev/null 2>&1; then
	# Enable Proxy
	cat > /opt/local/etc/dovecot/conf.d/core-proxy.conf.ext <<-EOF
		proxy=y host=$(mdata-get proxy_mbox_host) ssl=yes nopassword=y
	EOF

	# If DH exists, place it on the file system
	if mdata-get submission_dh 1>/dev/null 2>&1; then
		mdata-get submission_dh > /opt/local/etc/dovecot/ssl/dh.pem

		gsed -i 's|^#ssl_dh|ssl_dh =</opt/local/etc/dovecot/ssl/dh.pem|g' \
			/opt/local/etc/dovecot/dovecot.conf
	fi

	/usr/sbin/svcadm enable svc:/pkgsrc/dovecot:default

	# Enable munin-plugin for dovecot
	ln -sf /opt/local/lib/munin/plugins/dovecot \
		/opt/local/etc/munin/plugins/dovecot
fi
