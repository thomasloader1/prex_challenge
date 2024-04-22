FROM nginx

# Lets Encrypt
RUN apt-get update
RUN apt-get install -y certbot
RUN apt-get install -y python3-certbot-nginx
VOLUME /etc/letsencrypt
VOLUME /etc/cron.d/
