# Charles' Dot Files

Configuration of my system the way I like it.

## Installation

```sh
git clone https://github.com/zorab47/dotfiles ~/.dotfiles
~/.dotfiles/bootstrap
```

## External Apps

Optional applications which enhance bash, vim, etc.

- autojump
- coreutils (dircolors)
- exuberant-ctags
- silversearcher-ag

```
sudo apt-get install silversearcher-ag exuberant-ctags coreutils autojump
```

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

```
sudo apt-get install shellcheck git-extras
```

### Fonts

[Inconsolata-g](http://leonardo-m.livejournal.com/77079.html) is my first choice
in programming fonts.

```
fc-cache -fv  # update font caches
```

### Gems

- awesome_print
- brice
- hirb
- looksee
- [sqlint](https://github.com/purcell/sqlint)

```
gem install awesome_print brice hirb looksee
```

## Sources

- [Effortless Ctags with Git][]: Setup and configure Ctags to be run with
  git commands like `git checkout`.

[Effortless Ctags with Git]: http://tbaggery.com/2011/08/08/effortless-ctags-with-git.html
