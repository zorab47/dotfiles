/opt/homebrew/bin/brew shellenv | source

set -xg EDITOR nvim
set -xg PAGER "less -FRSX"
set -xg PATH ~/.bin ~/bin ~/.local/bin $HOMEBREW_PREFIX/opt/findutils/libexec/gnubin $PATH

[ -f $HOMEBREW_PREFIX/share/autojump/autojump.fish ]; \
  and source $HOMEBREW_PREFIX/share/autojump/autojump.fish

source ~/.config/fish/conf.d/bundle_exec.fish

chruby 3.3

if status --is-interactive
  abbr --add be  "bundle exec"
  abbr --add ber "bundle exec rake"
  abbr --add ps  "ps aux"

  fzf --fish | source
end

if test -f ~/.config/fish/local.fish
  # Local config, credentials, etc.
  source ~/.config/fish/local.fish
end
