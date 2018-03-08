#!/bin/sh

docker build -t myapp .
docker run --name redis -d redis
docker run --name myapp --link redis:redis -p 5000:5000 -d myapp python app.py

# to remove
# docker stop myapp redis
# docker rm myapp redis
