# OpenPipette::BaseMailThread1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the mail thread | [optional] |
| **account_id** | **String** | The connection account ID | [optional] |
| **user_id** | **Integer** | ID of the user whom mail message will be assigned to | [optional] |
| **subject** | **String** | The subject | [optional] |
| **snippet** | **String** | A snippet | [optional] |
| **read_flag** | **Float** |  | [optional][default to READ_FLAG::N0] |
| **mail_tracking_status** | **String** | Mail tracking status | [optional] |
| **has_attachments_flag** | **Float** |  | [optional][default to HAS_ATTACHMENTS_FLAG::N0] |
| **has_inline_attachments_flag** | **Float** |  | [optional][default to HAS_INLINE_ATTACHMENTS_FLAG::N0] |
| **has_real_attachments_flag** | **Float** |  | [optional][default to HAS_REAL_ATTACHMENTS_FLAG::N0] |
| **deleted_flag** | **Float** |  | [optional][default to DELETED_FLAG::N0] |
| **synced_flag** | **Float** |  | [optional][default to SYNCED_FLAG::N0] |
| **smart_bcc_flag** | **Float** |  | [optional][default to SMART_BCC_FLAG::N0] |
| **mail_link_tracking_enabled_flag** | **Float** |  | [optional][default to MAIL_LINK_TRACKING_ENABLED_FLAG::N0] |
| **parties** | [**BaseMailThreadAllOfParties**](BaseMailThreadAllOfParties.md) |  | [optional] |
| **drafts_parties** | **Array&lt;Object&gt;** | Parties of the drafted mail thread | [optional] |
| **folders** | **Array&lt;String&gt;** | Folders in which messages from thread are being stored | [optional] |
| **version** | **Float** | Version | [optional] |
| **snippet_draft** | **String** | A snippet from a draft | [optional] |
| **snippet_sent** | **String** | A snippet from a message sent | [optional] |
| **message_count** | **Integer** | An amount of messages | [optional] |
| **has_draft_flag** | **Float** |  | [optional][default to HAS_DRAFT_FLAG::N0] |
| **has_sent_flag** | **Float** |  | [optional][default to HAS_SENT_FLAG::N0] |
| **archived_flag** | **Float** |  | [optional][default to ARCHIVED_FLAG::N0] |
| **shared_flag** | **Float** |  | [optional][default to SHARED_FLAG::N0] |
| **external_deleted_flag** | **Float** |  | [optional][default to EXTERNAL_DELETED_FLAG::N0] |
| **first_message_to_me_flag** | **Float** |  | [optional][default to FIRST_MESSAGE_TO_ME_FLAG::N0] |
| **last_message_timestamp** | **Time** | Last message timestamp | [optional] |
| **first_message_timestamp** | **Time** | The time when the mail thread has had the first message received or created | [optional] |
| **last_message_sent_timestamp** | **Time** | The last time when the mail thread has had a message sent | [optional] |
| **last_message_received_timestamp** | **Time** | The last time when the mail thread has had a message received | [optional] |
| **add_time** | **Time** | The time when the mail thread was inserted to database | [optional] |
| **update_time** | **Time** | The time when the mail thread was updated in database received | [optional] |
| **deal_id** | **Integer** | The ID of the deal | [optional] |
| **deal_status** | **String** | Status of the deal | [optional] |
| **lead_id** | **String** | The ID of the lead | [optional] |
| **all_messages_sent_flag** | **Float** |  | [optional][default to ALL_MESSAGES_SENT_FLAG::N0] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::BaseMailThread1.new(
  id: null,
  account_id: null,
  user_id: null,
  subject: null,
  snippet: null,
  read_flag: null,
  mail_tracking_status: null,
  has_attachments_flag: null,
  has_inline_attachments_flag: null,
  has_real_attachments_flag: null,
  deleted_flag: null,
  synced_flag: null,
  smart_bcc_flag: null,
  mail_link_tracking_enabled_flag: null,
  parties: null,
  drafts_parties: null,
  folders: null,
  version: null,
  snippet_draft: null,
  snippet_sent: null,
  message_count: null,
  has_draft_flag: null,
  has_sent_flag: null,
  archived_flag: null,
  shared_flag: null,
  external_deleted_flag: null,
  first_message_to_me_flag: null,
  last_message_timestamp: null,
  first_message_timestamp: null,
  last_message_sent_timestamp: null,
  last_message_received_timestamp: null,
  add_time: null,
  update_time: null,
  deal_id: null,
  deal_status: null,
  lead_id: null,
  all_messages_sent_flag: null
)
```

