# OpenPipette::ListProductsResponse200AllOfAdditionalData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **products_quantity_total** | **Integer** | The total quantity of the products | [optional] |
| **products_sum_total** | **Integer** | The total sum of the products | [optional] |
| **products_quantity_total_formatted** | **String** | The total formatted quantity of the products | [optional] |
| **products_sum_total_formatted** | **String** | The total formatted sum of the products | [optional] |
| **pagination** | [**GetActivitiesResponse200AdditionalDataPagination**](GetActivitiesResponse200AdditionalDataPagination.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::ListProductsResponse200AllOfAdditionalData.new(
  products_quantity_total: null,
  products_sum_total: null,
  products_quantity_total_formatted: null,
  products_sum_total_formatted: null,
  pagination: null
)
```

