function t --wraps='tmux new-session -A -s' --description 'alias t=tmux new-session -A -s'
  tmux new-session -A -s $argv
        
end
