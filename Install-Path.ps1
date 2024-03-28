$paths = $env:Path -split ";"
$hashSet = New-Object 'System.Collections.Generic.HashSet[string]'
foreach ($path in $paths)
{
    $hashSet.Add($path)
}


foreach ($item in $hashSet)
{
    Write-Output $item
}