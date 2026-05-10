#!/bin/bash
cd /opt/kafka_2.13-3.7.0

echo "Enviando mensajes al topic: orders-new..."

echo '{"order_id": "12345", "customer_id": "78910", "total_amount": 1025.49, "order_status": "Pending Validation"}' | \
  bin/kafka-console-producer.sh \
  --topic orders-new \
  --bootstrap-server localhost:9092

echo '{"order_id": "67890", "customer_id": "11223", "total_amount": 340.00, "order_status": "Pending Validation"}' | \
  bin/kafka-console-producer.sh \
  --topic orders-new \
  --bootstrap-server localhost:9092

echo "Enviando mensajes al topic: orders-validated..."

echo '{"order_id": "12345", "validation_status": "Validated"}' | \
  bin/kafka-console-producer.sh \
  --topic orders-validated \
  --bootstrap-server localhost:9092

echo '{"order_id": "67890", "validation_status": "Validated"}' | \
  bin/kafka-console-producer.sh \
  --topic orders-validated \
  --bootstrap-server localhost:9092

echo "Mensajes enviados a ambos topics."