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
	echo "$bashrc_content" >> ~/.bashrc
	echo "$bashrc_content" >> ~/.bash_profile
	echo "$gitconfig_content" >> ~/.gitconfig
	echo "$temp_bashrc_content" >> ~/.CheemaFy/temp_bashrc
	echo "$enabled_content" >> ~/.CheemaFy/enabled
fi

echo 'Thanks for using CheemaFy'

#TODO: make it like https://github.com/brtrndb/bashrc/blob/master/install.sh