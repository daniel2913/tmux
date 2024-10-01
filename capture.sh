#!/bin/sh

file=$(mktemp)
tmux capture-pane -pS - > $file
tmux new-window -n:scrollback "$EDITOR $file; rm $file" 
