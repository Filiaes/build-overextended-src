FROM node:gallium-alpine

RUN npm install -g pnpm

WORKDIR /build