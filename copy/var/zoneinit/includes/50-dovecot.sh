# Only enable if mdata variables are set correctly
if mdata-get proxy_mbox_host 1>/dev/null 2>&1; then

	/usr/sbin/svcadm enable svc:/pkgsrc/dovecot:default

	# configure logadm
	logadm -w /var/log/dovecot/main -p 1d -C 10 -N -o dovecot -g dovenull -m 640 -c
	logadm -w /var/log/dovecot/info -p 1d -C 10 -N -o dovecot -g dovenull -m 640 -c
	logadm -w /var/log/dovecot/debug -p 1d -C 10 -N -o dovecot -g dovenull -m 640 -c

	# Enable munin-plugin for dovecot
	ln -sf /opt/local/lib/munin/plugins/dovecot \
		/opt/local/etc/munin/plugins/dovecot
fi
