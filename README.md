# Web Server with nginx to Practie 

for now this is a simple server. To build and run the docker image run:

```bash 
docker build -t some-content-nginx . 
```

```bash
docker run --name some-nginx -d -p 8080:80 some-content-nginx
```

or

```bash
docker-compose -f docker-compose.yml up -d webserver
```

check on 

```bash
http://localhost:80
```