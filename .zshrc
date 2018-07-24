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
alias ga="git add ."
alias gp="git push"
alias gc="git commit"
alias gpu="git push origin -u"
alias nr="npm run"
# alias fpush="git push --force origin $(git rev-parse --abbrev-ref HEAD);"
alias gs="git status"
alias gco="git checkout"
alias gcob="git checkout -b"

export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH
export PATH=~/.npm-global/bin:$PATH

# if we have autojump installed, let's use it
[ -f /usr/local/etc/profile.d/autojump.sh ] && source /usr/local/etc/profile.d/autojump.sh