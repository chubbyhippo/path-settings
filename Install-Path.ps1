$paths = $env:Path -split ";"
$pathSet = New-Object 'System.Collections.Generic.HashSet[string]'
foreach ($path in $paths)
{
    $pathSet.Add($path)
}

$joinedPathSet = $pathSet -join ';'
Write-Output $joinedPathSet

[Environment]::SetEnvironmentVariable("TEST", $joinedPathSet, "User")