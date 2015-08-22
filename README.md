Ari Patrick's Dotfiles
===============================

# Installation

    git clone git://github.com/zanshin/dotfiles.git ~/.dotfiles
    chmod u+x ~/.dotfiles/bootstrap.sh
	~/.dotfiles/bootstrap.sh

## Vim
If you don't already use Vundle with Vim, install it and use it to install the plugins:

    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim +PluginInstall +qall

All Bundles and their associated configurations are kept in `vimrc.bundles`. This file is sourced inside `vimrc` only if found. This allows a minified version of my Vim configuration to be installed on other machines.

# What's Inside?
All my command-line tools and configurations for OSX & Linux!

## Aliases
* Lots of them...

## Shell
* [ZSH](http://www.zsh.org/) shell with [Prezto](https://github.com/sorin-ionescu/prezto) configuration framework
* [tmux](https://tmux.github.io/) for terminal multiplexing

## Editor
* [Vim](http://www.vim.org/) for editing all the things
* [Vundle](https://github.com/VundleVim/Vundle.vim) for Vim plug-in management

## General
* Global ignore file for git
* Prevent RDoc and RI files from downloading with 'gem install' & 'gem update'


# ToDo
* Improve README.md!
* Write script to make setting up a new machine a breeze
* Fix hack to launch tmux in Zsh
* Customize Zsh prompt
* Cleanup tmux dotfiles
* Investigate tmuxinator
* Git Config & Attributes
* Homebrew (OSX) & investigate cask

# Credits

Many individuals have contributed to/influenced my current setup:

* Brandon Harris: [GitHub](https://github.com/irrigger)
* Derek Wyatt: [Website](http://derekwyatt.org)
* Drew Neil: [Vimcasts](http://vimcasts.org)
* Mark Nichol: [Website](http://zanshin.net/), [GitHub](https://github.com/zanshin)
* Steve Losh: [Website](http://stevelosh.com), [GitHub](https://github.com/sjl)
* Tim Pope: [Website](http://tbaggery.com/), [GitHub](https://github.com/tpope)

# Self-Promotion
Like my setup? Check out some of my other work:

* [Website](http://aripatrick.com)
* [GitHub](https://github.com/aripatrick/)
* [LinkedIn](http://linkedin.com/in/aripatrick)
