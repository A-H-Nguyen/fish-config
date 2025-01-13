function l --wraps='ls -la' --wraps='ls -af' --wraps='ls -af --color=always' --description 'alias l=ls -af --color=always'
  ls -af --color=always $argv
        
end
