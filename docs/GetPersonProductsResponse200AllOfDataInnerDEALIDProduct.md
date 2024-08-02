# OpenPipette::GetPersonProductsResponse200AllOfDataInnerDEALIDProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the product | [optional] |
| **company_id** | **Integer** | The ID of the company | [optional] |
| **name** | **String** | The name of the product | [optional] |
| **code** | **String** | The product code | [optional] |
| **description** | **String** | The description of the product | [optional] |
| **unit** | **String** | The unit in which this product is sold | [optional] |
| **tax** | **Float** | The tax percentage | [optional][default to 0] |
| **category** | **String** | The category of the product | [optional] |
| **active_flag** | **Boolean** | Whether this product will be made active or not | [optional][default to true] |
| **selectable** | **Boolean** | Whether this product can be selected in deals or not | [optional][default to true] |
| **first_char** | **String** | The first letter of the product name | [optional] |
| **visible_to** | **String** |  | [optional] |
| **owner_id** | **Integer** | The ID of the user who will be marked as the owner of this product. When omitted, the authorized user ID will be used | [optional] |
| **files_count** | **Integer** | The count of files | [optional] |
| **add_time** | **String** | The date and time when the product was added to the deal | [optional] |
| **update_time** | **String** | The date and time when the product was updated to the deal | [optional] |
| **deal_id** | **Integer** | The ID of the deal | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetPersonProductsResponse200AllOfDataInnerDEALIDProduct.new(
  id: null,
  company_id: null,
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
  deal_id: null
)
```

