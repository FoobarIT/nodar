#!/usr/bin/env bash
echo -e "\e[94m░▒▓[Nodar v0.1]▓▒░\e[0m"
echo -e "\e[94mWe installing a simple environment to web app node.js & more.\e[0m"
echo -e "\e[1mDeveloper: Dany .S, https://github.com/FoobarIT\e[0m"
wa=`whoami`
if [ $wa != "root" ]; then
  echo "Start this script with sudo prefix."
  exit
fi
apt-get update
sudo apt-get install -y nodejs
echo ""
echo -e "\e[100m\e[1mNode.js is correctly installed.\e[0m\e[0m"
echo "Checking Node.js version:"
node -v
echo "Checking Npm version:"
npm -v
echo ""
echo -e "\e[1mActually available framework compatible with nodar.sh\e[0m"
PS3='You can adding your favorite framework and module or just leave it: '
options=("build-essential" "react-js" "vue-cli" "forever" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "build-essential")
            echo "You have chosen to install build-essential."
            apt-get install -y build-essential
            echo "[Build Essential] installation is complete."
            ;;
        "react-js")
            echo "You have chosen to install react-js."
            npm install -g create-react-app
            echo "[React JS] installation is complete."
            ;;
        "vue-cli")
            echo "You have chosen to install vue-cli."
            npm install -g @vue/cli
            echo "[Vue Cli] installation is complete."
            ;;
        "forever")
            echo "You have chosen to install forever."
            npm install forever -g
            echo "[Forever] installation is complete."
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
exit 0
