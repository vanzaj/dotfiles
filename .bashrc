# aliases
alias h="history"
alias l="ls -Gl"
alias la="ls -Gla"
alias lsd='ls -l | grep "^d"'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias del='/bin/rm -f'

# environment
export HISTSIZE=2000
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoreboth
export HISTIGNORE="ls:la:l:h:cd:pwd:exit"

export EDITOR="vim"

export LANG="en_US.UTF-8"

export PATH=$HOME/bin:$PATH
export PS1='\u@\h:\W$ '

# custom config
for f in ~/.bash_{prompt,aliases,extra}; do
	[ -r "$f" ] && source "$f"
done
