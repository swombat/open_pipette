# OpenPipette::DealResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**DealNonStrict**](DealNonStrict.md) |  | [optional] |
| **related_objects** | [**GetDealsResponse200RelatedObjects**](GetDealsResponse200RelatedObjects.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::DealResponse200.new(
  success: null,
  data: null,
  related_objects: null
)
```

