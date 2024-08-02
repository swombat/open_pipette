# OpenPipette::ListPersonsResponse200AllOfRelatedObjects

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | [**AddActivityResponse200RelatedObjectsOrganization**](AddActivityResponse200RelatedObjectsOrganization.md) |  | [optional] |
| **user** | [**GetActivitiesResponse200RelatedObjectsUser**](GetActivitiesResponse200RelatedObjectsUser.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::ListPersonsResponse200AllOfRelatedObjects.new(
  organization: null,
  user: null
)
```

