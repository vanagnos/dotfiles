function parse_git_branch() {
    BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
    if [ ! "${BRANCH}" == "" ]then
        #STAT=`parse_git_dirty`
        echo "[${BRANCH}]"
        else
        echo ""
    fi
}


# usage: zman grep
# extract all chapters of man pages for specified command
function zman()
{
 zcat "$(man -w $1)" | grep '^\.SH'
}

# toggle kubernetes cluster 
changeCluster()
{
    current_cluster=$(kubectl config current-context)
    echo "current cluster: $current_cluster"

    if [ $current_cluster == "hall009" ] 
    then
        kubectl config use-context hart074
    else
        kubectl config use-context hall009
    fi

}

export PS1="\[\e[32m\]\[\e[m\]\[\e[36m\]\[\e[m\]\[\e[36m\]\[\e[m\] \[\e[37;40m\]\w\[\e[m\] \[\e[31m\]\`parse_git_branch\`\[\e[31m\]-\[\e[32m\]\`current_host\`\[\e[m\]\\$ ";

# rg searches recursively by default, just like grep -ril
alias g='rg -il'
alias f='find -iname'

set -o vi
set editing-mode vi
export EDITOR=vim
 
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

# For Debian/Ubuntu systems
# On Redhat based systems this is the default behaviour (I think), so leave this comment out.
# set this at the end of bashrc
# unbind the werase character (whih is the C-w) then bind the C-w.
# use this binding to make C-w delete word with whitespace as a delimiter.
stty werase undef
bind '"\C-w": unix-word-rubout'

# Bash history configuration
# By default, history is written to .history when the terminal session is closed. Force writing immediately after executing a command.
PROMPT_COMMAND="history -a; history -r; $PROMPT_COMMAND"
shopt -s histappend

# Unlimited history. If `-1` doesn't work try leaving it unset, like this `HISTISZE= `
# number of history entries stored in memory
HISTSIZE=-1
# number of history entries stored in history file
HISTFILESIZE=-1

# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
# export HISTFILE=~/.bash_eternal_history


