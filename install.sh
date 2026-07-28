#!/bin/bash

# ZAXSITZ - Termux Theme & Banner Installer
# Developed by: zaax (Zx¡?)
# TikTok: @promptbyzaax__

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m'

# Banner
echo -e "${CYAN}"
echo "╔══════════════════════════════════════════════════════════════════╗"
echo "║                                                                  ║"
echo "║   ███████╗ █████╗ ██╗  ██╗███████╗██╗████████╗███████╗         ║"
echo "║   ╚══███╔╝██╔══██╗╚██╗██╔╝╚══███╔╝██║╚══██╔══╝╚══███╔╝         ║"
echo "║     ███╔╝ ███████║ ╚███╔╝   ███╔╝ ██║   ██║     ███╔╝          ║"
echo "║    ███╔╝  ██╔══██║ ██╔██╗  ███╔╝  ██║   ██║    ███╔╝           ║"
echo "║   ███████╗██║  ██║██╔╝ ██╗███████╗██║   ██║   ███████╗         ║"
echo "║   ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝   ╚═╝   ╚══════╝         ║"
echo "║                                                                  ║"
echo "║              ZAXSITZ TERMUX THEME v3.0                          ║"
echo "║              Developed by: zaax (Zx¡?)                          ║"
echo "║              TikTok: @promptbyzaax__                             ║"
echo "║                                                                  ║"
echo "║   ╔═══════════════════════════════════════════════════════════╗  ║"
echo "║   ║  ✦ INSTALLER  ✦ Status: READY  ✦ Theme: ZAXSITZ        ║  ║"
echo "║   ╚═══════════════════════════════════════════════════════════╝  ║"
echo "║                                                                  ║"
echo "╚══════════════════════════════════════════════════════════════════╝"
echo -e "${NC}"

echo -e "${YELLOW}[*] Starting ZAXSITZ installation...${NC}"
echo ""

# Check if running on Termux
if [ ! -d "$PREFIX" ]; then
    echo -e "${RED}[!] This script is designed for Termux${NC}"
    echo -e "${YELLOW}[*] Continue anyway? (y/n)${NC}"
    read -r response
    if [ "$response" != "y" ]; then
        exit 1
    fi
fi

# Create directories
echo -e "${BLUE}[*] Creating directories...${NC}"
mkdir -p ~/.zaxsitz
mkdir -p ~/.zaxsitz/banner
mkdir -p ~/.zaxsitz/themes
mkdir -p ~/.zaxsitz/fonts
mkdir -p ~/.zaxsitz/scripts
mkdir -p ~/.zaxsitz/extras
mkdir -p ~/.zaxsitz/wallpaper
mkdir -p ~/.termux

# Copy files
echo -e "${BLUE}[*] Copying files...${NC}"

# Copy banner scripts
cat > ~/.zaxsitz/banner/banner.py << 'EOF'
#!/usr/bin/env python3
# ZAXSITZ Banner Script

import os
import sys
import time
import random
from datetime import datetime
from colorama import init, Fore, Style

init(autoreset=True)

