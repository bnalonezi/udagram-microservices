#!/bin/sh

docker build -t udagram-frontend ./udagram-frontend
docker tag udagram-frontend balenezi/udagram-frontend:latest
docker push balenezi/udagram-frontend
echo docker image pushed