# Main interactive Zsh config

# Better history behavior
HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$HOME/.zsh_history"
setopt APPEND_HISTORY SHARE_HISTORY HIST_IGNORE_DUPS HIST_IGNORE_ALL_DUPS HIST_REDUCE_BLANKS HIST_VERIFY

[ -f "$HOME/dotfiles/zsh/path.zsh" ] && source "$HOME/dotfiles/zsh/path.zsh"
[ -f "$HOME/dotfiles/zsh/fnm.zsh" ] && source "$HOME/dotfiles/zsh/fnm.zsh"
[ -f "$HOME/dotfiles/zsh/completion.zsh" ] && source "$HOME/dotfiles/zsh/completion.zsh"
[ -f "$HOME/dotfiles/zsh/aliases.zsh" ] && source "$HOME/dotfiles/zsh/aliases.zsh"
[ -f "$HOME/dotfiles/zsh/prompt.zsh" ] && source "$HOME/dotfiles/zsh/prompt.zsh"


# Herd injected PHP binary.
export PATH="$HOME/Library/Application Support/Herd/bin/:$PATH"

# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="$HOME/Library/Application Support/Herd/config/php/84/"

# Herd injected PHP 8.5 configuration.
export HERD_PHP_85_INI_SCAN_DIR="$HOME/Library/Application Support/Herd/config/php/85/"

# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="$HOME/Library/Application Support/Herd/config/php/83/"
