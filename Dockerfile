FROM golang:1.8.3-alpine3.6
MAINTAINER Alexander van Trijffel, Structura

RUN apk update && apk upgrade && \
    apk add --no-cache g++ bash git openssh

RUN go get github.com/tools/godep

ENV SOURCEDIR /go/src/myproject
RUN mkdir /out
RUN mkdir /work
ADD gobuild.sh /work/gobuild.sh
RUN chmod 744 /work/gobuild.sh
ENTRYPOINT /work/gobuild.sh