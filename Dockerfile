FROM centos

COPY oracle.tar.gz /usr/lib/
COPY remi.repo /etc/yum.repos.d/remi.repo

COPY entrypoint.sh /
COPY ./etc /etc

RUN LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib yum install -y --enablerepo=remi php55-php-fpm httpd mod_fcgid php55-php-oci8 php55-php-gd php55-php-bcmath php55-php-soap php55-php-intl php55-php-pecl-mongo php55-php-pdo libaio tar
RUN cd /usr/lib && tar xzvf oracle.tar.gz && rm oracle.tar.gz && echo 'export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib' > /etc/profile.d/oracle.sh

EXPOSE 80
CMD ["/entrypoint.sh"]
