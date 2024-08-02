# OpenPipette::UpdateProductRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the product | [optional] |
| **code** | **String** | The product code | [optional] |
| **description** | **String** | The product description | [optional] |
| **unit** | **String** | The unit in which this product is sold | [optional] |
| **tax** | **Float** | The tax percentage | [optional][default to 0] |
| **active_flag** | **Boolean** | Whether this product will be made active or not | [optional][default to true] |
| **selectable** | **Boolean** | Whether this product can be selected in deals or not | [optional][default to true] |
| **visible_to** | **String** |  | [optional] |
| **owner_id** | **Integer** | The ID of the user who will be marked as the owner of this product. When omitted, the authorized user ID will be used | [optional] |
| **prices** | **Array&lt;Object&gt;** | An array of objects, each containing: &#x60;currency&#x60; (string), &#x60;price&#x60; (number), &#x60;cost&#x60; (number, optional), &#x60;overhead_cost&#x60; (number, optional). Note that there can only be one price per product per currency. When &#x60;prices&#x60; is omitted altogether, a default price of 0 and a default currency based on the company&#39;s currency will be assigned. | [optional] |
| **billing_frequency** | **String** | Only available in Advanced and above plans  How often a customer is billed for access to a service or product  | [optional] |
| **billing_frequency_cycles** | **Integer** | Only available in Advanced and above plans  The number of times the billing frequency repeats for a product in a deal  When &#x60;billing_frequency&#x60; is set to &#x60;one-time&#x60;, this field must be &#x60;null&#x60;  For all the other values of &#x60;billing_frequency&#x60;, &#x60;null&#x60; represents a product billed indefinitely  Must be a positive integer less or equal to 312  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::UpdateProductRequest.new(
  name: null,
  code: null,
  description: null,
  unit: null,
  tax: null,
  active_flag: null,
  selectable: null,
  visible_to: null,
  owner_id: null,
  prices: null,
  billing_frequency: null,
  billing_frequency_cycles: null
)
```

