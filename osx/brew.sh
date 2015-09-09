#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

echo "Installing Homebrew formulae..."
# Update OS X's outdated core utilities
brew install coreutils					# GNU core utilities (see formula for PATH info)
brew install findutils					# GNU find, locate, updatedb, and xargs (g prefix)
brew install gnu-sed --default-names	# Overwrite the built-in `sed`
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh

# Essentials
brew install vim --override-system-vi
brew install zsh
brew install zsh-completions
brew install tmux
brew install git
brew install git-lfs					# Git Large File Storage
brew install ack
brew install curl
brew install wget --with-iri
brew install reattach-to-user-namespace	# Access the OSX pasteboard in tmux sessions
brew install tree
brew install htop
brew install cmake

# Languages
brew install python
brew install node
brew install lua

# Databases
brew install postgresql
brew install mysql

# Media editing
brew install imagemagick --with-webp --with-openexr
brew install graphicsmagick
brew install ffmpeg --with-libass --with-freetype --with-libvorbis --with-libvpx --with faac --with-webp --with-tools --with-zeromq

# To investigate
# brew install ctags --HEAD
# brew install pv						# Monitor data's progress through a pipe
# brew install gist

echo "Installing Homebrew Cask apps..."

brew install caskroom/cask/brew-cask	# Install brew cask before using command

apps=()

# Improve Mac Quicklook
apps+=(
	qlcolorcode
	qlstephen
	qlmarkdown
	quicklook-json
	qlprettypatch
	quicklook-csv
	betterzipql
	webpquicklook
	suspicious-package
)

# Essentials
apps+=(
	alfred
	dropbox
	google-chrome
	firefox
	spotify
	flash
	vlc
	transmission
	skype
	iterm2
)

# To investigate
# sublime-text
# dash
# flux
# tower

# Install apps to /Applications
# Default is: /Users/$user/Applications
brew cask install --appdir="/Applications" ${apps[@]}

brew cask alfred link					# Link installed applications to Alfred

echo "Finalizing Homebrew configuration..."

brew update
brew upgrade
brew cleanup
brew cask cleanup
