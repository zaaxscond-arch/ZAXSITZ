#!/usr/bin/env python3
# ZAXSITZ Matrix Banner

import os
import sys
import time
import random
from colorama import init, Fore

init(autoreset=True)

def matrix_effect():
    columns = 50
    matrix = [[random.choice(['0', '1']) for _ in range(columns)] for _ in range(10)]
    
    for _ in range(30):
        os.system('clear' if os.name == 'posix' else 'cls')
        
        # Update matrix
        for i in range(len(matrix)):
            for j in range(len(matrix[i])):
                if random.random() < 0.3:
                    matrix[i][j] = random.choice(['0', '1'])
        
        # Print matrix with green color
        for row in matrix:
            line = ''
            for char in row:
                brightness = random.choice([40, 90, 92, 93, 94, 95, 96, 97])
                line += f'\033[{brightness}m{char}\033[0m'
            print(line)
        
        time.sleep(0.1)
    
    # Print banner on top
    print(f"""{Fore.GREEN}
╔══════════════════════════════════════════════════════════════════╗
║                                                                  ║
║   ███████╗ █████╗ ██╗  ██╗███████╗██╗████████╗███████╗         ║
║   ╚══███╔╝██╔══██╗╚██╗██╔╝╚══███╔╝██║╚══██╔══╝╚══███╔╝         ║
║     ███╔╝ ███████║ ╚███╔╝   ███╔╝ ██║   ██║     ███╔╝          ║
║    ███╔╝  ██╔══██║ ██╔██╗  ███╔╝  ██║   ██║    ███╔╝           ║
║   ███████╗██║  ██║██╔╝ ██╗███████╗██║   ██║   ███████╗         ║
║   ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝   ╚═╝   ╚══════╝         ║
║                                                                  ║
║   ╔═══════════════════════════════════════════════════════════╗  ║
║   ║  ✦ MATRIX MODE ACTIVE  ✦ Status: ONLINE                ║  ║
║   ╚═══════════════════════════════════════════════════════════╝  ║
║                                                                  ║
║   Welcome to the Matrix, Tuan.                                  ║
║                                                                  ║
╚══════════════════════════════════════════════════════════════════╝
{Fore.RESET}""")

if __name__ == '__main__':
    matrix_effect()
