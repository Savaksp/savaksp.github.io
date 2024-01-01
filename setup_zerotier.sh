echo Install curl? (y/n)
read prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
    apt update -y && apt upgrade -y && apt install curl -y
fi
clear

echo Install zerotier? (y/n)
read prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
    wget https://raw.githubusercontent.com/Savaksp/savaksp.github.io/main/install_zerotier.sh
    chmod +x install_zerotier.sh
    ./install_zerotier.sh
fi
clear

echo Zerotier network id?
read ztid
zerotier-cli join $ztid
clear

echo Done!
