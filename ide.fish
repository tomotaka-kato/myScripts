function ide
  tmux split-window -v -p 30
  tmux split-window -h -p 66
  tmux split-window -h -p 50
  tmux select-pane -t 0
  tmux split-window -h -p 25
  tmux select-pane -t 0
end
