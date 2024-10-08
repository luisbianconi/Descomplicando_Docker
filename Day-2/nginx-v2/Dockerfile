FROM ubuntu:18.04
RUN apt update && apt install nginx -y && rm -rf /var/lib/apt/lists/*
# rm -rf /var/lib/apt/lists/* -> Limpeza de Arquivos, deixar container menor e limpo
EXPOSE 80
COPY index.html /var/www/html
CMD ["nginx","-g","daemon off;"]
WORKDIR /var/www/html
ENV APP_VERSION=1.0.0
