#!/bin/bash

TAG=$1

docker build -t hello-clarice:$TAG .
