#!/bin/bash

TAG=$1

exec docker run --rm -d \
    --network mysqlnet \
    --name flask-app \
    -p 8000:5000 \
    hello-clarice:$TAG
