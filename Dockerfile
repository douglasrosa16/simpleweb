#Base da imagem - Isso vai incluir o NPM
FROM node:alpine

WORKDIR /usr/app

#Copiar tudo do disco local para container
COPY ./package.json ./
#Instalar dependencias
RUN npm install -g npm@7.6.1

COPY ./ ./

#Comando padrão para start
CMD ["npm","start"]