BANNER = f"""
{Fore.CYAN}╔══════════════════════════════════════════════════════════════════╗
{Fore.CYAN}║                                                                  ║
{Fore.CYAN}║   {Fore.YELLOW}███████╗ █████╗ ██╗  ██╗███████╗██╗████████╗███████╗{Fore.CYAN}         ║
{Fore.CYAN}║   {Fore.YELLOW}╚══███╔╝██╔══██╗╚██╗██╔╝╚══███╔╝██║╚══██╔══╝╚══███╔╝{Fore.CYAN}         ║
{Fore.CYAN}║   {Fore.YELLOW}  ███╔╝ ███████║ ╚███╔╝   ███╔╝ ██║   ██║     ███╔╝ {Fore.CYAN}         ║
{Fore.CYAN}║   {Fore.YELLOW} ███╔╝  ██╔══██║ ██╔██╗  ███╔╝  ██║   ██║    ███╔╝  {Fore.CYAN}         ║
{Fore.CYAN}║   {Fore.YELLOW}███████╗██║  ██║██╔╝ ██╗███████╗██║   ██║   ███████╗{Fore.CYAN}         ║
{Fore.CYAN}║   {Fore.YELLOW}╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝   ╚═╝   ╚══════╝{Fore.CYAN}         ║
{Fore.CYAN}║                                                                  ║
{Fore.CYAN}║   {Fore.GREEN}┌─────────────────────────────────────────────────────┐{Fore.CYAN}          ║
{Fore.CYAN}║   {Fore.GREEN}│  {Fore.WHITE}ZAXSITZ TERMUX THEME {Fore.YELLOW}v3.0{Fore.GREEN}                        │{Fore.CYAN}          ║
{Fore.CYAN}║   {Fore.GREEN}│  {Fore.WHITE}Developer: {Fore.CYAN}zaax (Zx¡?){Fore.GREEN}                       │{Fore.CYAN}          ║
{Fore.CYAN}║   {Fore.GREEN}│  {Fore.WHITE}TikTok: {Fore.CYAN}@promptbyzaax__{Fore.GREEN}                          │{Fore.CYAN}          ║
{Fore.CYAN}║   {Fore.GREEN}│  {Fore.WHITE}Status: {Fore.GREEN}ONLINE{Fore.GREEN}                               │{Fore.CYAN}          ║
{Fore.CYAN}║   {Fore.GREEN}│  {Fore.WHITE}Mode: {Fore.GREEN}PREMIUM{Fore.GREEN}                              │{Fore.CYAN}          ║
{Fore.CYAN}║   {Fore.GREEN}└─────────────────────────────────────────────────────┘{Fore.CYAN}          ║
{Fore.CYAN}║                                                                  ║
{Fore.CYAN}║   {Fore.YELLOW}[{Fore.WHITE}{datetime.now().strftime('%Y-%m-%d %H:%M:%S')}{Fore.YELLOW}] {Fore.GREEN}Welcome back, Tuan!{Fore.CYAN}          ║
{Fore.CYAN}║   {Fore.YELLOW}[*] {Fore.WHITE}System ready. All features unlocked.{Fore.CYAN}                    ║
{Fore.CYAN}║   {Fore.YELLOW}[*] {Fore.WHITE}Type '{Fore.CYAN}help{Fore.WHITE}' for commands.{Fore.CYAN}                        ║
{Fore.CYAN}║                                                                  ║
{Fore.CYAN}╚══════════════════════════════════════════════════════════════════╝
{Fore.RESET}
"""

if __name__ == '__main__':
    if len(sys.argv) > 1:
        if sys.argv[1] == '-a':
            # Animated
            for i in range(3):
                os.system('clear')
                print(BANNER)
                time.sleep(0.5)
        elif sys.argv[1] == '-g':
            # Glitch
            print(Fore.RED + BANNER)
            time.sleep(0.1)
            print(Fore.GREEN + BANNER)
            time.sleep(0.1)
            print(Fore.CYAN + BANNER)
        else:
            print(BANNER)
    else:
        print(BANNER)
EOF

chmod +x ~/.zaxsitz/banner/banner.py

# Copy theme files
cat > ~/.zaxsitz/themes/zaxsitz.properties << 'EOF'
# ZAXSITZ Premium Theme
background=#0a0a0a
foreground=#00ff00
cursor=#00ff00
color0=#0a0a0a
color1=#ff0055
color2=#00ff88
color3=#ffcc00
color4=#0088ff
color5=#ff00ff
color6=#00ffcc
color7=#ffffff
color8=#555555
color9=#ff3377
color10=#66ffaa
color11=#ffdd44
color12=#44aaff
color13=#ff66ff
color14=#66ffdd
color15=#ffffff
EOF

