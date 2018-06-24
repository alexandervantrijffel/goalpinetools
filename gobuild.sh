#!/bin/sh

echo Building from source directory: $SOURCEDIR
cd $SOURCEDIR

if [ -f "Gopkg.lock" ]
then 
    echo Restoring dependencies with dep
    dep ensure
fi

echo Executing: static go build with additional arguments $BUILDARGS
CGO_ENABLED=0 go build -a -ldflags '-extldflags "-static"' $BUILDARGS

