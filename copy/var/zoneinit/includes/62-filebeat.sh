if LOGSERVER_HOST=$(mdata-get logserver_host 2>/dev/null); then
  FILEBEAT_SERVICE='svc:/pkgsrc/filebeat:default'
  LOGSERVER_TOKEN=$(/opt/core/bin/mdata-create-password.sh -m logserver_token)
  HOSTNAME=$(hostname)

  log "Configure filebeat environment variables for the service"
  svccfg -s "${FILEBEAT_SERVICE}" setprop start/environment = \
    astring: '"HOSTNAME='${HOSTNAME}' LOGSERVER_HOST='${LOGSERVER_HOST}' LOGSERVER_TOKEN='${LOGSERVER_TOKEN}'"'
  svcadm refresh "${FILEBEAT_SERVICE}"
  svcadm enable "${FILEBEAT_SERVICE}"
fi

