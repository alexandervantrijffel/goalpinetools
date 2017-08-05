# goalpinetools
Docker image with tools for building and testing go for Alpine Linux. 

Example of building example/main.go with goalpinetools:

```
cd example
docker run --rm -v `pwd`:/go/src/github.com/goalpinetools/example -v `pwd`/releases:/out -e "BUILDARGS=-o /out/helloworld" -e SOURCEDIR="/go/src/github.com/goalpinetools/example" structura/goalpinetools
```

Example of running an interactive shell inside the goalpinetools docker container with access to the sources:

```
cd example
docker run -ti --rm -v `pwd`:/go/src/github.com/goalpinetools/example -v `pwd`/releases:/out --entrypoint=/bin/sh goalpinetools
```

The image is available on [Docker hub](https://hub.docker.com/r/structura/goalpinetools/).
