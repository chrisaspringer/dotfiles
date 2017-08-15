#!/bin/sh

#===================================================================================
# Sublime Text
#===================================================================================

printf "\033[1mInstalling Sublime Text items...\033[0m"

# Preferences
cp /Users/$USER/Workspace/dotfiles/sublime/preferences/Preferences.sublime-settings /Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

# Key Bindings
cp /Users/$USER/Workspace/dotfiles/sublime/preferences/Default\ \(OSX\).sublime-keymap /Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

# Snippets
rm /Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/snippets/*.sublime-snippet
cp /Users/$USER/Workspace/dotfiles/sublime/snippets/* /Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/snippets

# PHP Companion
cp /Users/$USER/Workspace/dotfiles/sublime/preferences/PHP\ Companion.sublime-settings /Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

# PHP CS Fixer
cp /Users/$USER/Workspace/dotfiles/sublime/preferences/SublimePhpCsFixer.sublime-settings /Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
sudo sed -i "s/USERNAME/$USER/g" /Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/SublimePhpCsFixer.sublime-settings

# Wrap it up
printf "\033[1m complete.\033[0m"
printf "\n\n"
