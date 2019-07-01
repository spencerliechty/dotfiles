set -o vi
bind -m vi-insert C-c:vi-movement-mode
bind -m vi-insert C-l:clear-screen
stty intr ^X
shopt -s histappend
HISTSIZE=1000000

alias ls='ls -halpG'
alias lst='ls -t'

# PBCOPY, install xclip first
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# PYENV shit
# https://github.com/pyenv/pyenv-virtualenv
# https://github.com/pyenv/pyenv#installation
export PATH="/home/s0l/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
