# OpenPipette::AddNoteRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | **String** | The content of the note in HTML format. Subject to sanitization on the back-end. |  |
| **lead_id** | **String** | The ID of the lead the note will be attached to. This property is required unless one of (&#x60;deal_id/person_id/org_id&#x60;) is specified. | [optional] |
| **deal_id** | **Integer** | The ID of the deal the note will be attached to. This property is required unless one of (&#x60;lead_id/person_id/org_id&#x60;) is specified. | [optional] |
| **person_id** | **Integer** | The ID of the person this note will be attached to. This property is required unless one of (&#x60;deal_id/lead_id/org_id&#x60;) is specified. | [optional] |
| **org_id** | **Integer** | The ID of the organization this note will be attached to. This property is required unless one of (&#x60;deal_id/lead_id/person_id&#x60;) is specified. | [optional] |
| **user_id** | **Integer** | The ID of the user who will be marked as the author of the note. Only an admin can change the author. | [optional] |
| **add_time** | **String** | The optional creation date &amp; time of the note in UTC. Can be set in the past or in the future. Format: YYYY-MM-DD HH:MM:SS | [optional] |
| **pinned_to_lead_flag** | **Float** |  | [optional] |
| **pinned_to_deal_flag** | **Float** |  | [optional] |
| **pinned_to_organization_flag** | **Float** |  | [optional] |
| **pinned_to_person_flag** | **Float** |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddNoteRequest.new(
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

