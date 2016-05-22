$!/bin/bash

set -e

yum update -y
yum upgrade -y
yum install unzip -y
yum install wget -y

VAULT_VERSION=0.5.2
VAULT_ARCHIVE=vault_"$VAULT_VERSION"_linux_amd64.zip

wget https://releases.hashicorp.com/vault/"$VAULT_VERSION"/"$VAULT_ARCHIVE"

unzip $VAULT_ARCHIVE
mv vault /usr/bin/vault
chmod +x /usr/bin/vault
chmod +x /root/run-vault.sh