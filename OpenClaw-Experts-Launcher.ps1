$ErrorActionPreference = "Stop"

$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$port = 8010
$stamp = [DateTimeOffset]::UtcNow.ToUnixTimeSeconds()
$url = "http://localhost:$port/index.html?v=$stamp"

$listener = Get-NetTCPConnection -LocalPort $port -State Listen -ErrorAction SilentlyContinue
if (-not $listener) {
  Start-Process -FilePath python -ArgumentList "-m", "http.server", "$port" -WorkingDirectory $here -WindowStyle Hidden
  Start-Sleep -Seconds 2
}

Start-Process $url
