Get-Azcontext

Get-AzContext -ListAvailable | format-table Name,Account

$context = Get-AzContext

Rename-AzContext $context.Name  'Arun Dev'

Get-AzContextAutosaveSetting

