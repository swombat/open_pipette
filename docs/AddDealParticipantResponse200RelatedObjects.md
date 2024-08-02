# OpenPipette::AddDealParticipantResponse200RelatedObjects

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | [**GetActivitiesResponse200RelatedObjectsUser**](GetActivitiesResponse200RelatedObjectsUser.md) |  | [optional] |
| **person** | [**AddActivityResponse200RelatedObjectsPerson**](AddActivityResponse200RelatedObjectsPerson.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddDealParticipantResponse200RelatedObjects.new(
  user: null,
  person: null
)
```

