#!/bin/bash
cd /opt/kafka_2.13-3.7.0

echo "Iniciando Kafka Server..."
bin/kafka-server-start.sh config/server.properties