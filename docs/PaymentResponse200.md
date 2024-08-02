# OpenPipette::PaymentResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;PaymentResponse200AllOfDataInner&gt;**](PaymentResponse200AllOfDataInner.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::PaymentResponse200.new(
  success: null,
  data: null
)
```

