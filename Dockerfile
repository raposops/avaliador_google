FROM nginx:alpine

# Remove configuracao padrao do nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia a configuracao do nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copia APENAS a landing page e renomeia para index.html
COPY landing.html /usr/share/nginx/html/index.html

EXPOSE 80
