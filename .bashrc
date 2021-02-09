# Command shortcuts
alias v='vim'
alias gv='gvim'

alias ll='ls -l'
alias la='ls -la'
alias ..='cd ..'
alias ...='cd ..; cd ..'
alias ....='cd ..; cd ..; cd ..'


# Set Command Prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="[\[\e[32m\]\A\[\e[m\] \w] \[\e[31m\]\$(parse_git_branch)\[\e[m\] \[\e[32m\]\\$\[\e[m\] "
