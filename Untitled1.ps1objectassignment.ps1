$Dir = Get-ChildItem C:\Windows -recurse
# $Dir | Get-Member
$list = $Dir | where {$_.Extension -eq ".dll"}
# $list |ft fullname |out-file C:\users\jordanmiracle\scripts\objects.txt
# List | format-table name