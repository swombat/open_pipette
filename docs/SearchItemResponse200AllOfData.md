# OpenPipette::SearchItemResponse200AllOfData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;SearchItemResponse200AllOfDataItemsInner&gt;**](SearchItemResponse200AllOfDataItemsInner.md) | The array of found items | [optional] |
| **related_items** | [**Array&lt;SearchItemResponse200AllOfDataItemsInner&gt;**](SearchItemResponse200AllOfDataItemsInner.md) | The array of related items if &#x60;search_for_related_items&#x60; was enabled | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::SearchItemResponse200AllOfData.new(
  items: null,
  related_items: null
)
```

