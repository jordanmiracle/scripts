$myvar=Get-Process -Name explorer
Stop-Process $myvar.Id
#  Comments are the same as in bash
