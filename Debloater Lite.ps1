Write-Host "Rendszergazdaként futtattál? Ha nem akkor indíts újra rendszergazdaként! Did you run me as an administrator? If not, run me again as an administrator!" -ForegroundColor Yellow
Write-Host "FIGYELEM! A KÉPERNYŐ NÉHA PÁR MÁSODPERCRE ELSÖTÉTÜLHET, HOGY ÉRVÉNYESÜLJENEK AUTÓMATIKUSAN A MÓDOSÍTÁSOK! ATTENTION! THE SCREEN MAY GO DARK FOR A FEW SECONDS TO ALLOW THE CHANGES TO TAKE EFFECT AUTOMATICALLY!" -ForegroundColor Yellow
Write-Host "FIGYELEM! A HIBAÜZENETEKET IGNORÁLD, AZOK CSAK AZT JELENTIK HOGY AZ ADOTT ALKALMAZÁS NINCS A GÉPEN! ATTENTION! IGNORE THE ERROR MESSAGES; THEY SIMPLY MEAN THAT THE APPLICATION IS NOT INSTALLED ON YOUR COMPUTER!" -ForegroundColor Yellow
Set-ExecutionPolicy Unrestricted -Force
Write-Host "Winget források frissítése... Update Winget sources..." -ForegroundColor Cyan
winget source update --silent
Write-Host "Winget források frissítve. Winget sources got updated" -ForegroundColor Green
Write-Host "Segítség Kérése törlése... Removing Get Help..." -ForegroundColor Cyan
winget uninstall --id Microsoft.GetHelp_8wekyb3d8bbwe --silent
Write-Host "Segítség kérése törölve. Get Help got removed." -ForegroundColor Green
Write-Host "Windows Journal törlése... Removing Windows Journal..." -ForegroundColor Cyan
Get-AppxPackage *MicrosoftJournal* | Remove-AppxPackage
Write-Host "Windows Journal törölve. Windows Journal got removed." -ForegroundColor Green
Write-Host "Visszajelzési központ törlése... Removing Feedback Hub..." -ForegroundColor Cyan
winget uninstall --id Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe --silent
Write-Host "Visszajelzési központ törlődött. Feedback Hub got removed" -ForegroundColor Cyan..." -ForegroundColor Green
Write-Host "Candy Crush törlése... Removing Candy Crush..." -ForegroundColor Cyan
Get-AppxPackage *CandyCrush* | Remove-AppxPackage
Write-Host "Candy Crush törlődött. Candy Crush got removed." -ForegroundColor Green
Write-Host "Bing fordító törlése... Removing Bing translator..." -ForegroundColor Cyan
Get-AppxPackage *BingTranslator* | Remove-AppxPackage
Write-Host "Bing fordító törölve. Bing translator got removed." -ForegroundColor Green
Write-Host "Bing Speedtest törlése... Removing Bing Speedtest..." -ForegroundColor Cyan
Get-AppxPackage *Speedtest* | Remove-AppxPackage
Write-Host "Bing speedtest törölve. Bing speedtest got removed." -ForegroundColor Green
Write-Host "McAfee törlése... Removing McAfee..." -ForegroundColor Cyan
winget uninstall --name "McAfee" --silent --accept-source-agreements
Write-Host "MCAfee törölve. McAfee got removed." -ForegroundColor Green
Write-Host "Norton törlése... Removing Norton..." -ForegroundColor Cyan
winget uninstall --name "Norton" --silent --accept-source-agreements
Write-Host "Norton törölve. Norton got removed." -ForegroundColor Green
Write-Host "Dev Home törlése... Removing Dev Home..." -ForegroundColor Cyan
winget uninstall --id Microsoft.DevHome_8wekyb3d8bbwe --silent
Write-Host "Dev Home törölve. Dev Home got removed." -ForegroundColor Green
Write-Host "Powershell 2.0 törlése... Removing Powershell 2.0..." -ForegroundColor Cyan
dism /Online /Disable-Feature /FeatureName:MicrosoftWindowsPowerShellV2Root /NoRestart
Write-Host "Powershell 2.0 törölve. Powershell 2.0 got removed." -ForegroundColor Green 
Write-Host "To Do törlése... Removing To Do..." -ForegroundColor Cyan
winget uninstall --id Microsoft.Todos_8wekyb3d8bbwe --silent
Write-Host "To Do törölve. To Do got removed." -ForegroundColor Green
Write-Host "Filmek+TV/ZuneVideo törlése... Removing Movies and TV/ZuneVideo..." -ForegroundColor Cyan
winget uninstall --id Microsoft.ZuneVideo_8wekyb3d8bbwe --silent
Write-Host "Filmek+TV/ZuneVideo törölve. Movies and TV/ZuneVideo got removed." -ForegroundColor Green
Write-Host "Bing Időjárás törlése... Removing Bing Weather..." -ForegroundColor Cyan
winget uninstall --id Microsoft.BingWeather_8wekyb3d8bbwe --silent
Write-Host "Bing Időjárás törölve. Bing Weather got removed." -ForegroundColor Green
Write-Host "Bing Hírek törlése... Removing Bing News..." -ForegroundColor Cyan
winget uninstall --id Microsoft.BingNews_8wekyb3d8bbwe --silent
Write-Host "Bing Hírek törölve. Bing News got removed." -ForegroundColor Green
Write-Host "Bing Sportok törlése... Removing Bing Sports..." -ForegroundColor Cyan
winget uninstall --id Microsoft.BingSports_8wekyb3d8bbwe --silent
Write-Host "Bing Sportok törölve. Bing Sports got removed." -ForegroundColor Green
Write-Host "Bing Finanszírozás törlése... Removing Bing Finance..." -ForegroundColor Cyan
winget uninstall --id Microsoft.BingFinance_8wekyb3d8bbwe --silent
Write-Host "Bing Finanszírozás törölve. Bing Finance got removed." -ForegroundColor Green
Write-Host "Skype törlése... Removing Skype..." -ForegroundColor Cyan
winget uninstall --id Microsoft.SkypeApp_kzf8qxf38zg5c --silent
Write-Host "Skype törölve. Skype got removed." -ForegroundColor Green
Write-Host "Hangrögzítő törlése... Removing Sound Recorder/Voice Recorder..." -ForegroundColor Cyan
winget uninstall --id Microsoft.WindowsSoundRecorder_8wekyb3d8bbwe --silent
Write-Host "Hangrögzítő törölve. Sound Recorder/Voice Recorder got removed." -ForegroundColor Green
Write-Host "Paint 3D törlése... Removing Paint 3D..." -ForegroundColor Cyan
winget uninstall --id Microsoft.MSPaint3D_8wekyb3d8bbwe --silent 
Write-Host "Paint 3D törölve. Paint 3D got removed." -ForegroundColor Green
Write-Host "Cortana törlése... Removing Cortana..." -ForegroundColor Cyan
winget uninstall --id Microsoft.549981C32F101_8wekyb3d8bbwe --silent
Write-Host "Cortana törölve. Cortana got removed." -ForegroundColor Green
Write-Host "XBOX konzol társalkalmazás törlése... Removing XBOX Console Companion..." -ForegroundColor Cyan
winget uninstall --id Microsoft.XboxApp_8wekyb3d8bbwe --silent
Write-Host "XBOX konzol társalkalmazás törölve. XBOX Console Companion got removed." -ForegroundColor Green
Write-Host "Copilot teljes törlése... Removing Copilot completely from Windows..." -ForegroundColor Cyan
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
Write-Host "Copilot törölve. Copilot got removed." -ForegroundColor Green
Write-Host "Bing Pénztárca törlése... Removing Bing Wallet..." -ForegroundColor Cyan
winget uninstall --id Microsoft.Wallet_8wekyb3d8bbwe --silent
Write-Host "Bing Pénztárca törölve. Removing Bing Wallet got removed." -ForegroundColor Green
Write-Host "Sticky Notes (Cetlik) törlése... Removing Sticky Notes (Cetlik)..." -ForegroundColor Cyan
winget uninstall --id Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe --silent
Write-Host "Sticky Notes (Cetlik) törölve. Sticky Notes (Cetlik) got removed." -ForegroundColor Green
Write-Host "3D Megjelenítő törlése... Removing 3D Viewer..." -ForegroundColor Cyan
winget uninstall --id Microsoft.Microsoft3DViewer_8wekyb3d8bbwe --silent
Write-Host "3D Megjelenítő törölve. 3D Viewer got removed." -ForegroundColor Green
Write-Host "Microsoft Solitare Collection törlése... Removing Microsoft Solitare Collection..." -ForegroundColor Cyan
winget uninstall --id Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe --silent
Write-Host "Microsoft Solitare Collection törölve. Microsoft Solitare Collection got removed." -ForegroundColor Green
Write-Host "Névjegyek alkalmazás törlése... (A NÉVJEGYEID AZ OUTLOOKBAN MEGMARADNAK!) Removing People app... (THIS SCRIPT KEEPS YOUR CONTACTS IN OUTLOOK!)" -ForegroundColor Cyan
winget uninstall --id Microsoft.People_8wekyb3d8bbwe --silent
Write-Host "Névjegyek törölve. People app got removed." -ForegroundColor Green
Write-Host "Mixed Reality Portal törlése... Removing Mixed Reality Portal..." -ForegroundColor Cyan
winget uninstall --id Microsoft.MixedReality.Portal_8wekyb3d8bbwe --silent
Write-Host "Mixed Reality Portal törölve. Mixed Reality Portal got removed." -ForegroundColor Green
Write-Host "Bing Térképek törlése... Removing Bing Maps..." -ForegroundColor Cyan
winget uninstall --id Microsoft.WindowsMaps_8wekyb3d8bbwe --silent
Write-Host "Bing Térképek törölve. Bing Maps got removed." -ForegroundColor Green
Write-Host "Tippek alkalmazás/Kezdő Lépések törlése... Removing Tips app/Get Started..." -ForegroundColor Cyan
winget uninstall --id Microsoft.Getstarted_8wekyb3d8bbwe --silent
Write-Host "Tippek alkalmazás/Kezdő Lépések törölve. Tips app/Get Started got removed." -ForegroundColor Green
Write-Host "Microsoft Család alkalmazás törlése... Removing Microsoft Family app..." -ForegroundColor Cyan
winget uninstall --id Microsoft.Family_8wekyb3d8bbwe --silent
Write-Host "Microsoft Család alkalmazás törölve. Microsoft Family app got removed." -ForegroundColor Green
Write-Host "Clipchamp törlése... Removing Clipchamp..." -ForegroundColor Cyan
winget uninstall --id Microsoft.Clipchamp.Clipchamp_8wekyb3d8bbwe --silent
Write-Host "Clipchamp törölve. Clipchamp got removed." -ForegroundColor Green
Write-Host "Windows Kamera törlése... Removing Windows Camera..." -ForegroundColor Cyan
winget uninstall --id Microsoft.WindowsCamera_8wekyb3d8bbwe --silent
Write-Host "Windows Kamera törölve. Windows Camera got removed." -ForegroundColor Green
Write-Host "Problémarögzítő törlése... Removing Steps recorder..." -ForegroundColor Cyan
dism /Online /Disable-Feature /FeatureName:Microsoft-Windows-StepsRecorder /NoRestart
Write-Host "Problémarögzítő törölve. Removing Steps recorder got removed." -ForegroundColor Green
Write-Host "Math Input Panel törlése... Removing Math Input Panel..." -ForegroundColor Cyan
Disable-WindowsOptionalFeature -Online -FeatureName "MathInputPanel"
Write-Host "Math Input Panel törölve. Math Input Panel törölve." -ForegroundColor Green
Set-ExecutionPolicy RemoteSigned -Force
Write-Host "Végeztünk. Indítsd újra a gépet! We're done! Please restart your computer!" -ForegroundColor White
