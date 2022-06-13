FROM node
WORKDIR /usr/src/app
COPY ./client/package.json ./package.json
RUN npm i
COPY ./client .
RUN npm run build
