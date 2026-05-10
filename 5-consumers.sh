#!/bin/bash
cd /opt/kafka_2.13-3.7.0

echo "Leyendo mensajes del topic: orders-new (desde el principio)..."
bin/kafka-console-consumer.sh \
  --topic orders-new \
  --bootstrap-server localhost:9092 \
  --from-beginning \
  --timeout-ms 5000

echo ""
echo "Leyendo mensajes del topic: orders-validated (desde el principio)..."
bin/kafka-console-consumer.sh \
  --topic orders-validated \
  --bootstrap-server localhost:9092 \
  --from-beginning \
  --timeout-ms 5000

echo ""
echo "Lectura de ambos topics completada."