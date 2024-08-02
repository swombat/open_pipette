# OpenPipette::GetDealsSummaryResponse200Data

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **values_total** | [**GetDealsSummaryResponse200DataValuesTotal**](GetDealsSummaryResponse200DataValuesTotal.md) |  | [optional] |
| **weighted_values_total** | [**GetDealsSummaryResponse200DataWeightedValuesTotal**](GetDealsSummaryResponse200DataWeightedValuesTotal.md) |  | [optional] |
| **total_count** | **Integer** | The total number of deals | [optional] |
| **total_currency_converted_value** | **Float** | The total value of deals converted into the company default currency | [optional] |
| **total_weighted_currency_converted_value** | **Float** | The total weighted value of deals converted into the company default currency | [optional] |
| **total_currency_converted_value_formatted** | **String** | The total converted value of deals formatted with the company default currency. E.g. US$5,100.96 | [optional] |
| **total_weighted_currency_converted_value_formatted** | **String** | The total weighted value of deals formatted with the company default currency. E.g. US$5,100.96 | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetDealsSummaryResponse200Data.new(
  values_total: null,
  weighted_values_total: null,
  total_count: null,
  total_currency_converted_value: null,
  total_weighted_currency_converted_value: null,
  total_currency_converted_value_formatted: null,
  total_weighted_currency_converted_value_formatted: null
)
```

