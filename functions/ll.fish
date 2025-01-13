function ll --wraps='ls -la' --wraps='ls -la --color=auto' --description 'alias ll=ls -la --color=auto'
  ls -la --color=auto $argv
        
end
