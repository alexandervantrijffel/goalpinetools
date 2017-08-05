#!/bin/sh

echo build main.go and save in releases/helloworld
rm releases/helloworld -f
docker run --rm -v `pwd`:/go/src/github.com/goalpinetools/example -v `pwd`/releases:/out -e "BUILDARGS=-o /out/helloworld" -e SOURCEDIR="/go/src/github.com/goalpinetools/example" structura/goalpinetools
