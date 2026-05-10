#!/bin/bash
cd /opt/kafka_2.13-3.7.0
 
echo "Iniciando Zookeeper..."
bin/zookeeper-server-start.sh config/zookeeper.properties
 
