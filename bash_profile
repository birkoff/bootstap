function parse_git_branch () {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

# File listing Colors
alias ls="ls -G"

#PS1="$GREEN\w:$YELLOW\$(parse_git_branch)$NO_COLOUR\$"
PROMPT_COMMAND='PS1="$YELLOW[\!]\`if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\`[\u@\h: \`echo "\\w"; \`$YELLOW\$(parse_git_branch)]\n $RED=>\$\[\033[0m\] "; echo -ne "\033]0;`hostname -s`:`pwd`\007"'
