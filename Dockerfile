#Base da imagem - Isso vai incluir o NPM
FROM node:alpine

#Copiar tudo do disco local para container
COPY ./ ./
#Instalar dependencias
RUN npm install -g npm@7.6.1
 
#Comando padrão para start
CMD ["npm","start"]