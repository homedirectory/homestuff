export BASH_SILENCE_DEPRECATION_WARNING=1

export PATH=$(brew --prefix openvpn)/sbin:$PATH
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$PATH:$HOME/bin"

# include my scripts
export SCRIPTS_DIR="$HOME/programs/scripts"
export PATH="${SCRIPTS_DIR}:$PATH"

export TERM=xterm-256color

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# add color
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad


. "$HOME/.cargo/env"

# java
export JAVA_HOME=$(/usr/libexec/java_home)
# maven
export PATH="/usr/local/apache-maven-3.8.4/bin:$PATH"
# ant
export ANT_HOME="/usr/local/apache-ant-1.10.12"
export PATH="${ANT_HOME}/bin:$PATH"

# brew
export HOMEBREW_NO_INSTALL_CLEANUP=1
export HOMEBREW_NO_ANALYTICS=1

# privacy
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export POWERSHELL_TELEMETRY_OPTOUT=1
