ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export SBT_OPTS="-XX:MaxPermSize=256m -Xmx1024m"
export WORKSPACE=$HOME/workspace

plugins=(git sbt osx brew sudo web-search tmux cargo docker)

source $ZSH/oh-my-zsh.sh
source $WORKSPACE/zsh-git-prompt/zshrc.sh
PROMPT='%B%~%b%(?..[$fg[red]%?$reset_color] )$(git_super_status)
%# '

export PATH="$PATH:/usr/local/bin:$HOME/bin:$HOME/.cargo/bin"

export CLASSPATH=$HOME/Applications/KickAssembler/KickAss.jar
alias serve='python -m SimpleHTTPServer 8000'
alias tm='tmux'

autoload -U zmv
export SSH_KEY_PATH="~/.ssh/id_rsa"

[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh
eval "$(hub alias -s)"
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

source $WORKSPACE/newp/newproject-function.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval $(fw print-zsh-setup -f 2>/dev/null);
