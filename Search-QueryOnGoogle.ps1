#param([System.String[]]$Args)		# Writing this param() to get $args was the cause for not retrieving the first argument!

Add-Type -AssemblyName System.Web

#foreach ($word in $args) {
#	$sentence = $sentence + " " + $word
#}

$query = [System.Web.HttpUtility]::UrlEncode($args -join " ")

#$query = [System.Web.HttpUtility]::UrlEncode($sentence.Trim())

#if ($args) { $query = $args -join " " }
#$query = $query.Replace(" ", "+")

Start-Process "https://www.google.com/search?q=$query&oq=$query&sourceid=chrome&ie=UTF-8"

