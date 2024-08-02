# OpenPipette::MailMessageItemForListAllOfFromInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the mail participant | [optional] |
| **email_address** | **String** | Mail address of the mail participant | [optional] |
| **name** | **String** | Name of the mail participant | [optional] |
| **linked_person_id** | **Integer** | ID of the linked person to the mail message | [optional] |
| **linked_person_name** | **String** | Name of the linked person to the mail message | [optional] |
| **mail_message_party_id** | **Integer** | ID of the mail message participant | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::MailMessageItemForListAllOfFromInner.new(
  id: null,
  email_address: null,
  name: null,
  linked_person_id: null,
  linked_person_name: null,
  mail_message_party_id: null
)
```

