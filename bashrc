
# Only set this up if it's an interactive shell
if [ -t 1 ]; then
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
fi

# vim: syntax=sh
