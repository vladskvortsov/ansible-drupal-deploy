FROM ubuntu

MAINTAINER vladskvortsov

WORKDIR home/

COPY drupal_install_nginx_no_db.sh /home/

RUN bash drupal_install_nginx_no_db.sh

CMD /etc/init.d/php8.1-fpm restart && nginx -g "daemon off;"

