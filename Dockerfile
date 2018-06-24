FROM golang:1.10.0-alpine3.7
MAINTAINER Alexander van Trijffel, Structura

RUN apk update && apk upgrade && \
    apk add --no-cache g++ bash git openssh

RUN go get -u github.com/golang/dep/cmd/dep

ENV SOURCEDIR /go/src/myproject
RUN mkdir /out
RUN mkdir /work
ADD gobuild.sh /work/gobuild.sh
RUN chmod 744 /work/gobuild.sh

ENTRYPOINT /work/gobuild.sh