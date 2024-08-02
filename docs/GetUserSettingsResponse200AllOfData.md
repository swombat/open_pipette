# OpenPipette::GetUserSettingsResponse200AllOfData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **marketplace_team** | **Boolean** | If the vendors are allowed to be part of the Marketplace team or not | [optional] |
| **list_limit** | **Float** | The number of results shown in list by default | [optional] |
| **beta_app** | **Boolean** | Whether beta app is enabled | [optional] |
| **prevent_salesphone_callto_override** | **Boolean** | Prevent salesphone call to override | [optional] |
| **file_upload_destination** | **String** | The destination of file upload | [optional] |
| **callto_link_syntax** | **String** | The call to link syntax | [optional] |
| **autofill_deal_expected_close_date** | **Boolean** | Whether the expected close date of the deal is filled automatically or not | [optional] |
| **person_duplicate_condition** | **String** | Allow the vendors to duplicate a person | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetUserSettingsResponse200AllOfData.new(
  marketplace_team: null,
  list_limit: null,
  beta_app: null,
  prevent_salesphone_callto_override: null,
  file_upload_destination: null,
  callto_link_syntax: null,
  autofill_deal_expected_close_date: null,
  person_duplicate_condition: null
)
```

