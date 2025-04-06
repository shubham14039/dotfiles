
# Path variables for Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-23.jdk/Contents/Home"

# PATH for curl
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

# Homebrew Python - prioritized before other PATH modifications
export PATH="/opt/homebrew/opt/python@3.13/bin:/opt/homebrew/bin:$PATH"
export PATH=$JAVA_HOME/bin:$PATH

# Path variables for LLVM (C++)
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

# Set up zsh completion
autoload -U compinit && compinit

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Aliases
alias c="clear"
alias cat="bat"
alias vi="nvim"
alias cmatrix="cmatrix -r"
alias f='vim $(fzf --preview="bat --color=always {}")'
alias cfetch="clear && fastfetch"

# Starship prompt
eval "$(starship init zsh)"

# Atuin shell enhancements
. "$HOME/.atuin/bin/env"
eval "$(atuin init zsh)"

# Zsh plugins
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/opt/homebrew/bin:$PATH"

source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.4.1
