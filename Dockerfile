FROM node:12.10.0-alpine

WORKDIR /matsun-Client

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD ["npm", "start"]

