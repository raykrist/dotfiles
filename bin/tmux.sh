#!/bin/bash

cd ${HOME}

name=$1

SESSION=`basename $PWD`

tmux new-session -d -s $name
tmux rename-window -t $name:1 login
tmux new-window -t $name -a -n cli
tmux new-window -t $name -a -n os-cli
tmux new-window -t $name -a -n id
tmux new-window -t $name -a -n dashboard
tmux select-window -t $name:1
tmux attach -t $name

