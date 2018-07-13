# Charles' Dot Files

Configuration of my system the way I like it.

## Installation

```sh
git clone https://github.com/zorab47/dotfiles ~/.dotfiles
~/.dotfiles/bootstrap
```

## External Apps

Optional applications which enhance the command line.

- autojump
- coreutils (dircolors)
- exuberant-ctags
- silversearcher-ag
- [pspg][], Postgres Pager

```sh
sudo apt-get install silversearcher-ag exuberant-ctags coreutils autojump
```

[pspg]: https://github.com/okbob/pspg

### Notifications

- [Pushover](https://pushover.net) for simple notifications for long running
  processes to iOS or Android devices

### Browser Plug-ins

#### Firefox

- [It's All Text!](https://addons.mozilla.org/en-US/firefox/addon/its-all-text): Edit textareas using an external editor
- [Markdown Here](https://addons.mozilla.org/en-US/firefox/addon/markdown-here)
- [Markdown Viewer](https://addons.mozilla.org/en-US/firefox/addon/markdown-viewer)
- [Nimbus Screen Capture](https://addons.mozilla.org/en-US/firefox/addon/nimbus-Screenshot)
- [Octotree](https://addons.mozilla.org/en-US/firefox/addon/octotree) file hierarchy tree for Github.
- [VimFx](https://addons.mozilla.org/firefox/addon/vimfx): Vim keyboard shortcuts for Firefox

### Development Tools

- [git-extras](https://github.com/tj/git-extras/blob/master/Commands.md)
- [shellcheck](https://github.com/koalaman/shellcheck)
- [yamllint](https://github.com/adrienverge/yamllint)

```sh
sudo apt-get install shellcheck git-extras
```

### Fonts

- [Hack](https://github.com/chrissimpkins/hack)
- [Inconsolata-g](http://leonardo-m.livejournal.com/77079.html)

```bash
fc-cache -fv  # update font caches
```

### Gems

- awesome_print
- brice
- [bundler_diffgems](https://github.com/sinsoku/bundler_diffgems)
- hirb
- looksee
- rubocop
- scss_lint

```sh
gem install awesome_print brice hirb looksee rubocop scss_lint
```

### Vim-spiration

- [Ben Orenstein](https://github.com/r00k/dotfiles)
- [Chris Toomey](https://github.com/christoomey/dotfiles)
- [Junegun](https://github.com/junegunn/dotfiles)
- [Lifepillar](https://github.com/lifepillar/vimrc)
- [Wynn Netherland](https://github.com/pengwynn/dotfiles)

## Sources

- [Effortless Ctags with Git][]: Setup and configure Ctags to be run with
  git commands like `git checkout`.

[Effortless Ctags with Git]: http://tbaggery.com/2011/08/08/effortless-ctags-with-git.html
