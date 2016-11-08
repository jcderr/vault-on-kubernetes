#!/bin/sh

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/utilities.sh

kubectl create -f $DIR/../kubernetes/consul_1.yaml
kubectl create -f $DIR/../kubernetes/consul_2.yaml

#kubectl create -f $DIR/../kubernetes/vault.yaml
