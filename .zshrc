#!/usr/bin/env bash

autoload -U promptinit; promptinit

prompt pure

publish () {
  git fetch
  if [[ $(git rev-parse HEAD) != $(git rev-parse @{u}) ]]; then
    return 1
  fi
  npm version $1 && git push origin --tags
}

alias g="git"
alias nr="npm run"
alias fpush="git push --force origin $(git rev-parse --abbrev-ref HEAD);"
alias gco="git checkout"

export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH

# if we have autojump installed, let's use it
[ -f /usr/local/etc/profile.d/autojump.sh ] && source /usr/local/etc/profile.d/autojump.sh