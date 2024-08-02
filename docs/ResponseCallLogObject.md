# OpenPipette::ResponseCallLogObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | The ID of the owner of the call log. Please note that a user without account settings access cannot create call logs for other users. | [optional] |
| **activity_id** | **Integer** | If specified, this activity will be converted into a call log, with the information provided. When this field is used, you don&#39;t need to specify &#x60;deal_id&#x60;, &#x60;person_id&#x60; or &#x60;org_id&#x60;, as they will be ignored in favor of the values already available in the activity. The &#x60;activity_id&#x60; must refer to a &#x60;call&#x60; type activity. | [optional] |
| **subject** | **String** | The name of the activity this call is attached to | [optional] |
| **duration** | **String** | The duration of the call in seconds | [optional] |
| **outcome** | **String** | Describes the outcome of the call |  |
| **from_phone_number** | **String** | The number that made the call | [optional] |
| **to_phone_number** | **String** | The number called |  |
| **start_time** | **Time** | The date and time of the start of the call in UTC. Format: YYYY-MM-DD HH:MM:SS. |  |
| **end_time** | **Time** | The date and time of the end of the call in UTC. Format: YYYY-MM-DD HH:MM:SS. |  |
| **person_id** | **Integer** | The ID of the person this call is associated with | [optional] |
| **org_id** | **Integer** | The ID of the organization this call is associated with | [optional] |
| **deal_id** | **Integer** | The ID of the deal this call is associated with. A call log can be associated with either a deal or a lead, but not both at once. | [optional] |
| **lead_id** | **String** | The ID of the lead in the UUID format this call is associated with. A call log can be associated with either a deal or a lead, but not both at once. | [optional] |
| **note** | **String** | The note for the call log in HTML format | [optional] |
| **id** | **String** | The call log ID, generated when the call log was created | [optional] |
| **has_recording** | **Boolean** | If the call log has an audio recording attached, the value should be true | [optional] |
| **company_id** | **Integer** | The company ID of the owner of the call log | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::ResponseCallLogObject.new(
  user_id: null,
  activity_id: null,
  subject: null,
  duration: null,
  outcome: null,
  from_phone_number: null,
  to_phone_number: null,
  start_time: null,
  end_time: null,
  person_id: null,
  org_id: null,
  deal_id: null,
  lead_id: null,
  note: null,
  id: null,
  has_recording: null,
  company_id: null
)
```

