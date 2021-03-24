resource stg 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: concat('strtho', uniqueString(resourceGroup().id))
  location: 'switzerlandnorth'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    supportsHttpsTrafficOnly: true
  }
}
