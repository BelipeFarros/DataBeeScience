#!/usr/bin/env bash
# 
# ---------------------------------------------------------------- #
# Script Name:   data_bees.sh 
# Description:   Install all python data science packages for Smarbee algorithms
# Github:        https://www.github.com/BelipeFarros
# Written by:    Felipe Barros
# Maintenance:   Felipe Barros
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
##Instalando pip3##
#echo "Verificando por atualizações no pip..."
#echo " "
#sleep $TIME
#sudo apt install python3-pip
#echo " "

#echo "Verificando por atualizações no virtualenv..."
#echo " "
#sleep $TIME
#sudo pip3 install -U virtualenv
#echo " "

echo "Criando ambiente virtual..."
mkdir ./databee
cd databee
virtualenv --system-site-packages -p python3 ./databee-env
source ./databee-env/bin/activate

# ---------------------------------------------------------------- #



# --------------------------- EXECUTION -------------------------- #
#Instalando tensorflow
pip install --upgrade tensorflow

#Instalando numpy (OK)
#pip install numpy

#Instalando matplot (OK)
#pip install matplotlib

#Instalando pandas (OK)
#pip install pandas

#Instalando sklearn (OK)
#pip install sklearn

# ---------------------------------------------------------------- #



# ---------------------- POST INSTALLATION ----------------------- #

sudo apt autoremove -y

# ---------------------------------------------------------------- #


