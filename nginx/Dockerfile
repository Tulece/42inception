FROM nginx:latest

# Copier la configuration NGINX personnalisée
COPY nginx.conf /etc/nginx/nginx.conf

# Copier les certificats SSL
COPY ssl /etc/nginx/ssl

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

