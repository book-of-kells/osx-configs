#!/bin/zsh


chflags nohidden ~/Library
chflags nohidden /Volumes


# # set computer name
# sudo scutil --set ComputerName "$1"
# sudo scutil --set HostName "$1"
# sudo scutil --set LocalHostName "$1"
# sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$1"



# custom .gitconfig
curl https://raw.githubusercontent.com/book-of-kells/osx-configs/main/gitconfig > ~/.gitconfig


# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

xcode-select --install

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


##############################################################################################
#     _______   _______  _______    ___      __    __   __      .___________.    _______.    #
#    |       \ |   ____||   ____|  /   \    |  |  |  | |  |     |           |   /       |    #
#    |  .--.  ||  |__   |  |__    /  ^  \   |  |  |  | |  |     `---|  |----`  |   (----`    #
#    |  |  |  ||   __|  |   __|  /  /_\  \  |  |  |  | |  |         |  |        \   \        #
#    |  '--'  ||  |____ |  |    /  _____  \ |  `--'  | |  `----.    |  |    .----)   |       #
#    |_______/ |_______||__|   /__/     \__\ \______/  |_______|    |__|    |_______/        #
#                                                                                            #
##############################################################################################

# save all screenshots to a custom directory
mkdir -p ~/Pictures/screenshots
defaults write com.apple.screencapture location ~/Pictures/screenshots

# defaults write -g NSUserKeyEquivalents -dict-add 'Save As...' '@$S'

# automatically show subtitles
defaults -currentHost write com.apple.QuickTimePlayerX.plist MGEnableCCAndSubtitlesOnOpen -boolean true


# three finger drag
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true  # or -int 1 ?

# maximize trackpad speed
defaults write NSGlobalDomain com.apple.trackpad.scaling -float 3


# show bluetooth status in menu bar
defaults write com.apple.controlcenter "NSStatusItem Visible Bluetooth"  -bool true  # or -int 1 ?
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.bluetooth" -bool true  # or -int 1 ?
# com.apple.BluetoothFileExchange
# /System/Applications/Utilities/Bluetooth File Exchange.app
# Found 1 keys in domain 'com.apple.sharingd': {
#     AutoUnlockPresentedBluetoothError = 0;
# }

# decrease resources used by Spotlight
defaults write com.apple.Spotlight orderedItems -array \
    '{"enabled" = 1;"name" = "APPLICATIONS";}' \
    '{"enabled" = 1;"name" = "SYSTEM_PREFS";}' \
    '{"enabled" = 0;"name" = "DIRECTORIES";}' \
    '{"enabled" = 0;"name" = "PDF";}' \
    '{"enabled" = 0;"name" = "FONTS";}' \
    '{"enabled" = 0;"name" = "DOCUMENTS";}' \
    '{"enabled" = 0;"name" = "MESSAGES";}' \
    '{"enabled" = 0;"name" = "CONTACT";}' \
    '{"enabled" = 0;"name" = "EVENT_TODO";}' \
    '{"enabled" = 0;"name" = "IMAGES";}' \
    '{"enabled" = 0;"name" = "BOOKMARKS";}' \
    '{"enabled" = 0;"name" = "MUSIC";}' \
    '{"enabled" = 0;"name" = "MOVIES";}' \
    '{"enabled" = 0;"name" = "PRESENTATIONS";}' \
    '{"enabled" = 0;"name" = "SPREADSHEETS";}' \
    '{"enabled" = 1;"name" = "SOURCE";}' \
    '{"enabled" = 0;"name" = "MENU_DEFINITION";}' \
    '{"enabled" = 0;"name" = "MENU_OTHER";}' \
    '{"enabled" = 0;"name" = "MENU_CONVERSION";}' \
    '{"enabled" = 1;"name" = "MENU_EXPRESSION";}' \
    '{"enabled" = 0;"name" = "MENU_WEBSEARCH";}' \
    '{"enabled" = 0;"name" = "MENU_SPOTLIGHT_SUGGESTIONS";}'
fi

# firewall
sudo defaults write /Library/Preferences/com.apple.alf allowdownloadsignedenabled -int 0
sudo defaults write /Library/Preferences/com.apple.alf allowsignedenabled -int 0
sudo defaults write /Library/Preferences/com.apple.alf stealthenabled -int 1
sudo defaults write /Library/Preferences/com.apple.alf firewallunload -int 0
sudo defaults write /Library/Preferences/com.apple.alf globalstate -int 2 
sudo defaults write /Library/Preferences/com.apple.alf loggingenabled -int 1 
sudo defaults write /Library/Preferences/com.apple.alf loggingoption -int 0
# sudo defaults write /Library/Preferences/com.apple.alf
   # firewall =     {
   #      "Apple Remote Desktop" =         {
   #          proc = AppleVNCServer;
   #          state = 0;
   #      };
   #      "FTP Access" =         {
   #          proc = ftpd;
   #          state = 0;
   #      };
   #      ODSAgent =         {
   #          proc = ODSAgent;
   #          servicebundleid = "com.apple.ODSAgent";
   #          state = 0;
   #      };
   #      "Personal File Sharing" =         {
   #          proc = AppleFileServer;
   #          state = 0;
   #      };
   #      "Personal Web Sharing" =         {
   #          proc = httpd;
   #          state = 0;
   #      };
   #      "Printer Sharing" =         {
   #          proc = cupsd;
   #          state = 0;
   #      };
   #      "Remote Apple Events" =         {
   #          proc = AEServer;
   #          state = 0;
   #      };
   #      "Remote Login - SSH" =         {
   #          proc = "sshd-keygen-wrapper";
   #          state = 0;
   #      };
   #      "Samba Sharing" =         {
   #          proc = smbd;
   #          state = 0;
   #      };
   #  };

