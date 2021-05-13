#!/usr/bin/env bash

bashrc_content="
# CheemaFy bash
if [ -f ~/programs/CheemaFy/bash/setup_bash ]; then
	. ~/programs/CheemaFy/bash/setup_bash
fi
if [ -f ~/.CheemaFy/temp_bashrc ]; then
	. ~/.CheemaFy/temp_bashrc
fi
"
temp_bashrc_content="
_srb_cpcb='xclip -selection clipboard'
_srb_disk='nautilus'
"
vimrc_content="
:so ~/programs/CheemaFy/vim_scripts/setup.vim
"
vimrc_plugin_content="
:so ~/programs/CheemaFy/vim_scripts/adv/setup.vim
"
gitconfig_content="
[include]
	path = ~/.CheemaFy/enabled
"
enabled_content="
[include]
	path = ~/programs/CheemaFy/git_extended/gitconfig
	path = /Users/srb/programs/CheemaFy/git_extended/srbconfig
"

# CONFIGURING HOME FILES
printf "Do you want to configure home_files (y/n) : "; read ans
if [ $ans = "y" ]; then
	mkdir -p $HOME"/.CheemaFy/srb_clip_board"
	echo "$vimrc_content" >> ~/.vimrc
	echo "$bashrc_content" >> ~/.bashrc
	echo "$bashrc_content" >> ~/.bash_profile
	echo "$gitconfig_content" >> ~/.gitconfig
	echo "$temp_bashrc_content" >> ~/.CheemaFy/temp_bashrc
	echo "$enabled_content" >> ~/.CheemaFy/enabled
fi

#install Vundle in VIM and plugins
printf "Do you want to configure vim plugins (not recommended) (y/n) : "; read ans
if [ $ans = "y" ]; then
	echo "$vimrc_plugin_content" >> ~/.vimrc
	if ! [ -d "$HOME"/.vim/bundle/ ]; then
		echo installing vim bundle
		git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	fi
	vim hell -c ":PluginInstall" -c ":q!" -c ":q!"
fi

echo 'Thanks for using CheemaFy'

#TODO: make it like https://github.com/brtrndb/bashrc/blob/master/install.sh