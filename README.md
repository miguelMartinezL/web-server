# Web Server with nginx to Practie 

for now this is a simple server. To build and run the docker image run:

`docker build -t some-content-nginx . `

`docker run --name some-nginx -d -p 8080:80 some-content-nginx`

or

`docker-compose -f docker-compose.yml up -d webserver`

check on 

`http://localhost:80`