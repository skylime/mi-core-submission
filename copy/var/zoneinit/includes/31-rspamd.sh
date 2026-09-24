#!/usr/bin/env bash
# Configure und start rspamd

log "generate rspamd passwords"
RSPAMD_PASSWORD=$(/opt/core/bin/mdata-create-password.sh -m rspamd_pw)
RSPAMD_ENABLE_PASSWORD=$(/opt/core/bin/mdata-create-password.sh -m rspamd_enable_pw)

log "insert passwords to configuration file"
cat >> /opt/local/etc/rspamd/local.d/worker-controller.inc << EOF
password = "$(rspamadm pw --password "${RSPAMD_PASSWORD}")"
enable_password = "$(rspamadm pw --password "${RSPAMD_ENABLE_PASSWORD}")"
# Only allow connection with authentication
secure_ip = ""
EOF

log "provide correct munin configuration file"
cat >> /opt/local/etc/munin/plugin-conf.d/rspamd.conf << EOF
[rspamd_*]
  env.rspamd_password ${RSPAMD_PASSWORD}
EOF
svcadm restart svc:/pkgsrc/munin-node:default

log "enable rspamd service"
svcadm enable svc:/pkgsrc/rspamd:default
