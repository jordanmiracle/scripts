# Define an array of numbers
#$numbers = 1..5
#$numbers[4]

# Defining an array of characters
#$characters = "a","b","c"
#$characters[1]

# Defining an array of strings
$strings = "scooby","shaggy","velma"
#$strings[0]
$strings += "Fred"

$strings | ForEach-Object {Write-Output "The gang includes " $_}
    







# Refer to the value at a particular position by using an index.
# 0 is the first position.
#$strings[1]


# You can find the length of an array with the .length or .count property.

#$strings.Length
#$strings.Count

# You can loop through an array in many ways.
# FOR loops are common since the length is known.
#for ($i = 0; $i -le 4; $i += 1) {
#    Write-Host "`$i is " $i "`$strings[$i] is " $strings[$i]
#    sleep(1)
#
#}

