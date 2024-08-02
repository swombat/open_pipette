# OpenPipette::GetCommentsResponse200DataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | The ID of the note | [optional] |
| **active_flag** | **Boolean** | Whether the note is active or deleted | [optional] |
| **add_time** | **String** | The creation date and time of the note | [optional] |
| **update_time** | **String** | The creation date and time of the note | [optional] |
| **content** | **String** | The content of the note in HTML format. Subject to sanitization on the back-end. | [optional] |
| **object_id** | **String** | The ID of the object that the comment is attached to, will be the id of the note | [optional] |
| **object_type** | **String** | The type of object that the comment is attached to, will be \&quot;note\&quot; | [optional] |
| **user_id** | **Integer** | The ID of the user who created the comment | [optional] |
| **updater_id** | **Integer** | The ID of the user who last updated the comment | [optional] |
| **company_id** | **Integer** | The ID of the company | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetCommentsResponse200DataInner.new(
  uuid: null,
  active_flag: null,
  add_time: null,
  update_time: null,
  content: null,
  object_id: null,
  object_type: null,
  user_id: null,
  updater_id: null,
  company_id: null
)
```

