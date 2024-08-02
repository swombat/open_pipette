# OpenPipette::GetOrganizationResponse200AllOfAdditionalData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **followers** | [**GetOrganizationResponse200AllOfAdditionalDataFollowers**](GetOrganizationResponse200AllOfAdditionalDataFollowers.md) |  | [optional] |
| **dropbox_email** | **String** | Dropbox email for the organization | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetOrganizationResponse200AllOfAdditionalData.new(
  followers: null,
  dropbox_email: null
)
```

