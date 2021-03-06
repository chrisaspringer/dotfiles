#!/bin/sh

#===================================================================================
# Resources:
# - https://github.com/mathiasbynens/dotfiles/blob/master/.macos
# - https://github.com/freekmurze/dotfiles/blob/master/macos/set-defaults.sh
#===================================================================================

printf "\033[1;37mSynchronizing settings.\033[0m\n\n"

# Ask for the administrator password upfront
#sudo -v


#===================================================================================
# Setup
#===================================================================================

# Close any open System Preferences panes. Prevents overriding changes below.
osascript -e 'tell application "System Preferences" to quit'



#===================================================================================
# SSH
#===================================================================================

# Turn on Keychain for SSH
cp /Users/${USER}/dotfiles/settings/macOS/config /Users/${USER}/.ssh



#===================================================================================
# General UI/UX
#===================================================================================

# Disable the sound effects on boot
#sudo nvram SystemAudioVolume=" "

# Always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Automatic"
# Possible values: `WhenScrolling`, `Automatic` and `Always`

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable Resume system-wide
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Reveal IP address, hostname, OS version, etc. when clicking the clock
# in the login window
#sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# Set the default wallpaper image - Primarily used on login screen
#rm -rf ~/Library/Application Support/Dock/desktoppicture.db
#sudo rm -rf /System/Library/CoreServices/DefaultDesktop.jpg
#sudo ln -s /Users/${USER}/Dropbox/Photos/Wallpaper/Iceland/iceland-08.jpg /System/Library/CoreServices/DefaultDesktop.jpg



#===================================================================================
# Trackpad, mouse, keyboard, Bluetooth accessories, and input
#===================================================================================

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3


#===================================================================================
# Screen
#===================================================================================

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0


#===================================================================================
# Finder
#===================================================================================

# Set Desktop as the default location for new Finder windows
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Desktop/"

# Adjusting which desktop icons are displayed
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Show the ~/Library folder
chflags nohidden ~/Library

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`, `Nlsv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true


#===================================================================================
# Dock, Dashboard, and hot corners
#===================================================================================

# Set the icon size of Dock items
defaults write com.apple.dock tilesize -int 28

# Hide indicator lights for open applications in the Dock
#defaults write com.apple.dock show-process-indicators -bool false

# Wipe all (default) app icons from the Dock
# This is only really useful when setting up a new Mac, or if you don’t use
# the Dock to launch apps.
#defaults write com.apple.dock persistent-apps -array ""

# Disable Dashboard
#defaults write com.apple.dashboard mcx-disabled -bool true

# Don’t show Dashboard as a Space
#defaults write com.apple.dock dashboard-in-overlay -bool true

# Don’t automatically rearrange Spaces based on most recent use
#defaults write com.apple.dock mru-spaces -bool false

# Make Dock icons of hidden applications translucent
#defaults write com.apple.dock showhidden -bool true


#===================================================================================
# Safari & WebKit
#===================================================================================

# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true


#===================================================================================
# Activity Monitor
#===================================================================================

# Show the main window when launching Activity Monitor
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

# Visualize CPU usage in the Activity Monitor Dock icon
defaults write com.apple.ActivityMonitor IconType -int 5

# Show all processes in Activity Monitor
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# Sort Activity Monitor results by CPU usage
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0


#===================================================================================
# Address Book, Dashboard, iCal, TextEdit, and Disk Utility
#===================================================================================

# Use plain text mode for new TextEdit documents
defaults write com.apple.TextEdit RichText -int 0

# Open and save files as UTF-8 in TextEdit
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4


#===================================================================================
# Google Chrome & Google Chrome Canary
#===================================================================================

# Disable the all too sensitive backswipe on trackpads
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome.canary AppleEnableSwipeNavigateWithScrolls -bool false

# Disable the all too sensitive backswipe on Magic Mouse
defaults write com.google.Chrome AppleEnableMouseSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome.canary AppleEnableMouseSwipeNavigateWithScrolls -bool false


#===================================================================================
# iTerm2
#===================================================================================

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/Dropbox/DAS/Software/iTerm2"

# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

# Don’t display the annoying prompt when quitting iTerm
#defaults write com.googlecode.iterm2 PromptOnQuit -bool false

# Copy Plugin modifications into place
cp /Users/${USER}/dotfiles/settings/iTerm2/custom/plugins/git/git.plugin.zsh /Users/${USER}/.oh-my-zsh/custom/plugins/git

# Copy Theme modifications into place
cp /Users/${USER}/dotfiles/settings/iTerm2/custom/themes/af-magic.zsh-theme /Users/${USER}/.oh-my-zsh/custom/themes


#===================================================================================
# Outlook
#===================================================================================

defaults write com.microsoft.Outlook NSRequiresAquaSystemAppearance -bool yes


#===================================================================================
# Restart affected applications
#===================================================================================

#for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" \
#    "Dock" "Finder" "Mail" "Messages" "Safari" "SizeUp" "SystemUIServer" \
#    "Terminal" "Transmission" "Twitter" "iCal"; do
#    killall "${app}" > /dev/null 2>&1
#done


#===================================================================================
# Sublime Text - SublimePhpCsFixer
#===================================================================================

# Setup folder for package settings
if [ ! -e "/Users/${USER}/.sublime" ]; then
    mkdir /Users/${USER}/.sublime
fi

# Copy settings into place
cp /Users/${USER}/dotfiles/sublime/SublimePhpCsFixer.sublime-settings /Users/${USER}/.sublime
sed -i '.original' "s/USERNAME/${USER}/g" /Users/${USER}/.sublime/SublimePhpCsFixer.sublime-settings
