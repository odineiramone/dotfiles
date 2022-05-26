function battery_percent {
  pmset -g batt | egrep "([0-9]+\%).*" -o --colour=auto | cut -f1 -d';';
}

function gmt_time {
  date -u +"%H:%M:%S"
}

function current_folder {
  basename "$PWD";
}

function current_branch {
  if [ -d .git ]; then
    git rev-parse --abbrev-ref HEAD;
  fi;
}

# Disable 'git add .' and 'git stage .'
function git {
  if [ "$1" = "add" -o "$1" = "stage" ]; then
    if [ "$2" = "." ]; then
        printf "'git %s .' is currently disabled by your Git wrapper.\nMore info here https://stackoverflow.com/questions/25884007/disable-git-add-command\n" "$1";
    else
        command git "$@";
    fi
  else
    command git "$@";
  fi;
}

function hours_and_minutes {
  date +"%H:%M"
}

function current_directory_with_tilde {
  dirs +0
}

function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"

  export PS1="$YELLOW(\$(hours_and_minutes))$GREEN b:(\$(battery_percent)⚡️)$CYAN pwd:($BLUE\$(current_directory_with_tilde)$CYAN)$RESETCOLOR$CYAN git:($RED\$(current_branch)$CYAN)\n$WHITE[\#] → $RESETCOLOR"
  export PS2=" | → $RESETCOLOR"
}

# type \w on PS1 to full current folder path

prompt

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

source ~/.git-completion.bash
export PATH="/usr/local/opt/openssl/bin:$PATH"
