# OpenPipette::GetAssociatedUpdatesResponse200AllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the person update. (Possible object types - organizationChange, dealChange, file, activity) | [optional] |
| **timestamp** | **String** | The creation date and time of the update | [optional] |
| **data** | **Object** | The data related to the update | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetAssociatedUpdatesResponse200AllOfDataInner.new(
  object: null,
  timestamp: null,
  data: null
)
```

