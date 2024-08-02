# OpenPipette::GetCurrenciesResponse200DataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the currency | [optional] |
| **code** | **String** | The code of the currency | [optional] |
| **name** | **String** | The name of the currency | [optional] |
| **decimal_points** | **Integer** | The amount of decimal points of the currency | [optional] |
| **symbol** | **String** | The symbol of the currency | [optional] |
| **active_flag** | **Boolean** | Whether the currency is active or not | [optional] |
| **is_custom_flag** | **Boolean** | Whether the currency is a custom one or not | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetCurrenciesResponse200DataInner.new(
  id: null,
  code: null,
  name: null,
  decimal_points: null,
  symbol: null,
  active_flag: null,
  is_custom_flag: null
)
```

