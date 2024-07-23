# WGC Tagging Standards

[Home](wgc.md) | [Naming](wgcNaming.md) | [Tagging](wgcTagging.md) | [Policy](wgcPolicy.md) | [LandingZones](wgcLandingZone.md)

We will be using the following tagging standards for this project.

- **Resource Tags**: `env`, `app`, `owner`, `src`
- **Resource Group Tags**: `env`, `app`, `owner`
- **Subscription Tags**: `env`, `owner`

Tags are key-value pairs that can be applied to Azure resources to help organize and manage resources. Tags can be used for a variety of purposes, including cost management, resource tracking, and access control.

## Tagging Conventions

1. **Env** - The environment or lifecycle the resource belongs to. This could be `poc`, `demo`, or `prod`.
2. **App** - The name of the application or service that the resource belongs to.
3. **Owner** - The name or email address of the resource owner.
4. **Src** - The source of the resource, such as `arm`, `bicep`, `tf`, or `pul`.
5. **Created** - The date the resource was created, in `YYYY-MM-DD` format.

## Examples

Here are some examples of good tagging conventions:

- `env:arm`, `app:myapp`, `owner:mike`
- `env:tf`, `app:myapp`, `owner:jane`
- 