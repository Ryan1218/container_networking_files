#! /bin/bash

if [ $# -ne 1 ]; then
  echo -e "Specify container name by ./link_docker_ns.sh <container_name> \n\n\n"
  exit 1
else
  container_name=$1
fi

sudo mkdir -p /var/run/netns/

pid=`docker inspect -f '{{.State.Pid}}' $container_name`
sudo ln -sfT /proc/$pid/ns/net /var/run/netns/$container_name
