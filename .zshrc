# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export SBT_OPTS="-XX:MaxPermSize=256m -Xmx1024m"
export WORKSPACE=$HOME/workspace
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git sbt osx brew sudo web-search tmux )

source $ZSH/oh-my-zsh.sh
source $WORKSPACE/zsh-git-prompt/zshrc.sh
# an example prompt
PROMPT='%B%m%~%b$(git_super_status)
%# '

# User configuration

#export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$HOME/play"
export PATH="$HOME/activator-1.2.0-minimal:$PATH"

export PATH="/bin:/usr/sbin:/sbin:$PATH:$HOME/bin:$HOME/spark-1.1.0-bin-hadoop2.4/bin:/usr/local/bin:$HOME/.composer/vendor/bin:$HOME/phantomjs-2.1.1-macosx/bin:/Applications/vice/x64.app/Contents/MacOS/:$HOME/.cargo/bin"

export CLASSPATH=$HOME/Applications/KickAssembler/KickAss.jar
alias serve='python -m SimpleHTTPServer 8000'
alias tm='tmux'

# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
autoload -U zmv
export SSH_KEY_PATH="~/.ssh/id_rsa"


# added by travis gem
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh
eval "$(hub alias -s)"
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval $(fw print-zsh-setup -f 2>/dev/null);
