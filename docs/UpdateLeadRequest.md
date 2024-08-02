# OpenPipette::UpdateLeadRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The name of the lead | [optional] |
| **owner_id** | **Integer** | The ID of the user which will be the owner of the created lead. If not provided, the user making the request will be used. | [optional] |
| **label_ids** | **Array&lt;String&gt;** | The IDs of the lead labels which will be associated with the lead | [optional] |
| **person_id** | **Integer** | The ID of a person which this lead will be linked to. If the person does not exist yet, it needs to be created first. A lead always has to be linked to a person or organization or both.  | [optional] |
| **organization_id** | **Integer** | The ID of an organization which this lead will be linked to. If the organization does not exist yet, it needs to be created first. A lead always has to be linked to a person or organization or both. | [optional] |
| **is_archived** | **Boolean** | A flag indicating whether the lead is archived or not | [optional] |
| **value** | [**GetLeadsResponse200DataInnerValue**](GetLeadsResponse200DataInnerValue.md) |  | [optional] |
| **expected_close_date** | **Date** | The date of when the deal which will be created from the lead is expected to be closed. In ISO 8601 format: YYYY-MM-DD. | [optional] |
| **visible_to** | **String** |  | [optional] |
| **was_seen** | **Boolean** | A flag indicating whether the lead was seen by someone in the Pipedrive UI | [optional] |
| **channel** | **Integer** | The ID of Marketing channel this lead was created from. Provided value must be one of the channels configured for your company which you can fetch with &lt;a href&#x3D;\&quot;https://developers.pipedrive.com/docs/api/v1/DealFields#getDealField\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;GET /v1/dealFields&lt;/a&gt;. | [optional] |
| **channel_id** | **String** | The optional ID to further distinguish the Marketing channel. | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::UpdateLeadRequest.new(
  title: null,
  owner_id: null,
  label_ids: null,
  person_id: null,
  organization_id: null,
  is_archived: null,
  value: null,
  expected_close_date: null,
  visible_to: null,
  was_seen: null,
  channel: null,
  channel_id: null
)
```

