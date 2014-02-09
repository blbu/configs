# bashrc

# to enable a modifiable config change  '2013' to 'current'
CONFIG_DIR=/home/cshome/coursework/241/setup/2013

if [ -r $CONFIG_DIR/bashrc ]; then
  . $CONFIG_DIR/bashrc
fi

# aliases
alias ls='ls -G'
if [[ $OSTYPE == "linux-gnu" ]]; then
  alias ls='ls --color=auto'
fi
alias ll='ls -l'
alias la='ls -a'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias vi='vim'
alias v='vim'

# experimental aliases
alias cd..='cd ..'
alias c='cd'
alias l='ls'
alias tree='tree -C'
alias clean='make clean'
alias cleanmake='clean; make'
alias m='make'

# compose nav and listing
cl() { c "$@"; l; }

# aliases for COMP212
alias 212ssh='ssh sapphire'
alias 212sftp='sftp sapphire'

# mkdir and cd in a single command -- doesn't support spaces in names
mkdircd() { mkdir -p "$@" && cd $_; }

# set a simple prompt
PS1='[32m\w\$[0m '

# make it easier to edit this file (and apply the changes)
alias eb='v ~/.bashrc; . ~/.bashrc;'

# shell is not vim
alias :q="echo 'This is a shell!'"
alias :x="echo 'This is a shell!'"

# git aliases because I don't want to type git all day
alias st='git st'
alias s='st'
alias add='git add'
alias ci='git commit'
alias pushom='git pushom'
alias gd='git diff'

# my ll -- [j]ust [l]ist the files!
jl() {
  for f in *
  do
    echo ${f}
  done
}

# Purposefully Latent Script alias
alias pls='~/pls.sh'

#Overloaded navigation
ppushd() {
  if [[ $# -eq 0 ]]
  then
    DIR="${HOME}"
  else
    DIR="$1"
  fi

  builtin pushd "${DIR}" &> /dev/null
}

pushd_builtin() {
  builtin pushd &> /dev/null
}

ppopd() {
  builtin popd &>/dev/null
}

#Overloaded navigation aliases
alias cd='ppushd'
alias back='ppopd'
alias flip='pushd_builtin'
alias \?='dirs'

#Stop clobbering history when closing multiple shells
shopt -s histappend
shopt -s cmdhist
PROMPT_COMMAND='history -a'

#Require two Ctrl-D to close shell
export IGNOREEOF=1

#Try to use history to quickly open recently used Vim file
#alias x='v $(history -p !v:$)'

#tdot fn -- toggle dot at start of filename (i.e, hide/unhide)
td() {
  while [[ $1 != "" ]]
  do
    if [[ ${1:0:1} == "." ]]
    then
      mv ${1} "./$(basename ${1:1})"
    else
      mv ${1} "./.$(basename ${1})"
    fi
    shift
  done
}
alias vlast='v $(ls -t | cut -d " " -f 1 | head -n 1)'
