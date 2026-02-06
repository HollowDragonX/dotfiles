
##############################################
##                                          ##
## ███████╗███████╗██╗  ██╗██████╗  ██████╗ ##
## ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝ ##
##   ███╔╝ ███████╗███████║██████╔╝██║      ##
##  ███╔╝  ╚════██║██╔══██║██╔══██╗██║      ##
## ███████╗███████║██║  ██║██║  ██║╚██████╗ ##
## ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ##
## Author: hollowdragonx                    ##
## Github: https://github.com/hollowdragonx ##
##############################################


#######################
## ▖▖▄▖▄▖▄▖▄▖▄ ▖ ▄▖▄▖##
## ▌▌▌▌▙▘▐ ▌▌▙▘▌ ▙▖▚ ##
## ▚▘▛▌▌▌▟▖▛▌▙▘▙▖▙▖▄▌##
##                   ##
#######################

export BROWSER='firefox'
export EDITOR='nvim'
export HISTORY_IGNORE="(cd|cd -|cd ..|exit|history|ls|pwd|reboot|sudo reboot now|whoami|)"
export PATH="$PATH"
export SUDO_PROMPT=' Accessing god mode... authenticate [%u]: '
export WAL_BACKEND='awww'

# OVPN FILES #
export HTB_ACADEMY=''
export HTB_STARTING=''
export HTB_MACHINES=''
export HTB_SEASONAL=''


## FOLDERS ## 
export DEVELOPER_FOLDER='/mnt/data/home/hollowdragonx/Developer'
export DOCUMENTS_FOLDER='/mnt/data/home/hollowdragonx/Documents'
export DOWNLOADS_FOLDER='/mnt/data/home/hollowdragonx/Downloads'
export GAMES_FOLDER='/mnt/data/home/hollowdragonx/Games'
export HTB_FOLDER='/mnt/data/home/hollowdragonx/Documents/hackthebox'
export MUSIC_FOLDER='/mnt/data/home/hollowdragonx/Music'
export VIDEOS_FOLDER='/mnt/data/home/hollowdragonx/Videos'



###############
## ▄▖▖ ▄▖▄▖▄▖##
## ▌▌▌ ▐ ▌▌▚ ##
## ▛▌▙▖▟▖▛▌▄▌##
##           ##
###############

# Go back one directory
alias ..='cd ..'

# Go back two directories
alias ...='cd ../..'

# Go back three directories
alias ....='cd ../../..'

# Use 'bat' for syntax-highlighted file viewing instead of 'cat'
alias cat='bat'

# Clean up unused packages and cache in pacman
alias clean='sudo pacman -Rns $(pacman -Qdtq)'

# Change directory to Developer folder
alias dev='cd $DEVELOPER_FOLDER'

# Change directory to Documents folder
alias docs='cd $DOCUMENTS_FOLDER'

# Change directory to Downloads folder
alias dl="cd $DOWNLOADS_FOLDER"

# Change directory to Games folder
alias games="cd $GAMES_FOLDER"

# Change directory to HackTheBox folder
alias htb="cd $HTB_FOLDER"

# Connect to HackTheBox Academy
alias htba="sudo openvpn $HTB_ACADEMY"

# Connect to HackTheBox Starting Point
alias htbss="sudo openvpn $HTB_STARTING"

# Connect to HackTheBox Machines
alias htbm="sudo openvpn $HTB_MACHINES"

# Connect to HackTheBox Seasonal
alias htbs="sudo openvpn $HTB_SEASONAL"

# Install a  specific package
alias install='sudo pacman -S'

# List all files, including hidden, with directories first
alias la='lsd -a --group-dirs=first'

# List files in long format with human-readable sizes and directories first
alias ll='lsd -lh --group-dirs=first'

# List all files in long format with human-readable sizes and directories first
alias lla='lsd -lha --group-dirs=first'

# Use 'lsd' to list files instead of 'ls' with directories first
alias ls='lsd --group-dirs=first'

# Change directory to Music folder
alias music='cd $MUSIC_FOLDER'

# Start netcat listener on a specified port
alias ncx='nc -lnvp'

# Limit ping to 4 packets
alias ping='ping -c 4'

