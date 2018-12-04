#!/usr/bin/env bash

USER_NAME=${USER_NAME}
DOCKER_STACK_NAME=${DOCKER_STACK_NAME}

cat >> ${HOME}/.zshrc << EOF
alias dockerUp='cd /Users/$USER_NAME/Supersonic/sonic/docker/stacks/$DOCKER_STACK_NAME && docker-compose up -d && sleep 7 && sh post-docker-compose-script.sh nitay && sh ../../../docker/conf.d/scripts/consul/create_consul_keys.sh';
alias dockerTDUp='cd /Users/$USER_NAME/Supersonic/td-process/src/$DOCKER_STACK_NAME && docker-compose up -d';
alias dockerDown='cd /Users/$USER_NAME/Supersonic/sonic/docker/stacks/$DOCKER_STACK_NAME && docker-compose down';
alias dockerTDDown='cd /Users/$USER_NAME/Supersonic/td-process/src/integration-test && docker-compose down';
alias dockerBash='cd /Users/$USER_NAME/Supersonic/sonic/docker/stacks/$DOCKER_STACK_NAME && docker-compose exec appserver-dev bash';
alias kafkaBash='cd /Users/$USER_NAME/Supersonic/sonic/docker/stacks/$DOCKER_STACK_NAME && docker-compose exec kafka bash';
alias consulBash='cd /Users/$USER_NAME/Supersonic/sonic/docker/stacks/$DOCKER_STACK_NAME && docker-compose exec consul bash';
alias redisBash='cd /Users/$USER_NAME/Supersonic/sonic/docker/stacks/$DOCKER_STACK_NAME && docker-compose exec redis bash';
alias aerospikeBash='cd /Users/$USER_NAME/Supersonic/sonic/docker/stacks/$DOCKER_STACK_NAME && docker-compose exec aerospike bash';
alias cassandraBash='cd /Users/$USER_NAME/Supersonic/sonic/docker/stacks/$DOCKER_STACK_NAME && docker-compose exec cassandra bash';
alias zookeeperBash='cd /Users/$USER_NAME/Supersonic/sonic/docker/stacks/$DOCKER_STACK_NAME && docker-compose exec zookeeper bash';
alias memcachedBash='cd /Users/$USER_NAME/Supersonic/sonic/docker/stacks/$DOCKER_STACK_NAME && docker-compose exec memcached bash';
alias fakes3Bash='cd /Users/$USER_NAME/Supersonic/sonic/docker/stacks/$DOCKER_STACK_NAME && docker-compose exec fake-s3 bash';
EOF