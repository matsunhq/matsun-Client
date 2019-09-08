FROM node:12.10.0-alpine

WORKDIR /matsun-Client

COPY . .

RUN npm install

EXPOSE 8080
CMD ["npm", "start"]
