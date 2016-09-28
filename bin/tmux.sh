#!/bin/bash

cd ${HOME}/dev/norcams/himlar

name=$1

SESSION=`basename $PWD`

tmux new-session -d -s $name
tmux rename-window -t $name:1 himlar
tmux new-window -t $name -a -n cli
tmux new-window -t $name -a -n master
tmux new-window -t $name -a -n dboard
tmux new-window -t $name -a -n compute
tmux select-window -t $name:1
tmux attach -t $name

