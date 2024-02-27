$userPath = $env:USERPROFILE
$pathExclusions = New-Object System.Collections.ArrayList
$processExclusions = New-Object System.Collections.ArrayList

$pathExclusions.Add('C:\Windows\Microsoft.NET') > $null
$pathExclusions.Add('C:\Windows\assembly') > $null

$pathExclusions.Add($userPath + '\Downloads\HeidiSQL_11.3_64_Portable') > $null

$pathExclusions.Add($userPath + '\.dotnet') > $null
$pathExclusions.Add($userPath + '\.librarymanager') > $null

$pathExclusions.Add($userPath + '\AppData\Local\Microsoft\VisualStudio') > $null
$pathExclusions.Add($userPath + '\AppData\Local\Microsoft\VisualStudio Services') > $null
$pathExclusions.Add($userPath + '\AppData\Local\GitCredentialManager') > $null
$pathExclusions.Add($userPath + '\AppData\Local\GitHubVisualStudio') > $null
$pathExclusions.Add($userPath + '\AppData\Local\Microsoft\dotnet') > $null
$pathExclusions.Add($userPath + '\AppData\Local\Microsoft\VSApplicationInsights') > $null
$pathExclusions.Add($userPath + '\AppData\Local\Microsoft\VSCommon') > $null
$pathExclusions.Add($userPath + '\AppData\Local\Temp\VSFeedbackIntelliCodeLogs') > $null

$pathExclusions.Add($userPath + '\AppData\Roaming\Microsoft\VisualStudio') > $null
$pathExclusions.Add($userPath + '\AppData\Roaming\NuGet') > $null
$pathExclusions.Add($userPath + '\AppData\Roaming\Visual Studio Setup') > $null
$pathExclusions.Add($userPath + '\AppData\Roaming\vstelemetry') > $null
$pathExclusions.Add($userPath + '\AppData\Roaming\HeidiSQL') > $null

$pathExclusions.Add('C:\ProgramData\Microsoft\VisualStudio') > $null
$pathExclusions.Add('C:\ProgramData\Microsoft\NetFramework') > $null
$pathExclusions.Add('C:\ProgramData\Microsoft Visual Studio') > $null
$pathExclusions.Add('C:\ProgramData\MySQL') > $null

$pathExclusions.Add('C:\Program Files (x86)\Microsoft Visual Studio') > $null
$pathExclusions.Add('C:\Program Files (x86)\dotnet') > $null
$pathExclusions.Add('C:\Program Files (x86)\Microsoft SDKs') > $null
$pathExclusions.Add('C:\Program Files (x86)\Microsoft SQL Server') > $null
$pathExclusions.Add('C:\Program Files\MySQL') > $null
$pathExclusions.Add('C:\Program Files (x86)\IIS') > $null
$pathExclusions.Add('C:\Program Files (x86)\IIS Express') > $null
$pathExclusions.Add('C:\Program Files (x86)\Microsoft SQL Server Management Studio 18') > $null

$processExclusions.Add('ServiceHub.SettingsHost.exe') > $null
$processExclusions.Add('ServiceHub.IdentityHost.exe') > $null
$processExclusions.Add('ServiceHub.VSDetouredHost.exe') > $null
$processExclusions.Add('ServiceHub.Host.CLR.x86.exe') > $null
$processExclusions.Add('Microsoft.ServiceHub.Controller.exe') > $null
$processExclusions.Add('PerfWatson2.exe') > $null
$processExclusions.Add('sqlwriter.exe') > $null

Write-Host "This script will create Windows Defender exclusions for common Visual Studio 2019 folders and processes."
Write-Host ""
$projectsFolder = Read-Host 'What is the path to your Projects folder? (example: c:\source)'

Write-Host ""
Write-Host "Adding Path Exclusion: " $projectsFolder
Add-MpPreference -ExclusionPath $projectsFolder

foreach ($exclusion in $pathExclusions) 
{
    Write-Host "Adding Path Exclusion: " $exclusion
    Add-MpPreference -ExclusionPath $exclusion
}

foreach ($exclusion in $processExclusions)
{
    Write-Host "Adding Process Exclusion: " $exclusion
    Add-MpPreference -ExclusionProcess $exclusion
}

Write-Host ""
Write-Host "Your Exclusions:"

$prefs = Get-MpPreference
$prefs.ExclusionPath
$prefs.ExclusionProcess

Write-Host ""
Write-Host "Enjoy faster build times and coding!"
Write-Host ""