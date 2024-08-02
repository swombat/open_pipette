# OpenPipette::UpdateActivityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **due_date** | **Date** | The due date of the activity. Format: YYYY-MM-DD | [optional] |
| **due_time** | **String** | The due time of the activity in UTC. Format: HH:MM | [optional] |
| **duration** | **String** | The duration of the activity. Format: HH:MM | [optional] |
| **deal_id** | **Integer** | The ID of the deal this activity is associated with | [optional] |
| **lead_id** | **String** | The ID of the lead in the UUID format this activity is associated with | [optional] |
| **person_id** | **Integer** | The ID of the person this activity is associated with | [optional] |
| **project_id** | **Integer** | The ID of the project this activity is associated with | [optional] |
| **org_id** | **Integer** | The ID of the organization this activity is associated with | [optional] |
| **location** | **String** | The address of the activity. | [optional] |
| **public_description** | **String** | Additional details about the activity that is synced to your external calendar. Unlike the note added to the activity, the description is publicly visible to any guests added to the activity. | [optional] |
| **note** | **String** | The note of the activity (HTML format) | [optional] |
| **subject** | **String** | The subject of the activity | [optional] |
| **type** | **String** | The type of the activity. This is in correlation with the &#x60;key_string&#x60; parameter of ActivityTypes. | [optional] |
| **user_id** | **Integer** | The ID of the user whom the activity is assigned to | [optional] |
| **participants** | **Array&lt;Object&gt;** | List of multiple persons (participants) this activity is associated with. It requires a structure as follows: &#x60;[{\&quot;person_id\&quot;:1,\&quot;primary_flag\&quot;:true}]&#x60; | [optional] |
| **busy_flag** | **Boolean** | Set the activity as &#39;Busy&#39; or &#39;Free&#39;. If the flag is set to &#x60;true&#x60;, your customers will not be able to book that time slot through any Scheduler links. The flag can also be unset by never setting it or overriding it with &#x60;null&#x60;. When the value of the flag is unset (&#x60;null&#x60;), the flag defaults to &#39;Busy&#39; if it has a time set, and &#39;Free&#39; if it is an all-day event without specified time. | [optional] |
| **attendees** | **Array&lt;Object&gt;** | The attendees of the activity. This can be either your existing Pipedrive contacts or an external email address. It requires a structure as follows: &#x60;[{\&quot;email_address\&quot;:\&quot;mail@example.org\&quot;}]&#x60; or &#x60;[{\&quot;person_id\&quot;:1, \&quot;email_address\&quot;:\&quot;mail@example.org\&quot;}]&#x60; | [optional] |
| **done** | **Float** |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::UpdateActivityRequest.new(
  due_date: null,
  due_time: null,
  duration: null,
  deal_id: null,
  lead_id: null,
  person_id: null,
  project_id: null,
  org_id: null,
  location: null,
  public_description: null,
  note: null,
  subject: null,
  type: null,
  user_id: null,
  participants: null,
  busy_flag: null,
  attendees: null,
  done: null
)
```

