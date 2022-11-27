
$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://content.vexrobotics.com/vexcode/v5blocks/VEXcodeV5-20220829.exe'
$url64 = 'https://content.vexrobotics.com/vexcode/v5blocks/VEXcodeV5-20220829.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = 'exe'
  url            = $url
  url64bit       = $url64

  softwareName   = 'VEXcode*'

  checksum       = ''
  checksumType   = 'sha256'
  checksum64     = ''
  checksumType64 = 'sha256'

  validExitCodes = @(0, 3010, 1641)
  silentArgs   = '/SD /v"/qn"'
}

Install-ChocolateyPackage @packageArgs