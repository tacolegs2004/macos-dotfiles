ZSH_THEME="robbyrussell"

export TERM=xterm
export EDITOR=nvim

alias lg=lazygit
alias c=code
alias py=python3
alias v=nvim
alias lazy="NVIM_APPNAME=LazyVim nvim"
alias bean="NVIM_APPNAME=neobean nvim"
alias kick="NVIM_APPNAME=kickstart nvim"
alias chad="NVIM_APPNAME=NvChad nvim"
alias astro="NVIM_APPNAME=AstroNvim nvim"
alias ovi="NVIM_APPNAME=OviWrite nvim"
alias icat="kitten icat"

eval $(thefuck --alias)
eval $(thefuck --alias fk)

PATH="$PATH":"$HOME/.local/scripts/"

bindkey -s ^a tmux-sessionizer
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.local/bin":$PATH

plugins=(
  git
  zsh-autosuggestions
  # zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source <(fzf --zsh)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

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

function yy() {
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

fastfetch

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
export PATH=$PATH:$HOME/go/bin

alias ls="eza --icons=always"

# precmd() { mommy -1 -s $? }

source /Users/tyler/code/projects/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
