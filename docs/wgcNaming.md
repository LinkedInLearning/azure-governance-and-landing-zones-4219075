# WGC - Naming Standards

[Home](wgc.md) | [Naming](wgcNaming.md) | [Tagging](wgcTagging.md) | [Policy](wgcPolicy.md) | [LandingZones](wgcLandingZone.md)

Naming standards are an important aspect of cloud resource management. By following clear and consistent naming conventions, you can make it easier to identify, manage, and secure your cloud resources. This document provides an overview of naming standards for cloud resources and examples of good naming conventions.

1. **Clarity** - Naming should be clear and unambiguous. It should convey the purpose of the resource, its environment, and its function.
2. **Consistency** - Naming should be consistent across all resources in the same environment. This will make it easier to identify resources and understand their purpose.
3. **Automation** - Consistent naming standards make it easier to automate the creation, management, and deletion of resources.

We will be using the following naming standards for this project.



- **Resource Groups**: `rg-<AppName>-<EnvName>`
- **General Pattern**: `<AppName>-<EnvName>-<SvcType>`
- **Exceptions** - Some services may have specific naming conventions that should be followed. For example, Azure Storage Accounts have specific naming requirements.

## Naming Conventions

1. **App Name** - This is the name of the application or service that the resource belongs to.
2. **Env Name** - The name should include the environment or lifecycle the resource belongs to. In the real world ths could be `poc`, `dev`, `qa`, or `prod`. For the IaC Session we'll use `arm`, `bicep`, `tf`, and `pulumi`.
3. **Service Type** - Abbreviation for the service type, for example 'rg' for resource group, 'site' for website, 'plan' for hosting plan, 'db' for database, 'lb' for load balancer, etc.

## Examples

Here are some examples of good naming conventions:

- `rg-dev-myapp` - Development Resource Group for MyApp
- `myapp-arm-plan` - Azure Resource Manager Hosting Plan for MyApp
- `myapp-tf-site` - Website for MyApp deployed using Terraform
- `myapp-bicep-db` - Database for MyApp using Bicep

## Conclusion

Naming conventions are an important aspect of cloud resource management. By following clear and consistent naming standards, you can make it easier to identify, manage, and secure your cloud resources.
