FROM nginx:latest

RUN apt-get update && apt-get install -y vim

COPY /html/index.html /usr/share/nginx/html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
