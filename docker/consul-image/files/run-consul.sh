#!/bin/sh

echo "Attempting to start consult with $BOOTSTRAP_EXPECT_COUNT instances and advertise IP $EXTERNAL_IP"

/usr/bin/consul agent \
    -config-file /opt/consul/consul-config.json
    -bootstrap-expect $BOOTSTRAP_EXPECT_COUNT
    -advertise $EXTERNAL_IP

#  "key_file": "/etc/pki/tls/private/my.key",
#  "cert_file": "/etc/pki/tls/certs/my.crt",
#  "ca_file": "/etc/pki/tls/certs/ca-bundle.crt"