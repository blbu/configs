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
alias la='ll -a'
alias rm='rm -i --preserve-root'
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

# compose nav and listing
cl() { c "$@"; l; }

# aliases for COMP212
alias 212ssh='ssh sapphire'
alias 212sftp='sftp sapphire'

# mkdir and cd in a single command -- doesn't support spaces in names
mkdircd() { mkdir -p "$@" && cd $_; }

# set a simple prompt
PS1='\w\$ '

# make it easier to edit this file (and apply the changes)
alias eb='v ~/.bashrc; . ~/.bashrc;'
