FROM tkcdocker/laravel-mongo
MAINTAINER tkc <info@onga.jp>

RUN \
    yum -y install epel-release
wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
sudo rpm -Uvh remi-release-6*.rpm
sudo yum -y install  --enablerepo=remi --enablerepo=remi-php70 php

RUN \
    php --version\
    service php7.0-fpm start

#php70-runtime-1.0-1.el6.remi.x86_64
#php70-php-common-7.0.4-1.el6.remi.x86_64
#php70-php-7.0.4-1.el6.remi.x86_64
#php70-php-bcmath-7.0.4-1.el6.remi.x86_64
#php70-php-pdo-7.0.4-1.el6.remi.x86_64
#php70-php-gd-7.0.4-1.el6.remi.x86_64
#php70-php-fpm-7.0.4-1.el6.remi.x86_64
#php70-php-pear-1.10.1-4.el6.remi.noarch
#php70-php-pecl-redis-2.2.8-0.5.20160215git2887ad1.el6.remi.x86_64
#php70-php-json-7.0.4-1.el6.remi.x86_64
#php70-php-cli-7.0.4-1.el6.remi.x86_64
#php70-php-mbstring-7.0.4-1.el6.remi.x86_64
#php70-php-mysqlnd-7.0.4-1.el6.remi.x86_64
#php70-php-xml-7.0.4-1.el6.remi.x86_64
#php70-php-devel-7.0.4-1.el6.remi.x86_64
#php70-php-process-7.0.4-1.el6.remi.x86_64
#php70-php-pecl-igbinary-1.2.2-0.1.20151217git2b7c703.el6.remi.x86_64

# mkdir /etc/nginx/sites-enabled
# cd /etc/nginx/sites-enabled/
# ln -s /etc/nginx/sites-available/default default

