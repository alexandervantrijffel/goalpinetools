#!/bin/sh

echo Building from source directory: $SOURCEDIR
cd $SOURCEDIR

if [ -f "Godeps/Godeps.json" ]
then 
    echo Restoring dependencies with godep
    godep restore
fi

echo Executing: static go build with additional arguments $BUILDARGS
CGO_ENABLED=0 GOOS=linux go build -a -ldflags '-extldflags "-static"' $BUILDARGS

