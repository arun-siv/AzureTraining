Get-command -Module Az.Compute

Get-command -Module Az.Compute -verb New

Get-Command -Module Az.Compute -noun AzVM

Get-AzVm -Status

#look at all the extension
Get-AzVMImagePublisher -Location "southcentralus" |
  Get-AzVMExtensionImageType | Get-AzVMExtensionImage | select Type, Version

#view windows server Images
$loc = "SouthCentralUS"

#view the templates available
Get-AzVMImagePublisher -Location $loc
Get-AzVMImageOffer -Location $loc -PublisherName "MicrosoftWindowsServer"
Get-AzVMImageSku -Location $loc -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer"
Get-AzVMImage -Location $loc -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-datacenter-smalldisk-g2"

#create resource group
New-AzResourceGroup -Name "TestRg" -Location "southcentralus"

#get-azlocation | format-table
Get-AzLocation | format-table

#create vm
new-azvm -Name winarunvm -Credential (get-credential) -verbose -whatif

#create ubuntu vm
new-azvm -name ubarunvm -Credential (get-credential) -Image "UbuntuLTS" -Verbose -WhatIf
