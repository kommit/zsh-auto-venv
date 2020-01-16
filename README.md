# zsh-auto-venv

activate/deactivate a python virtual env quickly

## Description
This plugin will find .venv in current directory or nearest parent directories, then activate it.


## Install

    git clone --depth 1 https://github.com/kommit/zsh-auto-venv.git $ZSH_CUSTOM/plugins/zsh-auto-venv

Add the plugin in your `~/.zshrc` file:

    plugins=(... zsh-auto-venv)
