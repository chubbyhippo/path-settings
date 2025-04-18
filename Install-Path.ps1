$myPaths = "$HOME\.cargo\bin;" +
        "$HOME\scoop\apps\msys2\current\mingw64\bin;" +
        "$HOME\AppData\Local\JetBrains\Toolbox\scripts;" 

$paths = $myPaths + $env:Path -split ";"
$pathSet = New-Object 'System.Collections.Generic.HashSet[string]'
foreach ($path in $paths)
{
    $pathSet.Add($path)
}

$joinedPathSet = $pathSet -join ';'
Write-Output $joinedPathSet

[Environment]::SetEnvironmentVariable("Path", $joinedPathSet, "User")
