#!/bin/sh
if [ ! -z "$1" ]; then
    usermod -u $1 apache
    groupmod -g $1 apache
fi

export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
httpd
php-fpm
tail -f /var/log/httpd/localhost_*
