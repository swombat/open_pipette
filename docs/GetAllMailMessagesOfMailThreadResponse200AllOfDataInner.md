# OpenPipette::GetAllMailMessagesOfMailThreadResponse200AllOfDataInner

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
| **from** | [**Array&lt;BaseMailThreadAllOfPartiesToInner&gt;**](BaseMailThreadAllOfPartiesToInner.md) | Senders of the mail thread | [optional] |
| **to** | [**Array&lt;BaseMailThreadAllOfPartiesToInner&gt;**](BaseMailThreadAllOfPartiesToInner.md) | Recipients of the mail thread | [optional] |
| **cc** | [**Array&lt;BaseMailThreadAllOfPartiesToInner&gt;**](BaseMailThreadAllOfPartiesToInner.md) | Participants of the Cc | [optional] |
| **bcc** | [**Array&lt;BaseMailThreadAllOfPartiesToInner&gt;**](BaseMailThreadAllOfPartiesToInner.md) | Participants of the Bcc | [optional] |
| **body_url** | **String** | A link to the mail thread message | [optional] |
| **mail_thread_id** | **Integer** | ID of the mail thread | [optional] |
| **draft** | **String** | If the mail message has a draft status then the value is the mail message object as JSON formatted string, otherwise &#x60;null&#x60;. | [optional] |
| **has_body_flag** | **Float** |  | [optional][default to HAS_BODY_FLAG::N0] |
| **sent_flag** | **Float** |  | [optional][default to SENT_FLAG::N0] |
| **sent_from_pipedrive_flag** | **Float** |  | [optional][default to SENT_FROM_PIPEDRIVE_FLAG::N0] |
| **message_time** | **Time** | The time when the mail message was received or created | [optional] |
| **add_time** | **Time** | The time when the mail message was inserted to database | [optional] |
| **update_time** | **Time** | The time when the mail message was updated in database received | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetAllMailMessagesOfMailThreadResponse200AllOfDataInner.new(
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
  from: null,
  to: null,
  cc: null,
  bcc: null,
  body_url: null,
  mail_thread_id: null,
  draft: null,
  has_body_flag: null,
  sent_flag: null,
  sent_from_pipedrive_flag: null,
  message_time: null,
  add_time: null,
  update_time: null
)
```

