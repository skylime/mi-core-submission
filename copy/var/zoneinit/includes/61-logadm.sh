# Configure logadm for different email services

logadm -w '/var/log/exim/main'        -A 7d -p 1d -c -N -o mail -g mail -m 640
logadm -w '/var/log/exim/reject'      -A 7d -p 1d -c -N -o mail -g mail -m 640

logadm -w '/var/log/redis/redis.log'  -A 7d -p 1d -c -N -o redis -g redis -m 640
logadm -w '/var/log/clamav/clamd.log' -A 7d -p 1d -c -N -o clamav -g clamav -m 640
logadm -w '/var/log/spamd/spamd.log'  -A 7d -p 1d -c -N -o spamd -g spamd -m 640

logadm -w '/var/log/dovecot/main'     -A 7d -p 1d -c -N -o dovecot -g dovecotnull -m 640
logadm -w '/var/log/dovecot/info'     -A 7d -p 1d -c -N -o dovecot -g dovecotnull -m 640
logadm -w '/var/log/dovecot/debug'    -A 7d -p 1d -c -N -o dovecot -g dovecotnull -m 640
