# bashrc

# to enable a modifiable config change  '2013' to 'current'
CONFIG_DIR=/home/cshome/coursework/241/setup/2013

if [ -r $CONFIG_DIR/bashrc ]; then
   . $CONFIG_DIR/bashrc
fi

# aliases
alias ls='ls -G'
alias ll='ls -l'
alias la='ll -a'

# aliases for COMP212
alias 212ssh='ssh sapphire'
alias 212sftp='sftp sapphire'
