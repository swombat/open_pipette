# OpenPipette::GetAssociatedPersonUpdatesResponse200AllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the person update. (Possible object types - personChange, note, activity, file) | [optional] |
| **timestamp** | **String** | The creation date and time of the update | [optional] |
| **data** | **Object** | The data related to the update | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetAssociatedPersonUpdatesResponse200AllOfDataInner.new(
  object: null,
  timestamp: null,
  data: null
)
```

