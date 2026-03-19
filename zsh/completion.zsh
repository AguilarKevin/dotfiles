# Shell completion

autoload -Uz compinit
compinit

# OpenClaw completion
[ -f "$HOME/.openclaw/completions/openclaw.zsh" ] && source "$HOME/.openclaw/completions/openclaw.zsh"
