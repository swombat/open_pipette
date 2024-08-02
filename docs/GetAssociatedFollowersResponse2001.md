# OpenPipette::GetAssociatedFollowersResponse2001

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the request was successful or not | [optional] |
| **data** | [**Array&lt;GetAssociatedFollowersResponse2001DataInner&gt;**](GetAssociatedFollowersResponse2001DataInner.md) | The array of followers | [optional] |
| **additional_data** | [**GetActivitiesResponse200AdditionalData**](GetActivitiesResponse200AdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetAssociatedFollowersResponse2001.new(
  success: null,
  data: null,
  additional_data: null
)
```

