#!/usr/bin/env bash

eval "$(/opt/homebrew/bin/brew shellenv)"

fpath+=$HOME/.zsh/pure

autoload -Uz promptinit;
promptinit;
prompt pure;

publish () {
  git fetch
  if [[ $(git rev-parse HEAD) != $(git rev-parse @{u}) ]]; then
    return 1
  fi
  npm version $1 && git push origin --tags
}

alias pg_start="launchctl load ''"
alias pg_stop="launchctl unload ''"

alias g="git"
alias ga="git add ."
alias gp="git push"
alias gc="git commit"
alias gpu="git push origin -u"
# alias nr="npm run"
# alias fpush="git push --force origin $(git rev-parse --abbrev-ref HEAD);"
alias gs="git status"
alias gco="git checkout"
alias c="code"
alias gcob="git checkout -b"
alias cat="bat"
alias ping="prettyping --nolegend"
alias kn="killall node -9"
alias ..="cd ../"
alias ....="cd ../../"

# export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH
# export PATH=~/.npm-global/bin:$PATH

git config --global user.name "Jack Hanford"
git config --global user.email "jackhanford@gmail.com"
git config --global help.autocorrect 1

git config --global color.ui auto
git config --global advice.pushNonFastForward false
git config --global advice.statusHints false

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# if we have autojump installed, let's use it
  [ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh
# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

autoload -Uz compinit
compinit

# Bun completions
[ -s "/Users/jackhanford/.bun/_bun" ] && source "/Users/jackhanford/.bun/_bun"

# Bun
export BUN_INSTALL="/Users/jackhanford/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
