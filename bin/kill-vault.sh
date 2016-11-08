#!/bin/sh

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/utilities.sh

kubectl delete --cascade=false --ignore-not-found=true deployment -l "app-type=consul"
kubectl delete --cascade=false --ignore-not-found=true replicasets -l "app-type=consul"
kubectl delete --cascade=false --ignore-not-found=true service -l "app-type=consul"

kubectl delete --cascade=false --ignore-not-found=true deployment -l "app-type=vault"
kubectl delete --cascade=false --ignore-not-found=true replicasets -l "app-type=vault"
kubectl delete --cascade=false --ignore-not-found=true service -l "app-type=vault"