$results = @()
$dice = Read-Host "How many dice should I roll?"
for ($i = 0; $i -le $dice; $i++){
    $results += Get-Random -Minimum 0 -Maximum 5
    }
    $results
$effect = @("You gain 5 hp", "You lose 5 hp.", "You lose 6 hp", "You lose 7 hp.","You lose 8 hp", "You lose 9 hp.")
$results | ForEach-Object {
    $effect[$_]
} 
