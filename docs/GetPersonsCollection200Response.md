# OpenPipette::GetPersonsCollection200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **data** | [**Array&lt;PersonsCollectionResponseObject&gt;**](PersonsCollectionResponseObject.md) |  | [optional] |
| **additional_data** | [**GetActivitiesCollectionResponse200AdditionalData**](GetActivitiesCollectionResponse200AdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetPersonsCollection200Response.new(
  success: null,
  data: null,
  additional_data: null
)
```

