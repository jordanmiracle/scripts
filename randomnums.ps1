
foreach ($thing in 1..1000) {
    $myArray += @(Get-Random -Maximum 1000)
    Write-Output "generating number $thing"
    Start-Sleep -Milliseconds 1
}

