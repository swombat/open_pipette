# OpenPipette::UpdateSubscriptionInstallmentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payments** | **Array&lt;Object&gt;** | Array of payments. It requires a minimum structure as follows: [{ amount:SUM, description:DESCRIPTION, due_at:PAYMENT_DATE }]. Replace SUM with a payment amount, DESCRIPTION with a explanation string, PAYMENT_DATE with a date (format YYYY-MM-DD). |  |
| **update_deal_value** | **Boolean** | Indicates that the deal value must be set to installment subscription&#39;s total value | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::UpdateSubscriptionInstallmentRequest.new(
  payments: null,
  update_deal_value: null
)
```

