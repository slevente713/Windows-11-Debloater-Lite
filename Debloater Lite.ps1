Write-Host "Rendszergazdaként futtattál? Ha nem akkor indíts újra rendszergazdaként!" -ForegroundColor Cyan
Write-Host "FIGYELEM! A KÉPERNYŐ NÉHA PÁR MÁSODPERCRE ELSÖTÉTÜLHET, HOGY ÉRVÉNYESÜLJENEK AUTÓMATIKUSAN A MÓDOSÍTÁSOK!" -ForegroundColor Cyan
Write-Host "FIGYELEM! A HIBAÜZENETEKET ZÁRD BE, AZOK CSAK AZT JELENTIK HOGY AZ ADOTT ALKALMAZÁS NINCS A GÉPEN!" -ForegroundColor Cyan
Set-ExecutionPolicy Unrestricted -Force
winget source update --silent
Write-Host "Winget források frissítése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.GetHelp_8wekyb3d8bbwe --silent
Write-Host "Segítség kérése törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe --silent
Write-Host "Visszajelzés küldése törlése..." -ForegroundColor Cyan..." -ForegroundColor Cyan
winget uninstall --id Microsoft.DevHome_8wekyb3d8bbwe --silent
Write-Host "Dev Home törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.549981C327F10_8wekyb3d8bbwe --silent
Write-Host "Cortana törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.Todos_8wekyb3d8bbwe --silent
Write-Host "To Do törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.ZuneVideo_8wekyb3d8bbwe --silent
Write-Host "Filmek+TV törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.BingWeather_8wekyb3d8bbwe --silent
Write-Host "Időjárás törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.BingNews_8wekyb3d8bbwe --silent
Write-Host "Hírek törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.BingSports_8wekyb3d8bbwe --silent
Write-Host "Sportok törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.BingFinance_8wekyb3d8bbwe --silent
Write-Host "Finanszírozás törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.SkypeApp_kzf8qxf38zg5c --silent
Write-Host "Skype törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.WindowsSoundRecorder_8wekyb3d8bbwe --silent
Write-Host "Hangrögzítő törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.MSPaint3D_8wekyb3d8bbwe --silent 
Write-Host "Paint 3D törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.XPSViewer_8wekyb3d8bbwe --silent
dism /online /disable-feature /featurename:XPS.Viewer /norestart
Write-Host "XPS Megjelenítő törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.549981C32F101_8wekyb3d8bbwe --silent
Write-Host "Cortana törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.Copilot_8wekyb3d8bbwe --silent
$policyPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsCopilot"
if (!(Test-Path $policyPath)) { New-Item -Path $policyPath -Force | Out-Null }
New-ItemProperty -Path $policyPath -Name "TurnOffWindowsCopilot" -PropertyType DWord -Value 1 -Force | Out-Null
$searchPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search"
New-ItemProperty -Path $searchPath -Name "BingSearchEnabled" -PropertyType DWord -Value 0 -Force | Out-Null
New-ItemProperty -Path $searchPath -Name "SearchboxTaskbarMode" -PropertyType DWord -Value 1 -Force | Out-Null
$advancedPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
New-ItemProperty -Path $advancedPath -Name "ShowCopilotButton" -PropertyType DWord -Value 0 -Force | Out-Null
$userPolicyPath = "HKCU:\Software\Policies\Microsoft\Windows\WindowsCopilot"
if (!(Test-Path $userPolicyPath)) { New-Item -Path $userPolicyPath -Force | Out-Null }
New-ItemProperty -Path $userPolicyPath -Name "TurnOffWindowsCopilot" -PropertyType DWord -Value 1 -Force | Out-Null
Stop-Process -Name explorer -Force; Start-Process explorer.exe
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowCopilotButton" -PropertyType DWord -Value 0 -Force | Out-Null
Stop-Process -Name explorer -Force; Start-Process explorer.exe
Write-Host "Copilot törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.Wallet_8wekyb3d8bbwe --silent
Write-Host "Pénztárca törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe --silent
Write-Host "Sticky Notes (Cetlik) törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.Microsoft3DViewer_8wekyb3d8bbwe --silent
Write-Host "3D megjelenítő törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe --silent
Write-Host "Microsoft Solitare Collection törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.People_8wekyb3d8bbwe --silent
Write-Host "Névjegyek alkalmazás törlése... (A NÉVJEGYEID AZ OUTLOOKBAN MEGMARADNAK!)" -ForegroundColor Cyan
winget uninstall --id Microsoft.MixedReality.Portal_8wekyb3d8bbwe --silent
Write-Host "Mixed Reality Portal törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.WindowsMaps_8wekyb3d8bbwe --silent
Write-Host "Térkép törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.Getstarted_8wekyb3d8bbwe --silent
Write-Host "Tippek alkalmazás törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.Family_8wekyb3d8bbwe --silent
Write-Host "Microsoft Család alkalmazás törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.Clipchamp.Clipchamp_8wekyb3d8bbwe --silent
Write-Host "Clipchamp és Movie Maker törlése..." -ForegroundColor Cyan
winget uninstall --id Microsoft.WindowsCamera_8wekyb3d8bbwe --silent
Write-Host "Windows Kamera törlése..." -ForegroundColor Cyan
Disable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Windows-WordPad" -NoRestart
Write-Host "Wordpad törlése..." -ForegroundColor Cyan
Disable-WindowsOptionalFeature -Online -FeatureName "Printing-Foundation-Features" -NoRestart
Write-Host "Fax+Scan letiltása..." -ForegroundColor Cyan
Set-ExecutionPolicy Restricted -Force
Write-Host "Végeztünk. Indítsd újra a gépet!" -ForegroundColor Cyan