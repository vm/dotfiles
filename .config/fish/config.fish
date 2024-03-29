function fish_greeting
end

alias vim nvim

set -gx EDITOR nvim
set -gx PYTHONDONTWRITEBYTECODE 1
set -gx GOPATH ~/Projects/go
set -gx NVM_DIR $HOME/.nvm
set -gx PATH $PATH /usr/local/sbin
set -gx PATH $PATH /usr/local/bin
set -gx PATH $PATH $HOME/.cargo/bin
set -gx PATH $PATH $HOME/.nvm
set -gx PATH $PATH /opt/homebrew/bin

function __check_nvm --on-variable PWD --description 'Do nvm stuff'
  if test -f .nvmrc
    nvm use
  end
end

__check_nvm
