# This script will try to manage the ssl certificates for us, we support
# own ssl certificates, let's encrypt and selfsigned fallbacks for dev
# usage

# Request and manage SSL certificates
/opt/core/bin/ssl-generator.sh /opt/local/etc/exim/ssl submission_ssl exim svc:/pkgsrc/exim:default
/opt/core/bin/ssl-generator.sh /opt/local/etc/dovecot/ssl proxy_mbox_ssl dovecot svc:/pkgsrc/dovecot:default

# Fix permissions
chgrp mail /opt/local/etc/exim/ssl/exim.*
chgrp dovecot /opt/local/etc/dovecot/ssl/dovecot.*