cat > ~/.zaxsitz/themes/zaxsitz_neon.properties << 'EOF'
# ZAXSITZ Neon Theme
background=#0a0a1a
foreground=#00ffff
cursor=#00ffff
color0=#0a0a1a
color1=#ff0044
color2=#00ffcc
color3=#ffcc00
color4=#4400ff
color5=#ff00aa
color6=#00ffff
color7=#ffffff
color8=#222244
color9=#ff4488
color10=#44ffdd
color11=#ffdd44
color12=#6644ff
color13=#ff44bb
color14=#44ffff
color15=#ffffff
EOF

cat > ~/.zaxsitz/themes/zaxsitz_matrix.properties << 'EOF'
# ZAXSITZ Matrix Theme
background=#000000
foreground=#00ff00
cursor=#00ff00
color0=#000000
color1=#003300
color2=#00ff00
color3=#33ff33
color4=#006600
color5=#00cc00
color6=#66ff66
color7=#ccffcc
color8=#003300
color9=#006600
color10=#00ff00
color11=#33ff33
color12=#009900
color13=#00cc00
color14=#66ff66
color15=#ccffcc
EOF

# Copy main script
cat > ~/.zaxsitz/scripts/zaxsitz.sh << 'EOF'
#!/bin/bash

# ZAXSITZ Main Script
# Developed by: zaax

ZAXSITZ_DIR="$HOME/.zaxsitz"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m'

# Show banner
show_banner() {
    python3 "$ZAXSITZ_DIR/banner/banner.py" "$@"
}

# Change theme
change_theme() {
    local theme="$1"
    case "$theme" in
        dark)
            cp "$ZAXSITZ_DIR/themes/zaxsitz.properties" "$HOME/.termux/colors.properties"
            echo -e "${GREEN}[✓] Theme changed to: DARK${NC}"
            ;;
        light)
            cp "$ZAXSITZ_DIR/themes/zaxsitz_light.properties" "$HOME/.termux/colors.properties" 2>/dev/null || echo -e "${RED}[!] Theme not found${NC}"
            ;;
        neon)
            cp "$ZAXSITZ_DIR/themes/zaxsitz_neon.properties" "$HOME/.termux/colors.properties"
            echo -e "${GREEN}[✓] Theme changed to: NEON${NC}"
            ;;
        matrix)
            cp "$ZAXSITZ_DIR/themes/zaxsitz_matrix.properties" "$HOME/.termux/colors.properties"
            echo -e "${GREEN}[✓] Theme changed to: MATRIX${NC}"
            ;;
        *)
            cp "$ZAXSITZ_DIR/themes/zaxsitz.properties" "$HOME/.termux/colors.properties"
            echo -e "${GREEN}[✓] Theme changed to: ZAXSITZ${NC}"
            ;;
    esac
    termux-reload-settings
}

# Show help
show_help() {
    echo -e "${CYAN}╔═══════════════════════════════════════════════╗"
    echo -e "${CYAN}║  ZAXSITZ COMMANDS                            ║"
    echo -e "${CYAN}╠═══════════════════════════════════════════════╣"
    echo -e "${GREEN}║  zax              ${WHITE}Display banner${NC}"
    echo -e "${GREEN}║  zax -a           ${WHITE}Animated banner${NC}"
    echo -e "${GREEN}║  zax -g           ${WHITE}Glitch effect${NC}"
    echo -e "${GREEN}║  zax -m           ${WHITE}Matrix effect${NC}"
    echo -e "${GREEN}║  zax -n           ${WHITE}Neon mode${NC}"
    echo -e "${GREEN}║  theme            ${WHITE}Change theme${NC}"
    echo -e "${GREEN}║  theme list       ${WHITE}List themes${NC}"
    echo -e "${GREEN}║  theme dark       ${WHITE}Apply dark theme${NC}"
    echo -e "${GREEN}║  theme light      ${WHITE}Apply light theme${NC}"
    echo -e "${GREEN}║  theme neon       ${WHITE}Apply neon theme${NC}"
    echo -e "${GREEN}║  theme matrix     ${WHITE}Apply matrix theme${NC}"
    echo -e "${GREEN}║  reset            ${WHITE}Reset to default${NC}"
    echo -e "${GREEN}║  help             ${WHITE}Show help${NC}"
    echo -e "${CYAN}╚═══════════════════════════════════════════════╝${NC}"
}

# Main
case "$1" in
    -a|-g|-m|-n)
        show_banner "$1"
        ;;
    theme)
        if [ -z "$2" ]; then
            change_theme
        elif [ "$2" = "list" ]; then
            echo -e "${CYAN}Available themes: dark, light, neon, matrix${NC}"
        else
            change_theme "$2"
        fi
        ;;
    help|-h)
        show_help
        ;;
    reset)
        change_theme "default"
        echo -e "${GREEN}[✓] Reset to default${NC}"
        ;;
    *)
        show_banner
        ;;
esac
EOF

chmod +x ~/.zaxsitz/scripts/zaxsitz.sh

# Create welcome script
cat > ~/.zaxsitz/scripts/welcome.sh << 'EOF'
#!/bin/bash

# ZAXSITZ Welcome Script
# Developed by: zaax

echo -e "\033[0;32m"
echo "╔══════════════════════════════════════════════════════════════════╗"
echo "║                                                                  ║"
echo "║   ███████╗ █████╗ ██╗  ██╗███████╗██╗████████╗███████╗         ║"
echo "║   ╚══███╔╝██╔══██╗╚██╗██╔╝╚══███╔╝██║╚══██╔══╝╚══███╔╝         ║"
echo "║     ███╔╝ ███████║ ╚███╔╝   ███╔╝ ██║   ██║     ███╔╝          ║"
echo "║    ███╔╝  ██╔══██║ ██╔██╗  ███╔╝  ██║   ██║    ███╔╝           ║"
echo "║   ███████╗██║  ██║██╔╝ ██╗███████╗██║   ██║   ███████╗         ║"
echo "║   ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝   ╚═╝   ╚══════╝         ║"
echo "║                                                                  ║"
echo "║              ZAXSITZ TERMUX THEME v3.0                          ║"
echo "║              Developed by: zaax (Zx¡?)                          ║"
echo "║              TikTok: @promptbyzaax__                             ║"
echo "║                                                                  ║"
echo "║   ╔═══════════════════════════════════════════════════════════╗  ║"
echo "║   ║  ✦ Status: ONLINE  ✦ Mode: PREMIUM  ✦ Theme: ZAXSITZ  ║  ║"
echo "║   ╚═══════════════════════════════════════════════════════════╝  ║"
echo "║                                                                  ║"
echo "║   [$(date '+%Y-%m-%d %H:%M:%S')] Welcome back, Tuan!             ║"
echo "║   [*] System ready. All features unlocked.                      ║"
echo "║   [*] Type 'help' for commands.                                 ║"
echo "║                                                                  ║"
echo "╚══════════════════════════════════════════════════════════════════╝"
echo -e "\033[0m"
EOF

chmod +x ~/.zaxsitz/scripts/welcome.sh

# Create aliases
cat > ~/.zaxsitz/scripts/aliases.sh << 'EOF'
# ZAXSITZ Aliases

alias zax='~/.zaxsitz/scripts/zaxsitz.sh'
alias banner='~/.zaxsitz/scripts/zaxsitz.sh'
alias theme='~/.zaxsitz/scripts/zaxsitz.sh theme'
alias help='~/.zaxsitz/scripts/zaxsitz.sh help'
alias reset='~/.zaxsitz/scripts/zaxsitz.sh reset'
alias cls='clear'
alias ls='ls --color=auto'
alias ll='ls -la'
alias la='ls -a'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias grep='grep --color=auto'
alias f='find . -name'
alias h='history'
alias ports='netstat -tulpn'
EOF

# Create extras
cat > ~/.zaxsitz/extras/ascii_art.txt << 'EOF'
╔═══════════════════════════════════════════════╗
║   ███████╗ █████╗ ██╗  ██╗███████╗██╗████████╗ ║
║   ╚══███╔╝██╔══██╗╚██╗██╔╝╚══███╔╝██║╚══██╔══╝ ║
║     ███╔╝ ███████║ ╚███╔╝   ███╔╝ ██║   ██║    ║
║    ███╔╝  ██╔══██║ ██╔██╗  ███╔╝  ██║   ██║    ║
║   ███████╗██║  ██║██╔╝ ██╗███████╗██║   ██║    ║
║   ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝   ╚═╝    ║
╚═══════════════════════════════════════════════╝
EOF

cat > ~/.zaxsitz/extras/quotes.txt << 'EOF'
"Kode adalah seni, dan seni adalah kebebasan." - zaax
"Termux adalah rumah kedua bagi para hacker." - zaax
"Kreativitas tidak mengenal batas." - zaax
"Kehidupan adalah kode yang terus dieksekusi." - zaax
"Berkaryalah tanpa henti, berinovasi tanpa batas." - zaax
EOF

# Apply theme
echo -e "${BLUE}[*] Applying theme...${NC}"
cp ~/.zaxsitz/themes/zaxsitz.properties ~/.termux/colors.properties

# Setup bashrc
echo -e "${BLUE}[*] Setting up bashrc...${NC}"
if ! grep -q "ZAXSITZ" ~/.bashrc 2>/dev/null; then
    echo "" >> ~/.bashrc
    echo "# ZAXSITZ Theme" >> ~/.bashrc
    echo "source ~/.zaxsitz/scripts/aliases.sh" >> ~/.bashrc
    echo "~/.zaxsitz/scripts/welcome.sh" >> ~/.bashrc
fi

# Setup zshrc if exists
if [ -f ~/.zshrc ]; then
    if ! grep -q "ZAXSITZ" ~/.zshrc; then
        echo "" >> ~/.zshrc
        echo "# ZAXSITZ Theme" >> ~/.zshrc
        echo "source ~/.zaxsitz/scripts/aliases.sh" >> ~/.zshrc
        echo "~/.zaxsitz/scripts/welcome.sh" >> ~/.zshrc
    fi
fi

# Reload
termux-reload-settings

echo ""
echo -e "${GREEN}╔═══════════════════════════════════════════════╗"
echo -e "${GREEN}║  ✓ ZAXSITZ INSTALLED SUCCESSFULLY!         ║"
echo -e "${GREEN}╠═══════════════════════════════════════════════╣"
echo -e "${GREEN}║  ${WHITE}Theme: ${CYAN}ZAXSITZ${GREEN}                              ║"
echo -e "${GREEN}║  ${WHITE}Version: ${CYAN}3.0${GREEN}                                 ║"
echo -e "${GREEN}║  ${WHITE}Developer: ${CYAN}zaax (Zx¡?)${GREEN}                    ║"
echo -e "${GREEN}║  ${WHITE}TikTok: ${CYAN}@promptbyzaax__${GREEN}                       ║"
echo -e "${GREEN}╠═══════════════════════════════════════════════╣"
echo -e "${GREEN}║  ${WHITE}Type ${CYAN}zax${WHITE} to show banner${GREEN}                ║"
echo -e "${GREEN}║  ${WHITE}Type ${CYAN}help${WHITE} for commands${GREEN}                 ║"
echo -e "${GREEN}╚═══════════════════════════════════════════════╝${NC}"
echo ""

# Show welcome
~/.zaxsitz/scripts/welcome.sh

# Install complete
echo -e "${GREEN}[✓] Installation complete!${NC}"
echo -e "${YELLOW}[*] Restart Termux to see changes${NC}"
