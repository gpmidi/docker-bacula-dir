#!/bin/bash
set -e
set -x

cd /etc/bacula/ && bacula-dir -f -u ${BACULA_USER:-bacula} -g ${BACULA_GROUP:-bacula} -c /etc/bacula/bacula-dir.conf
