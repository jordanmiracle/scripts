$fruit = @('Apple', 'Banana', 'Orange')
$fruit

$data = @(
    [PSCustomObject]@{FirstName='Jordan';LastName='Miracle'}
    [PSCustomObject]@{FirstName = 'Kaiju'; LastName='Miracle'}
    )
    $data[0].FirstName