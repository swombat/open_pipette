# OpenPipette::GetDealsResponse200RelatedObjects

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | [**GetActivitiesResponse200RelatedObjectsUser**](GetActivitiesResponse200RelatedObjectsUser.md) |  | [optional] |
| **organization** | [**AddActivityResponse200RelatedObjectsOrganization**](AddActivityResponse200RelatedObjectsOrganization.md) |  | [optional] |
| **person** | [**AddActivityResponse200RelatedObjectsPerson**](AddActivityResponse200RelatedObjectsPerson.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetDealsResponse200RelatedObjects.new(
  user: null,
  organization: null,
  person: null
)
```

