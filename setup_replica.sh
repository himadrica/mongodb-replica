#!/bin/bash
#setting up replica set
docker-compose stop
docker-compose up --build --remove-orphans -d
sleep 5
docker exec mongodb1 mongo admin -u root -p admin /tmp/rs1_init_replicaset.js
docker exec mongodb1 mongo admin -u root -p admin /tmp/init_database.js
docker exec mongodb1 mongo admin -u root -p admin /tmp/init_user.js

docker exec mongodb2 mongo admin -u root -p admin /tmp/rs2_init_replicaset.js
docker exec mongodb3 mongo admin -u root -p admin /tmp/rs3_init_replicaset.js