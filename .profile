
test -r /sw/bin/init.sh && . /sw/bin/init.sh

##
# Your previous /Users/trevorgrayson/.profile file was backed up as /Users/trevorgrayson/.profile.macports-saved_2009-02-01_at_13:39:40
##

# MacPorts Installer addition on 2009-02-01_at_13:39:40: adding an appropriate PATH variable for use with MacPorts.
export PATH=$PATH:~/bin:/opt/local/bin:/opt/local/sbin::/opt/ruby-1.9.2-p0/bin:/opt/jruby-1.5.3/bin
# Finished adapting your PATH environment variable for use with MacPorts.

#export JAVA_HOME=/usr/lib/java
export GEM_HOME=/Library/Ruby/Gems/1.8
export EDITOR=/usr/bin/vim
#export LOAD_PATH= ruby path

# MacPorts Installer addition on 2009-02-01_at_13:39:40: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH=/opt/local/share/man:$MANPATH
# Finished adapting your MANPATH environment variable for use with MacPorts.

#CLI Coloring
export CLICOLOR='xterm-color'


#start .bashrc

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
if [[ -z "$PS1" ]]; then

# don't put duplicate lines in the history. See bash(1) for more options
	export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
	export HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
	shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
	[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
	if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
			debian_chroot=$(cat /etc/debian_chroot)
	fi

# set a fancy prompt (non-color, unless we know we "want" color)
	case "$TERM" in
	xterm-color)
			PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
			;;
	*)
			PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
			;;
	esac

# Comment in the above and uncomment this below for a color prompt
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
	case "$TERM" in
	xterm*|rxvt*)
			PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
			;;
	*)
			;;
	esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

# enable color support of ls and also add handy aliases
	if [ "$TERM" != "dumb" ]; then
			eval "`dircolors -b`"
			#alias ls='ls --color=auto'
			#alias dir='ls --color=auto --format=vertical'
			#alias vdir='ls --color=auto --format=long'
	fi

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
	if [ -f /etc/bash_completion ]; then
			. /etc/bash_completion
	fi

#VI keybindings in bash
#set -o vi
fi
if [[ -s /Users/trevorgrayson/.rvm/scripts/rvm ]] ; then source /Users/trevorgrayson/.rvm/scripts/rvm ; fi
if [[ -s "$HOME/.rvm/scripts/rvm" ]]  ; then source "$HOME/.rvm/scripts/rvm" ; fi

##
# Your previous /Users/trevorgrayson/.profile file was backed up as /Users/trevorgrayson/.profile.macports-saved_2010-09-17_at_00:15:12
##

# MacPorts Installer addition on 2010-09-17_at_00:15:12: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

