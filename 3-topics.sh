#!/bin/bash
cd /opt/kafka_2.13-3.7.0

echo "Creando topic: orders-new..."
bin/kafka-topics.sh --create \
  --topic orders-new \
  --bootstrap-server localhost:9092 \
  --partitions 1 \
  --replication-factor 1

echo "Creando topic: orders-validated..."
bin/kafka-topics.sh --create \
  --topic orders-validated \
  --bootstrap-server localhost:9092 \
  --partitions 1 \
  --replication-factor 1

echo "Topics creados. Listando topics disponibles:"
bin/kafka-topics.sh --list --bootstrap-server localhost:9092