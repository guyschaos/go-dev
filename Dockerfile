#
# Ubuntu 14.04 with golang develop env Dockerfile
#
# Pull base image.
FROM eternnoir/go-dev:latest
MAINTAINER Guyschaos <guyschaos@gmail.com>

#RUN go get -u github.com/gpmgo/gopm
ADD ./gopm /bin/gopm
 
RUN chmod +x /bin/gopm

RUN rm -rf /root/.vim/bundle/vim-go
RUN git clone --depth=1 https://github.com/guyschaos/vim-go.git /root/.vim/bundle/vim-go