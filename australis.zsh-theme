#!/usr/bin/env zsh

local australis_theme_0="%{$fg[blue]%}"
local australis_theme_1="%{$fg[red]%}"
local australis_theme_2="%{$fg[green]%}"

australis_theme="$australis_theme_0"

case $AUSTRALIS_THEME in
	"0"|0|"default"|"blue") australis_theme="$australis_theme_0";;
	"1"|1|"red") australis_theme="$australis_theme_1";;
	"2"|2|"green") australis_theme="$australis_theme_2";;
esac

set_prompt() {
	PROMPT="$australis_theme%~$(git_prompt_info) $ %{$reset_color%}"
}

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

precmd_functions+=set_prompt
