# Start a new conversation with Copilot
Add-Type -AssemblyName System.Web
$Query = [System.Web.HttpUtility]::UrlEncode($args -join " ")
Start-Process "https://copilot.microsoft.com/?q=$Query"
# Start-Process "https://copilot.microsoft.com/?q=" + [URI]::EscapeDataString($Query)
# Start-Process -FilePath "chrome.exe"
