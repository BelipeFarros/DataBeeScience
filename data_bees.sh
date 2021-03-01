!/usr/bin/env bash
# 
# ---------------------------------------------------------------- #
# Script Name:   data_bees.sh 
# Description:   Install all python data science packages for Smartbee algorithms: tensorFlow, numpy, matplot, pandas, sklearn
# Github:        https://www.github.com/BelipeFarros, https://github.com/leo-vitor
# Written by:    Felipe Barros,Leo Vitor
# Maintenance:   Felipe Barros,Leo Vitor
# ---------------------------------------------------------------- #
# Usage:         
#       $ ./data_bees.sh
# ---------------------------------------------------------------- #
# Bash Version:  
#              Bash 4.4.19
# -----------------------------------------------------------------# 
# History:       v1.0 11/06/2020, Felipe:
#                - Start de program
#                - Add initial script structure
#                - Add initial warning
# -----------------------------------------------------------------#
# Thankfulness: SmartBee project
# -----------------------------------------------------------------#

# --------------------------- VARIABLES -------------------------- #

TIME=0.5

# -----------------------------------------------------------------#


# ------------------------- REQUIREMENTS ------------------------- #
#Instalando pip3 / Install pip3
echo "Verificando por atualizações no pip..."
echo " "
sleep $TIME
sudo apt install python3-pip
echo " "

echo "Verificando por atualizações no virtualenv..."
echo " "
sleep $TIME
sudo pip3 install -U virtualenv
echo " "

echo "Criando ambiente virtual..."
mkdir ./databee
cd databee
virtualenv --system-site-packages -p python3 ./databee-env
source ./databee-env/bin/activate

# ---------------------------------------------------------------- #



# --------------------------- EXECUTION -------------------------- #
#Instalando tensorflow / Install tensoflow
sudo apt-get update
pip install --upgrade tensorflow

#Instalando numpy / Install numpy
sudo apt-get update
pip install numpy

#Instalando matplot / Install matplot
sudo apt-get update
pip install matplotlib

#Instalando pandas / Install pandas
sudo apt-get update
pip install pandas

#Instalando sklearn / Install sklearn
sudo apt-get update
pip install sklearn

# ---------------------------------------------------------------- #



# ---------------------- POST INSTALLATION ----------------------- #
# Removendo pacotes que não são mais requeridos/ Removing unrequired packages
sudo apt autoremove -y

# ---------------------------------------------------------------- #


