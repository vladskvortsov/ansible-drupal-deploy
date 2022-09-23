FROM ubuntu
MAINTAINER vladskvortsov

WORKDIR home/

COPY *.sh /home/

RUN bash drupal_install_nginx_no_db.sh

CMD ["php8.1-fpm", "-D"]

CMD ["nginx", "-g", "daemon off;"]




#RUN service nginx start && service php8.1-fpm start
