// here is some comment
// here is another comment
param keyvaultName string

resource myResource 'Microsoft.KeyVault/vaults@2022-07-01' = {
  location: 'canadacentral'
  name: keyvaultName
  properties: {
    sku: {
      family: 'A'
      
    }
  }
}
