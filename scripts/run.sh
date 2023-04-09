#!/bin/bash

TAG=$1

docker run --rm -d -p 8000:5000 --name flask-sample hello-clarice:$TAG
