#!/usr/bin/env bash
#
#https://velog.io/@iamchanii/Brewfile을-이용해서-팀-개발-환경-만들기
#
#https://dev-yakuza.github.io/ko/environment/configure-development-environment-on-mac-with-homebrew-and-shell-script/
#

if ! which brew
then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

cp ./dot.mackup.cfg ~/.mackup.cfg

brew bundle --file=./Default-Brewfile-1st

./Default_init_run_app_first.sh &

brew bundle --file=./Default-Brewfile-2nd