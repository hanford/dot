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

alias install="install-resolver"
alias g="git"
alias ga="git add ."
alias gp="git push"
alias gc="git commit"
alias gpu="git push origin -u"
alias nr="npm run"
# alias fpush="git push --force origin $(git rev-parse --abbrev-ref HEAD);"
alias gs="git status"
alias gco="git checkout"
alias c="code"
alias gcob="git checkout -b"
alias cat="bat"
alias ping="prettyping --nolegend"

export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH
export PATH=~/.npm-global/bin:$PATH

git config --global user.name "Jack Hanford"
git config --global user.email "jackhanford@gmail.com"
git config --global help.autocorrect 1

git config --global color.ui auto
git config --global advice.pushNonFastForward false
git config --global advice.statusHints false

# if we have autojump installed, let's use it
[ -f /usr/local/etc/profile.d/autojump.sh ] && source /usr/local/etc/profile.d/autojump.sh

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh