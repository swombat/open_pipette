# OpenPipette::BaseMailThreadAllOfPartiesToInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the mail thread participant | [optional] |
| **name** | **String** | Name of the mail thread participant | [optional] |
| **latest_sent** | **Boolean** | Whether the mail thread participant was last to send an email | [optional] |
| **email_address** | **String** | Email address of the mail thread participant | [optional] |
| **message_time** | **Float** | Message time | [optional] |
| **linked_person_id** | **Integer** | ID of the linked person | [optional] |
| **linked_person_name** | **String** | Email of the linked person | [optional] |
| **mail_message_party_id** | **Integer** | ID of the mail message party | [optional] |
| **linked_organization_id** | **Integer** | Linked Organization ID | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::BaseMailThreadAllOfPartiesToInner.new(
  id: null,
  name: null,
  latest_sent: null,
  email_address: null,
  message_time: null,
  linked_person_id: null,
  linked_person_name: null,
  mail_message_party_id: null,
  linked_organization_id: null
)
```

