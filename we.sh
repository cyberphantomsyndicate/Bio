#!/bin/bash

# Define colors for text formatting
Black="\033[1;30m"       
Red="\033[1;31m"         
Green="\033[1;32m"       
Yellow="\033[1;33m"      
Blue="\033[1;34m"        
Purple="\033[1;35m"      
Cyan="\033[1;36m"        
White="\033[1;37m"       

# Clear the screen and update packages
clear
apt-get update -y
apt-get upgrade -y
clear

# Display a broken heart design
echo -e "$Red"
figlet -f big "Broken Heart" | lolcat
echo -e "$Cyan By Maria $White"
toilet --gay -f mono12 "💔" 

# Display main tool title
echo -e "$Green Created By $Blue"
figlet "Web Tool" | lolcat
sleep 2

# Display menu
echo -e "$Red                                ⫸ Web Development Toolkit ⫷\033[0m"
echo " "
echo -e " $Red       ||------------------------$Cyan [Web Tool Options] $Blue ------------------------||"
echo -e " $Red       ||                                                                   ||"
echo -e " $Red       ||             $Purple%=>$Yellow [1️⃣] Test Website Speed $Blue                       ||"
echo -e " $Red       ||             $Purple%=>$Yellow [2️⃣] Check SEO $Blue                                ||"
echo -e " $Red       ||             $Purple%=>$Yellow [3️⃣] Analyze Security $Blue                        ||"
echo -e " $Red       ||             $Purple%=>$Yellow [4️⃣] Validate HTML $Blue                           ||"
echo -e " $Red       ||             $Purple%=>$Yellow [5️⃣] Optimize Images $Blue                         ||"
echo -e " $Red       ||             $Purple%=>$Yellow [6️⃣] View Server Status $Blue                      ||"
echo -e " $Red       ||             $Purple%=>$Yellow [7️⃣] About This Tool $Blue                         ||"
echo -e " $Red       ||             $Purple%=>$Yellow [8️⃣] Exit $Blue                                    ||"
echo -e " $Red       ||                                                                   ||"
echo -e " $Red       ||------------------------$Cyan [Select an option] $Blue ------------------------||"
echo -e "$Blue      |---------------------------------------------------------------------|"
echo " "
echo " "

# Read user choice
read -p "Choose an option: " choice

case $choice in
  1)
    echo -e "$Green Testing website speed...$White"
    echo -e "$Cyan Enter the URL (e.g., https://example.com): $White"
    read url
    curl -s -o /dev/null -w "%{time_starttransfer}\n" "$url"
    ;;

  2)
    echo -e "$Green Checking SEO...$White"
    echo -e "$Cyan Enter the URL to check SEO: $White"
    read url
    echo "Running SEO analysis on $url..."
    ;;

  3)
    echo -e "$Green Analyzing security...$White"
    echo -e "$Cyan Enter the URL for security scan: $White"
    read url
    echo "Running security scan on $url..."
    ;;

  4)
    echo -e "$Green Validating HTML...$White"
    echo -e "$Cyan Enter the HTML file path: $White"
    read filepath
    tidy -q -e "$filepath"
    ;;

  5)
    echo -e "$Green Optimizing images...$White"
    echo -e "$Cyan Enter the directory containing images: $White"
    read dir
    jpegoptim "$dir"/*.jpg
    ;;

  6)
    echo -e "$Green Viewing server status...$White"
    service apache2 status
    ;;

  7)
    echo -e "$Purple This Web Tool was created for ethical use in web development tasks. Enjoy!"
    ;;

  8)
    echo -e "$Red Exiting...$White"
    exit 0
    ;;

  *)
    echo -e "$Red Invalid option. Please try again.$White"
    ;;
esac