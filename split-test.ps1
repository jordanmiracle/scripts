ForEach ($fileName in (Get-ChildItem C:\users\jordanmiracle\Documents\final\*.txt | Select-Object -ExpandProperty Name))
 $hashFromFile = Get-Content $($fileName.Split(".")[0]+".md5")