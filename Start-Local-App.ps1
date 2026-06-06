$ErrorActionPreference = "Stop"

$here = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $here

$port = 8000
$stamp = [DateTimeOffset]::UtcNow.ToUnixTimeSeconds()
$url = "http://localhost:$port/index.html?v=$stamp"

# Inject DeepSeek API key if available in environment
$apiKey = [Environment]::GetEnvironmentVariable("DEEPSEEK_API_KEY", "User")
if (-not $apiKey) { $apiKey = [Environment]::GetEnvironmentVariable("DEEPSEEK_API_KEY", "Machine") }
if ($apiKey) {
  Set-Content -Path "$here\env-config.js" -Value "window.__ENV__ = window.__ENV__ || {}; window.__ENV__.DEEPSEEK_API_KEY = '$apiKey';"
} else {
  if (Test-Path "$here\env-config.js") { Remove-Item "$here\env-config.js" }
}

Write-Host "OpenClaw Experts - $url"
Write-Host "Press Ctrl+C to stop."

# Open browser after a brief delay so the server is ready
Start-Process $url

python -m http.server $port
