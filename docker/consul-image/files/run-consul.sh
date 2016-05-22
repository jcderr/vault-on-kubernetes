#!/bin/sh

echo "Attempting to start consult with $BOOTSTRAP_EXPECT_COUNT instances"

/usr/bin/consul agent \
    -data-dir=/opt/consul-data \
    -server \
    -ui -client 0.0.0.0 \
    -bootstrap-expect $BOOTSTRAP_EXPECT_COUNT
    #-advertise $ADVERTISE_HOST \
