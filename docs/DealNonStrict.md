# OpenPipette::DealNonStrict

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the deal | [optional] |
| **creator_user_id** | [**DealNonStrictAllOfCreatorUserId**](DealNonStrictAllOfCreatorUserId.md) |  | [optional] |
| **user_id** | [**DealUserDataWithId**](DealUserDataWithId.md) |  | [optional] |
| **person_id** | [**DealPersonDataWithId**](DealPersonDataWithId.md) |  | [optional] |
| **org_id** | [**DealOrganizationDataWithId**](DealOrganizationDataWithId.md) |  | [optional] |
| **stage_id** | **Integer** | The ID of the deal stage | [optional] |
| **title** | **String** | The title of the deal | [optional] |
| **value** | **Float** | The value of the deal | [optional] |
| **currency** | **String** | The currency associated with the deal | [optional] |
| **add_time** | **String** | The creation date and time of the deal | [optional] |
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
| **stage_order_nr** | **Integer** | The order number of the deal stage associated with the deal | [optional] |
| **person_name** | **String** | The name of the person associated with the deal | [optional] |
| **org_name** | **String** | The name of the organization associated with the deal | [optional] |
| **next_activity_subject** | **String** | The subject of the next activity associated with the deal | [optional] |
| **next_activity_type** | **String** | The type of the next activity associated with the deal | [optional] |
| **next_activity_duration** | **String** | The duration of the next activity associated with the deal | [optional] |
| **next_activity_note** | **String** | The note of the next activity associated with the deal | [optional] |
| **formatted_value** | **String** | The deal value formatted with selected currency. E.g. US$500 | [optional] |
| **weighted_value** | **Float** | Probability times deal value. Probability can either be deal probability or if not set, then stage probability. | [optional] |
| **formatted_weighted_value** | **String** | The weighted_value formatted with selected currency. E.g. US$500 | [optional] |
| **weighted_value_currency** | **String** | The currency associated with the deal | [optional] |
| **rotten_time** | **String** | The date and time of changing the deal status as rotten | [optional] |
| **owner_name** | **String** | The name of the deal owner | [optional] |
| **cc_email** | **String** | The BCC email of the deal | [optional] |
| **org_hidden** | **Boolean** | If the organization that is associated with the deal is hidden or not | [optional] |
| **person_hidden** | **Boolean** | If the person that is associated with the deal is hidden or not | [optional] |
| **origin** | **String** | The way this Deal was created. &#x60;origin&#x60; field is set by Pipedrive when Deal is created and cannot be changed. | [optional] |
| **origin_id** | **String** | The optional ID to further distinguish the origin of the deal - e.g. Which API integration created this Deal. | [optional] |
| **channel** | **Integer** | The ID of your Marketing channel this Deal was created from. Recognized Marketing channels can be configured in your &lt;a href&#x3D;\&quot;https://app.pipedrive.com/settings/fields\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;Company settings&lt;/a&gt;. | [optional] |
| **channel_id** | **String** | The optional ID to further distinguish the Marketing channel. | [optional] |
| **arr** | **Float** | Only available in Advanced and above plans  The Annual Recurring Revenue of the deal  Null if there are no products attached to the deal  | [optional] |
| **mrr** | **Float** | Only available in Advanced and above plans  The Monthly Recurring Revenue of the deal  Null if there are no products attached to the deal  | [optional] |
| **acv** | **Float** | Only available in Advanced and above plans  The Annual Contract Value of the deal  Null if there are no products attached to the deal  | [optional] |
| **arr_currency** | **String** | Only available in Advanced and above plans  The Currency for Annual Recurring Revenue of the deal  If the &#x60;arr&#x60; is null, this will also be null  | [optional] |
| **mrr_currency** | **String** | Only available in Advanced and above plans  The Currency for Monthly Recurring Revenue of the deal  If the &#x60;mrr&#x60; is null, this will also be null  | [optional] |
| **acv_currency** | **String** | Only available in Advanced and above plans  The Currency for Annual Contract Value of the deal  If the &#x60;acv&#x60; is null, this will also be null  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::DealNonStrict.new(
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
  label: null,
  stage_order_nr: null,
  person_name: null,
  org_name: null,
  next_activity_subject: null,
  next_activity_type: null,
  next_activity_duration: null,
  next_activity_note: null,
  formatted_value: null,
  weighted_value: null,
  formatted_weighted_value: null,
  weighted_value_currency: null,
  rotten_time: null,
  owner_name: null,
  cc_email: null,
  org_hidden: null,
  person_hidden: null,
  origin: null,
  origin_id: null,
  channel: null,
  channel_id: null,
  arr: null,
  mrr: null,
  acv: null,
  arr_currency: null,
  mrr_currency: null,
  acv_currency: null
)
```

