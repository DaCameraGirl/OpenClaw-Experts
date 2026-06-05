$ErrorActionPreference = "Stop"

$here = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $here

$port = 8000
$stamp = [DateTimeOffset]::UtcNow.ToUnixTimeSeconds()
$url = "http://localhost:$port/index.html?v=$stamp"

Write-Host "OpenClaw Experts - $url"
Write-Host "Press Ctrl+C to stop."

python -m http.server $port
