#
# Sets Oh My Zsh options.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Set the key mapping style to 'emacs' or 'vi'.
zstyle ':omz:module:editor' keymap 'emacs'

# Auto convert .... to ../..
zstyle ':omz:module:editor' dot-expansion 'no'

# Set case-sensitivity for completion, history lookup, etc.
zstyle ':omz:*:*' case-sensitive 'no'

# Color output (auto set to 'no' on dumb terminals).
zstyle ':omz:*:*' color 'yes'

# Auto set the tab and window titles.
zstyle ':omz:module:terminal' auto-title 'yes'

# Set the Zsh modules to load (man zshmodules).
# zstyle ':omz:load' zmodule 'attr' 'stat'

# Set the Zsh functions to load (man zshcontrib).
# zstyle ':omz:load' zfunction 'zargs' 'zmv'

# Set the Oh My Zsh modules to load (browse modules).
# The order matters.
zstyle ':omz:load' omodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'prompt' \
  'ruby' \
  'git' \
  'syntax-highlighting' \
  'history-substring-search' \
  'directory'

# Set the prompt theme to load.
# Setting it to 'random' loads a random theme.
# Auto set to 'off' on dumb terminals.
zstyle ':omz:module:prompt' theme 'sorin'

# This will make you shout: OH MY ZSHELL!
source "$OMZ/init.zsh"

# Customize to your needs...
setopt inc_append_history share_history histignorealldups
autoload -U zmv

bindkey ';5D' emacs-backward-word
bindkey ';5C' emacs-forward-word

alias renice_vbox='pgrep VBoxHeadless | xargs sudo renice +19'
alias nm-applet-restart='pkill nm-applet ; nohup nm-applet > /dev/null 2>&1 &'

