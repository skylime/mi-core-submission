#!/usr/bin/env bash
# Generate diffie hellman key if it's not available already.

[[ ${1} == '-f' ]] && force=1 || force=0

dovecot_dh_file="/opt/local/etc/dovecot/ssl/dh.pem"
dovecot_dh_size=4096

if [[ ! -s ${dovecot_dh_file} ]] || (( ${force} )); then
	if openssl dhparam -out ${dovecot_dh_file} ${dovecot_dh_size}; then
		cat ${dovecot_dh_file} | mdata-put submission_dh
	fi
fi
