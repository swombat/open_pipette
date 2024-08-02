# OpenPipette::GetDealsSummaryResponse200DataWeightedValuesTotal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **Float** | The total weighted value of the deals in the deal currency group | [optional] |
| **count** | **Integer** | The number of deals in the deal currency group | [optional] |
| **value_formatted** | **String** | The total weighted value of the deals formatted with deal currency. E.g. €50 | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetDealsSummaryResponse200DataWeightedValuesTotal.new(
  value: null,
  count: null,
  value_formatted: null
)
```

