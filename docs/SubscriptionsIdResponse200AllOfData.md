# OpenPipette::SubscriptionsIdResponse200AllOfData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the subscription | [optional] |
| **user_id** | **Integer** | The ID of the user who created the subscription | [optional] |
| **deal_id** | **Integer** | The ID of the deal this subscription is associated with | [optional] |
| **description** | **String** | The description of the recurring subscription | [optional] |
| **is_active** | **Boolean** | The subscription status | [optional] |
| **cycles_count** | **Integer** | Shows how many payments a recurring subscription has | [optional] |
| **cycle_amount** | **Integer** | The amount of each payment | [optional] |
| **infinite** | **Boolean** | Indicates that the recurring subscription will last until it is manually canceled or deleted | [optional] |
| **currency** | **String** | The currency of the subscription | [optional] |
| **cadence_type** | **String** | The interval between payments | [optional] |
| **start_date** | **Date** | The start date of the recurring subscription | [optional] |
| **end_date** | **Date** | The end date of the subscription | [optional] |
| **lifetime_value** | **Float** | The total value of all payments | [optional] |
| **final_status** | **String** | The final status of the subscription | [optional] |
| **add_time** | **Time** | The creation time of the subscription | [optional] |
| **update_time** | **Time** | The update time of the subscription | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::SubscriptionsIdResponse200AllOfData.new(
  id: null,
  user_id: null,
  deal_id: null,
  description: null,
  is_active: null,
  cycles_count: null,
  cycle_amount: null,
  infinite: null,
  currency: null,
  cadence_type: null,
  start_date: null,
  end_date: null,
  lifetime_value: null,
  final_status: null,
  add_time: null,
  update_time: null
)
```

