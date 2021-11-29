$ErrorActionPreference = "Stop"

Import-Module sandersaares.devops-scripts

Get-VersionNumberFromCurrentTime
Get-TimeBasedVersionString -buildType $env:INPUT_BUILDTYPE