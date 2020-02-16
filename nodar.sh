#!/usr/bin/env bash
wa=`whoami`
if [ $wa != "root" ]; then
  echo "Start this script with sudo prefix."
  exit
fi
echo -e "\e[94m░▒▓[Nodar v0.1 Fix]▓▒░\e[0m"
echo -e "\e[94mWe installing a simple environment to web app node.js & more.\e[0m"
echo -e "\e[1mDeveloper: Dany .S, https://github.com/FoobarIT\e[0m"
echo ""
echo -e "We update your linux system"
apt-get update
apt-get upgrade
apt-get clean
apt-get autoremove --purge
echo -e "\e[32mYour linux system is now update.\e[0m"
echo ""

node_Mode() {
  echo "We install Node.JS"
  sudo apt install nodejs npm > /dev/null
  echo "We install build-essential"
  sudo apt-get install -y build-essential
}
framework_Mode() {
  echo -e "\e[1m[Framework Manager]\e[0m"
  PS3='Choose an option:'
  options=("vue-cli" "react.js" "angular.js" "adonis.js" "Exit")
    select opt in "${options[@]}"
      do
        case $opt in
          "vue-cli")
            echo "vue-cli installation.."
            sudo npm install -g @vue/
            echo "Success Install"
            ;;
          "react.js")
            echo "react.js installation.."
            sudo npm install -g create-react-app
            echo "Success Install"
            ;;
          "angular.js")
            echo "angular.js installation.."
            sudo npm install -g @angular/cli
            echo "Success Install"
            ;;
          "adonis.js")
            echo "adonis.js installation.."
            sudo npm i -g @adonisjs/cli
            echo "Success Install"
            ;;
          "Exit")
            break
            ;;
          *) echo "[Err]Choice invalid - $REPLY";;
        esac
      done
    exit 0
}

module_Mode() {
  echo -e "\e[1m[Module manager]\e[0m"
  PS3='Choose an option:'
  options=("body-parser" "express" "socket.io" "axios" "Framework installation")
    select opt in "${options[@]}"
      do
        case $opt in
         "body-parser")
           echo "body-parser installation.."
           sudo npm install body-parser --save
           echo "Success Install"
           ;;
         "express")
           echo "express installation.."
           sudo npm install express --save
           echo "Success Install"
           ;;
         "socket.io")
           echo "socket.io installation.."
           sudo npm install socket.io --save
           echo "Success Install"
           ;;
         "axios")
           echo "axios installation.."
           sudo npm install axios --save
           echo "Success Install"
           ;;
         "Framework installation")
           framework_Mode
           ;;
         *) echo "[Err]Choice invalid - $REPLY";;
       esac
     done
}

echo -e "\e[1m[Node.js manager]\e[0m"
PS3='Choose an option:'
options=("Install" "Update" "Check version" "Module installation")
  select opt in "${options[@]}"
    do
      case $opt in
        "Install")
          node_Mode
          ;;
        "Update")
          echo "update"
          sudo n latest
          ;;
        "Check version")
          echo "Node.JS version:"
          node -v
          echo "NPM version:"
          npm -v
          ;;
        "Module installation")
          module_Mode
          ;;
        *) echo "[Err]Choice invalid - $REPLY";;
      esac
  done
