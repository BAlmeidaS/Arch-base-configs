# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="steeef"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  kubectl
  zsh-autosuggestions
)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#Bash scripts
export PATH=$HOME/bash-for-your-own-good:$PATH

#pip path
export PATH=~/.local/bin:$PATH
export PATH=$HOME/Library/Python/3.7/bin:$PATH

#rbenv path
export PATH="$HOME/.rbenv/bin":$PATH
export PATH="$HOME/.rbenv/shims:$PATH"

[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
#export GOROOT_BOOTSTRAP=$HOME/.gvm/gos/go1.4

#gopath
#export PATH=$PATH:$(go env GOPATH)/bin
#export GOPATH=$(go env GOPATH)
export PATH=$PATH:/usr/local/go/bin

#alias for xclip
alias xc='xclip -sel clip'

#tfenv
# export PATH="$HOME/.tfenv/bin:$PATH"

#terraform gcloud credetials
#export GOOGLE_CREDENTIALS='/home/bruno/projetos/luizalabs/maga-bigdata-8054a973e6cd.json'
export GOOGLE_APPLICATION_CREDENTIALS='$HOME/.config/gcloud/application_default_credentials.json'
export GOOGLE_CLOUD_PROJECT=maga-bigdata

#terraform alias
alias tf='terraform'

#alias nautilus
alias files='nautilus'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/bruno/.sdkman"
[[ -s "/home/bruno/.sdkman/bin/sdkman-init.sh" ]] && source "/home/bruno/.sdkman/bin/sdkman-init.sh"

alias -g 'serveralias=serveralias -t zsh'
alias alt='update-alternatives'

export VISUAL=vim
export EDITOR=$VISUAL

alias trash-restore=restore-trash

alias octave='flatpak run org.octave.Octave'

# CUDA
export PATH=/usr/local/cuda-10.1/bin:/usr/local/cuda-10.1/NsightCompute-2019.3/:$PATH

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-10.1/lib64

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/extras/CUPTI/lib64

#mujoco
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/bruno/.mujoco/mujoco200/bin
export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libGLEW.so

#adding tensorrt
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/.TensorRT-6.0.1.5

#adding missing libs
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/x86_64-linux-gnu

#change ll
alias ll='ls -lah'

#alias jupyter
alias jn='jupyter notebook'
alias jc='jupyter console --existing'

#workon
alias w='workon'

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

#virtualenv and virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source $HOME/.local/bin/virtualenvwrapper.sh
#source $HOME/Library/Python/3.7/bin/virtualenvwrapper.sh


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/bruno/.sdkman"
[[ -s "/home/bruno/.sdkman/bin/sdkman-init.sh" ]] && source "/home/bruno/.sdkman/bin/sdkman-init.sh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/bruno/.gcloud-cloud-sdk/path.zsh.inc' ]; then . '/home/bruno/.gcloud-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/bruno/.gcloud-cloud-sdk/completion.zsh.inc' ]; then . '/home/bruno/.gcloud-cloud-sdk/completion.zsh.inc'; fi
alias tm=trash

# finally source zsh
source $ZSH/oh-my-zsh.sh

#Pyenv and youcompleteme fix
export PYTHON_CONFIGURE_OPTS="--enable-shared"

#vim mode
#bindkey -v

#https://github.com/todotxt/todo.txt
#https://github.com/todotxt/todo.txt-cli
#ADDONS https://github.com/todotxt/todo.txt-cli/wiki/Todo.sh-Add-on-Directory
alias t='todo.sh'

export PATH=$JAVA_HOME/bin:$PATH
export PATH=$HOME/.zookeeper/bin:$PATH
