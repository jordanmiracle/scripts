# Select the name of each txt file, iterate over them.
ForEach ($fileName in (Get-ChildItem *.txt  | Select-Object -ExpandProperty Name))
{
    # This gets the hash for each file
    $getHash = $(Get-FileHash $fileName -Algorithm MD5).Hash
       
    # The split function is what does the magic here. The way this particular function is used here is very similar to the way it is used in python, especially in libraries such as Pandas, when cleaning data sets.
    # It is looking up at the iteration and splitting them based on the ending. For example, the above loop would grab pink.txt, and the line below would look for anything that has the same name, but ends in .md5. 
    # The [0] is simply an indexing tool to grab the first object.
    $md5Hash = Get-Content $($fileName.Split(".")[0]+".md5")

    # This simply compares the hash with the md5 file.
    if ($getHash -ne $md5Hash)
    {
        # Output the files that are invalid and append them to invalid.txt
        Write-Output "Invalid file: $fileName"
        $fileName | Add-Content invalid.txt
    }
}