FROM nginx:alpine

COPY . /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

RUN rm -f /usr/share/nginx/html/Dockerfile \
    /usr/share/nginx/html/docker-compose.yml \
    /usr/share/nginx/html/nginx.conf \
    /usr/share/nginx/html/.env \
    /usr/share/nginx/html/.htaccess \
    /usr/share/nginx/html/.gitignore 2>/dev/null || true

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]