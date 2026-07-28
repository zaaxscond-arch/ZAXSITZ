#!/usr/bin/env python3
# ZAXSITZ Animated Banner

import os
import sys
import time
import random
from datetime import datetime
from colorama import init, Fore, Style

init(autoreset=True)

def get_banner():
    return f"""
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

def animate_banner():
    colors = [Fore.RED, Fore.GREEN, Fore.YELLOW, Fore.BLUE, Fore.MAGENTA, Fore.CYAN]
    
    for i in range(10):
        os.system('clear' if os.name == 'posix' else 'cls')
        color = colors[i % len(colors)]
        banner = get_banner().replace(Fore.CYAN, color)
        print(banner)
        time.sleep(0.3)

if __name__ == '__main__':
    if len(sys.argv) > 1 and sys.argv[1] == '--rainbow':
        animate_banner()
    else:
        print(get_banner())
