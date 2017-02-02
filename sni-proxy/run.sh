#!/bin/bash -ex

cp -f /etc/nginx/nginx.tmpl /etc/nginx/nginx.conf
sed -i -e "s/APIM_DNS/${APIM_DNS}/g" /etc/nginx/nginx.conf
sed -i -e "s/PORTAL_DNS/${PORTAL_DNS}/g" /etc/nginx/nginx.conf
sed -i -e "s/GATEWAY_DNS/${GATEWAY_DNS}/g" /etc/nginx/nginx.conf
sed -i -e "s/APIM_URI/${APIM_URI}/g" /etc/nginx/nginx.conf
sed -i -e "s/PORTAL_URI/${PORTAL_URI}/g" /etc/nginx/nginx.conf
sed -i -e "s/GATEWAY_URI/${GATEWAY_URI}/g" /etc/nginx/nginx.conf
sed -i -e "s/GWADMIN_URI/${GWADMIN_URI}/g" /etc/nginx/nginx.conf
cat /etc/nginx/nginx.conf
exec nginx -g "daemon off;"
