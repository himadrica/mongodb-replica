# Mongo DB Replica set using docker compose

## To run in stand alone mode
#### docker-compose -f docker-compose-standalone.yml up -d

## To run replication mode

#### $chmod 400 resource/mongod-keyfile

#### $./setup_replica.sh

#### $docker exec -it mongodb1 bash

#### $mongo -u root -p admin
