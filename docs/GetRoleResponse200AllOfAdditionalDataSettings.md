# OpenPipette::GetRoleResponse200AllOfAdditionalDataSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deal_default_visibility** | **Float** | The default visibility level of the deals for the role | [optional] |
| **lead_default_visibility** | **Float** | The default visibility level of the leads for the role | [optional] |
| **org_default_visibility** | **Float** | The default visibility level of the organizations for the role | [optional] |
| **person_default_visibility** | **Float** | The default visibility level of the people for the role | [optional] |
| **product_default_visibility** | **Float** | The default visibility level of the products for the role | [optional] |
| **deal_access_level** | **Float** | The access level of the deals for the role (only for default role) | [optional] |
| **org_access_level** | **Float** | The access level of the organizations for the role (only for default role) | [optional] |
| **person_access_level** | **Float** | The access level of the people for the role (only for default role) | [optional] |
| **product_access_level** | **Float** | The access level of the products for the role (only for default role) | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetRoleResponse200AllOfAdditionalDataSettings.new(
  deal_default_visibility: null,
  lead_default_visibility: null,
  org_default_visibility: null,
  person_default_visibility: null,
  product_default_visibility: null,
  deal_access_level: null,
  org_access_level: null,
  person_access_level: null,
  product_access_level: null
)
```

