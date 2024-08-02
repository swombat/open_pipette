# OpenPipette::GetDealsTimelineResponse200Data

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **period_start** | **String** | The start date and time of the period | [optional] |
| **period_end** | **String** | The end date and time of the period | [optional] |
| **deals** | [**Array&lt;DealStrict&gt;**](DealStrict.md) |  | [optional] |
| **totals** | [**GetDealsTimelineResponse200DataTotals**](GetDealsTimelineResponse200DataTotals.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetDealsTimelineResponse200Data.new(
  period_start: null,
  period_end: null,
  deals: null,
  totals: null
)
```

