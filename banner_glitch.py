#!/usr/bin/env python3
# ZAXSITZ Glitch Banner

import os
import sys
import time
import random
from colorama import init, Fore, Style

init(autoreset=True)

GLITCH_BANNER = f"""
{Fore.RED}╔══════════════════════════════════════════════════════════════════╗
{Fore.RED}║                                                                  ║
{Fore.RED}║   {Fore.GREEN}███████╗ █████╗ ██╗  ██╗███████╗██╗████████╗███████╗{Fore.RED}         ║
{Fore.RED}║   {Fore.GREEN}╚══███╔╝██╔══██╗╚██╗██╔╝╚══███╔╝██║╚══██╔══╝╚══███╔╝{Fore.RED}         ║
{Fore.RED}║   {Fore.GREEN}  ███╔╝ ███████║ ╚███╔╝   ███╔╝ ██║   ██║     ███╔╝ {Fore.RED}         ║
{Fore.RED}║   {Fore.GREEN} ███╔╝  ██╔══██║ ██╔██╗  ███╔╝  ██║   ██║    ███╔╝  {Fore.RED}         ║
{Fore.RED}║   {Fore.GREEN}███████╗██║  ██║██╔╝ ██╗███████╗██║   ██║   ███████╗{Fore.RED}         ║
{Fore.RED}║   {Fore.GREEN}╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝   ╚═╝   ╚══════╝{Fore.RED}         ║
{Fore.RED}║                                                                  ║
{Fore.RED}║   {Fore.YELLOW}┌─────────────────────────────────────────────────────┐{Fore.RED}          ║
{Fore.RED}║   {Fore.YELLOW}│  {Fore.WHITE}ZAXSITZ GLITCH MODE {Fore.RED}ACTIVE{Fore.YELLOW}                    │{Fore.RED}          ║
{Fore.RED}║   {Fore.YELLOW}└─────────────────────────────────────────────────────┘{Fore.RED}          ║
{Fore.RED}║                                                                  ║
{Fore.RED}╚══════════════════════════════════════════════════════════════════╝
{Fore.RESET}
"""

def glitch_effect():
    chars = ['█', '▓', '▒', '░', ' ']
    
    for _ in range(20):
        os.system('clear' if os.name == 'posix' else 'cls')
        
        # Random glitch overlay
        glitch_lines = []
        for i in range(10):
            line = ''.join(random.choice(chars) for _ in range(70))
            glitch_lines.append(line)
        
        # Random position for glitch
        glitch_pos = random.randint(0, 10)
        
        # Print banner with glitch
        lines = GLITCH_BANNER.split('\n')
        for i, line in enumerate(lines):
            if glitch_pos <= i < glitch_pos + 3:
                # Glitch effect
                color = random.choice([Fore.RED, Fore.GREEN, Fore.BLUE, Fore.YELLOW])
                glitch_line = line[:random.randint(20, 50)] + color + '█' * random.randint(5, 15) + Fore.RESET + line[random.randint(20, 50):]
                print(glitch_line)
            else:
                print(line)
        
        time.sleep(0.1)
    
    print(GLITCH_BANNER)

if __name__ == '__main__':
    glitch_effect()
