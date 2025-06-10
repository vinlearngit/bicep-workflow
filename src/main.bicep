param storageAccountName string = 'teststc'
param location string = 'East US'

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRSS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}
