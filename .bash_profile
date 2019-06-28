set -o vi
bind -m vi-insert C-c:vi-movement-mode
bind -m vi-insert C-l:clear-screen
stty intr ^X
shopt -s histappend
HISTSIZE=10000

alias ls='ls -halpG'
alias lst='ls -t'
