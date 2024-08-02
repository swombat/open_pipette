# OpenPipette::GetLeadsResponse200DataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID of the lead in the UUID format | [optional] |
| **title** | **String** | The title of the lead | [optional] |
| **owner_id** | **Integer** | The ID of the user who owns the lead | [optional] |
| **creator_id** | **Integer** | The ID of the user who created the lead | [optional] |
| **label_ids** | **Array&lt;String&gt;** | The IDs of the lead labels which are associated with the lead | [optional] |
| **person_id** | **Integer** | The ID of a person which this lead is linked to | [optional] |
| **organization_id** | **Integer** | The ID of an organization which this lead is linked to | [optional] |
| **source_name** | **String** | Defines where the lead comes from. Will be &#x60;API&#x60; if the lead was created through the Public API and will be &#x60;Manually created&#x60; if the lead was created manually through the UI.  | [optional] |
| **origin** | **String** | The way this Lead was created. &#x60;origin&#x60; field is set by Pipedrive when Lead is created and cannot be changed. | [optional] |
| **origin_id** | **String** | The optional ID to further distinguish the origin of the lead - e.g. Which API integration created this Lead. | [optional] |
| **channel** | **Integer** | The ID of your Marketing channel this Lead was created from. Recognized Marketing channels can be configured in your &lt;a href&#x3D;\&quot;https://app.pipedrive.com/settings/fields\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;Company settings&lt;/a&gt;. | [optional] |
| **channel_id** | **String** | The optional ID to further distinguish the Marketing channel. | [optional] |
| **is_archived** | **Boolean** | A flag indicating whether the lead is archived or not | [optional] |
| **was_seen** | **Boolean** | A flag indicating whether the lead was seen by someone in the Pipedrive UI | [optional] |
| **value** | [**GetLeadsResponse200DataInnerValue**](GetLeadsResponse200DataInnerValue.md) |  | [optional] |
| **expected_close_date** | **Date** | The date of when the deal which will be created from the lead is expected to be closed. In ISO 8601 format: YYYY-MM-DD. | [optional] |
| **next_activity_id** | **Integer** | The ID of the next activity associated with the lead | [optional] |
| **add_time** | **Time** | The date and time of when the lead was created. In ISO 8601 format: YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **update_time** | **Time** | The date and time of when the lead was last updated. In ISO 8601 format: YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **visible_to** | **String** |  | [optional] |
| **cc_email** | **String** | The BCC email of the lead | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetLeadsResponse200DataInner.new(
  id: null,
  title: null,
  owner_id: null,
  creator_id: null,
  label_ids: null,
  person_id: null,
  organization_id: null,
  source_name: null,
  origin: null,
  origin_id: null,
  channel: null,
  channel_id: null,
  is_archived: null,
  was_seen: null,
  value: null,
  expected_close_date: null,
  next_activity_id: null,
  add_time: null,
  update_time: null,
  visible_to: null,
  cc_email: null
)
```

