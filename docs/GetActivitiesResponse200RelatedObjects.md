# OpenPipette::GetActivitiesResponse200RelatedObjects

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | [**GetActivitiesResponse200RelatedObjectsUser**](GetActivitiesResponse200RelatedObjectsUser.md) |  | [optional] |
| **deal** | [**GetActivitiesResponse200RelatedObjectsDeal**](GetActivitiesResponse200RelatedObjectsDeal.md) |  | [optional] |
| **person** | [**GetActivitiesResponse200RelatedObjectsPerson**](GetActivitiesResponse200RelatedObjectsPerson.md) |  | [optional] |
| **organization** | [**GetActivitiesResponse200RelatedObjectsOrganization**](GetActivitiesResponse200RelatedObjectsOrganization.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetActivitiesResponse200RelatedObjects.new(
  user: null,
  deal: null,
  person: null,
  organization: null
)
```

