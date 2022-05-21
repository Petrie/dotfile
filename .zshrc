# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export GOPATH=$HOME/go

export GOROOT=/usr/local/go
#export GOROOT=/usr/local/opt/go@1.14/libexec
#export GOROOT=$HOME/go/src/github.com/golang/go

export GOBIN=$GOROOT/bin

export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOBIN
export PATH=$PATH:$HOME/golandlanuncher
export PATH=$PATH:%HOME/nvim-osx64/bin
[ -f ~/.privite_profile ] && source ~/.privite_profile


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  #zsh-autosuggestions
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh


alias jump='$HOME/.ssh/login_inner'
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
alias tnew="tmux new -s"
export LANG=zh_CN.gbk
source ~/.oh-my-zsh/plugins/incr/incr*.zsh
export LC_CTYPE=en_US.UTF-8
export LC_ALL=zh_CN.UTF-8


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/local/etc/profile.d/autojump.sh  ] && . /usr/local/etc/profile.d/autojump.sh
source ~/z.sh
eval $(thefuck --alias)
export PATH="/usr/local/opt/lua@5.3/bin:$PATH"
export PATH="$HOME/ssh_shell/lg_shell:$PATH"
alias n="nvim"
export VISUAL=/usr/bin/vim
export EDITOR=/usr/bin/vim

export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles


alias setproxy="export http_proxy=socks5://127.0.0.1:1090; export https_proxy=$http_proxy; echo 'HTTP Proxy on';"
alias unsetproxy="unset http_proxy; unset https_proxy; echo 'HTTP Proxy off';"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -l -g ""'
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || bat {}) 2> /dev/null | head -500'"
