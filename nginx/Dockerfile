FROM nginx:latest

# Install Certbot and Nginx plugin
RUN apt update && apt install -y certbot python3-certbot-nginx cron

# Copy Nginx configuration (make sure it supports SSL)
COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 443

# Start Nginx and run the renewal script in a cron job
CMD ["nginx", "-g", "daemon off;"]
