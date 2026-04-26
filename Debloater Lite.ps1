Write-Host "Rendszergazdaként futtattál? Ha nem akkor indíts újra rendszergazdaként! Did you run me as an administrator? If not, run me again as an administrator!" -ForegroundColor Cyan
Write-Host "FIGYELEM! A KÉPERNYŐ NÉHA PÁR MÁSODPERCRE ELSÖTÉTÜLHET, HOGY ÉRVÉNYESÜLJENEK AUTÓMATIKUSAN A MÓDOSÍTÁSOK! ATTENTION! THE SCREEN MAY GO DARK FOR A FEW SECONDS TO ALLOW THE CHANGES TO TAKE EFFECT AUTOMATICALLY!" -ForegroundColor Cyan
Write-Host "FIGYELEM! A HIBAÜZENETEKET ZÁRD BE, AZOK CSAK AZT JELENTIK HOGY AZ ADOTT ALKALMAZÁS NINCS A GÉPEN! ATTENTION! IGNORE THE ERROR MESSAGES; THEY SIMPLY MEAN THAT THE APPLICATION IS NOT INSTALLED ON YOUR COMPUTER!" -ForegroundColor Cyan
Set-ExecutionPolicy Unrestricted -Force
winget source update --silent
Write-Host "Winget források frissítése... Update Winget sources" -ForegroundColor Cyan
winget uninstall --id Microsoft.GetHelp_8wekyb3d8bbwe --silent
Write-Host "Segítség kérése törlése... Removing Get Help..." -ForegroundColor Cyan
winget uninstall --id Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe --silent
Write-Host "Visszajelzés küldése törlése... Removing Feedback Hub..." -ForegroundColor Cyan..." -ForegroundColor Cyan
winget uninstall --id Microsoft.DevHome_8wekyb3d8bbwe --silent
Write-Host "Dev Home törlése... Removing Dev Home..." -ForegroundColor Cyan
winget uninstall --id Microsoft.Todos_8wekyb3d8bbwe --silent
Write-Host "To Do törlése... Removing To Do..." -ForegroundColor Cyan
winget uninstall --id Microsoft.ZuneVideo_8wekyb3d8bbwe --silent
Write-Host "Filmek+TV törlése... Removing Movies and TV..." -ForegroundColor Cyan
winget uninstall --id Microsoft.BingWeather_8wekyb3d8bbwe --silent
Write-Host "Időjárás törlése... Removing Bing Weather..." -ForegroundColor Cyan
winget uninstall --id Microsoft.BingNews_8wekyb3d8bbwe --silent
Write-Host "Hírek törlése... Removing Bing News..." -ForegroundColor Cyan
dism /Online /Disable-Feature /FeatureName:Internet-Explorer-Optional-amd64 /NoRestart
Write-Host "Internegt Explorer 11 törlése... Removing Internet Explorer 11..." -ForegroundColor Cyan
winget uninstall --id Microsoft.BingSports_8wekyb3d8bbwe --silent
Write-Host "Sportok törlése... Removing Bing Sports..." -ForegroundColor Cyan
winget uninstall --id Microsoft.BingFinance_8wekyb3d8bbwe --silent
Write-Host "Finanszírozás törlése... Removing Bing Finance..." -ForegroundColor Cyan
winget uninstall --id Microsoft.SkypeApp_kzf8qxf38zg5c --silent
Write-Host "Skype törlése... Removing Skype..." -ForegroundColor Cyan
winget uninstall --id Microsoft.WindowsSoundRecorder_8wekyb3d8bbwe --silent
Write-Host "Hangrögzítő törlése... Removing Sound Recorder..." -ForegroundColor Cyan
winget uninstall --id Microsoft.MSPaint3D_8wekyb3d8bbwe --silent 
Write-Host "Paint 3D törlése... Removing Paint 3D..." -ForegroundColor Cyan
winget uninstall --id Microsoft.XPSViewer_8wekyb3d8bbwe --silent
dism /online /disable-feature /featurename:XPS.Viewer /norestart
Write-Host "XPS Megjelenítő törlése... Removing XPS Viewer..." -ForegroundColor Cyan
winget uninstall --id Microsoft.549981C32F101_8wekyb3d8bbwe --silent
Write-Host "Cortana törlése... Uninstalling Cortana..." -ForegroundColor Cyan
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
Write-Host "Copilot törlése... Removing Copilot..." -ForegroundColor Cyan
winget uninstall --id Microsoft.Wallet_8wekyb3d8bbwe --silent
Write-Host "Pénztárca törlése... Removing Bing Wallet..." -ForegroundColor Cyan
winget uninstall --id Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe --silent
Write-Host "Sticky Notes (Cetlik) törlése... Removing Sticky Notes (Cetlik)..." -ForegroundColor Cyan
winget uninstall --id Microsoft.Microsoft3DViewer_8wekyb3d8bbwe --silent
Write-Host "3D megjelenítő törlése... Removing 3D Viewer..." -ForegroundColor Cyan
winget uninstall --id Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe --silent
Write-Host "Microsoft Solitare Collection törlése... Removing Microsoft Solitare Collection..." -ForegroundColor Cyan
winget uninstall --id Microsoft.People_8wekyb3d8bbwe --silent
Write-Host "Névjegyek alkalmazás törlése... (A NÉVJEGYEID AZ OUTLOOKBAN MEGMARADNAK!) Removing People... (THIS SCRIPT KEEPS YOUR CONTACTS IN OUTLOOK!)" -ForegroundColor Cyan
winget uninstall --id Microsoft.MixedReality.Portal_8wekyb3d8bbwe --silent
Write-Host "Mixed Reality Portal törlése... Removing Mixed Reality Portal..." -ForegroundColor Cyan
winget uninstall --id Microsoft.WindowsMaps_8wekyb3d8bbwe --silent
Write-Host "Térkép törlése... Removing Bing Maps..." -ForegroundColor Cyan
winget uninstall --id Microsoft.Getstarted_8wekyb3d8bbwe --silent
Write-Host "Tippek alkalmazás törlése... Removing Tips" -ForegroundColor Cyan
winget uninstall --id Microsoft.Family_8wekyb3d8bbwe --silent
Write-Host "Microsoft Család alkalmazás törlése... Removing Microsoft Family..." -ForegroundColor Cyan
winget uninstall --id Microsoft.Clipchamp.Clipchamp_8wekyb3d8bbwe --silent
Write-Host "Clipchamp törlése... Removing Clipchamp..." -ForegroundColor Cyan
winget uninstall --id Microsoft.WindowsCamera_8wekyb3d8bbwe --silent
Write-Host "Windows Kamera törlése... Removing Windows Camera..." -ForegroundColor Cyan
Disable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Windows-WordPad" -NoRestart
Write-Host "Wordpad törlése... Removing Wordpad" -ForegroundColor Cyan
dism /Online /Disable-Feature /FeatureName:FaxServicesClientPackage /NoRestart
Write-Host "Fax és scan törlése... Removing Fax and scan..." -ForegroundColor Cyan
dism /Online /Disable-Feature /FeatureName:Microsoft-Windows-StepsRecorder /NoRestart
Write-Host "Problémarögzítő törlése... Removing Steps recorder..." -ForegroundColor Cyan
Set-ExecutionPolicy Restricted -Force
Write-Host "Végeztünk. Indítsd újra a gépet! We're done! Please restart your computer!" -ForegroundColor Cyan
