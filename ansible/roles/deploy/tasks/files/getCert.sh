#!/bin/sh

domain="$1"

certbot certificates | grep -i "$domain"

if [ "$?" -eq 0 ]; then
        certbot renew
        if [ "$?" -eq 0 ]; then
            chown 101:101 -R /etc/letsencrypt
            exit 0
        fi
        exit 1
fi


certbot certonly --dry-run --webroot --webroot-path /certbot/www/ -d "$domain" --agree-tos --non-interactive
if [ "$?" -eq 0 ]; then
        certbot certonly --webroot --webroot-path /certbot/www/ -d "$domain" --agree-tos --non-interactive
        chown 101:101 -R /etc/letsencrypt
        exit 0
fi
exit 1