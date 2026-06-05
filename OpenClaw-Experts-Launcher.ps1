$ErrorActionPreference = "Stop"

$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$port = 8010
$url = "http://localhost:$port"

$listener = Get-NetTCPConnection -LocalPort $port -State Listen -ErrorAction SilentlyContinue
if (-not $listener) {
  Start-Process -FilePath python -ArgumentList "-m", "http.server", "$port" -WorkingDirectory $here -WindowStyle Hidden
  Start-Sleep -Seconds 2
}

Start-Process $url
