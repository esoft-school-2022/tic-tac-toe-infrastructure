FROM alexanderfromearth/tic-tac-toe-frontend:latest as tic_tac_toe_builder
FROM nginx:alpine
COPY --from=tic_tac_toe_builder /usr/src/app/dist /var/www/public/tic-tac-toe
COPY ./nginx /etc/nginx