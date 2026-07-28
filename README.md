
---

## 📱 Features

### 🎨 Themes
| Theme | Description |
|-------|-------------|
| **ZAXSITZ** | Default premium theme |
| **ZAXSITZ_DARK** | Dark mode variant |
| **ZAXSITZ_LIGHT** | Light mode variant |
| **ZAXSITZ_NEON** | Neon glow effect |
| **ZAXSITZ_MATRIX** | Matrix green style |

### 🖼️ Banners
| Type | Description |
|------|-------------|
| **Static** | Clean ASCII art |
| **Animated** | Moving/bouncing text |
| **Glitch** | Cyberpunk glitch effect |
| **Matrix** | Falling text effect |
| **Color** | Rainbow color cycling |

### 🛠️ Scripts
| Script | Function |
|--------|----------|
| `zaxsitz.sh` | Main startup script |
| `welcome.sh` | Welcome message |
| `utilities.sh` | Helper functions |
| `aliases.sh` | Custom commands |

### ✨ Extra Features
- ✅ Custom fonts
- ✅ Animated welcome
- ✅ System info display
- ✅ Date/time with effects
- ✅ Music credits display
- ✅ Quote of the day
- ✅ Custom aliases
- ✅ Colorful terminal

---

## 🚀 Installation

### One-click Install

```bash
curl -sL https://raw.githubusercontent.com/zaax/ZAXSITZ/main/install.sh | bash

# Clone repository
git clone https://github.com/zaax/ZAXSITZ.git
cd ZAXSITZ

# Make install script executable
chmod +x install.sh

# Run installer
./install.sh

# Reload Termux
termux-reload-settings

cd ~/ZAXSITZ
git pull
./install.sh


### COMMAND

| Command	| Description |
|-----------------------|
|zax	|Display banner.  |
|zax -a	|Animated banner|
|zax -g	|Glitch effect. |
|zax -m	|Matrix effect. |
|zax -n	|Neon mode.     |
|zax -h	|Help menu.     |
|theme	|Change theme.  |
|theme list	|List themes|
|theme dark	|Apply dark theme|
|theme light|Apply light theme|
|theme neon	|Apply neon theme|
|theme matrix	|Apply matrix theme|
|reset	|Reset to default|
|help	|Show help|
