$ErrorActionPreference = "Stop"
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $here

$port = 8000
Write-Host "OpenClaw Experts — http://localhost:$port"
Write-Host "Press Ctrl+C to stop."

python -m http.server $port
