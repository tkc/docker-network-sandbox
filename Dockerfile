FROM tkcdocker/laravel-mongo
MAINTAINER tkc <info@onga.jp>

RUN \
    apt-get install python-software-properties\
    add-apt-repository ppa:ondrej/php\
    sudo apt-get purge php5\
    sudo apt-get update\
    sudo apt-get install php\
    apt-get --purge autoremove \
    apt-get install php7.0-fpm php7.0-mysql php7.0-curl php7.0-gd php7.0-json php7.0-mcrypt php7.0-opcache php7.0-xml php7.0-readline php7.0-cli

RUN \
    php --version\
    service php7.0-fpm start


#ENV HOME /root

#RUN apt-get update && apt-get --no-install-recommends -y upgrade
#ADD http://repos.zend.com/zend-server/early-access/php7/php-7.0-latest-DEB-x86_64.tar.gz /tmp/php.tar.gz

#COPY build.sh /build.sh
#RUN chmod 755 /build.sh
#RUN /build.sh

#COPY gitclone.sh /etc/my_init.d/gitclone.sh
#RUN chmod 755 /etc/my_init.d/gitclone.sh
#
#RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
#
#EXPOSE 80 443
#
#VOLUME ["/data"]
#
#CMD ["/sbin/my_init"]
