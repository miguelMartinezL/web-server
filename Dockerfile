FROM nginx:latest

RUN apt-get update && apt-get install -y vim

COPY /html/index.html /usr/share/nginx/html
COPY /style/style.css /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
