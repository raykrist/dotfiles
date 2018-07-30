#!/bin/bash
tmux_cwd=$(tmux display-message -p '#{pane_current_path}')

pushd $tmux_cwd &> /dev/null
branch=$(git symbolic-ref HEAD 2> /dev/null) || return
echo "[${branch##*/}]"
popd &> /dev/null

