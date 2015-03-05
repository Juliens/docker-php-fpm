FROM centos

COPY oracle.tar.gz /usr/lib/
COPY remi.repo /etc/yum.repos.d/remi.repo

RUN yum install -y --enablerepo=remi php55-php-fpm httpd mod_fcgid php55-php-oci8 php55-php-gd php55-php-bcmath php55-php-soap php55-php-intl php55-php-pecl-mongo php55-php-pdo
