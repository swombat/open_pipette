# OpenPipette::GetActivitiesResponse200RelatedObjectsDealDEALID

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal associated with the item | [optional] |
| **title** | **String** | The title of the deal associated with the item | [optional] |
| **status** | **String** | The status of the deal associated with the item | [optional] |
| **value** | **Float** | The value of the deal that is associated with the item | [optional] |
| **currency** | **String** | The currency of the deal value | [optional] |
| **stage_id** | **Integer** | The ID of the stage the deal is currently at | [optional] |
| **pipeline_id** | **Integer** | The ID of the pipeline the deal is in | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetActivitiesResponse200RelatedObjectsDealDEALID.new(
  id: null,
  title: null,
  status: null,
  value: null,
  currency: null,
  stage_id: null,
  pipeline_id: null
)
```

