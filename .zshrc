if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
plugins=(zsh-syntax-highlighting web-search)

source $ZSH/oh-my-zsh.sh

alias rc='vim ~/.zshrc'
alias reload='source ~/.zshrc'
alias gitcom='git commit -m'
#alias csug1='ssh -l lming2 cycle1.csug.rochester.edu'
#alias csug2='ssh -l lming2 cycle2.csug.rochester.edu'
#alias csug3='ssh -l lming2 cycle3.csug.rochester.edu'
#alias csug4='ssh -l lming2 cycle4.csug.rochester.edu'
#alias bluehive='ssh lming2@@bluehive.circ.rochester.edu'
[[ ! -f ~/.p10k.zsh ]] #|| source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# this code below lazy loads nvm. if it doesn't work, switch back to the 2 commented-out linese above.
nvm() {
  # load nvm if not already loaded
  if ! command -v nvm >/dev/null 2>&1; then
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
  fi
  # pass all arguments to nvm
  command nvm "$@"
}

export PATH="$PATH:/Users/lucymingyi/.rbenv/versions/3.2.9/bin"
