#!/bin/sh

#===================================================================================
# Composer - https://getcomposer.org/download/
#===================================================================================

# setup
name="Composer"
check="/usr/local/bin/composer"

# Check if installed
if [ -e $check ]; then
    printf "\033[1mUpdating $name...\033[0m\n"
    /usr/local/bin/composer self-update
    printf "\n"
    exit 0;
fi
printf "\n"

# Install
printf "\033[1;33mInstalling $name...\033[0m"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === 'e115a8dc7871f15d853148a7fbac7da27d6c0030b848d9b3dc09e2a0388afed865e6a3d6b3c0fad45c48e2b5fc1196ae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

# Wrap it up
printf "\n\n"
