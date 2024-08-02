# OpenPipette::AddLeadRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The name of the lead |  |
| **owner_id** | **Integer** | The ID of the user which will be the owner of the created lead. If not provided, the user making the request will be used. | [optional] |
| **label_ids** | **Array&lt;String&gt;** | The IDs of the lead labels which will be associated with the lead | [optional] |
| **person_id** | **Integer** | The ID of a person which this lead will be linked to. If the person does not exist yet, it needs to be created first. This property is required unless &#x60;organization_id&#x60; is specified. | [optional] |
| **organization_id** | **Integer** | The ID of an organization which this lead will be linked to. If the organization does not exist yet, it needs to be created first. This property is required unless &#x60;person_id&#x60; is specified. | [optional] |
| **value** | [**GetLeadsResponse200DataInnerValue**](GetLeadsResponse200DataInnerValue.md) |  | [optional] |
| **expected_close_date** | **Date** | The date of when the deal which will be created from the lead is expected to be closed. In ISO 8601 format: YYYY-MM-DD. | [optional] |
| **visible_to** | **String** |  | [optional] |
| **was_seen** | **Boolean** | A flag indicating whether the lead was seen by someone in the Pipedrive UI | [optional] |
| **origin_id** | **String** | The optional ID to further distinguish the origin of the lead - e.g. Which API integration created this lead. If omitted, &#x60;origin_id&#x60; will be set to null. | [optional] |
| **channel** | **Integer** | The ID of Marketing channel this lead was created from. Provided value must be one of the channels configured for your company. You can fetch allowed values with &lt;a href&#x3D;\&quot;https://developers.pipedrive.com/docs/api/v1/DealFields#getDealField\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;GET /v1/dealFields&lt;/a&gt;. If omitted, channel will be set to null. | [optional] |
| **channel_id** | **String** | The optional ID to further distinguish the Marketing channel. If omitted, &#x60;channel_id&#x60; will be set to null. | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddLeadRequest.new(
  title: null,
  owner_id: null,
  label_ids: null,
  person_id: null,
  organization_id: null,
  value: null,
  expected_close_date: null,
  visible_to: null,
  was_seen: null,
  origin_id: null,
  channel: null,
  channel_id: null
)
```

