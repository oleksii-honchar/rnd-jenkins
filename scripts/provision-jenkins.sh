#!/usr/bin/env bash
set -euo pipefail

source /vagrant/scripts/console-colors.sh

clear
printf "${BLUE_BG}-----------------------------------------------${NC}\n"
printf "${BLUE_BG} 'Jenkins Master' provision ${NC}\n"
printf "${BLUE_BG}-----------------------------------------------${NC}\n"
printf "Following packages will be installed:\n"
printf -- "- homebrew\n"
printf -- "- open-jdk@11\n"
printf -- "- gcc\n"
printf -- "- jenkins\n"
printf "${BLUE_BG}-----------------------------------------------${NC}\n"
printf "\n"

source /vagrant/scripts/install-homebrew.sh

brew install midnight-commander
brew install htop
brew install gcc
sudo apt install openjdk-11-jdk

source /vagrant/scripts/install-jenkins.sh

sudo systemctl start jenkins
sudo systemctl status jenkins

printf "${GREEN_BG}[SUCCESS]${NC} 'Jenkins' provision completed."