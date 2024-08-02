# OpenPipette::GetProductFollowersResponseSuccess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;GetProductFollowersResponseSuccessAllOfDataInner&gt;**](GetProductFollowersResponseSuccessAllOfDataInner.md) | The list of followers | [optional] |
| **additional_data** | [**FieldsResponse200AllOfAdditionalData**](FieldsResponse200AllOfAdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetProductFollowersResponseSuccess.new(
  success: null,
  data: null,
  additional_data: null
)
```

