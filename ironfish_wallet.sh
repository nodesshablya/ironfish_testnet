#!/bin/bash
exists()
{
  command -v "$1" >/dev/null 2>&1
}
if exists curl; then
echo ''
else
  sudo apt update && sudo apt install curl -y < "/dev/null"
fi
bash_profile=$HOME/.bash_profile
if [ -f "$bash_profile" ]; then
    . $HOME/.bash_profile
fi
sleep 1 && curl -s https://raw.githubusercontent.com/nodesshablya/nibiru_shablya_testnet/main/shablya.sh | bash && sleep 1

echo -e '\n\e[42mPreparing to install\e[0m\n' && sleep 1
cd $HOME
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash - 
sudo apt update
sudo apt install curl make clang pkg-config libssl-dev build-essential git jq nodejs -y
#sudo apt install npm 
echo -e '\n\e[42mInstall ironfish\e[0m\n' && sleep 2
cd $HOME
#npm install -g ironfish
sudo npm install -g ironfish@0.1.70 
sleep 2
echo ""
echo -e "Your \e[32mIronFish\e[39m binary installed!"

echo -e "---------------------------------------------------------------------------------------------------------------------"
echo -e "\e[32mCreate a new account with name wallet for sending and receiving coins:\e[39m \e[7mironfish wallet:create wallet\e[0m"
echo -e "---------------------------------------------------------------------------------------------------------------------"
echo -e "\e[32mExport an account to a mnemonic 24 word phrase:\e[39m \e[7mironfish wallet:export wallet --mnemonic --language=English\e[0m \033[31;1;5m ATTENTION! \033[0m"
echo -e "---------------------------------------------------------------------------------------------------------------------"
echo -e "\e[32mExport an account:\e[39m \e[7mironfish wallet:export wallet\e[0m \033[31;1;5m ATTENTION! ATTENTION! ATTENTION! \033[0m"
echo -e "--------------------------------------------------------------------------"
echo -e "\e[32mDisplay your account address:\e[39m \e[7mironfish wallet:address wallet\e[0m"
echo -e "--------------------------------------------------------------------------"
