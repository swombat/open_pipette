# OpenPipette::GetDealUpdatesResponse200AllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the deal update. (Possible object types - dealChange, note, activity, mailMessage, invoice, document, file) | [optional] |
| **timestamp** | **String** | The creation date and time of the update | [optional] |
| **data** | **Object** | The data related to the update | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetDealUpdatesResponse200AllOfDataInner.new(
  object: null,
  timestamp: null,
  data: null
)
```

