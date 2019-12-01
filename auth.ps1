# Device code flow
Connect-AzAccount

Get-alias Add-AzAccount | Format-List # can also use add-azaccount . Referenced to connect-azaccount

Get-Module Az -ListAvailable
Get-InstalledModule -Name Az -AllVersions
find-module Az

## How to uninstall az
$AzModules = (Get-Module -ListAvailable Az.*).name | Get-unique
foreach ($Azmodule in $AzModules)
{
  Uninstall-Module $AzModules -force
}
Uninstall-Module -Name Az

#command to install Az module
Install-Module Az -AllowClobber -Repository "PSGallery"
