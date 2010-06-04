source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/paths
source ~/.bash/config

if [ -f ~/.localrc ]; then
  . ~/.localrc
fi

# vim: syntax=sh
