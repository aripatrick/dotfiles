Ari Patrick's Dotfiles
===============================

# Quick Start
```bash
git clone git://github.com/zanshin/dotfiles.git ~/.dotfiles
chmod u+x ~/.dotfiles/bootstrap.sh
~/.dotfiles/bootstrap.sh

# Run the commands below to install Vundle & vim plug-ins
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +PluginInstall +qall
```

See [setup details](#setup-details) for additional information on dependencies
and additional configuation options.

# What's Inside?
A collection of command-line tools and configurations, curated by [yours
truly](#author). These dotfiles are organized to accomodate as-is or selective
usage. As I primarily work in Linux & OSX, these dotfiles are geared toward
those platforms.

### General Information
* Aliases are referenced from [~/.aliases](../aliases)
* Exports are referenced from [~/.exports](../exports)
* An ~/.extras file can be used for information you'd like stored outside the
repository. See [Extras](#extras) for more info.

### General
* Git config and global ignore file
* Prevent RDoc and RI files from downloading with 'gem install' & 'gem update'

# Setup Details
### Dependencies
Here's what's needed in order to fully benefit from these dotfiles:

#### Shell
* [ZSH](http://www.zsh.org/) shell with
	[Prezto](https://github.com/sorin-ionescu/prezto) configuration framework
* [tmux](https://tmux.github.io/) for terminal multiplexing

#### Editor
* [Vim](http://www.vim.org/) for editing all the things
* [Vundle](https://github.com/VundleVim/Vundle.vim) for Vim plug-in management

#### General
* [Git](https://git-scm.com/) for version control

### Vim Bundles
All Bundles and their associated configurations are kept in `vimrc.bundles`.
This file is sourced inside `vimrc` only if found. This allows a minified
version of my Vim configuration to be installed on other machines.

### Extras
If ~/.extras exists, it will be sourced along with the other files. You can use
this to add custom commands without the need to fork this entire repository, or
to add commands you don’t want to commit to a public repository.

For example, my ~/.extras looks something like this:

```bash
# Git Credentials
GIT_AUTHOR_NAME="Ari Patrick"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="ari@aripatrick.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

You could also use `~/.extra` to override settings, functions and aliases from
my dotfiles repository. It’s probably better to [fork this
repository](https://github.com/aripatrick/dotfiles/fork) instead, though.

# To-Do
* Improve README.md!
* Write script to make setting up a new machine a breeze
* Create simple bash setup for situations where Zsh is not an option
* Customize Zsh prompt
* Cleanup tmux dotfiles
* Investigate tmuxinator
* Wgetrc config
* Homebrew (OSX) & investigate cask
* Figure out why 'vim .' won't open file explorer but 'vim ..' will
* Consider consolidating .vimrc and .vimrc.bundles

# Author
This repository was made with &#9829; by [Ari
Patrick](https://github.com/aripatrick/)! Suggestions and improvements are
always [welcome](https://github.com/mathiasbynens/dotfiles/issues)!

# Thanks to...

Many individuals have contributed to/influenced my current setup:

* [Brandon Harris](https://github.com/irrigger) for introducing me to vim
* [Derek Wyatt](http://derekwyatt.org) for his vim insights
* [Drew Neil](https://github.com/nelstrom) for [Vimcasts](http://vimcasts.org)
* [Mark Nichol](https://github.com/zanshin) for his [dotfile
	repository](https://github.com/zanshin/dotfiles)
* [Mathias Bynens](https://mathiasbynens.be/) and his [dotfile
	repository](https://github.com/mathiasbynens/dotfiles)
* [Steve Losh](http://stevelosh.com) for
	[Gundo](http://stevelosh.com/projects/gundo/) and [Learn Vimscript the Hard Way](http://stevelosh.com/projects/learnvimscriptthehardway/)
* [Tim Pope](http://tbaggery.com/) for all of his [vim
	plugins](https://github.com/tpope)
* Anyone who [contributed a
	patch](https://github.com/aripatrick/dotfiles/contributors) or [made a
	helpful suggestion](https://github.com/aripatrick/dotfiles/issues)
