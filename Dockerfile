FROM ubuntu

LABEL maintainer="luis.bianconi@gmail.com"
LABEL description="Learning about Docker"

RUN apt update && \
apt install -y apache2 && \
apt clean

EXPOSE 80

ENTRYPOINT ["apachectl"]
CMD ["-D", "FOREGROUND"]