# disable location settings
sudo defaults write /var/db/locationd/Library/Preferences/ByHost/com.apple.locationd LocationServicesEnabled -int 0

# input volume to zero

# screensaver

# show hidden files
defaults write com.apple.Finder AppleShowAllFiles true
killall Finder


#####################################################################################################
#     __    __    ______   .___  ___.  _______ .______   .______       ___________    __    ____    #
#    |  |  |  |  /  __  \  |   \/   | |   ____||   _  \  |   _  \     |   ____\   \  /  \  /   /    #
#    |  |__|  | |  |  |  | |  \  /  | |  |__   |  |_)  | |  |_)  |    |  |__   \   \/    \/   /     #
#    |   __   | |  |  |  | |  |\/|  | |   __|  |   _  <  |      /     |   __|   \            /      #
#    |  |  |  | |  `--'  | |  |  |  | |  |____ |  |_)  | |  |\  \----.|  |____   \    /\    /       #
#    |__|  |__|  \______/  |__|  |__| |_______||______/  | _| `._____||_______|   \__/  \__/        #
#                                                                                                   #
#####################################################################################################

brew install pyenv
brew install tree
brew install jq
brew install docker
brew install go


brew install --cask sublime-text
brew install --cask malwarebytes
brew install --cask lastpass
brew install --cask expressvpn
brew install --cask firefox
brew install --cask little-snitch
brew install --cask font-fira-code
brew install --cask font-jetbrains-mono


# download terminal file
curl https://raw.githubusercontent.com/book-of-kells/osx-configs/main/custom.terminal > ~/Documents/custom.terminal
# set as default terminal shell
open ~/Documents/custom.terminal
defaults write com.apple.Terminal "Default Window Settings" "custom"
defaults write com.apple.Terminal "Startup Window Settings" "custom"




echo '#!/bin/zsh

string=${1:-$PATH}
delimiter=${2:-":"}

OLD_IFS=$IFS

IFS="$delimiter" read -r -A array <<< "$string"

for element in "${array[@]}"
do
	echo "$element"
done

IFS=$OLD_IFS' >> /usr/local/bin/splits

chmod 755 /usr/local/bin/splits


# customize .zshrc

####################################################################
#       ________      _______. __    __  .______        ______     #
#      |       /     /       ||  |  |  | |   _  \      /      |    #
#      `---/  /     |   (----`|  |__|  | |  |_)  |    |  ,----'    #
#         /  /       \   \    |   __   | |      /     |  |         #
#     __ /  /----.----)   |   |  |  |  | |  |\  \----.|  `----.    #
#    (__)________|_______/    |__|  |__| | _| `._____| \______|    #
#                                                                  #
####################################################################

echo '

#########################################################################
#      _______   ______    __          ___      .__   __.   _______     #
#     /  _____| /  __  \  |  |        /   \     |  \ |  |  /  _____|    #
#    |  |  __  |  |  |  | |  |       /  ^  \    |   \|  | |  |  __      #
#    |  | |_ | |  |  |  | |  |      /  /_\  \   |  . `  | |  | |_ |     #
#    |  |__| | |  `--`  | |  `----./  _____  \  |  |\   | |  |__| |     #
#     \______|  \______/  |_______/__/     \__\ |__| \__|  \______|     #
#                                                                       #
#########################################################################

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
mkdir -p $GOPATH/pkg
mkdir -p $GOBIN


set_go_root() {
    CURRENT_GO_VERSION=${1:-"1.16"}
    GO_BREW_PREFIX=$(brew --prefix go@${CURRENT_GO_VERSION})
    export GOROOT=${GO_BREW_PREFIX}/libexec
    export PATH=$PATH:$GOROOT/bin
}

set_go_root


#############################################################################
#    .______   ____    ____ .___________. __    __    ______   .__   __.    #
#    |   _  \  \   \  /   / |           ||  |  |  |  /  __  \  |  \ |  |    #
#    |  |_)  |  \   \/   /  `---|  |----`|  |__|  | |  |  |  | |   \|  |    #
#    |   ___/    \_    _/       |  |     |   __   | |  |  |  | |  . `  |    #
#    |  |          |  |         |  |     |  |  |  | |  `--`  | |  |\   |    #
#    | _|          |__|         |__|     |__|  |__|  \______/  |__| \__|    #
#                                                                           #
#############################################################################
                                                                          
# pipx
# export PATH="/Users/kells/.local/bin:$PATH"  # after installing pipx, packages installed with pipx are available globally.

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PYENV_ROOT="$HOME/.pyenv"
# pipenv
export PIPENV_VERBOSITY=-1
# This will make Pipenv use pyenv’s active Python version to create virtual environments by default.
export PIPENV_PYTHON=$PYENV_ROOT/shims/python



############################################################################
#    .______          ___      .__   __.  _______   ______   .___  ___.    #
#    |   _  \        /   \     |  \ |  | |       \ /  __  \  |   \/   |    #
#    |  |_)  |      /  ^  \    |   \|  | |  .--.  |  |  |  | |  \  /  |    #
#    |      /      /  /_\  \   |  . `  | |  |  |  |  |  |  | |  |\/|  |    #
#    |  |\  \----./  _____  \  |  |\   | |  `--`  |  `--`  | |  |  |  |    #
#    | _| `._____/__/     \__\ |__| \__| |_______/ \______/  |__|  |__|    #
#                                                                          #
############################################################################

# PATH=$PATH:/usr/libexec

export icloud=$HOME"/Library/Mobile Documents/com~apple~CloudDocs"
alias getaudio="youtube-dl -x --audio-quality=0 --audio-format=mp3"


' >> ~/.zshrc


