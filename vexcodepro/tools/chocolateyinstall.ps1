$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://content.vexrobotics.com/vexcode/v5code/VEXcodeProV5_2_0_5.exe'
$url64 		= 'https://content.vexrobotics.com/vexcode/v5code/VEXcodeProV5_2_0_5.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'VEXcode Pro*'

  checksum      = 'F56794057E91A101969D3185190730BF77DB0C13B85BE0F44040DF0D12F3A3C2'
  checksumType  = 'sha256'

  silentArgs    = "/SD /v/qn"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs