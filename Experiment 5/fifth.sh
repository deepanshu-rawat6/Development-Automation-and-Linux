#!/bin/zsh

# This script will install the LAMP stack on a Linux machine

# Update the package manager
sudo apt update

# Install Apache
sudo apt install apache2 -y

# Install MySQL
sudo apt install mysql-server -y

# Run the MySQL secure installation script to set a root password and other security options
sudo mysql_secure_installation

# Install PHP and the required modules
sudo apt install php libapache2-mod-php php-mysql -y

# Restart Apache to load the new PHP module
sudo systemctl restart apache2
