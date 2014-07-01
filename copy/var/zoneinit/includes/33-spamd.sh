# create cronjob for sa-update
CRON='0 10 * * * /opt/local/bin/sa-update && kill -SIGHUP $(cat /var/spamassassin/spamd.pid)'
(crontab -l spamd 2>/dev/null || true; echo "$CRON" ) | sort | uniq | sudo -u spamd crontab

# run sa-update once
sudo -u spamd /opt/local/bin/sa-update

# enable spamd service
/usr/sbin/svcadm enable svc:/network/spamd
