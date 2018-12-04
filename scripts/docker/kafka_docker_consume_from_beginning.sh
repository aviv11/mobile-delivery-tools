#!/usr/bin/env bash

USER_NAME=${USER_NAME}
DOCKER_STACK_NAME=${DOCKER_STACK_NAME}

die () {
    echo >&2 "$@"
    exit 1
}

[[ "$#" -eq 2 ]] || die "2 arguments required ($# provided).
USAGE: ./kafka_docker_consume_from_beginning.sh <TOPIC_NAME> <MAX_MESSAGES>
ARGUMENTS:
    TOPIC_NAME - name of the topic you want to produce to
    MAX_MESSAGES - number of messages to consume
EXAMPLE: ./kafka_docker_consume_from_beginning.sh budgetCappingInput 10000"

cd /Users/$USER_NAME/Supersonic/sonic/docker/stacks/$DOCKER_STACK_NAME
docker-compose exec -T kafka /opt/kafka/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic $1 --max-messages $2 --from-beginning --property print.key=true --property print.timestamp=true
