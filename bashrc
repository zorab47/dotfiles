
# Custom commands to run before setting up the default
# environment. Such as setting TERM=xterm-256color 
# when the emulator cannot, lame. :(
if [ -f ~/.localrc-pre ]; then
  . ~/.localrc-pre
fi

source ~/.bash/completions
source ~/.bash/paths
source ~/.bash/config
source ~/.bash/aliases

if [ -f ~/.localrc ]; then
  . ~/.localrc
fi

# vim: syntax=sh
