FROM ubuntu
MAINTAINER vladskvortsov

WORKDIR home/

COPY *.sh /home/

RUN bash drupal_install_nginx_no_db.sh
