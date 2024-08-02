# OpenPipette::UserProviderLinkErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | Boolean that indicates whether the request was successful or not | [optional] |
| **message** | **String** | The error message of the request | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::UserProviderLinkErrorResponse.new(
  success: null,
  message: Missing user id or company id
)
```

