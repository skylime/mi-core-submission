mi-core-submission
==================

Please refer to https://github.com/joyent/mibe for use of this repo.

## mdata variables

- `api_redis_addr`: ip or hostname of api server
- `api_redis_key`: base64 encoded spipe key for api server
- `mx_ssl`: ssl cert, key and CA for smtp in pem format
- `domainkey`: Default Domainkey for DKIM
- `munin_allow`: hosts that are allowed to connect to munin, separated by space
- `munin_deny`: hosts that are explicit not allowed, separated by space

## services

- `25/tcp`: smtp
- `465/tcp`: smtp encrypted
- `587/tcp`: smtp encrypted
