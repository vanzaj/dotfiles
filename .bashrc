export EDITOR="vim"
export PATH=$HOME/bin:$PATH
export PS1='\u@\h:\W$ '

export LC_ALL="en_US.UTF-8"
export LANG="en_US"

export HISTSIZE=2000
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoreboth
export HISTIGNORE="ls:la:l:h:cd:pwd:exit"

for f in ~/.bash_{prompt,aliases,extra}; do
	[ -r "$f" ] && source "$f"
done
