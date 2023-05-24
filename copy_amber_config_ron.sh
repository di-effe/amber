#!/bin/bash
RED='\033[0;31m'
NC='\033[0m' # No Color

function pause(){
 read -s -n 1 -p "Press any key to continue . . ."
 echo ""
}
echo "This will create a backup copy (config.ron.bak) of your ~/.config/leftwm/config.ron"
echo "and replace it with the one included in this theme."
echo "If you are not sure, presso CTRL+C to exit now!"
echo " "

pause

cp ~/.config/leftwm/config.ron ~/.config/leftwm/config.ron.bak
cp ~/.config/leftwm/themes/amber/config.ron ~/.config/leftwm/config.ron
