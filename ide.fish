function ide
  set length (count $argv)
  if test $length -ne 1
    _common
    return
  end

  switch $argv
    case scala
      _scala
  case '*'
    echo "$argv is not defined"
  end
end

function _common
  tmux split-window -v -p 30
  tmux split-window -h -p 66
  tmux split-window -h -p 50
  tmux select-pane -t 0
  tmux split-window -h -p 25
  tmux select-pane -t 0
end

function _scala
  tmux rename-window scala
  tmux split-window -v -p 30
  tmux select-pane -t 0
end
