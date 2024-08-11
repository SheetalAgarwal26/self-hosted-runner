FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get install -y apache2 php libapache2-mod-php

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2ctl"]

CMD ["-D", "FOREGROUND"]

WORKDIR /var/www/html

COPY index.html .
