# sudo-for-windows

A lightweight, Linux-like `sudo` command for Windows with real password verification and seamless elevation.

## 🚀 Quick Install

Run this in PowerShell:

```powershell
irm https://raw.githubusercontent.com/KaanAlper/sudo-for-windows/main/install.ps1 | iex
```

It installs the latest release for your user (no administrator rights) into `%LOCALAPPDATA%\Programs\sudo-for-windows`, adds it to your user `PATH` and to **Settings > Apps** with an uninstaller. Running the same command again updates it; if anything fails or you press Ctrl+C, everything goes back to how it was. Open a new terminal afterwards.

To remove it: Settings > Apps > sudo for Windows, or

```powershell
$env:SUDO4WIN_UNINSTALL = 1; irm https://raw.githubusercontent.com/KaanAlper/sudo-for-windows/main/install.ps1 | iex
```

> Windows 11 24H2 and newer can ship their own `sudo.exe` in `System32`, which comes before user `PATH` entries. Where it is present, type `sudo.cmd` to use this one.

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

## Releases

Actions > Release > Run workflow publishes a version; the number follows the commits since the last release (`feat:` minor, `fix:` patch, `type!:` or `BREAKING CHANGE:` major).

## License

MIT
