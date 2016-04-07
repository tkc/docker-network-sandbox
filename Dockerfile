FROM million12/nginx-php
MAINTAINER tkc <info@test.jp>

RUN useradd 1000

RUN \
     pecl install igbinary \
     yum install -y vim \
     yum install epel-release \

#     yum -y install php-pecl-redis --enablerepo=epel \
#     yum install nginx
#     yum -y install epel-release
#     wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
#     sudo rpm -Uvh remi-release-6*.rpm
#     sudo yum -y install  --enablerepo=remi --enablerepo=remi-php70 php

#RUN \
#    php --version\
#    service php7.0-fpm start

