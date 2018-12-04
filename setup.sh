#!/usr/bin/env bash
die () {
    echo >&2 "$@"
    exit 1
}

[[ "$#" -eq 2 ]] || die "2 arguments required ($# provided).
USAGE: ./setup_user_and_docker_stack_name.sh <USER_NAME> <DOCKER_STACK_NAME>
ARGUMENTS:
    USER_NAME - the user name on you local machine (under Users/ dir)
    DOCKER_STACK_NAME - the stack name (under docker/stacks in sonic repo)
EXAMPLE: ./kafka_docker_produce.sh nitaykufert global-sonic"

cat >> ${HOME}/.zshrc << EOF
export USER_NAME=$1
export DOCKER_STACK_NAME=$2
EOF