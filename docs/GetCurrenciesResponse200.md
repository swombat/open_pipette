# OpenPipette::GetCurrenciesResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;GetCurrenciesResponse200DataInner&gt;**](GetCurrenciesResponse200DataInner.md) | The array of currencies | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetCurrenciesResponse200.new(
  success: null,
  data: null
)
```