# Start a simple HTTP server using python
alias pserver='python -m http.server'

# Change directory to Videos folder
alias vid='cd $VIDEOS_FOLDER'
# Use 'gtop' for a modern, graphical process viewer instead of 'top'
alias top='gtop'

# Update system packages and database (for locate command)
alias update='sudo pacman -Syu && sudo updatedb'



################
## ▄ ▄▖▖ ▖▄ ▄▖##
## ▙▘▐ ▛▖▌▌▌▚ ##
## ▙▘▟▖▌▝▌▙▘▄▌##
##            ##
################

# Bind delete key to delete the character under the cursor
bindkey "^[[3~" delete-char

# Bind End key to move cursor to end of the line
bindkey "^[[F"  end-of-line

# Bind Home key to move cursor to the beggining of the line
bindkey "^[[H"  beginning-of-line



#########################
## ▄▖▖▖▖ ▖▄▖▄▖▄▖▄▖▖ ▖▄▖##
## ▙▖▌▌▛▖▌▌ ▐ ▐ ▌▌▛▖▌▚ ##
## ▌ ▙▌▌▝▌▙▖▐ ▟▖▙▌▌▝▌▄▌##
##                     ##
#########################                    

set-htb() {
	
	local CURRENT_WINDOW_ID="$KITTY_WINDOW_ID"

  	kitty @ launch --type=tab --tab-title " HTB VPN"
  	kitty @ launch --type=tab --tab-title "󱞁 Notes"
	kitty @ launch --type=tab --tab-title " General"
	kitty @ launch --type=tab --tab-title " Recon"
	kitty @ launch --type=tab --tab-title " Listener"
	kitty @ launch --type=tab --tab-title " Exploit"
	
	kitty @ close-window --match "id:$CURRENT_WINDOW_ID"
}



###################
## ▖▖▄▖▄▖▄▖▄▖▄▖▖▖##
## ▙▌▐ ▚ ▐ ▌▌▙▘▌▌##
## ▌▌▟▖▄▌▐ ▙▌▌▌▐ ##
##               ##
###################

# Saves duplicates only if they are not consecutive
HISTDUP=recent

# File where command history is saved
HISTFILE=~/.history/.zsh_history

# Number of commands to remember in the current session
HISTSIZE=5000

# Number of commands to save in the history file (HISTFILE)
SAVEHIST=10000

# Keep previous command history when the shell is closed and reopened
# (Avoids that the HISTFILE is overwritten with only the current session history)
setopt appendhistory

# Prevents showing duplicate commands when searching through history
setopt hist_find_no_dups

# Ignore duplicate commands in the history
setopt hist_ignore_all_dups

# Ignore commands that start with a space when saving to history (in-memory)
setopt hist_ignore_space

# Do not save duplicates to the history file (HISTFILE)
setopt hist_save_no_dups

# Share command history (in-memory) across all ZSH sessions
setopt sharehistory


##################################
## ▖  ▖▄▖▄▖▄▖▄▖▖ ▖ ▄▖▖ ▖▄▖▄▖▖▖▄▖##
## ▛▖▞▌▐ ▚ ▌ ▙▖▌ ▌ ▌▌▛▖▌▙▖▌▌▌▌▚ ##
## ▌▝ ▌▟▖▄▌▙▖▙▖▙▖▙▖▛▌▌▝▌▙▖▙▌▙▌▄▌##
##                              ##
##################################

# Initialize starship prompt 
eval "$(starship init zsh)"

# Prevents Java AWT windows from being reparented
export _JAVA_AWT_WM_NONREPARENTING=1

# Start fastfetch when terminal is open
fastfetch



####################
## ▄▖▖ ▖▖▄▖▄▖▖ ▖▄▖##
## ▙▌▌ ▌▌▌ ▐ ▛▖▌▚ ##
## ▌ ▙▖▙▌▙▌▟▖▌▝▌▄▌##
##                ##
####################

# Suggests commands as you type based on history
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Plugin to easily run commands with sudo
source /usr/share/zsh/plugins/zsh-sudo/sudo.plugin.zsh

# Highlights command syntax for easier readability
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh




