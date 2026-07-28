#!/bin/bash

# ZAXSITZ Uninstaller
# Developed by: zaax

echo -e "\033[0;31m"
echo "╔═══════════════════════════════════════════════╗"
echo "║  ZAXSITZ UNINSTALLER                         ║"
echo "╚═══════════════════════════════════════════════╝"
echo -e "\033[0m"

echo -e "\033[1;33m[!] This will remove ZAXSITZ completely\033[0m"
echo -e "\033[1;33m[!] Are you sure? (y/n)\033[0m"
read -r response

if [ "$response" = "y" ]; then
    echo -e "\033[0;34m[*] Removing ZAXSITZ...\033[0m"
    
    # Remove files
    rm -rf ~/.zaxsitz
    
    # Restore bashrc
    sed -i '/ZAXSITZ/d' ~/.bashrc 2>/dev/null
    sed -i '/source ~\/.zaxsitz/d' ~/.bashrc 2>/dev/null
    
    # Restore zshrc
    sed -i '/ZAXSITZ/d' ~/.zshrc 2>/dev/null
    sed -i '/source ~\/.zaxsitz/d' ~/.zshrc 2>/dev/null
    
    # Restore theme
    rm -f ~/.termux/colors.properties
    
    # Reload
    termux-reload-settings
    
    echo -e "\033[0;32m[✓] ZAXSITZ has been removed\033[0m"
    echo -e "\033[1;33m[*] Restart Termux to complete removal\033[0m"
else
    echo -e "\033[0;32m[*] Uninstall cancelled\033[0m"
fi
