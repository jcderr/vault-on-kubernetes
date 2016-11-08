#!/usr/bin/env python

from subprocess import check_call
from subprocess import check_output


def run():
    ips = search_for_pods("{.items[*].status.podIP}")
    consul_pods = search_for_pods("{.items[*].metadata.name}")
    seed_cluster(consul_pods, ips)


def seed_cluster(pods, ips):
    for pod in pods.split(' '):
        seed_command = ['kubectl', 'exec', pod, '--', 'consul', 'join']
        seed_command.extend(ips.split())
        print seed_command
        check_call(seed_command)


def search_for_pods(json_path):
    return check_output(
        ["kubectl", "get", "pods", "-l", "app-type=consul", "-o", "jsonpath=" + json_path]).decode()


run()
