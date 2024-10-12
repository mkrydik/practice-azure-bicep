// This Is `Sub-Domain.azurewebsites.net`
param appServiceName string = 'myfirstappservice'
param location string = resourceGroup().location

// App Service Plan
resource appServicePlan 'Microsoft.Web/serverfarms@2021-02-01' = {
  name: '${appServiceName}-plan'
  location: location
  sku: {
    name: 'F1'  // Free tier
    tier: 'Free'
    capacity: 1
  }
}

// App Service
resource webApp 'Microsoft.Web/sites@2021-02-01' = {
  name: appServiceName
  location: location
  kind: 'app'
  properties: {
    serverFarmId: appServicePlan.id
  }
}
