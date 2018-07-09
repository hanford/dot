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

git config --global user.name "Jack Hanford"
git config --global user.email "jackhanford@gmail.com"
git config --global color.ui auto
git config --global advice.pushNonFastForward false
git config --global advice.statusHints false

export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH

# if we have autojump installed, let's use it
[ -f /usr/local/etc/profile.d/autojump.sh ] && source /usr/local/etc/profile.d/autojump.sh