# OpenPipette::DealCollectionResponseObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal | [optional] |
| **creator_user_id** | **Integer** | The ID of the deal creator | [optional] |
| **user_id** | **Integer** | The ID of the user | [optional] |
| **person_id** | **Integer** | The ID of the person associated with the deal | [optional] |
| **org_id** | **Integer** | The ID of the organization associated with the deal | [optional] |
| **stage_id** | **Integer** | The ID of the deal stage | [optional] |
| **title** | **String** | The title of the deal | [optional] |
| **value** | **Float** | The value of the deal | [optional] |
| **currency** | **String** | The currency associated with the deal | [optional] |
| **add_time** | **String** | The creation date and time of the deal in UTC. Format: YYYY-MM-DD HH:MM:SS. | [optional] |
| **update_time** | **String** | The last update date and time of the deal in UTC. Format: YYYY-MM-DD HH:MM:SS. | [optional] |
| **status** | **String** | The status of the deal | [optional] |
| **probability** | **Float** | The success probability percentage of the deal | [optional] |
| **lost_reason** | **String** | The reason for losing the deal | [optional] |
| **visible_to** | **String** | The visibility of the deal | [optional] |
| **close_time** | **String** | The date and time of closing the deal in UTC. Format: YYYY-MM-DD HH:MM:SS. | [optional] |
| **pipeline_id** | **Integer** | The ID of the pipeline associated with the deal | [optional] |
| **won_time** | **String** | The date and time of changing the deal status to won in UTC. Format: YYYY-MM-DD HH:MM:SS. | [optional] |
| **lost_time** | **String** | The date and time of changing the deal status to lost in UTC. Format: YYYY-MM-DD HH:MM:SS. | [optional] |
| **expected_close_date** | **Date** | The expected close date of the deal | [optional] |
| **label** | **String** | The label or multiple labels assigned to the deal | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::DealCollectionResponseObject.new(
  id: null,
  creator_user_id: null,
  user_id: null,
  person_id: null,
  org_id: null,
  stage_id: null,
  title: null,
  value: null,
  currency: null,
  add_time: null,
  update_time: null,
  status: null,
  probability: null,
  lost_reason: null,
  visible_to: null,
  close_time: null,
  pipeline_id: null,
  won_time: null,
  lost_time: null,
  expected_close_date: null,
  label: null
)
```

