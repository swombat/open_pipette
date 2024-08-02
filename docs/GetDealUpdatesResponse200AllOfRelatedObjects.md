# OpenPipette::GetDealUpdatesResponse200AllOfRelatedObjects

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deal** | [**GetActivitiesResponse200RelatedObjectsDeal**](GetActivitiesResponse200RelatedObjectsDeal.md) |  | [optional] |
| **organization** | [**GetActivitiesResponse200RelatedObjectsOrganization**](GetActivitiesResponse200RelatedObjectsOrganization.md) |  | [optional] |
| **user** | [**GetActivitiesResponse200RelatedObjectsUser**](GetActivitiesResponse200RelatedObjectsUser.md) |  | [optional] |
| **person** | [**AddActivityResponse200RelatedObjectsPerson**](AddActivityResponse200RelatedObjectsPerson.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetDealUpdatesResponse200AllOfRelatedObjects.new(
  deal: null,
  organization: null,
  user: null,
  person: null
)
```

