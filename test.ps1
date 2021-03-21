$ErrorActionPreference = "silentlycontinue"
Write-Output "Please wait, currently finding all dll's..."
$path = "C:\Windows"
$numberOfDLLs = Get-ChildItem $path -File -recurse -filter *.dll | Where-Object {$_.LastWriteTime} | Measure-Object | ForEach-Object{$_.Count}

Write-Output "You have $numberOfDLLs in your C:\Windows folder"
Get-ADUser -Filter * | Export-Csv -Path C:\users\jordanmiracle\Documents
$getLastHundred = Get-ChildItem $path -File -recurse -filter *.dll | sort LastWriteTime | select -last 100

$insertToCsv = $getLastHundred | Select Name, LastWriteTime 
Write-Output $getLastHundred
$insertToCsv | export-csv -Path C:\Users\jordanmiracle\Documents\dll.csv
