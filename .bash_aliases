alias emacs='emacs -nw' # keep emacs in the terminal window
alias drjava='java -jar ~/bin/drjava-stable-20130901-r5756.jar' # if it's on
alias top='htop' # nicer top
alias dmesg='dmesg | tail --follow' # see what's happening
alias rX='sudo pkill X' # restart X
alias sudo='sudo '

# history
alias h='history'
alias hf='h | grep '

# t the todo script
alias t='python ~/bin/t/t.py --task-dir ~/tasks --list todo.txt --delete-if-empty' 

# package management laziness
alias up2='sudo apt update && sudo apt dist-upgrade --no-install-recommends && sudo apt-get autoremove'
#alias up2='sudo dnf update && sudo dnf clean all'
alias get='sudo apt install --no-install-recommends'
#alias get='sudo dnf install'
alias rget='sudo apt install --reinstall --no-install-recommends'
alias hld='sudo apt-mark hold'
alias unhld='sudo apt-mark unhold'
alias sauce='sudo apt update && sudo apt dist-upgrade && sudo apt-get autoremove'
alias sai='sudo apt install'
alias apts='aptitude search'
alias dnfs='dnf search'
alias sar='sudo apt remove'

# remote access the Pi
alias rpi='ssh smash@raspberrypi.local'
alias rpix='rpi -X'
alias vpi='vncviewer raspberrypi.local:1'

# git
alias gi='git init'
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias gh='git log --pretty=oneline --graph --abbrev-commit --stat'

# get_iplayer laziness
alias iplayr='get_iplayer --refresh'
alias iplays='iplayr | grep'
alias iplayg='get_iplayer --get'

# make a directory and enter it function
function dmc() { mkdir -p $1 ; cd  $1 ; }

# make and run
function mnr() { make $1 && ./$1; }

# rerun as root
alias pls='sudo $(history -p \!\!)'

# open Pokemon Blue in VisualBoyAdvance
alias vbablue='vba -F2 ~/ROMs/Pokemon_Blue.zip'

# start a virtual machine
alias vms='vboxmanage startvm '

# to read
alias r='evince ~/read/Now/*pdf &'

# clean things up
alias bb='bleachbit -c $(cat ~/.bleachbit)'
alias sbb='sudo bleachbit -c $(cat ~/.bleachbit)'

# virtual ubuntu webserver
alias startog='VBoxHeadless -s together &'
alias tog='tmux a -t together || tmux new -s together ssh together'

# virtual centos server
alias stap='VBoxHeadless -s apollo &'
alias apo='tmux a -t apollo || tmux new -s apollo ssh apollo'