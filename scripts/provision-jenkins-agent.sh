#!/usr/bin/env bash
set -euo pipefail

source /vagrant/scripts/console-colors.sh

clear
printf "${BLUE_BG}-----------------------------------------------${NC}\n"
printf "${BLUE_BG} 'Jenkins Agent' provision ${NC}\n"
printf "${BLUE_BG}-----------------------------------------------${NC}\n"
printf "Following packages will be installed:\n"
printf -- "- homebrew\n"
printf -- "- open-jdk11\n"
printf -- "- gcc\n"
printf "${BLUE_BG}-----------------------------------------------${NC}\n"
printf "\n"

source /vagrant/scripts/install-homebrew.sh

brew install midnight-commander
brew install htop
brew install gcc
brew install openjdk@11

useradd -m -s /bin/bash jenkins
passwd jenkins


printf "${GREEN_BG}[SUCCESS]${NC} 'Jenkins' provision completed."