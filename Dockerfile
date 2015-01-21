#
# Ubuntu 14.04 with golang develop env Dockerfile
#
# Pull base image.
FROM eternnoir/go-dev:latest
MAINTAINER Guyschaos <guyschaos@gmail.com>

#RUN go get -u github.com/gpmgo/gopm
ADD ./gopm /bin/gopm
 
RUN chmod +x /bin/gopm


RUN /bin/gopm bin -d '/bin' -u   github.com/nsf/gocode
RUN /bin/gopm bin -d '/bin' -u   golang.org/x/tools/cmd/goimports
RUN /bin/gopm bin -d '/bin' -u   code.google.com/p/rog-go/exp/cmd/godef
RUN /bin/gopm bin -d '/bin' -u   golang.org/x/tools/cmd/oracle
RUN /bin/gopm bin -d '/bin' -u   golang.org/x/tools/cmd/gorename
RUN /bin/gopm bin -d '/bin' -u   github.com/golang/lint/golint
RUN /bin/gopm bin -d '/bin' -u   github.com/kisielk/errcheck
RUN /bin/gopm bin -d '/bin' -u   github.com/jstemmer/gotags