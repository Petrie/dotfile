# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[ -f ~/.privite_profile ] && source ~/.privite_profile
##################
#common
##################
export LANG=zh_CN.gbk
export LC_CTYPE=en_US.UTF-8
export LC_ALL=zh_CN.UTF-8


##################
#go
##################
export GOPATH=$HOME/go
#export GOROOT=/usr/local/opt/go@1.14/libexec
#export GOROOT=/opt/homebrew/Cellar/go@1.20/1.20.7/libexec
export GOROOT=/opt/homebrew/opt/go@1.20/libexec
#export GOROOT=/opt/homebrew/opt/go@1.17/libexec
#export GOROOT=$HOME/go/src/github.com/golang/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
export PATH=$PATH:$GOBIN

##################
#python
##################
export PIP_PATH=$HOME/Library/Python/3.9/bin
export PATH=$PATH:$PIP_PATH


##################
#zsh
##################
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  kube-ps1
)
source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/plugins/incr/incr*.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/local/etc/profile.d/autojump.sh  ] && . /usr/local/etc/profile.d/autojump.sh
source ~/z.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias jump='$HOME/.ssh/login_inner'
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
alias tnew="tmux new -s"


eval $(thefuck --alias)
export PATH="/usr/local/opt/lua@5.3/bin:$PATH"
export PATH="$HOME/ssh_shell/lg_shell:$PATH"
alias n="/opt/homebrew/bin/nvim"
export VISUAL=/opt/homebrew/bin/nvim
export EDITOR=/opt/homebrew/bin/nvim
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

alias setproxy="export http_proxy=http://127.0.0.1:7890; export https_proxy=https://127.0.0.1:7890; echo 'HTTP Proxy on';"
#alias setproxy="export http_proxy=socks5://127.0.0.1:1090; export https_proxy=socks5://127.0.0.1:1090; echo 'HTTP Proxy on';"
alias unsetproxy="unset http_proxy; unset https_proxy; echo 'HTTP Proxy off';"
alias vim=/opt/homebrew/bin/nvim


export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -l -g ""'
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || bat {}) 2> /dev/null | head -500'"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -r "/usr/local/etc/profile.d/bash_completion.sh"  ]] && . "/usr/local/etc/profile.d/bash_completion.sh"




#
export PATH=$PATH:$HOME/golandlanuncher

#kubectl
export KUBECONFIG="${KUBECONFIG}:${HOME}/.kube/config"
export KUBECONFIG="${KUBECONFIG}:${HOME}/.kube/config-prod"
alias k=kubectl
alias kctx=kubectx
alias kns=kubens
#source <(kubectl completion zsh)
#zinit light jonmosco/kube-ps1
PROMPT='$(kube_ps1)'$PROMPT # or RPROMPT='$(kube_ps1)'
