# OpenPipette::CommentPostPutObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | **String** | The content of the comment in HTML format. Subject to sanitization on the back-end. |  |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::CommentPostPutObject.new(
  content: null
)
```

