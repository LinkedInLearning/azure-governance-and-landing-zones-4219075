targetScope = 'subscription'

param loc string = 'eastus'
param envName string
param appName string

param rgName string = 'rg-${appName}-${envName}'

resource rg 'Microsoft.Resources/resourceGroups@2024-03-01' = {
  name: rgName
  location: loc
}

module site 'mySite.bicep' = {
  scope: rg
  name: 'dadapp-site'
  params: {
    appName: appName
    color: 'coral'
    envName: envName
  }
}

output siteName string = site.outputs.siteName
output planName string = site.outputs.planName
