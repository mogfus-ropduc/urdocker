#!/bin/bash
if [ "$#" -ne 3 ]
then
  echo "Usage: ./run.sh sampel-palnet /path/to/sampel-palnet <port>"
  exit 1
fi

docker run -d --memory 2g --memory-swap 6g --name "urbit-$1" -p "$3:8080/tcp" -p "$3:8080/udp" --env point="$1" --mount type=bind,source="$2",target="/home/urbit/urbit/$1" urbit