#!/usr/bin/env bash
wa=`whoami`
if [ $wa != "root" ]; then
  echo "Start this script with sudo prefix."
  exit
fi
echo -e "\e[94m________░▒▓[Nodar v0.1 Fix]▓▒░________\e[0m"
echo -e "\e[94mManage simply your Node.JS web app & tools.\e[0m"
echo -e "\e[1mDeveloper: Dany .S, https://github.com/FoobarIT\e[0m"
echo ""




menu_install_tools() {
	echo -e "\e[1m[Tools Manager]\e[0m"
	echo -e "\e[1mThis tools is installed in global."
	echo ""

	PS3='Choose an option:'
	options=("Nodemon" "Pm2" "Grunt" "Karma" "Webpack" "Go menu =>")
	  select opt in "${options[@]}"
	    do
	      case $opt in
	        "Nodemon")
	          	#Do any want
	        ;;
	        "Pm2")
	          	# Do whatever
	        ;;
	        "Grunt")
	          	# Do whatever
	        ;;
	        "Karma")
	          	# Do whatever
	        ;;
	        "Webpack")
	        	# Do
	        ;;
	        "Go menu =>")
				menu_nodar
			;;
	        *) echo "[Err]Choice invalid - $REPLY";;
	      esac
	  done
};
menu_install_back() {
	echo -e "\e[1m[Back End Framework]\e[0m"
	echo -e "\e[1mInstall your favorite Framework."
	echo ""

	PS3='Choose an option:'
	options=("Express" "Socket" "Fs" "Multer" "Go menu =>")
	  select opt in "${options[@]}"
	    do
	      case $opt in
	        "Express")
	          	#Do any want
	        ;;
	        "Socket")
	          	# Do whatever
	        ;;
	        "Fs")
	          	# Do whatever
	        ;;
	        "Multer")
			
			;;
	        "Go menu =>")
				menu_nodar
			;;
	        *) echo "[Err]Choice invalid - $REPLY";;
	      esac
	  done
};
menu_install_data() {
	echo -e "\e[1m[Data Sytem]\e[0m"
	echo -e "\e[1mInstall your data system."
	echo ""

	PS3='Choose an option:'
	options=("MySQL" "MSSQL" "PostGres" "Mongoose" "Go menu =>")
	  select opt in "${options[@]}"
	    do
	      case $opt in
	        "MySQL")
	          	#Do any want
	        ;;
	        "MSSQL")
	          	# Do whatever
	        ;;
	        "PostGres")
	          	# Do whatever
	        ;;
	        "Mongoose")
			
			;;
	        "Go menu =>")
				menu_nodar
			;;
	        *) echo "[Err]Choice invalid - $REPLY";;
	      esac
	  done
};
menu_install_orm() {
	echo -e "\e[1m[ORM Sytem]\e[0m"
	echo -e "\e[1mInstall your ORM system."
	echo ""

	PS3='Choose an option:'
	options=("Sequelize" "PersistenceJS" "CaminteJS" "Go menu =>")
	  select opt in "${options[@]}"
	    do
	      case $opt in
	        "Sequelize")
	          	#Do any want
	        ;;
	        "PersistenceJS")
	          	# Do whatever
	        ;;
	        "CaminteJS")
	          	# Do whatever
	        ;;
	        "Go menu =>")
				menu_nodar
			;;
	        *) echo "[Err]Choice invalid - $REPLY";;
	      esac
	  done
};

menu_install_front() {
	echo -e "\e[1m[Front End Framework]\e[0m"
	echo -e "\e[1mInstall your favorite Framework."
	echo ""

	PS3='Choose an option:'
	options=("Angular" "Vue" "React" "Go menu =>")
	  select opt in "${options[@]}"
	    do
	      case $opt in
	        "Angular")
	          	#Do any want
	        ;;
	        "Vue")
	          	# Do whatever
	        ;;
	        "React")
	          	# Do whatever
	        ;;
	        "Go menu =>")
				menu_nodar
			;;
	        *) echo "[Err]Choice invalid - $REPLY";;
	      esac
	  done
};

menu_nodar() {
	echo -e "\e[1m[Main Menu]\e[0m"
	echo -e "\e[1mWelcome on Nodar menu lets explore."
	echo ""
	echo -e "\e[31mVerify your current Node.JS version before other installation..\e[0m"
	echo ""

	PS3='Choose an option:'
	options=("Tools Manager" "Front" "Back" "Data" "ORM" "Quit")
	  select opt in "${options[@]}"
	    do
	      case $opt in
	        "Tools Manager")
	          	menu_install_tools
	        ;;
	        "Front")
	          	menu_install_front
	        ;;
	        "Back")
	          	menu_install_back
	        ;;
	        "Data")
	          	menu_install_data
	        ;;
	        "ORM")
	        	menu_install_orm
	        ;;
	        "Quit")
				break
			;;
	        *) echo "[Err]Choice invalid - $REPLY";;
	      esac
	  done
	exit 0
}
menu_nodar




