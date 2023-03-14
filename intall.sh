#!/bin/bash

link () {
	rm -f ~/.vimrc ~/.inputrc
	ln -sf ~/.dotfiles/.vimrc ~/.vimrc
	ln -sf ~/.dotfiles/.inputrc ~/.inputrc
}

unlink () {
	rm -f ~/.vimrc ~/.inputrc
	cp ~/.dotfiles/.vimrc ~/.vimrc
	cp ~/.dotfiles/.inputrc ~/.inputrc
}

what-do () {
	echo "Usage: $0 (link|unlink)"
	exit 1
}

if [[ $# -ne 1 ]] ; then
	what-do()
fi

if [[ $1 != "link" && $1 != "unlink" ]] ; then
	echo "Invalid subcommand $1."
	echo "You baffoon."
	what-do()
fi

$1
