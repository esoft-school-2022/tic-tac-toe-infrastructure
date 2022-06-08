FROM node as builder
WORKDIR /usr/src/app
COPY ./client/package.json ./package.json
RUN npm i
COPY ./client .
RUN npm run build

FROM nginx:alpine
COPY --from=builder /usr/src/app/dist /var/www/public
COPY ./nginx /etc/nginx