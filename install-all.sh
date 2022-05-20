#!/usr/bin/env bash
#
#https://velog.io/@iamchanii/Brewfile을-이용해서-팀-개발-환경-만들기
#
#https://dev-yakuza.github.io/ko/environment/configure-development-environment-on-mac-with-homebrew-and-shell-script/
#

#----------------------------  init ------------------------
# https://osxdaily.com/2016/09/06/trigger-alert-dialog-mac-via-command-line/ 
# open '/System/Applications/App Store.app'
osascript -e 'tell app "App Store" to display dialog "Sing in Mac App Store"'
osascript -e 'display notification "Did you sign in to the App Store?"'

if ! which brew
then
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew install onedrive --cask
open /Applications/OneDrive.app
brew install mas
brew install homebrew/cask-drivers/synology-drive
open "/Applications/Synology Drive Client.app"
osascript -e 'display notification "check Advaced Option about dot file sync"'

#----------------------------  //init ------------------------

./keybinding-setting.sh
./system-setting.sh

cp ./dot.mackup.cfg ~/.mackup.cfg

brew bundle --file=./apps-1st.brewfile

./run_app_1st.sh 

brew bundle --file=./apps-2nd.brewfile

./run_app_2nd.sh 

brew bundle --file=./apps-3rd.brewfile

./run_app_3rd.sh 
