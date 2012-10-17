source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/paths
source ~/.bash/config
source ~/.bash/bundler-exec.sh

if [ -f ~/.localrc ]; then
  . ~/.localrc
fi

# vim: syntax=sh
