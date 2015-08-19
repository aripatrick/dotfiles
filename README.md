Ari Patrick's Dotfiles
===============================


# Installation

    git clone git://github.com/zanshin/dotfiles.git ~/.dotfiles

# Setup
## Git
For Git global ignore files, create this symlink:

	$ ln -s ~/.dotfiles/git/gitignore_global ~/.gitignore_global

## Vim
Create the following symlinks:

    ln -s ~/.dotfiles/vim ~/.vim
    ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/.dotfiles/vim/vimrc.bundles ~/.vimrc.bundles

If this is the first time Vim is being setup on the machine, it will be necessary to install Vundle itself:

    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

Vim bundles, which are managed via Vundle, can be installed using the following methods:

From the command line:

    vim +PluginInstall +qall

From inside Vim:

    :PluginInstall

All Bundles and their associated configurations are kept in `vimrc.bundles`. This file is sourced inside `vimrc` only if found. This allows a minified version of my Vim configuration to be installed on other machines.

## Gem
In order to prevent `gem install` or `gem update` from downloading RDoc and RI, symlink this file.

    $ ln -s ~/.dotfiles/gem/gemrc ~/.gemrc

# ToDo

* Remove .vimrc dependencies on .vimrc.bundles to support simplified vim config
* Write script to make setting up a new machine a breeze
* TMUX
* ZSH / Prezto
* Git Config & Attributes
* Homebrew (OSX)

# Credits

Many individuals have contributed to/influenced my current setup:

* Brandon Harris: [GitHub](https://github.com/irrigger)
* Chris Penny: [GitHub](http://github.com/chrisp-zeroone)
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
