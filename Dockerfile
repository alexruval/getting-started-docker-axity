FROM node:18-alpine
# Comentarios
LABEL authors="jaime.ruvalcaba@axity.com"
WORKDIR /app
#Restaurar archivos de entrada node js
COPY app/yarn.lock app/package.json ./
RUN npm install --omit dev
COPY app/spec ./spec
COPY app/src ./src
#Ejecutar index
CMD node src/index.js
EXPOSE 3000