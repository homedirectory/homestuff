#custom PS1
export PS1="\[$(tput bold)\]\[$(tput setaf 4)\]\w\[$(tput sgr0)\]\[$(tput setaf 7)\] $ \[$(tput sgr0)\]"

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

if [ -f ~/.bash_funcs ]; then
	. ~/.bash_funcs
fi
