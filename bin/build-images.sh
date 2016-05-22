#!/bin/sh

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/utilities.sh

#docker build -t danielsomerfield/base-image $DIR/../docker/base-image
#docker push danielsomerfield/base-image

docker build -t danielsomerfield/consul $DIR/../docker/consul-image
docker push danielsomerfield/consul