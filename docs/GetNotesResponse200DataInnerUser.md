# OpenPipette::GetNotesResponse200DataInnerUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The email of the note creator | [optional] |
| **icon_url** | **String** | The URL of the note creator avatar picture | [optional] |
| **is_you** | **Boolean** | Whether the note is created by you or not | [optional] |
| **name** | **String** | The name of the note creator | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetNotesResponse200DataInnerUser.new(
  email: null,
  icon_url: null,
  is_you: null,
  name: null
)
```

