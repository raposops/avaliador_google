FROM nginx:alpine

# Remove configuracao padrao do nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia a configuracao customizada do nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copia todos os arquivos do site para o nginx
COPY . /usr/share/nginx/html

EXPOSE 80
