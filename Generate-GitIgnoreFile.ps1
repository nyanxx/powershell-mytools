param (
	[parameter(Mandatory=$true)]
	[String[]]$Tech
)

$TechString = $Tech -join ","

# REF: https://github.com/toptal/gitignore.io
$APIURL = "https://www.toptal.com/developers/gitignore/api/$TechString"

try {
	Invoke-RestMethod -Uri $APIURL -OutFile ".gitignore"
	Write-Host "✅ .gitignore file generated for: $TechString"
} catch {
	Write-Host "❌ Failed to fetch .gitignore data"
}
