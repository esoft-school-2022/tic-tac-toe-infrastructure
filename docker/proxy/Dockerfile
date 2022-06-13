FROM alexanderfromearth/tic-tac-toe-frontend:latest as builder
FROM nginx:alpine
COPY --from=builder /usr/src/app/dist /var/www/public
COPY ./nginx /etc/nginx