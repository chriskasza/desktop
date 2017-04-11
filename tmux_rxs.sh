#!/bin/bash

# a name for the session
SESSION=rxsecurity_webapp

# start session
tmux -2 new-session -d -s $SESSION

# open new window for rails server and console
tmux send-keys "cd $SESSION" C-m
tmux send-keys "rsp 3001" C-m
tmux split-window -h
tmux send-keys "cd $SESSION" C-m
tmux send-keys "rc" C-m

# change to app directory
tmux new-window -t $SESSION:2
tmux select-window -t $SESSION:2
tmux send-keys "cd $SESSION/app/views/orders" C-m
tmux send-keys "ls -la" C-m

# create new pane to right
tmux split-window -h
tmux send-keys "cd $SESSION/app/assets/javascripts" C-m
tmux send-keys "ls -la" C-m

# Setup a window to the database
tmux new-window -t $SESSION:3 'mysql -uroot -phummingbird rxsecurity_webapp_development'

# Set default window
tmux select-window -t $SESSION:2

# change focus to pane 0
tmux select-pane -t 0

# Attach to session
tmux -2 attach-session -t $SESSION
