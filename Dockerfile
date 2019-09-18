FROM node:12.10.0-alpine

WORKDIR /matsun-Client

COPY . .

RUN yarn
