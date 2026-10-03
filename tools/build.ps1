# Packages sudo for Windows: dist\sudo-for-windows-<version>.zip (what install.ps1 installs) and its .sha256.
#   pwsh ./tools/build.ps1 -Version 1.2.3
param([string]$Version = '0.0.0')
$ErrorActionPreference = 'Stop'
if ($Version -notmatch '^\d+\.\d+\.\d+$') { throw "Version must be x.y.z: $Version" }
Set-Location (Split-Path $PSScriptRoot -Parent)

New-Item -ItemType Directory -Force dist | Out-Null
$zip = "dist/sudo-for-windows-$Version.zip"
Remove-Item $zip -Force -ErrorAction SilentlyContinue
Compress-Archive -Path sudo.cmd, README.md -DestinationPath $zip
$h = (Get-FileHash $zip -Algorithm SHA256).Hash.ToLower()
"$h  $(Split-Path $zip -Leaf)" | Set-Content "$zip.sha256" -Encoding ascii
'{0}  {1:N1} KB  sha256={2}' -f (Split-Path $zip -Leaf), ((Get-Item $zip).Length / 1KB), $h
