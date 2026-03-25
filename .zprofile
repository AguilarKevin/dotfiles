# Login shell environment

eval "$(/opt/homebrew/bin/brew shellenv)"

# Prefer Volta-managed CLIs when present
export PATH="$HOME/.volta/tools/image/node/24.14.0/bin:$HOME/.volta/bin:$PATH"

# Added by Toolbox App
export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts"
