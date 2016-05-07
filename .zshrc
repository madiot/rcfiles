# from https://github.com/sorin-ionescu/prezto
source ~/.zprezto/init.zsh

# shortcuts
alias V="vim"
alias vimrc="V ~/.vimrc"
alias j="jobs -l"
alias P="pushd"
alias D="dirs -v"

# mac port if exist
if [[ -e ~/.portrc ]] then
  . ~/.portrc
fi
