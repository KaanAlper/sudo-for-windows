# sudo-for-windows

A lightweight, Linux-like `sudo` command for Windows with real password verification and seamless elevation.

## 🚀 Quick Install

Run this in PowerShell:

```powershell
irm https://raw.githubusercontent.com/KaanAlper/sudo-for-windows/main/install.ps1 | iex
```

## Features

- **Context-Aware:** Running `sudo` inside CMD opens an elevated CMD. Running it inside PowerShell opens an elevated PowerShell.
- **Real Windows Password Check:** Uses Windows native authentication (`System.DirectoryServices.AccountManagement`) to verify your Windows account password. No plaintext credentials or pins stored.
- **Silent Elevation:** Bypasses secure desktop freezes and UAC popups seamlessly.
- **Universal:** Works in CMD, PowerShell, Windows Terminal, and remote SSH/shells.

## Usage

Open an elevated shell (CMD or PowerShell depending on where you run it):
```powershell
sudo
```

Run a command with administrator privileges in the background:
```powershell
sudo <command>
```

Example:
```powershell
sudo "Restart-Service wuauserv"
```

## License

MIT
