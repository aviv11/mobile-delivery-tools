#!/usr/bin/env bash
cat >> ${HOME}/.zshrc << EOF
rebase(){ git fetch origin $1 && git-imerge rebase origin/$1;};
alias rebasem='git fetch origin master && git-imerge rebase origin/master;'
merge(){ git fetch origin $1 && git-imerge merge origin/$1;};
alias mergem='git fetch origin master && git-imerge merge origin/master;'
alias finish='git-imerge finish';
alias cont='git-imerge continue';
EOF