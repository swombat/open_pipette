# OpenPipette::AddActivityTypeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the activity type |  |
| **icon_key** | **String** | Icon graphic to use for representing this activity type |  |
| **color** | **String** | A designated color for the activity type in 6-character HEX format (e.g. &#x60;FFFFFF&#x60; for white, &#x60;000000&#x60; for black) | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddActivityTypeRequest.new(
  name: call,
  icon_key: null,
  color: FFFFFF
)
```

