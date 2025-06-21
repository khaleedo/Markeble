FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
  curl git docker.io docker-compose \
  kubectl helm unzip

RUN curl -sfL https://get.k3s.io | sh -
