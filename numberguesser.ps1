# Guess a random number

[int]$secret = Get-Random -Minimum 1 -Maximum 30
for ($num = 1; $num -le 3; $num++) {
    $guess = Read-Host "Guess a number between 1 and 30"
    if ($secret -eq $guess) {
        Write-Output "You win!"
        exit 
    }elseif ($guess -lt $secret) {
            Write-Output "Guess higher"
    }else{
        "guess lower"
        
         }
}
$confirmation = Read-Host "Do you want to play again?(y/n)"
if ($confirmation -eq 'y') {
    & "C:\Users\Jordan Miracle\Documents\scripts\numberguesser.ps1"    }
