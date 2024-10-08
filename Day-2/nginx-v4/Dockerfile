FROM ubuntu:18.04
LABEL maintainer="luis.bianconi@gmail.com"
RUN apt update && apt install nginx -y && rm -rf /var/lib/apt/lists/*
# rm -rf /var/lib/apt/lists/* -> Limpeza de Arquivos, deixar container menor e limpo
EXPOSE 80
ADD pipoca.tar /root/pipoca
# ADD é melhor que COPY porque ele pode baixar da internet (com a URL especificada ali, um arquivo e descompactar na pasta informada)
# Ele só descompacta .tar.gz se o arquivo estiver na máquina, se for baixado da internet ele só coloca lá.
COPY index.html /var/www/html
WORKDIR /var/www/html
ENV APP_VERSION=1.0.0
ENTRYPOINT ["nginx"]
# ENTRYPOINT -> Processo principal, sem ele container morre
CMD ["-g","daemon off;"]
# Parametros passados ao ENTRYPOINT, pode ser substituido se rodar com parametros no docker run
HEALTHCHECK --timeout=2s CMD curl -f localhost || exit 1
# Boa Pratica colocar HEALTCHECK no container, a cada 2 segundos faz um curl para verificar status, caso esteja UP ele continua testando, || <- ou se falhar curl, sair
# com erro, ou seja, exit 1
