# OpenPipette::Owner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the user | [optional] |
| **name** | **String** | The name of the user | [optional] |
| **email** | **String** | The email of the user | [optional] |
| **has_pic** | **Integer** | Whether the user has picture or not. 0 &#x3D; No picture, 1 &#x3D; Has picture. | [optional] |
| **pic_hash** | **String** | The user picture hash | [optional] |
| **active_flag** | **Boolean** | Whether the user is active or not | [optional] |
| **value** | **Integer** | The ID of the owner | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::Owner.new(
  id: null,
  name: null,
  email: null,
  has_pic: null,
  pic_hash: null,
  active_flag: null,
  value: null
)
```

