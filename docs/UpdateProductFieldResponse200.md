# OpenPipette::UpdateProductFieldResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the field | [optional] |
| **options** | **Array&lt;Object&gt;** | When &#x60;field_type&#x60; is either set or enum, possible options on update must be supplied as an array of objects each containing id and label, for example: [{\&quot;id\&quot;:1, \&quot;label\&quot;:\&quot;red\&quot;},{\&quot;id\&quot;:2, \&quot;label\&quot;:\&quot;blue\&quot;},{\&quot;id\&quot;:3, \&quot;label\&quot;:\&quot;lilac\&quot;}] | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::UpdateProductFieldResponse200.new(
  name: null,
  options: null
)
```

