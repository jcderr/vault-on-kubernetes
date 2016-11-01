#!/bin/sh

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/utilities.sh

kubectl delete --cascade=false --ignore-not-found=true rc consul.1 consul.2