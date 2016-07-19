#!/usr/local/bin/fish

# set base03    002b36
# set base02    073642
# set base01    586e75
# set base00    657b83
# set base0     839496
# set base1     93a1a1
# set base2     eee8d5
# set base3     fdf6e3
# set yellow    b58900
# set orange    cb4b16
# set red       dc322f
# set magenta   d33682
# set violet    6c71c4
# set blue      268bd2
# set cyan      2aa198
# set green     859900

# set base03    1c1c1c
# set base02    262626
# set base01    585858
# set base00    626262
# set base0     808080
# set base1     8a8a8a
# set base2     e4e4e4
# set base3     ffffd7
# set yellow    af8700
# set orange    d75f00
# set red       d70000
# set magenta   af005f
# set violet    5f5faf
# set blue      0087ff
# set cyan      00afaf
# set green     5f8700

# http://ethanschoonover.com/solarized#the-values

# Use these settings if you've applied a Solarized theme to your terminal (for
# example, if "ls -G" produces Solarized output). i.e. if "blue" is #268bd2, not
# whatever the default is. (See "../etc/Solarized Dark.terminal" for OS X.)

set -l base03  --bold black
set -l base02  black
set -l base01  --bold green
set -l base00  --bold yellow
set -l base0   --bold blue
set -l base1   --bold cyan
set -l base2   white
set -l base3   --bold white
set -l yellow  yellow
set -l orange  --bold red
set -l red     red
set -l magenta magenta
set -l violet  --bold magenta
set -l blue    blue
set -l cyan    cyan
set -l green   green

# Use these settings if your terminal supports term256 and your terminal hasn't
# been configured with a Solarized theme.i.e. if "blue" is the default blue, not
# Solarized blue.

# set -l base03  002b36
# set -l base02  073642
# set -l base01  586e75
# set -l base00  657b83
# set -l base0   839496
# set -l base1   93a1a1
# set -l base2   eee8d5
# set -l base3   fdf6e3
# set -l yellow  b58900
# set -l orange  cb4b16
# set -l red     dc322f
# set -l magenta d33682
# set -l violet  6c71c4
# set -l blue    268bd2
# set -l cyan    2aa198
# set -l green   859900

# Used by fish's completion; see
# http://fishshell.com/docs/2.0/index.html#variables-color

set -U fish_color_normal         $base0
set -U fish_color_command        $blue
set -U fish_color_quote          $yellow
set -U fish_color_redirection    $violet
set -U fish_color_end            $cyan
set -U fish_color_error          $red
set -U fish_color_param          $base1
set -U fish_color_comment        $base01
set -U fish_color_match          $cyan
set -U fish_color_search_match   "--background=$magenta"
set -U fish_color_operator       $orange
set -U fish_color_escape         $cyan
set -U fish_color_autosuggestion $base0

set -U fish_pager_color_prefix      $cyan
set -U fish_pager_color_completion  $base2
set -U fish_pager_color_description $base1

# Used by fish_prompt

set -U fish_color_hostname    $cyan
set -U fish_color_cwd         $blue
set -U fish_color_git $green
