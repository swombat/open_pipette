# OpenPipette::PersonItemAllOfEmailInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | Email | [optional] |
| **primary** | **Boolean** | Boolean that indicates if email is primary for the person or not | [optional] |
| **label** | **String** | The label that indicates the type of the email. (Possible values - work, home or other) | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::PersonItemAllOfEmailInner.new(
  value: null,
  primary: null,
  label: null
)
```

