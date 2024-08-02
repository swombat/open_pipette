# OpenPipette::GetOrganizationsResponse200AllOfRelatedObjects

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | [**GetActivitiesResponse200RelatedObjectsOrganization**](GetActivitiesResponse200RelatedObjectsOrganization.md) |  | [optional] |
| **user** | [**GetActivitiesResponse200RelatedObjectsUser**](GetActivitiesResponse200RelatedObjectsUser.md) |  | [optional] |
| **picture** | [**GetOrganizationsResponse200AllOfRelatedObjectsPicture**](GetOrganizationsResponse200AllOfRelatedObjectsPicture.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetOrganizationsResponse200AllOfRelatedObjects.new(
  organization: null,
  user: null,
  picture: null
)
```

