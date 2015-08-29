#!/bin/bash
#
# Creates symlinks to dotfiles. In the event a file already exists, a message is
# displayed and the file is skipped.

# Capture the path this script lives in, to use as a base path in symlinks
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Tests to see if a file exists before creating a symlink
# Arguments:
#	Path to symlink source
#	Path to symlink destination
# Returns:
#	None
function ensure_link {
	if test -L "$2"
	then
		echo "$2" already exists
	else
		ln -s "$1" "$2"
	fi
}

# General
ensure_link "$DIR/exports" "$HOME/.exports"
ensure_link "$DIR/aliases" "$HOME/.aliases"
ensure_link "$DIR/functions" "$HOME/.functions"

# Zsh
ensure_link "$DIR/zsh/zshrc" "$HOME/.zshrc"
ensure_link "$DIR/zsh/zprofile" "$HOME/.zprofile"
ensure_link "$DIR/zsh/zpreztorc" "$HOME/.zpreztorc"

# tmux
ensure_link "$DIR/tmux/tmux.conf" "$HOME/.tmux.conf"
ensure_link "$DIR/tmux/tmux-osx.conf" "$HOME/.tmux-osx.conf"

# Git
ensure_link "$DIR/git/gitconfig" "$HOME/.gitconfig"
ensure_link "$DIR/git/gitignore" "$HOME/.gitignore"

# Vim
ensure_link "$DIR/vim/vim" "$HOME/.vim"
ensure_link "$DIR/vim/vimrc" "$HOME/.vimrc"

# Gem
ensure_link "$DIR/gem/gemrc" "$HOME/.gemrc"

# Wget
ensure_link "$DIR/wget/wgetrc" "$HOME/.wgetrc"

# Curl
ensure_link "$DIR/curl/curlrc" "$HOME/.curlrc"
