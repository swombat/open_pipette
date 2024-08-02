# OpenPipette::UpdateActivityTypeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the activity type | [optional] |
| **icon_key** | **String** | Icon graphic to use for representing this activity type | [optional] |
| **color** | **String** | A designated color for the activity type in 6-character HEX format (e.g. &#x60;FFFFFF&#x60; for white, &#x60;000000&#x60; for black) | [optional] |
| **order_nr** | **Integer** | An order number for this activity type. Order numbers should be used to order the types in the activity type selections. | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::UpdateActivityTypeRequest.new(
  name: null,
  icon_key: null,
  color: null,
  order_nr: null
)
```

