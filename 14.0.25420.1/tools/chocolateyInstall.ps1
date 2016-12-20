$ErrorActionPreference = 'Stop';
$packageName = 'microsoft-visual-cpp-build-tools'
$installerType = 'EXE'
$silentArgs = "/Passive /NoRestart /Log ""$($env:temp)\visual-cpp-build-tools-2015.log"""
$url = 'https://download.microsoft.com/download/5/f/7/5f7acaeb-8363-451f-9425-68a90f98b238/visualcppbuildtools_full.exe'
$validExitCodes = @(0,3010) 
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
