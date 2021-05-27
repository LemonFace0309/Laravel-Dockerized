FROM nginx:stable-alpine

# Copy files needed for production (bind mounts won't work when deploying an image)
WORKDIR /etc/nginx/conf.d

COPY nginx/nginx.conf .

# renames nginx.conf to default.conf
RUN mv nginx.conf default.conf

WORKDIR /var/www/html

COPY src .