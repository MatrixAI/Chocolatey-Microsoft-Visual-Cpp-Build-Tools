$ErrorActionPreference = 'Stop';
$packageName = 'microsoft-visual-cpp-build-tools'
$installerType = 'EXE'
$silentArgs = "/Passive /NoRestart /Log ""$($env:temp)\visual-cpp-build-tools-2015.log"""
$url = 'https://download.microsoft.com/download/5/f/7/5f7acaeb-8363-451f-9425-68a90f98b238/visualcppbuildtools_full.exe'
$checksum = '1E1774869ABD953D05D10372B7C08BFA0C76116F5C6DF1F3D031418CCDCD8F7B'
$checksumType = 'sha256'
$validExitCodes = @(0,3010) 
Install-ChocolateyPackage -PackageName "$packageName" -FileType "$installerType" -SilentArgs "$silentArgs" -Url "$url" -ValidExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
