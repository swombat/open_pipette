# OpenPipette::SearchLeadsResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**SearchLeadsResponse200AllOfData**](SearchLeadsResponse200AllOfData.md) |  | [optional] |
| **additional_data** | [**GetActivitiesResponse200AdditionalData**](GetActivitiesResponse200AdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::SearchLeadsResponse200.new(
  success: null,
  data: null,
  additional_data: null
)
```

