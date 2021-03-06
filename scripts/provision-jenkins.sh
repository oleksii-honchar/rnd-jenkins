#!/usr/bin/env bash
set -euo pipefail

source /vagrant/scripts/console-colors.sh

clear
printf "${BLUE_BG}-----------------------------------------------${NC}\n"
printf "${BLUE_BG} 'Jenkins Master' provision ${NC}\n"
printf "${BLUE_BG}-----------------------------------------------${NC}\n"
printf "Following packages will be installed:\n"
printf -- "- homebrew\n"
printf -- "- htop\n"
printf -- "- midnight-commander\n"
printf -- "- gcc\n"
printf -- "- open-jdk@8\n"
printf -- "- jenkins\n"
printf "${BLUE_BG}-----------------------------------------------${NC}\n"
printf "\n"

source /vagrant/scripts/install-homebrew.sh
source /vagrant/scripts/install-common-tools.sh

sudo apt install openjdk-11-jdk -y

source /vagrant/scripts/install-jenkins.sh

sudo systemctl start jenkins
sudo systemctl status jenkins

printf "${GREEN_BG}[SUCCESS]${NC} 'Jenkins' provision completed."