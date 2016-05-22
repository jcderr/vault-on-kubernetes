#!/bin/sh

if [ -f ~/.aws-env-template-creds ]; then
    .  ~/.aws-env-template-creds
fi

function checkEnvVariable() {
  argumentName=$1

  if [ -z "${!argumentName}" ]; then
    echo "Must set environment variable $1"
    exit 1
  fi
}

function checkPrerequisite() {
  which -s $1
  if [ $? != 0 ]; then
      echo "$1 must be installed and on the classpath."
      exit 1
  fi
}

export -f checkEnvVariable
