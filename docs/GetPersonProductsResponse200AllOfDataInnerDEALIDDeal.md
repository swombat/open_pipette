# OpenPipette::GetPersonProductsResponse200AllOfDataInnerDEALIDDeal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal | [optional] |
| **company_id** | **Integer** | The ID of the company | [optional] |
| **creator_user_id** | **Integer** | The ID of the deal creator | [optional] |
| **user_id** | **Integer** | The ID of the user | [optional] |
| **person_id** | **Integer** | The ID of the person associated with the deal | [optional] |
| **org_id** | **Integer** | The ID of the organization associated with the deal | [optional] |
| **stage_id** | **Integer** | The ID of the deal stage | [optional] |
| **title** | **String** | The title of the deal | [optional] |
| **value** | **Float** | The value of the deal | [optional] |
| **currency** | **String** | The currency associated with the deal | [optional] |
| **add_time** | **String** | The creation date and time of the deal | [optional] |
| **first_add_time** | **String** | The first creation date and time of the deal | [optional] |
| **update_time** | **String** | The last updated date and time of the deal | [optional] |
| **stage_change_time** | **String** | The last updated date and time of the deal stage | [optional] |
| **active** | **Boolean** | Whether the deal is active or not | [optional] |
| **deleted** | **Boolean** | Whether the deal is deleted or not | [optional] |
| **status** | **String** | The status of the deal | [optional] |
| **probability** | **Float** | The success probability percentage of the deal | [optional] |
| **next_activity_date** | **String** | The date of the next activity associated with the deal | [optional] |
| **next_activity_time** | **String** | The time of the next activity associated with the deal | [optional] |
| **next_activity_id** | **Integer** | The ID of the next activity associated with the deal | [optional] |
| **last_activity_id** | **Integer** | The ID of the last activity associated with the deal | [optional] |
| **last_activity_date** | **String** | The date of the last activity associated with the deal | [optional] |
| **lost_reason** | **String** | The reason for losing the deal | [optional] |
| **visible_to** | **String** | The visibility of the deal | [optional] |
| **close_time** | **String** | The date and time of closing the deal | [optional] |
| **pipeline_id** | **Integer** | The ID of the pipeline associated with the deal | [optional] |
| **won_time** | **String** | The date and time of changing the deal status as won | [optional] |
| **first_won_time** | **String** | The date and time of the first time changing the deal status as won | [optional] |
| **lost_time** | **String** | The date and time of changing the deal status as lost | [optional] |
| **products_count** | **Integer** | The number of products associated with the deal | [optional] |
| **files_count** | **Integer** | The number of files associated with the deal | [optional] |
| **notes_count** | **Integer** | The number of notes associated with the deal | [optional] |
| **followers_count** | **Integer** | The number of followers associated with the deal | [optional] |
| **email_messages_count** | **Integer** | The number of emails associated with the deal | [optional] |
| **activities_count** | **Integer** | The number of activities associated with the deal | [optional] |
| **done_activities_count** | **Integer** | The number of completed activities associated with the deal | [optional] |
| **undone_activities_count** | **Integer** | The number of incomplete activities associated with the deal | [optional] |
| **participants_count** | **Integer** | The number of participants associated with the deal | [optional] |
| **expected_close_date** | **Date** | The expected close date of the deal | [optional] |
| **last_incoming_mail_time** | **String** | The date and time of the last incoming email associated with the deal | [optional] |
| **last_outgoing_mail_time** | **String** | The date and time of the last outgoing email associated with the deal | [optional] |
| **label** | **String** | The label or multiple labels assigned to the deal | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetPersonProductsResponse200AllOfDataInnerDEALIDDeal.new(
  id: null,
  company_id: null,
  creator_user_id: null,
  user_id: null,
  person_id: null,
  org_id: null,
  stage_id: null,
  title: null,
  value: null,
  currency: null,
  add_time: null,
  first_add_time: null,
  update_time: null,
  stage_change_time: null,
  active: null,
  deleted: null,
  status: null,
  probability: null,
  next_activity_date: null,
  next_activity_time: null,
  next_activity_id: null,
  last_activity_id: null,
  last_activity_date: null,
  lost_reason: null,
  visible_to: null,
  close_time: null,
  pipeline_id: null,
  won_time: null,
  first_won_time: null,
  lost_time: null,
  products_count: null,
  files_count: null,
  notes_count: null,
  followers_count: null,
  email_messages_count: null,
  activities_count: null,
  done_activities_count: null,
  undone_activities_count: null,
  participants_count: null,
  expected_close_date: null,
  last_incoming_mail_time: null,
  last_outgoing_mail_time: null,
  label: null
)
```

