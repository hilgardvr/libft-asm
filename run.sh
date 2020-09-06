#bin/bash

docker build -t asm .
docker run --rm -it asm
docker image rm asm
git pull
