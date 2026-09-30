$binDir = "$env:LOCALAPPDATA\Microsoft\WindowsApps"
if (-not (Test-Path $binDir)) { New-Item -ItemType Directory -Path $binDir -Force | Out-Null }
$url = "https://raw.githubusercontent.com/KaanAlper/sudo-for-windows/main/sudo.cmd"
Write-Host "Sudo for Windows kuruluyor..." -ForegroundColor Cyan
try {
    Invoke-WebRequest -Uri $url -OutFile "$binDir\sudo.cmd" -UseBasicParsing
    Write-Host "[BASARILI] Sudo for Windows basariyla kuruldu! CMD ve PowerShell uzerinden 'sudo' yazarak kullanabilirsiniz." -ForegroundColor Green
} catch {
    Write-Host "[HATA] Indirme basarisiz oldu: $_" -ForegroundColor Red
}

