# OpenPipette::GetRecentsResponse200DataInnerAnyOf9Data

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the product | [optional] |
| **name** | **String** | The name of the product | [optional] |
| **code** | **String** | The product code | [optional] |
| **description** | **String** | The description of the product | [optional] |
| **unit** | **String** | The unit in which this product is sold | [optional] |
| **tax** | **Float** | The tax percentage | [optional][default to 0] |
| **category** | **String** | The category of the product | [optional] |
| **active_flag** | **Boolean** | Whether this product will be made active or not | [optional] |
| **selectable** | **Boolean** | Whether this product can be selected in deals or not | [optional] |
| **first_char** | **String** | The first letter of the product name | [optional] |
| **visible_to** | **Integer** | The visibility of the product. If omitted, the visibility will be set to the default visibility setting of this item type for the authorized user. | [optional] |
| **owner_id** | **Integer** | The ID of the user who will be marked as the owner of this product. When omitted, authorized user ID will be used. | [optional] |
| **files_count** | **Integer** | The count of files | [optional] |
| **add_time** | **String** | The date and time when the product was added to the deal | [optional] |
| **update_time** | **String** | The date and time when the product was updated to the deal | [optional] |
| **prices** | **Array&lt;Object&gt;** | Array of objects, each containing: &#x60;currency&#x60; (string), &#x60;price&#x60; (number), &#x60;cost&#x60; (number, optional), &#x60;overhead_cost&#x60; (number, optional). Note that there can only be one price per product per currency. When &#x60;prices&#x60; is omitted altogether, a default price of 0 and a default currency based on the company&#39;s currency will be assigned. | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetRecentsResponse200DataInnerAnyOf9Data.new(
  id: null,
  name: null,
  code: null,
  description: null,
  unit: null,
  tax: null,
  category: null,
  active_flag: null,
  selectable: null,
  first_char: null,
  visible_to: null,
  owner_id: null,
  files_count: null,
  add_time: null,
  update_time: null,
  prices: null
)
```

