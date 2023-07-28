#!/bin/bash

OKAPI='http://localhost:9130'
TENANT='diku'
AUTHPATH='/bl-users/login'
TMPDIR='.okapi'
USER='diku_admin'
PASS='admin'

if [ ! -d $TMPDIR ]
  then
    mkdir .okapi
fi

echo $TENANT > ${TMPDIR}/tenant
echo $OKAPI > ${TMPDIR}/url
curl -w '\n' ${OKAPI}${AUTHPATH} \
  -H 'content-type: application/json' \
  -H "x-okapi-tenant: ${TENANT}" \
  -d "{\"username\":\"${USER}\",\"password\":\"${PASS}\"}" \
  -D ${TMPDIR}/headers

grep 'x-okapi-token' ${TMPDIR}/headers | cut -f 2 -d ' ' > ${TMPDIR}/token
