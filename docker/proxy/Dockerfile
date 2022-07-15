FROM alexanderfromearth/tic-tac-toe-frontend:latest as tic_tac_toe_builder
FROM alexanderfromearth/skillfox-frontend:latest as skillfox_builder
FROM nginx:alpine
COPY --from=tic_tac_toe_builder /usr/src/app/dist /var/www/public/tic-tac-toe
COPY --from=skillfox_builder /usr/src/app/build /var/www/public/skillfox
COPY ./nginx /etc/nginx