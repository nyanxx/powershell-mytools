# Search on Google
Add-Type -AssemblyName System.Web
$Query = [System.Web.HttpUtility]::UrlEncode($args -join " ")
Start-Process "https://www.google.com/search?q=$query&oq=$query&sourceid=chrome&ie=UTF-8"
