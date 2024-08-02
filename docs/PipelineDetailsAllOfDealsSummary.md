# OpenPipette::PipelineDetailsAllOfDealsSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **per_stages** | [**PipelineDetailsAllOfDealsSummaryPerStages**](PipelineDetailsAllOfDealsSummaryPerStages.md) |  | [optional] |
| **per_currency** | [**PipelineDetailsAllOfDealsSummaryPerCurrency**](PipelineDetailsAllOfDealsSummaryPerCurrency.md) |  | [optional] |
| **total_count** | **Integer** | Deals count | [optional] |
| **per_currency_full** | [**PipelineDetailsAllOfDealsSummaryPerCurrencyFull**](PipelineDetailsAllOfDealsSummaryPerCurrencyFull.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::PipelineDetailsAllOfDealsSummary.new(
  per_stages: null,
  per_currency: null,
  total_count: null,
  per_currency_full: null
)
```

