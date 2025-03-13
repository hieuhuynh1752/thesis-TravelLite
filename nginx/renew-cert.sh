#!/bin/sh

echo "Starting Certbot renewal process..."
certbot renew --quiet
nginx -s reload
echo "SSL certificates renewed!"
