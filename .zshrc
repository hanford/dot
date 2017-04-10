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

# autoload -U compinit && compinit
# eval $(npm completion)
# git
alias g="git"
alias nr="npm run"

# git config --global user.name "Jack Hanford"
# git config --global user.email "jackhanford@gmail.com"
git config --global color.ui auto
git config --global advice.pushNonFastForward false
git config --global advice.statusHints false

source ~/.z.sh
