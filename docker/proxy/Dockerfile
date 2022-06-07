FROM node:carbon as builder
WORKDIR /usr/src/app
COPY client/package.json ./package.json
RUN npm i
COPY frontend .
RUN npm run build

FROM nginx:alpine
COPY --from=builder /usr/src/app/dist /var/www/public
COPY ./nginx /etc/nginx