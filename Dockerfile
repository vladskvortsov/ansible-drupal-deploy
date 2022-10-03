FROM ubuntu
MAINTAINER vladskvortsov

WORKDIR home/

COPY *.sh /home/

RUN bash drupal_install_nginx_no_db.sh

CMD ["nginx", "-g", "daemon off;"]

#"php-fpm", 


#RUN service php8.1-fpm start &&  service nginx start

