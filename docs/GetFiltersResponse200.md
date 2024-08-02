# OpenPipette::GetFiltersResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;GetFiltersResponse200AllOfDataInner&gt;**](GetFiltersResponse200AllOfDataInner.md) | The array of filters | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetFiltersResponse200.new(
  success: null,
  data: null
)
```

