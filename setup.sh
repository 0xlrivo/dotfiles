#!/bin/bash

THIS="$HOME/.dotfiles"
CONFIG_DIR="$HOME/.config"

# 1. nvim config
ln -s "$THIS/nvim" "$CONFIG_DIR/nvim"
