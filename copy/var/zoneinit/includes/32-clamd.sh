# run freshclamd once on provisioning
#/opt/local/bin/freshclam

# enable clamd service
/usr/sbin/svcadm enable svc:/pkgsrc/clamav:clamd
