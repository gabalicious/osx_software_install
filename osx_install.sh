#!/bin/sh
echo Install all AppStore Apps at first!
# no solution to automate AppStore installs
read -p "Press any key to continue... " -n1 -s
echo  '\n'

echo Install and Set San Francisco as System Font
ruby -e "$(curl -fsSL https://raw.github.com/wellsriley/YosemiteSanFranciscoFont/master/install)"
echo Install Homebrew, Postgres, wget and cask
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew tap homebrew/science
brew install wget
brew install postgresql
brew install go
brew install node
brew install ant
brew install ffmpeg
brew install eigen
brew install opencv
npm install -g gitjk
sudo npm install -g cordova
npm install phonegap -g

brew tap phinze/cask
brew install brew-cask
#brew cask search
#brew cask uninstall app

# Core Functionality
echo Install Core Apps
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" little-snitch
brew cask install --appdir="~/Applications" transmit
brew cask install --appdir="~/Applications" vlc
brew cask install --appdir="~/Applications" iterm2
brew cask install --appdir="~/Applications" java

## get from App Store
#brew cask install --appdir="/Applications" evernote
#brew cask install --appdir="/Applications" wunderlist
#brew cask install --appdir="/Applications" clamxav

# Development
echo Install Dev Apps
brew cask install --appdir="/Applications" github
brew cask install --appdir="/Applications" heroku-toolbelt
brew cask install --appdir="/Applications" sublime-text
brew cask install --appdir="/Applications" webstorm
brew cask install --appdir="/Applications" pycharm-pro
brew cask install --appdir="/Applications" light-table
brew cask install --appdir="/Applications" macvim
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" vagrant
brew cask install --appdir="/Applications" sourcetree
brew cask install --appdir="/Applications" charles
brew cask install --appdir="/Applications" easyfind


# Google Slavery
echo Install Google Apps | Chrome not included cause of 1Password Plugin
# brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" google-drive
brew cask install --appdir="/Applications" google-music-manager
brew cask install --appdir="/Applications" google-earth
brew cask install --appdir="/Applications" chromecast

# Nice to have
echo Install Some additional Apps
brew cask install --appdir="/Applications" firefox

brew cask install --appdir="/Applications" skype
brew cask install --appdir="/Applications" jdownloader
brew cask install --appdir="/Applications" lastfm
brew cask install --appdir="/Applications" all2mp3
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" spotify-notifications
# Link Cask Apps to Alfred
brew cask alfred link

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*

echo "Security: https://objective-see.com/products.html"
