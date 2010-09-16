# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias _='sudo'

#alias g='grep -in'

# Show history
alias history='fc -l 1'

# List direcory contents
alias lsa='ls -lah'
alias l='ls -la'
alias ll='ls -l'
alias sl=ls # often screw this up

alias afind='ack-grep -il'

alias v='ls -l --color=auto'
alias va='ls -l -a --color=auto'
alias vh='ls -l -h --color=auto'
alias vs='ls -ltrh --color=auto'

alias grep='LC_CTYPE=C grep --color=auto'
alias zgrep='LC_CTYPE=C zgrep --color=auto'

alias l='less'
alias x="nyxmms2"

alias cm="./configure && make"
alias e="emacs -nw"
alias mkt="make test"
alias ack="ack-grep"
alias df="df -h"
alias rm='rm -i'

alias untar="tar xzfv"
