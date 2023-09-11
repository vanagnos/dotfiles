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

