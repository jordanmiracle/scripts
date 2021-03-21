[int]$number = 0
$myhome = Get-ChildItem -Recurse
$myhome | ForEach-Object { if ($_.Length -ge 1073741824) {$number++}}
Write-Output "You have $number files larger than a gig"
$myhome | ForEach-Object { if ($_.Length -ge 1073741824) {Write-Output $_.name}}