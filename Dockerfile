FROM openjdk:8-jdk

MAINTAINER David Riordan <dr@daveriordan.com>


RUN wget https://structr.org/repositories/releases/org/structr/structr/2.1.3/structr-2.1.3.deb
RUN dpkg -i structr-2.1.3.deb &&\
    rm structr-2.1.3.deb
EXPOSE 8082

VOLUME /usr/lib/structr

ADD start.sh /start.sh
CMD ["/start.sh"]
HEALTHCHECK CMD curl -f http://localhost:8082 || exit 1
