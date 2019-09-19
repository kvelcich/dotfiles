alias python='python3'
alias pip='pip3'

# Pure Prompt
fpath+=("$HOME/.zsh/pure")
autoload -U promptinit; promptinit
PURE_PROMPT_SYMBOL="$"
prompt pure

# Plugins
source $HOME/.zsh/plugins.zsh

