# OpenPipette::CancelRecurringSubscriptionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **end_date** | **Date** | The subscription termination date. All payments after the specified date will be deleted. The end_date of the subscription will be set to the due date of the payment to follow the specified date. Default value is the current date. | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::CancelRecurringSubscriptionRequest.new(
  end_date: null
)
```

