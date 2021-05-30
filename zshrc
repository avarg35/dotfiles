echo 'Hello from .zshrc'

# Set Variables
# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"

# Change ZSH Options


# Create Aliases
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'

# Customize Prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add Locations to $PATH Variable
typeset -U path

path=(
    "$N_PREFIX/bin"
    $path
    "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
)

# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# Use ZSH Plugins


# ...and Other Surprises



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/andrewvargas/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/andrewvargas/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/andrewvargas/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/andrewvargas/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<'
