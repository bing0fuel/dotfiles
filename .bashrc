# Set history length
HISTSIZE=4000
HISTFILESIZE=20000
HISTTIMEFORMAT="%h/%d - %H:%M:%S "

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize


# Set bash history to be written every time a command is run,
# not when the terminal is closed (For multi-session)
PROMPT_COMMAND='history -a'

# Basic aliases
alias ll='ls -alF'
alias la='ls -lah'
alias l='ls -CF'
alias ls='ls --color'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias mysql='mysql --prompt '\''\h:\d\n> '\'''
alias screen='export TERM=screen';
alias phpgrep='find . -name "*.php" -print | xargs -l10 grep --color '

# Laziness for Git
alias gits='git status'
alias gitb='git branch'

# Set tmux default path to current directory
alias tmuxdir='tmux set-option default-path "$PWD"'


# Local private bash prefs
if [ -f ~/.bash_local ]; then
    . ~/.bash_local
fi

# Bash completion for regular Linux
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Bash completion for brew
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# VI Mode
set -o vi
