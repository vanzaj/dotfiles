alias h="history"

alias l="ls -Gl" # List all files colorized in long format
alias la="ls -Gla"
alias lsd='ls -l | grep "^d"'

# Always use color output for `ls`
if [[ "$OSTYPE" =~ ^darwin ]]; then
	alias ls="command ls -G"
else
	alias ls="command ls --color"
	export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
fi

# Paranoid about overwriting files
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias del='/bin/rm -f'

[[ -d $DROPBOX ]] && alias cdd="cd $DROPBOX"
[[ -d $GOOGLEDRIVE ]] && alias cdg="cd $GOOGLEDRIVE"
[[ $(which postgres) ]] && alias pg_start="postgres -D /usr/local/var/postgres"

alias ipyqt="ipython qtconsole"
alias ipynb="ipython notebook"
alias bfg="java -jar ~/bin/bfg-1.11.1.jar"