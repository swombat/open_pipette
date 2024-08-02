# OpenPipette::GetParticipantsChangelog200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the request was successful or not | [optional] |
| **data** | [**Array&lt;ParticipantChangelogItem&gt;**](ParticipantChangelogItem.md) | The array of participant changelog | [optional] |
| **additional_data** | [**FieldsResponse200AllOfAdditionalData**](FieldsResponse200AllOfAdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetParticipantsChangelog200.new(
  success: null,
  data: null,
  additional_data: null
)
```

