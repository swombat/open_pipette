# OpenPipette::NoteRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | **String** | The content of the note in HTML format. Subject to sanitization on the back-end. | [optional] |
| **lead_id** | **String** | The ID of the lead the note will be attached to | [optional] |
| **deal_id** | **Integer** | The ID of the deal the note will be attached to | [optional] |
| **person_id** | **Integer** | The ID of the person the note will be attached to | [optional] |
| **org_id** | **Integer** | The ID of the organization the note will be attached to | [optional] |
| **user_id** | **Integer** | The ID of the user who will be marked as the author of the note. Only an admin can change the author. | [optional] |
| **add_time** | **String** | The optional creation date &amp; time of the note in UTC. Can be set in the past or in the future. Format: YYYY-MM-DD HH:MM:SS | [optional] |
| **pinned_to_lead_flag** | **Float** |  | [optional] |
| **pinned_to_deal_flag** | **Float** |  | [optional] |
| **pinned_to_organization_flag** | **Float** |  | [optional] |
| **pinned_to_person_flag** | **Float** |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::NoteRequest.new(
  content: null,
  lead_id: null,
  deal_id: null,
  person_id: null,
  org_id: null,
  user_id: null,
  add_time: null,
  pinned_to_lead_flag: null,
  pinned_to_deal_flag: null,
  pinned_to_organization_flag: null,
  pinned_to_person_flag: null
)
```

