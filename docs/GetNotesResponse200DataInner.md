# OpenPipette::GetNotesResponse200DataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the note | [optional] |
| **active_flag** | **Boolean** | Whether the note is active or deleted | [optional] |
| **add_time** | **String** | The creation date and time of the note | [optional] |
| **content** | **String** | The content of the note in HTML format. Subject to sanitization on the back-end. | [optional] |
| **deal** | [**GetNotesResponse200DataInnerDeal**](GetNotesResponse200DataInnerDeal.md) |  | [optional] |
| **lead_id** | **String** | The ID of the lead the note is attached to | [optional] |
| **deal_id** | **Integer** | The ID of the deal the note is attached to | [optional] |
| **last_update_user_id** | **Integer** | The ID of the user who last updated the note | [optional] |
| **org_id** | **Integer** | The ID of the organization the note is attached to | [optional] |
| **organization** | [**GetNotesResponse200DataInnerOrganization**](GetNotesResponse200DataInnerOrganization.md) |  | [optional] |
| **person** | [**GetNotesResponse200DataInnerPerson**](GetNotesResponse200DataInnerPerson.md) |  | [optional] |
| **person_id** | **Integer** | The ID of the person the note is attached to | [optional] |
| **pinned_to_deal_flag** | **Boolean** | If true, the results are filtered by note to deal pinning state | [optional] |
| **pinned_to_organization_flag** | **Boolean** | If true, the results are filtered by note to organization pinning state | [optional] |
| **pinned_to_person_flag** | **Boolean** | If true, the results are filtered by note to person pinning state | [optional] |
| **update_time** | **String** | The last updated date and time of the note | [optional] |
| **user** | [**GetNotesResponse200DataInnerUser**](GetNotesResponse200DataInnerUser.md) |  | [optional] |
| **user_id** | **Integer** | The ID of the note creator | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetNotesResponse200DataInner.new(
  id: null,
  active_flag: null,
  add_time: null,
  content: null,
  deal: null,
  lead_id: null,
  deal_id: null,
  last_update_user_id: null,
  org_id: null,
  organization: null,
  person: null,
  person_id: null,
  pinned_to_deal_flag: null,
  pinned_to_organization_flag: null,
  pinned_to_person_flag: null,
  update_time: null,
  user: null,
  user_id: null
)
```

