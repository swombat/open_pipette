# OpenPipette::GetDealsSummaryResponse200DataValuesTotal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **Float** | The total value of deals in the deal currency group | [optional] |
| **count** | **Integer** | The number of deals in the deal currency group | [optional] |
| **value_converted** | **Float** | The total value of deals converted into the company default currency | [optional] |
| **value_formatted** | **String** | The total value of deals formatted with deal currency. E.g. €50 | [optional] |
| **value_converted_formatted** | **String** | The value_converted formatted with deal currency. E.g. US$50.10 | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetDealsSummaryResponse200DataValuesTotal.new(
  value: null,
  count: null,
  value_converted: null,
  value_formatted: null,
  value_converted_formatted: null
)
```

