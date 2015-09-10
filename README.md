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

```
gem install awesome_print brice hirb looksee
```

## Sources

- [Effortless Ctags with Git][]: Setup and configure Ctags to be run with
  git commands like `git checkout`.

[Effortless Ctags with Git]: http://tbaggery.com/2011/08/08/effortless-ctags-with-git.html
