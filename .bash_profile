# MKTO CMDS
alias cd-poc='cd /Users/sliechty/dev/workspaces/mercury/poc'
alias cdmf='cd /Users/sliechty/dev/mercury-framework'
# END MKTO CMDS

set -o vi
bind -m vi-insert C-c:vi-movement-mode
bind -m vi-insert C-l:clear-screen
stty intr ^X
shopt -s histappend
HISTSIZE=10000

alias ls='ls -Glathp'

# PYTHON SHIZNIT
export PIP_REQUIRE_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

#INSTALL pip global syntax
#syspip install --upgrade pip setuptools virtualenv

syspip(){
	PIP_REQUIRE_VIRTUALENV="" pip "$@"
}



############
# PROMPT   #
############
txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White

bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White

unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White

bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
badgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White

txtrst='\e[0m'    # Text Reset


print_before_the_prompt() {
	printf "\n $bldgrn%s $txtpur%s\n$txtrst" "$PWD" "$(vcprompt)"

}

PROMPT_COMMAND=print_before_the_prompt
PS1='->'
export PATH=/usr/local/bin:$PATH

alias vim="/usr/local/bin/vim"

export NVM_DIR="/Users/sliechty/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

alias gitwatch='while :; do clear; git status; sleep 2; done'
alias lintwatch='while :; do clear; node_modules/.bin/eslint src/; sleep 2; done'

alias setd='MY_CUR_DIR="$(pwd)"'
alias cdd='cd $MY_CUR_DIR'

nvm use 4

source /usr/local/bin/virtualenvwrapper.sh
