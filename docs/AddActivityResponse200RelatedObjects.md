# OpenPipette::AddActivityResponse200RelatedObjects

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | [**GetActivitiesResponse200RelatedObjectsUser**](GetActivitiesResponse200RelatedObjectsUser.md) |  | [optional] |
| **deal** | [**GetActivitiesResponse200RelatedObjectsDeal**](GetActivitiesResponse200RelatedObjectsDeal.md) |  | [optional] |
| **person** | [**AddActivityResponse200RelatedObjectsPerson**](AddActivityResponse200RelatedObjectsPerson.md) |  | [optional] |
| **organization** | [**AddActivityResponse200RelatedObjectsOrganization**](AddActivityResponse200RelatedObjectsOrganization.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddActivityResponse200RelatedObjects.new(
  user: null,
  deal: null,
  person: null,
  organization: null
)
```

