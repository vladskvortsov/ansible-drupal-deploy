FROM ubuntu

MAINTAINER vladskvortsov

WORKDIR home/

COPY drupal_install_nginx_no_db.sh /home/

RUN bash drupal_install_nginx_no_db.sh

CMD ["nginx", "-g", "daemon off;", "service", "php8.1-fpm", "start"]

#"php8.1-fpm", 


#RUN service php8.1-fpm start &&  service nginx start

