
@export()
type consistencyPolicy = {
  defaultConsistencyLevel: 'BoundedStaleness' | 'ConsistentPrefix' | 'Eventual' | 'Session' | 'Strong'
}

@export()
type containerRegistrySkuProperties = {
  name: 'Basic' | 'Classic' | 'Standard' | 'Premium'
}

@export()
type documentDbKind = 'GlobalDocumentDB' | 'MongoDB' | 'Parse'

@export()
@description('Used to pair key vault secret names with their values. Values are secure by default.')
type keyVaultSecret = {
  name: keyVaultSecretName
  value: keyVaultSecretValue
}

@secure()
type keyVaultSecretValue = string

@export()
@description('Used to pair a uami principalId with its principalType.')
type principal = {
  id: string
  type: principalType
}

@export()
type principalType = 'Device' | 'ForeignGroup' | 'Group' | 'ServicePrincipal' | 'User'

@export()
type resourceNames = {
  shortSuffix: string
  containerRegistryName: containerRegistryName
  cosmosName: cosmosAccountName
  keyVaultName: keyVaultName
}

// Naming Restrictions by type

@export()
@minLength(1)
@maxLength(63)
@description('Alphanumerics, underscores, and hyphens. Must start and end with alphanumeric.')
type aksClusterName = string

@export()
type aksIdentityType = 'SystemAssigned' | 'UserAssigned' | 'None'

@export()
@minLength(5)
@maxLength(50)
@description('Alphanumerics only')
type containerRegistryName = string

@export()
@minLength(3)
@maxLength(44)
type cosmosAccountName = string

@export()
@minLength(3)
@maxLength(24)
type keyVaultName = string

@export()
@minLength(1)
@maxLength(127)
@description('Alphanumerics and hyphens only')
type keyVaultSecretName = string

@export()
@minLength(2)
@maxLength(63)
type privateDnsZoneName = string

@export()
@minLength(1)
@maxLength(90)
type resourceGroupName = string

@export()
@minLength(3)
@maxLength(128)
type userAssignedManagedIdentityName = string
