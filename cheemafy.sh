#!/usr/bin/env bash
if [ "$1" = "--remove" ]
then
	echo "removing CheemaFy"
	mv ~/.CheemaFy/installed ~/.CheemaFy/not_installed
	exit
fi


#these commands are safe to execute they create folder only when
#the folders are missing, they dont harm old content
mkdir -p $HOME"/.CheemaFy/srb_clip_board"


# CONFIGURING HOME FILES
printf "Do you want to configure home_files y/n : "
read ans

bashrc_content="
# CheemaFy bash
if [ -f ~/.CheemaFy/installed ]; then
	if [ -f ~/programs/CheemaFy/bash/setup_bash ]; then
		. ~/programs/CheemaFy/bash/setup_bash
	fi
	if [ -f ~/.CheemaFy/temp_bashrc ]; then
		. ~/.CheemaFy/temp_bashrc
	fi
fi
"
gitconfig_content="
[include]
	path = ~/.CheemaFy/installed
"
vimrc_content="
:so ~/programs/CheemaFy/vim_scripts/setup.vim
"
installed_content="
[include]
	path = ~/programs/CheemaFy/git_extended/gitconfig
	path = /Users/srb/programs/CheemaFy/git_extended/srbconfig
"


echo "$installed_content" >> ~/.CheemaFy/installed
if [ $ans = "y" ]
then
	echo "$vimrc_content" >> ~/.vimrc
	echo "$bashrc_content" >> ~/.bashrc
	echo "$gitconfig_content" >> ~/.gitconfig
fi

#install Vundle in VIM and plugins
if ! [ -d "$HOME"/.vim/bundle/ ]
then
	echo installing vim bundle
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim hell -c ":PluginInstall" -c ":q!" -c ":q!"

echo 'Thanks for using CheemaFy'
