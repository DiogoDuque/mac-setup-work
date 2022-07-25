#!/bin/bash

##### PREREQUISITES #####

echo "Ensure you are running a VPN. If not, please terminate this script NOW"
sleep 10
echo "Proceeding with setup"
sleep 1

##### CONFIGS #####

base_repo_path="~/projects/work"
flutter_repos=("sep-service" "ipma-service" "all-chef-fdg" "ipma-audit-logging-model" "feeds-event-model" "gca-service")
fanduel_repos=("green_scripts")


##### INSTALLATION #####

# Install brew
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh

# Install Firefox
brew install firefox

# Install thefuck
brew install thefuck

# Install maven
brew install maven

# Install sdkman
curl -s "https://get.sdkman.io" | bash
source "~/.sdkman/bin/sdkman-init.sh"

# Install Java 8, 11 and 17
sdk install java 8.0.332-tem
sdk install java 11.0.15-tem
sdk install java 17.0.3-tem

# Install iterm2 and zsh
brew install zsh
brew install iterm2

# Install IDE and editors (VS Codium, Sublime Text)
brew install vscodium
brew install sublime-text


# Install docker
brew install docker colima
brew install docker-compose
brew install docker


# Install other tools/utils
brew install cassandra         # for cqlsh
brew install chef-workstation  # for kitchen
brew install obsidian
brew install postman
brew install sourcetree
brew install spotify
brew install wget

# Download repos
mkdir -p "$base_repo_path"
for r in "${flutter_repos[@]}" ; do 
    git clone "git@github.com/Flutter-Global/$r" "$base_repo_path/$r"
done
for r in "${fanduel_repos[@]}" ; do 
    git clone "git@github.com/fanduel/$r" "$base_repo_path/$r"
done
git clone git@gitlab.app.betfair:i2/shared-configs/sportsbook.git shared-configs-sportsbook


### EXPERIMENTAL ###



##### MANUAL STEPS #####

# Copy config files like .ssh/* keys, .m2/settings.xml, .bashrc/.zshrc, etc

# Restore iterm2 backup
# Restore firefox backup
# https://www.virtualbox.org/wiki/Downloads
# https://www.jetbrains.com/idea/download/?fromIDE=#section=mac
# https://www.postman.com/downloads/
# https://fanduel.atlassian.net/l/cp/A6cvCB5o#Manual-Install-(MacOS-and-Windows)
# Amphetamine
# Spectacle
# Trello
