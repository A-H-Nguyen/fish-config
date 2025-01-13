function ta --wraps='tmux attach-session -t' --description 'alias ta=tmux attach-session -t'
  tmux attach-session -t $argv
        
end
