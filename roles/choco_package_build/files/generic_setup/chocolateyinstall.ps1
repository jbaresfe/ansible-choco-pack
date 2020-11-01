# stop on all errors
$ErrorActionPreference = 'Stop'
# source parameter file
$parameterfile = $PSScriptRoot + "\params.ps1"
. $parameterfile
$Argu="-packageName $packageName"
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir $packageExecutable

$packageArgs = @{
  installerType  = 'exe'
  file           = $fileLocation
  silentArgs     = "/S"
  validExitCodes = @(0,3010,1604)
}

Install-ChocolateyPackage @packageArgs $Argu