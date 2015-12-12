#!/usr/bin/env bash
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
# git config --global user.name "Jack Hanford"
# git config --global user.email "jackhanford@gmail.com"
git config --global color.ui auto
git config --global advice.pushNonFastForward false
git config --global advice.statusHints false


source ~/.z.sh

# Path to the bash it configuration
export BASH_IT="/Users/hanford/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='sexy'

# Don't check mail when opening terminal.
unset MAILCHECK

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Load Bash It
source $BASH_IT/bash_it.sh
