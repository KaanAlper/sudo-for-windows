# Sudo for Windows

Linux tarzı şifre doğrulamalı ve UAC atlatmalı (fodhelper tabanlı) yerel Windows Sudo aracı.

## 🚀 Tek Satırda Kurulum (One-Line Install)

PowerShell açıp aşağıdaki komutu yapıştırmanız yeterlidir:

```powershell
irm https://raw.githubusercontent.com/KaanAlper/sudo-for-windows/main/install.ps1 | iex
```

## Özellikler
- **CMD ve PowerShell Uyumlu:** CMD içinden çağrılırsa Yönetici CMD, PowerShell içinden çağrılırsa Yönetici PowerShell açar.
- **Gerçek Windows Parolası:** Ekstra bir PIN/şifre dosyası tutmaz; Windows kimlik doğrulama sistemini (Active Directory / Local Machine) kullanır.
- **UAC Bypass:** Ekranı donduran güvenli masaüstü pencerelerine takılmadan yükseltilmiş yetkiyle işlem başlatır.

## Kullanım
- Sadece `sudo` -> Bulunulan kabuğa göre (CMD/PowerShell) yeni bir Yönetici penceresi açar.
- `sudo <komut>` -> İlgili komutu arka planda yönetici yetkisiyle yürütür.

