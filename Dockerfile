# maquina ligera de linux
FROM node:18-alpine 

# mi máquina
WORKDIR /app  

COPY package.json package-lock.json ./

RUN npm install 

COPY . . 

EXPOSE 3000 

CMD ["node", "app.js"]
