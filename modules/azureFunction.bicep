targetScope = 'resourceGroup'

param functionAppName string
param location string

resource functionApp 'Microsoft.Web/sites@2021-03-01' = {
  name: functionAppName
  location: location
}
