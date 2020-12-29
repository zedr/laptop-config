# .bashrc
export EDITOR=vim
export HISTSIZE=9999

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
export PATH="$HOME/.local/bin:$HOME/bin:$HOME/go/bin:$HOME/Android/Sdk/platform-tools:Android/Sdk/tools/bin/:~/.poetry/bin:$PATH:~/.cargo/bin"
export ANDROID_NDK_HOME=~/Android/Ndk
export ANDROID_HOME=~/Android/Sdk
export JAVA_HOME=/usr/lib/jvm/java

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias json="/usr/bin/env http $1 $2 --json"
alias envact="source .env/bin/activate"
alias vi="vi -u NONE"
alias tk="tmux kill-session -t"
alias ta="tmux a -t"
alias tam="tmux a -t main"
alias tn="tmux new -s"
alias tm="tmux new -s main"
alias gzcat="gunzip -c"
alias ndb="node-debug -p 8888"
alias say="espeak -ven-us+f4 -s170"
alias t="thunar 1>/dev/null 2>&1 &"
alias gcb="git cb"
alias gst="git status"
alias gam="git st | grep -E \"modified:\" | cut -d \" \" -f 4 | xargs git add"
alias gca="git commit --amend"
alias gau="git add -u"
alias gcm="git commit -m"
alias gacm="git commit -a -m"
alias gcam="gacm"
alias gpo="git push origin"
alias gpom="git push origin master"
alias gch="git checkout"
alias gp="git push"
alias ccat='pygmentize -g'
alias gfo="git fetch origin"
alias gmom="git merge --ff-only origin/master"
alias grog='git log --graph --abbrev-commit --decorate --all --format=format:"%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(dim white) - %an%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n %C(white)%s%C(reset)"'
alias gl="git log --format=oneline --abbrev-commit"
alias gdc="git diff --cached"
alias gf="git fetch"
alias gfom="git fetch origin master"
alias gfom+="gfom && gmom --ff-only"
alias grm="git review master"
alias grb="git rebase"
alias glp="git log --oneline --decorate --graph --all"
alias gau="git add -u"
alias gras="git rebase -i --autosquash"
alias gh="git hist"
alias gamflake8="git status -s | grep -E '^M ' | cut -d ' ' -f 3 | xargs flake8"
alias gam="git add ."
alias gco="git checkout"
alias gcb="git checkout -b"
alias ga="git add -A"
alias gb="git branch"
alias gcp="git cherry-pick"
alias gdn="git diff --name-only"
alias gpot="git push origin --tags"
alias cpu-powersave="sudo cpupower frequency-set -g powersave"
alias cpu-performance="sudo cpupower frequency-set -g performance"
alias m="mousepad"
alias odc="od -c"
alias f="fg"
alias k="kubectl"
alias vim="nvim"
alias gd="git diff"
alias myenv="source ~/.env/bin/activate"
alias thisenv="source .env/bin/activate"
cjson() {
    curl -i -H "Cache-Control: no-cache" -H "Pragma: no-cache" -H "Accept: application/json" -X $1 $2 | json_pp
}

dkrun() { docker run -i -t -v ~/Docker:/mnt "$1" bash; }

function psgrep() { ps axuf | grep -v grep | grep "$@" -i --color=auto; }

alias fastscan="nmap -sP -T5" $1
export GOPATH=~/dist/golang
