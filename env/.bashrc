if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

export PATH="$HOME/bin:$PATH"

alias l='ls'
#alias ls='ls -Fh --color=auto'
alias ls='ls -FhG'
alias ll='ls -l'
alias llr='ll -atr'
alias lla='ll -a'
alias rm='rm -i'
alias df='df -h'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
alias readlink=greadlink

#alias ta='tmux attach || tmux'
alias ta='tmux attach -t'
alias tl='tmux ls'

alias gitpull='git pull --rebase'

alias py='python'
alias py3='python3'
alias pj='python -m json.tool'
alias pje='json.dumps(json.loads(a), sort_keys=True, indent=4, separators=(",", ": "))'

alias redis-cli='redis-cli --raw'

alias ip='ifconfig |grep "inet " |grep -v "127.0.0.1" | cut -d " " -f 2'

alias pv1='pv -qL 10' # echo "Hello World!" | pv1
alias stp='strace -s 65536 2>&1 -o output.txt -T -tt -e trace=all -p  ' # 查看进程log，使用：stp {pid}, 说明：https://linuxtools-rst.readthedocs.io/zh_CN/latest/tool/strace.html

export PS1="[\t \u@local \W]\$ "
#export PS1="[\u@localhost \w]\$ "
#export PS1="[\u@`ip` \w]\$ "
#export PS1="[\u@\h \w]\$ "

export LC_ALL='en_US.UTF-8'

function pyh(){
    echo "http://`ip`:${1:-8000}/"
    python3 -m http.server ${1:-8000}
}

function lsp() {
    echo "lsof -i:$1"
    lsof -i:$1
}

#alias pgr='pgrep -fl'
#alias pgr='pgrep -u `whoami` -fa'
function pgr() {
    if [ -n "$(pgrep -u `whoami` -f $1)" ]; then
        pgrep -u `whoami` -f "$1"  | xargs ps --forest -p
    else
        pgrep -u `whoami` -f "$1"
    fi
}
function pga() {
    pgrep -fa "$1"
}
function pgk() {
    pgrep -fl $1
    kill `pgrep -f $1`
}

