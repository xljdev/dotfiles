# Zsh options
setopt autocd           # Change to a directory just by typing its name
setopt correct          # Auto correct minor typos
setopt nocaseglob       # Case insensitive globbing
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# History control
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Environment variables
export EDITOR="nvim"
export VISUAL="nvim"
export TERM="xterm-kitty"  # Optimized for Kitty terminal

# Enable autocompletion
autoload -Uz compinit
compinit

# Zsh plugins (install with the commands provided)
if [[ -f ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
    source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

if [[ -f ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# ===============================
# Development Environment Setup
# ===============================

# NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Pyenv (Python Version Manager)
export PATH="$HOME/.pyenv/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

# Add local bin to PATH
export PATH="$HOME/.local/bin:$PATH"

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
alias gd="git diff"
alias gb="git branch"

# System update
alias update="sudo apt update && sudo apt upgrade -y"

# Quick edit and reload configs
alias ez="nvim ~/.zshrc"
alias rz="source ~/.zshrc"
alias ek="nvim ~/Projects/dotfiles/kitty/kitty.conf"

# Editor shortcuts
alias vim="nvim"
alias v="nvim"

# Python shortcuts
alias py="python3"
alias pip="pip3"

# .NET shortcuts
alias dr="dotnet run"
alias db="dotnet build"
alias dt="dotnet test"

# Terminal utilities
alias c="clear"
alias restart-term="killall kitty && kitty & disown"

# ===============================
# Starship Prompt (keep at end)
# ===============================
eval "$(starship init zsh)"
