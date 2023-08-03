FROM nginx:latest

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y vim

COPY ./nginx.conf /etc/nginx 
COPY /html/index.html /usr/share/nginx/html
COPY /style/style.css /usr/share/nginx/html
WORKDIR /usr/share/nginx/html/data 
COPY /data/index.html /usr/share/nginx/html/data/
COPY /data/image.jpeg /usr/share/nginx/html/data/
WORKDIR /usr/share/nginx/html/vegetables
COPY /vegetables/veggies.html /usr/share/nginx/html/vegetables/
CMD ["nginx", "-g", "daemon off;"]
