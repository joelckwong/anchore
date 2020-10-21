#!/bin/bash
sudo yum -y update
mkdir /tmp/quickstart
cd /tmp/quickstart
curl https://docs.anchore.com/current/docs/engine/quickstart/docker-compose.yaml > docker-compose.yaml
docker-compose up -d
docker-compose ps
docker-compose exec api anchore-cli system status
docker-compose exec api anchore-cli system feeds list
cd /tmp
sudo mv quickstart /opt 
sudo chown -R root: /opt/quickstart
