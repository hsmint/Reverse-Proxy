FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf
COPY code-server.conf /etc/nginx/sites-available/code-server.conf

RUN mkdir /etc/nginx/sites-enabled
RUN ln -s /etc/nginx/sites-available/code-server.conf /etc/nginx/sites-enabled/code-server.conf 

RUN apt update
RUN apt install -y certbot python3-certbot-nginx