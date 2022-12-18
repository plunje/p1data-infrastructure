targetScope = 'subscription'

param location string = 'westeurope'

param rgName string

resource rg 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: rgName
  location: location
}

module af 'modules/azureFunction.bicep' = {
  scope: resourceGroup(rgName)
  name: 'p1reader-azurefunction-deployment'
  params: {
    functionAppName: 'p1reader-azurefunction'
    location: location
  }
}
