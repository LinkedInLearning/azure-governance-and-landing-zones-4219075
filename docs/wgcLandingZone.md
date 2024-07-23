# Azure Landing Zones

[Home](wgc.md) | [Naming](wgcNaming.md) | [Tagging](wgcTagging.md) | [Policy](wgcPolicy.md) | [LandingZones](wgcLandingZone.md)

A landing zone is a set of configurations and best practices that are used to set up a cloud environment for a specific workload or project. Landing zones help organizations to quickly and consistently deploy cloud resources in a secure and compliant manner. For the purposes of this project we define our landing zone with a shared set of infrastructure and a place for the application team to work which addresses access management, security, monitoring, and cost management.

The components of our landing zone include:

- **App Resource Group**: where all application specific resources are deployed. The App dev team group has contributor access to that resource group, the service principal has owernship.
- **Shared Resource Group**: where shared resources are deployed, the application can use these resources. Shared resources include compute hosting services, a shared key vault for secrets, and a shared monitoring solution. The dev team has read access to this resource group, the service principal has contributor access.
- **Dev Team Security Group**: a security group that provides access to the shared resources and the application resources and is used for applying access patterns and policies.
- **Service Principal**: a service principal that is used to deploy resources to the shared resource group and the application resource group that is used by the automation platform
- **Policy**: a set of policies that are applied to the shared resource group and the application resource group to ensure compliance with organizational standards. For our purposes it will include a tagging policy with 2 required tags on resource groups for `owner` and `createDt`.

The landing zone is designed to provide a secure and compliant environment for the application team to work in. It is based on the principles of the [Well Governed Cloud](wgc.md) and is designed to be flexible and scalable to meet the needs of different projects and workloads.

