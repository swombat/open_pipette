# OpenPipette::PipelineDetailsAllOfDealsSummaryPerCurrency

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency_id** | **Integer** | Deals count per currency. This parameter is dynamic and changes according to &#x60;currency_id&#x60; value. | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::PipelineDetailsAllOfDealsSummaryPerCurrency.new(
  currency_id: null
)
```

