ZSH_THEME="robbyrussell"
export TERM=xterm-256color
export EDITOR=nvim

alias lg=lazygit
alias c=codium
alias py=python3
alias v=nvim
alias icat="kitten icat"
alias neobean='NVIM_APPNAME=linkarzu/dotfiles-latest/neovim/neobean nvim'
alias nb='git checkout -b "$USER-$(date +%s)"' # new branch
alias ga='git add . --all'
alias gb='git branch'
alias gc='git clone'
alias gci='git commit -a'
alias gco='git checkout'
alias gd="git diff ':!*lock'"
alias gdf='git diff' # git diff (full)
alias gi='git init'
alias gl='git log'
alias gp='git push origin HEAD'
alias gr='git rev-parse --show-toplevel' # git root
alias gst='git status'
alias gt='git tag'
alias gu='git pull' # gu = git update

eval $(thefuck --alias)
eval $(thefuck --alias fk)

PATH="$PATH":"$HOME/.local/scripts/"
export PATH="/Users/sylvanfranklin/.local/share/bob/nvim-bin/:$PATH"
export HOME=/Users/tyler
export HOME=/Users/tyler
export ZDOTDIR=$HOME/.config/zsh/.zshrc
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
export PATH="${HOME}/.cargo/bin:${PATH}"


bindkey -s ^a tmux-sessionizer
# Path to your oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.local/bin":$PATH

plugins=(
  # git
  zsh-autosuggestions
  # zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source <(fzf --zsh)

NEWLINE=$'\n'
# PROMPT="${NEWLINE}% $(date +%_I:%M%P) %F{#b4befe} %n %K{#1e1e2e}%F{#cba6f7}%} %~ ❯ " # nord theme

# pnpm
export PNPM_HOME="/Users/tacolegs2004/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/Users/tacolegs2004/.bun/_bun" ] && source "/Users/tacolegs2004/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# CodeWhisperer post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh"


export PATH="/Users/tacolegs2004/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/Users/tacolegs2004/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"

eval "$(zoxide init --cmd cd zsh)"


# in practice, in your shell startup script
export TERM="xterm-256color"
# or fish equivalent ...

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
export PATH=$PATH:$HOME/go/bin

alias ls="eza --icons=always"

# precmd() { mommy -1 -s $? }

source /Users/tyler/dev/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# eval "$(starship init zsh)"
fortune | ponysay
