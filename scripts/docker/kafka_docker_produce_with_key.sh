#!/usr/bin/env bash

USER_NAME=${USER_NAME}
DOCKER_STACK_NAME=${DOCKER_STACK_NAME}

die () {
    echo >&2 "$@"
    exit 1
}

[[ "$#" -eq 1 ]] || die "1 arguments required ($# provided).
USAGE: ./kafka_docker_produce_with_key.sh <TOPIC_NAME>
ARGUMENTS:
    TOPIC_NAME - name of the topic you want to produce to
EXAMPLE: ./kafka_docker_produce_with_key.sh budgetCappingInput"

cd /Users/$USER_NAME/Supersonic/sonic/docker/stacks/$DOCKER_STACK_NAME
docker-compose exec -T kafka /opt/kafka/bin/kafka-console-producer.sh --broker-list localhost:9092 --topic $1 --property "parse.key=true" --property "key.separator=:"
