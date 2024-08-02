# OpenPipette::GetDealsTimelineResponse200DataTotals

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The number of deals for the given period | [optional] |
| **values** | **Object** | The total values of deals grouped by deal currency | [optional] |
| **weighted_values** | **Object** | The total weighted values of deals for the given period grouped by deal currency. The weighted value of a deal is calculated as probability times deal value. | [optional] |
| **open_count** | **Integer** | The number of open deals for the given period | [optional] |
| **open_values** | **Object** | The total values of open deals for the given period grouped by deal currency | [optional] |
| **weighted_open_values** | **Object** | The total weighted values of open deals for the given period grouped by deal currency. The weighted value of a deal is calculated as probability times deal value. | [optional] |
| **won_count** | **Integer** | The number of won deals for the given period | [optional] |
| **won_values** | **Object** | The total values of won deals for the given period grouped by deal currency | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetDealsTimelineResponse200DataTotals.new(
  count: null,
  values: null,
  weighted_values: null,
  open_count: null,
  open_values: null,
  weighted_open_values: null,
  won_count: null,
  won_values: null
)
```

