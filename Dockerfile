#
# Ubuntu 14.04 with golang develop env Dockerfile
#
# Pull base image.
FROM eternnoir/go-dev:latest
MAINTAINER Guyschaos <guyschaos@gmail.com>

RUN go get -u github.com/gpmgo/gopm


