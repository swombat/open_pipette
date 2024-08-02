# OpenPipette::GetProductFieldsResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;ProductField&gt;**](ProductField.md) | Array containing data for all product fields | [optional] |
| **additional_data** | **Object** | Additional data for the product field, such as pagination | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetProductFieldsResponse200.new(
  success: null,
  data: null,
  additional_data: null
)
```

