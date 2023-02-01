param accountName string

var fullAccountName = '${accountName}${uniqueString(resourceGroup().id)}'
var location = resourceGroup().location

resource mystorageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name:fullAccountName
  kind:'StorageV2'
  location: location
  sku:{
    name:'Standard_LRS'

  }

}



output storageaccount string = mystorageAccount.name

