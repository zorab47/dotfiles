
set -xg EDITOR nvim
set -xg PATH ~/.bin ~/bin ~/.local/bin $PATH
set -xg PAGER "less -FRSX"

source /usr/share/autojump/autojump.fish
source /usr/local/share/chruby/chruby.fish

source ~/.config/fish/conf.d/bundle_exec.fish

set fisher_home ~/.local/share/fisherman
set fisher_config ~/.config/fisherman
# source $fisher_home/config.fish

chruby 2.3.4

if test -f ~/.config/fish/local.fish
  # Local config, credentials, etc.
  source ~/.config/fish/local.fish
end

if status --is-interactive
  abbr --add be  "bundle exec"
  abbr --add ber "bundle exec rake"
  abbr --add ps  "ps aux"
end

if test -f ~/.config/fish/local.fish
  # Local config, credentials, etc.
  source ~/.config/fish/local.fish
end
