# imagem do docker a ser utilizada
FROM node:14.15.4-alpine3.12

# diretório de trabalho, compatível com as permissões do usuário 'node'
WORKDIR /home/node/app

# copiando o projeto para dentro da imagem
COPY . .  

RUN npm install

ENTRYPOINT [ ".docker/entrypoint.sh" ]