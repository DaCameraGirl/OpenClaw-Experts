# Creates a Desktop shortcut "OpenClaw Experts" with the crab-claw icon.
# Run once:  right-click this file  ->  Run with PowerShell
$ErrorActionPreference = "Stop"

$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$launcher = Join-Path $here "OpenClaw-Experts-Launcher.ps1"
$icon = Join-Path $here "openclaw-claw.ico"

if (-not (Test-Path $launcher)) { throw "Launcher not found: $launcher" }
if (-not (Test-Path $icon))     { throw "Icon not found: $icon" }

$desktop = [Environment]::GetFolderPath("Desktop")
$lnkPath = Join-Path $desktop "OpenClaw Experts.lnk"

$shell = New-Object -ComObject WScript.Shell
$sc = $shell.CreateShortcut($lnkPath)
# Launch the PowerShell script hidden, bypassing execution policy
$sc.TargetPath  = "$env:WINDIR\System32\WindowsPowerShell\v1.0\powershell.exe"
$sc.Arguments   = "-NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File `"$launcher`""
$sc.WorkingDirectory = $here
$sc.IconLocation = "$icon,0"
$sc.Description   = "Open the OpenClaw Experts pipeline app"
$sc.Save()

Write-Host "Created desktop shortcut:" $lnkPath -ForegroundColor Green
Write-Host "Double-click the crab-claw icon on your Desktop to launch the app." -ForegroundColor Green
