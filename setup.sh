# /bin/bash
echo -e "
#    #  ####   ####  #####  # ######       #####   ####  #   # 
##   # #    # #    # #    # # #            #    # #    #  # #  
# #  # #    # #    # #####  # #####  ##### #####  #    #   #   
#  # # #    # #    # #    # # #            #    # #    #   #   
#   ## #    # #    # #    # # #            #    # #    #   #   
#    #  ####   ####  #####  # ######       #####   ####    #   
                                                               
;\n"


sudo apt-get install -y git
sudo apt-get install software-properties-common
sudo apt-add-repository universe
sudo apt-get update
sudo apt-get install -y python3-setuptools
sudo apt-get install -y python-pip
sudo apt-get install -y python3-pip
sudo apt-get install -y adb

sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
pip install frida
pip install frida-tools
sudo apt-get install -y python-virtualenv


sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev

#creating a folder for the tools and the script
mkdir ~/mobilesecurity_tools
cd ~/mobilesecurity_tools

echo "Installing MoBSf Scanner"
git clone https://github.com/MobSF/Mobile-Security-Framework-MobSF.git
echo "Done!"

echo "Installing SensePost's Objection-framework"
virtualenv --python=python3 ~/Objection-framework
source ~/Objection-framework/bin/activate
pip3 install -U objection
deactivate
echo "Done!"

echo "Installing iPhone SSH"
git clone https://github.com/rcg4u/iphonessh.git
echo "Done!"

echo "Installing Mobile Reverse engineering framework (MARA)"
git clone https://github.com/xtiankisutsa/MARA_Framework.git
cd MARA_Framework
chmod +x setup.sh
./setup.sh
echo "Done!"

echo "                                                     																			"
echo "=============================================================That's All Folks ;)!!!============================================================="
