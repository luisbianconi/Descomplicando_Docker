FROM ubuntu:18.04
LABEL maintainer="luis.bianconi@gmail.com"
RUN apt update && apt install nginx -y && rm -rf /var/lib/apt/lists/*
# rm -rf /var/lib/apt/lists/* -> Limpeza de Arquivos, deixar container menor e limpo
EXPOSE 80
COPY index.html /var/www/html
WORKDIR /var/www/html
ENV APP_VERSION=1.0.0
ENTRYPOINT ["nginx"]
# ENTRYPOINT -> Processo principal, sem ele container morre
CMD ["-g","daemon off;"]
# Parametros passados ao ENTRYPOINT, pode ser substituido se rodar com parametros no docker run
