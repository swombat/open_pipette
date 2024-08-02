# OpenPipette::BaseMailThreadAllOfParties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to** | [**Array&lt;BaseMailThreadAllOfPartiesToInner&gt;**](BaseMailThreadAllOfPartiesToInner.md) | Recipients of the mail thread | [optional] |
| **from** | [**Array&lt;BaseMailThreadAllOfPartiesToInner&gt;**](BaseMailThreadAllOfPartiesToInner.md) | Senders of the mail thread | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::BaseMailThreadAllOfParties.new(
  to: null,
  from: null
)
```

