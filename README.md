mi-core-submission
==================

Please refer to https://github.com/joyent/mibe for use of this repo.

## mdata variables

- `api_redis_addr`: ip or hostname of api server, ip addresses requires squared
  brackets
- `api_redis_key`: base64 encoded spipe key for api server
- `submission_ssl`: ssl cert, key and CA for smtp in pem format
- `dkim_private_key`: Default Domainkey for DKIM

## services

- `25/tcp`: smtp
- `465/tcp`: smtp encrypted
- `587/tcp`: smtp encrypted
