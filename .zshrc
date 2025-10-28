printf '\33c\e[3J'

# ============== Core Settings ====================
if [[ -f "/opt/homebrew/bin/brew" ]] then
  # If you're using macOS, you'll want this enabled
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Add Homebrew's executable directory to the front of the PATH
export PATH="/opt/homebrew/bin:$PATH"

# NPM & Nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Go Path Setup
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

# Python Path
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# ============== Zinit Settings ===================
# Resource Links:
# 1. https://www.kishorenewton.com/posts/my-ultimate-developer-setup-zsh-config-2025/
# 2. https://github.com/dreamsofautonomy/zensh/blob/main/.zshrc

# Initialize zinit with automatic installation
ZINIT_HOME="${HOME}/.local/share/zinit/zinit.git"

# Download Zinit if not installed
if [[ ! -f $ZINIT_HOME/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing zinit...%f"
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit "$ZINIT_HOME"
fi

# Source Zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add zsh plugins
zinit light-mode for \
  zsh-users/zsh-syntax-highlighting \
  zsh-users/zsh-completions \
  zsh-users/zsh-autosuggestions \
  Aloxaf/fzf-tab \
  zdharma-continuum/zinit-annex-as-monitor \
  zdharma-continuum/zinit-annex-bin-gem-node \
  zdharma-continuum/zinit-annex-patch-dl 

zinit load atuinsh/atuin

# Snippets From Oh My ZSH
zinit snippet OMZL::git.zsh              # Git aliases and functions
zinit snippet OMZL::history.zsh          # Better history management
zinit snippet OMZL::key-bindings.zsh     # Standard key bindings
zinit snippet OMZL::theme-and-appearance.zsh  # Terminal colors
zinit snippet OMZL::completion.zsh       # Completion tweaks
zinit snippet OMZL::directories.zsh      # Directory navigation helpers

# Load Completions
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Completion styling
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' verbose yes
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:messages' format '%F{purple}-- %d --%f'
zstyle ':completion:*:warnings' format '%F{red}-- no matches found --%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle ':fzf-tab:complete:*' fzf-preview 'bat --color=always --line-range :50 {}'

# ============== Key Bindings & History =================

bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# ============== Aliases ===================

# General Aliases
alias c='clear'
alias reload='source ~/.zshrc'
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias mkdir='mkdir -p'        # Always create parent directories
alias dotfiles='cd ~/CoreFiles'
alias desktop='cd ~/Desktop'
alias home='cd ~/'
alias development='cd ~/Desktop/Development'
alias config='cd ~/.config'
alias freecode='~/Desktop/Development/freeCodeCamp/'
alias vim='nvim'

# Prefer eza over ls for better visuals
if command -v eza &>/dev/null; then
    alias ls='eza --icons=auto --group-directories-first'
    alias l='eza -l --icons=auto --group-directories-first'
    alias ll='eza -la --icons=auto --sort=name --group-directories-first'
    alias lt='eza --tree --level=2 --icons=auto'
    alias ld='eza -lD --icons=auto'
else
    alias ls='ls --color=auto'
    alias l='ls -lh'
    alias ll='ls -lha'
    alias ld='ls -lhd */'
fi

# Git Aliases
alias gd='git diff'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gu='git pull'
alias gl='git log'
alias gb='git branch'
alias gi='git init'
alias gcl='git clone'

# Tmux Aliases
alias tn='tmux new-session -s'
alias tl='tmux list-sessions'
alias ta='tmux attach-session'
alias ts='tmux kill-server'

# ============== Shell Settings ===================
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(atuin init zsh)"

# Terminal Config - Oh My Posh
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
    eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/ghost.toml)" 
fi

