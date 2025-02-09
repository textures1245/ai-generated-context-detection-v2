#!/bin/env sh
kafka-topics --bootstrap-server kafka:29092 --list
        
echo -e "Creating topics ..."
kafka-topics --bootstrap-server kafka:29092 --create --if-not-exists --topic chat --replication-factor 1 --partitions 1

echo -e "Successfully created topics:"
kafka-topics --bootstrap-server kafka:29092 --list