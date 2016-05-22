$!/bin/sh

set -e

CONSUL_VERSION=0.6.4

CONSUL_ARCHIVE=consul_"$CONSUL_VERSION"_linux_amd64.zip

wget https://releases.hashicorp.com/consul/$CONSUL_VERSION/$CONSUL_ARCHIVE
unzip $CONSUL_ARCHIVE
mkdir /opt/consul-data
mv consul /usr/bin/consul
chmod +x /usr/bin/consul