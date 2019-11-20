# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

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
# plugins=(git)

source $ZSH/oh-my-zsh.sh

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

#virtualenv and virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source $HOME/.local/bin/virtualenvwrapper.sh
#source $HOME/Library/Python/3.7/bin/virtualenvwrapper.sh

#rbenv path
export PATH="$HOME/.rbenv/bin":$PATH
export PATH="$HOME/.rbenv/shims:$PATH"

#Terraform aws region
export AWS_REGION=us-east-1

[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
export GOROOT_BOOTSTRAP=$HOME/.gvm/gos/go1.4

#gopath
#export PATH=$PATH:$(go env GOPATH)/bin
#export GOPATH=$(go env GOPATH)
export PATH=$PATH:/usr/local/go/bin

#keys gn
export BUNDLE_GITHUB__COM=2c8e6f7c0934d3bd8a884b276a0e776101c0ff3e:x-oauth-basic

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/bruno/getninjas/aws-scripts/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/bruno/getninjas/aws-scripts/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/bruno/getninjas/aws-scripts/node_modules/tabtab/.completions/sls.zsh ]] && . /home/bruno/getninjas/aws-scripts/node_modules/tabtab/.completions/sls.zsh

#alias for xclip
alias xc='xclip -sel clip'

#tfenv
# export PATH="$HOME/.tfenv/bin:$PATH"

#terraform gcloud credetials
#export GOOGLE_CREDENTIALS='/home/bruno/projetos/luizalabs/maga-bigdata-8054a973e6cd.json'
export GOOGLE_CREDENTIALS='$HOME/.config/gcloud/application_default_credentials.json'

#terraform alias
alias tf='terraform'

#alias nautilus
alias files='nautilus'

#alias teresa configs
alias old-production='teresa config use-cluster gcp-production-old'
alias old-staging='teresa config use-cluster gcp-staging'
alias production='teresa config use-cluster regional-production'
alias staging='teresa config use-cluster regional-staging'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/bruno/.sdkman"
[[ -s "/home/bruno/.sdkman/bin/sdkman-init.sh" ]] && source "/home/bruno/.sdkman/bin/sdkman-init.sh"

#airflow
export AIRFLOW_HOME=$HOME/.airflow-local

#logs Airflow
log () {
  rm -rf delete
  mkdir delete
  cd delete
  gsutil cp -r $(echo $(expr $1 : '^\(.*\)\/driveroutput$')) .
  cd $(ls)
  echo "\n#######################################################"
  echo "######################### LOG #########################"
  echo "#######################################################\n"
 # cat driveroutput.000000000
 # cd ../..
 # rm -rf delete
}

#connect gcp
function conn () {
  HOST=$1 
  gcloud compute --project "maga-bigdata" ssh --zone="us-east1-b" \
                                              --ssh-flag="-D" \
                                              --ssh-flag="10000" \
                                              --ssh-flag="-N" \
                                              ${HOST} &
  PID=$!
  sleep 1.5
  google-chrome "http://"${HOST}":80" \
                --proxy-server="socks5://localhost:10000" \
                --host-resolver-rules="MAP * 0.0.0.0 , EXCLUDE localhost" \
                --user-data-dir=/tmp/ 2> /dev/null
  kill -INT $PID
  sleep 1
}

[[ -s "/home/bruno/.gvm/scripts/gvm" ]] && source "/home/bruno/.gvm/scripts/gvm"

alias -g 'serveralias=serveralias -t zsh'
alias alt='update-alternatives'

alias haro='haroopad'

export VISUAL=vim
export EDITOR="$VISUAL"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/bruno/.google-cloud-sdk/path.zsh.inc' ]; then . '/home/bruno/.google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/bruno/.google-cloud-sdk/completion.zsh.inc' ]; then . '/home/bruno/.google-cloud-sdk/completion.zsh.inc'; fi

alias trash-restore=restore-trash

alias octave='flatpak run org.octave.Octave'

# CUDA
export PATH=/usr/local/cuda-10.1/bin:/usr/local/cuda-10.1/NsightCompute-2019.3/:$PATH

export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64

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

#java
#export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
#export PATH=$JAVA_HOME/bin:$PATH

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/bruno/.sdkman"
[[ -s "/home/bruno/.sdkman/bin/sdkman-init.sh" ]] && source "/home/bruno/.sdkman/bin/sdkman-init.sh"

alias kctl="kubectl --insecure-skip-tls-verify"
