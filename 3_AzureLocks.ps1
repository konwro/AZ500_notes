// create resource group
 New-AzResourceGroup -Name <> -Location '<>'

// create storage account -random name
 New-AzStorageAccount -ResourceGroupName <> -Name (Get-Random -Maximum 999999999999999) -Location <> -SkuName Standard_LRS -Kind StorageV2 

// remove resource lock
 $storageaccountname = (Get-AzStorageAccount -ResourceGroupName <>.StorageAccountName
 $lockName = (Get-AzResourceLock -ResourceGroupName <> -ResourceName $storageAccountName -ResourceType Microsoft.Storage/storageAccounts).Name
 Remove-AzResourceLock -LockName $lockName -ResourceName $storageAccountName  -ResourceGroupName <> -ResourceType Microsoft.Storage/storageAccounts -Force

// remove resource group
Remove-AzResourceGroup -Name "<>" -Force -AsJob
