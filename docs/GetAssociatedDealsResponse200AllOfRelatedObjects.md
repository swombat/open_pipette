# OpenPipette::GetAssociatedDealsResponse200AllOfRelatedObjects

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | [**AddActivityResponse200RelatedObjectsOrganization**](AddActivityResponse200RelatedObjectsOrganization.md) |  | [optional] |
| **person** | [**AddActivityResponse200RelatedObjectsPerson**](AddActivityResponse200RelatedObjectsPerson.md) |  | [optional] |
| **user** | [**GetActivitiesResponse200RelatedObjectsUser**](GetActivitiesResponse200RelatedObjectsUser.md) |  | [optional] |
| **stage** | [**GetAssociatedDealsResponse200AllOfRelatedObjectsStage**](GetAssociatedDealsResponse200AllOfRelatedObjectsStage.md) |  | [optional] |
| **pipeline** | [**GetAssociatedDealsResponse200AllOfRelatedObjectsPipeline**](GetAssociatedDealsResponse200AllOfRelatedObjectsPipeline.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetAssociatedDealsResponse200AllOfRelatedObjects.new(
  organization: null,
  person: null,
  user: null,
  stage: null,
  pipeline: null
)
```

