#!/bin/sh
kill -9 $(ps -ef | grep php-fpm | grep -v tail | awk '{print $2}')
kill -9 $(ps -ef | grep httpd | grep -v tail | awk '{print $2}')
export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
httpd
php-fpm
