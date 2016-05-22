#!/bin/bash

echo "Starting vault with consul server $CONSUL_SERVER"

sed -i "s/\$CONSUL_SERVER/$CONSUL_SERVER/" /etc/vault_config.hcl

/usr/bin/vault server -config /etc/vault_config.hcl