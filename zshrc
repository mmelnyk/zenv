# Global exports
export ZENVDIR=${0:a:h}                 # Set path to zenv files
fpath+="${ZENVDIR}/completions"

setopt appendhistory

# some useful options (man zshoptions)
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef		                # Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')

# beeping is annoying
unsetopt BEEP

# Completions
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)		# Include hidden files.

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Colors
autoload -Uz colors && colors

source "$ZENVDIR/functions"

# Configure prompt
zenv_source_file prompt

# Load all plugins
for plugin in $ZENVDIR/plugins/*/; do 
	zenv_load_plugin ${plugin:t}
done

# Load completions
for completion in $ZENVDIR/completions/*; do
	zenv_load_completion ${completion:t}
done
