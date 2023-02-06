// Deploy Storage Account
// steps to deploy: 
// 1) az login 
// 2) set the subscription 

// set the parameters
param location string = resourceGroup().location
param accountName string = 'kai'
//param subscriptionId string = 'BSF-ANL-SB1'
//param resourceGroupName string = 'azure-monitoring-training'

// scope to the resource group within the subscription
// targetScope = 'resourceGroup' //unnecessary bc Bicep file is scoped to the resource group by default


// set account name using string interpolation
var fullAccountName = '${accountName}${uniqueString(resourceGroup().id)}'



// define the storage account to be deployed
resource mystorageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: fullAccountName
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}

// deploy the storage account to the specified resource group and subscription

// to deploy to a resource group - scope == resource group

// output the name of the storage account 
output storageaccount string = mystorageaccount.name

// command to run: az deployment group create --resource-group azure-monitoring-training --name KaiFirst --template-file kaistorage.bicep

