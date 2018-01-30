#!/bin/bash

rm -rf build
docker build . -t foo
docker create --name asdf foo
docker cp asdf:/usr/local/bin/ ./build
docker rm asdf
