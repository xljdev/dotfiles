# Created by newuser for 5.8.1
eval "$(starship init zsh)"

# Set Zsh options
setopt autocd           # Change to a directory just by typing its name
setopt correct          # Auto correct minor typos
setopt nocaseglob       # Case insensitive globbing

# Export environment variables
export EDITOR="nvim"
export VISUAL="nvim"
export TERM="xterm-256color"

# Starship prompt
eval "$(starship init zsh)"

# History control
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Enable autocompletion
autoload -Uz compinit
compinit

# Enable command suggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable syntax highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ===============================
# Aliases - For Productivity
# ===============================

# Basic navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ll="ls -la"
alias la="ls -A"
alias l="ls -CF"
alias home="cd $HOME"

# Git shortcuts
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gl="git log --oneline --graph --all"

# System update
alias update="sudo apt update && sudo apt upgrade -y"

# Quick edit and reload zsh config
alias ez="nvim ~/.zshrc"
alias rz="source ~/.zshrc"

# Neovim quick open
alias vim="nvim"

# Python
alias py="python3"

# Dotnet
alias dr="dotnet run"
alias db="dotnet build"
alias dt="dotnet test"

# Clear terminal
alias c="clear"

# Restart Alacritty easily
alias restart-term="killall alacritty && alacritty & disown"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
