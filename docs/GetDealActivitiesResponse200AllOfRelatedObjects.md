# OpenPipette::GetDealActivitiesResponse200AllOfRelatedObjects

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | [**AddActivityResponse200RelatedObjectsOrganization**](AddActivityResponse200RelatedObjectsOrganization.md) |  | [optional] |
| **person** | [**AddActivityResponse200RelatedObjectsPerson**](AddActivityResponse200RelatedObjectsPerson.md) |  | [optional] |
| **deal** | [**GetActivitiesResponse200RelatedObjectsDeal**](GetActivitiesResponse200RelatedObjectsDeal.md) |  | [optional] |
| **user** | [**GetActivitiesResponse200RelatedObjectsUser**](GetActivitiesResponse200RelatedObjectsUser.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetDealActivitiesResponse200AllOfRelatedObjects.new(
  organization: null,
  person: null,
  deal: null,
  user: null
)
```

