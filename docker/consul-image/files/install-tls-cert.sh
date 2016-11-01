#!/bin/bash

openssl genrsa -des3 -out server.key 4096
#extendedKeyUsage clientAuth