#!/bin/sh
sudo add-apt-repository universe
sudo apt update 
sudo apt install build-essentials
sudo apt install python2
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2 1
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 2
sudo update-alternatives --config python
sudo apt install curl
curl https://bootstrap.pypa.io/get-pip.py --output get-pip.py
sudo python get-pip.py
sudo apt install mysql-server
sudo mysql_secure_installation
echo MySQL will start now. Create a database using CREATE DATABASE my_database_name\; then quit MySQL to continue the setup. && read -n 1 -s -r -p "[Press any key to continue]"
sudo mysql
sudo apt install default-libmysqlclient-dev
sudo apt install python-dev
sudo apt install libjpeg-dev
sudo wget https://raw.githubusercontent.com/paulfitz/mysql-connector-c/master/include/my_config.h -P /usr/include/mysql/ 
pip install -r ~/shared/WLSite/src/WLSite/requirements.txt
cd ~/shared/WLSite/src
find . -maxdepth 1 -type d \( ! -name . \) -exec bash -c "cd '{}' && sudo python setup.py install" \;
cd ~
sudo mv ~/shared/WLSite/src/WLSite/settings-template.py ~/shared/WLSite/src/WLSite/settings.py
echo Edit ~/shared/WLSite/src/WLSite/settings.py as specified in the Google doc && read -n 1 -s -r -p "[Press any key to continue]"
sudo apt install nodejs
sudo apt install node-typescript
sudo apt install npm
sudo npm install -g typescript
sudo npm install -g tslint typescript
python ~/shared/WLSite/src/WLSite/manage.py syncdb
python ~/shared/WLSite/src/WLSite/manage.py migrate
python ~/shared/WLSite/src/WLSite/manage.py runserver