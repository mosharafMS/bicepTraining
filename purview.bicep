param accountName string

var location = resourceGroup().location

resource purview1 'Microsoft.Purview/accounts@2021-07-01'={
  name:accountName
  identity:{
    type:'SystemAssigned'
  }
  location: location
}
