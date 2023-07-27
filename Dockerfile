FROM nginx:latest

RUN apt-get update && apt-get install -y vim

COPY /html/index.html /usr/share/nginx/html
COPY /style/style.css /usr/share/nginx/html
WORKDIR /usr/share/nginx/html/data
COPY /data/index.html /usr/share/nginx//html/data/
COPY /data/image.jpeg /usr/share/nginx//html/data/
CMD ["nginx", "-g", "daemon off;"]
