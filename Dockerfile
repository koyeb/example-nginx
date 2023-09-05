ARG NGINX_VERSION

FROM nginx:${NGINX_VERSION:-latest} AS debug
CMD ["nginx-debug", "-g", "daemon off;"]

FROM nginx:${NGINX_VERSION:-latest} AS production