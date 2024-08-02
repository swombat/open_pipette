# OpenPipette::MailMessageResponse200AllOfData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the mail message. | [optional] |
| **from** | [**Array&lt;MailMessageItemForListAllOfFromInner&gt;**](MailMessageItemForListAllOfFromInner.md) | The array of mail message sender (object) | [optional] |
| **to** | [**Array&lt;MailMessageItemForListAllOfFromInner&gt;**](MailMessageItemForListAllOfFromInner.md) | The array of mail message receiver (object) | [optional] |
| **cc** | [**Array&lt;MailMessageItemForListAllOfFromInner&gt;**](MailMessageItemForListAllOfFromInner.md) | The array of mail message copies (object) | [optional] |
| **bcc** | [**Array&lt;MailMessageItemForListAllOfFromInner&gt;**](MailMessageItemForListAllOfFromInner.md) | The array of mail message blind copies (object) | [optional] |
| **body_url** | **String** | The mail message body URL | [optional] |
| **account_id** | **String** | The connection account ID | [optional] |
| **user_id** | **Integer** | ID of the user whom mail message will be assigned to | [optional] |
| **mail_thread_id** | **Integer** | ID of the mail message thread | [optional] |
| **subject** | **String** | The subject of mail message | [optional] |
| **snippet** | **String** | The snippet of mail message. Snippet length is up to 225 characters. | [optional] |
| **mail_tracking_status** | **String** | The status of tracking mail message. Value is &#x60;null&#x60; if tracking is not enabled. | [optional] |
| **mail_link_tracking_enabled_flag** | **Float** |  | [optional][default to MAIL_LINK_TRACKING_ENABLED_FLAG::N0] |
| **read_flag** | **Float** |  | [optional][default to READ_FLAG::N0] |
| **draft** | **String** | If the mail message has a draft status then the value is the mail message object as JSON formatted string, otherwise &#x60;null&#x60;. | [optional] |
| **draft_flag** | **Float** |  | [optional][default to DRAFT_FLAG::N0] |
| **synced_flag** | **Float** |  | [optional][default to SYNCED_FLAG::N0] |
| **deleted_flag** | **Float** |  | [optional][default to DELETED_FLAG::N0] |
| **has_body_flag** | **Float** |  | [optional][default to HAS_BODY_FLAG::N0] |
| **sent_flag** | **Float** |  | [optional][default to SENT_FLAG::N0] |
| **sent_from_pipedrive_flag** | **Float** |  | [optional][default to SENT_FROM_PIPEDRIVE_FLAG::N0] |
| **smart_bcc_flag** | **Float** |  | [optional][default to SMART_BCC_FLAG::N0] |
| **message_time** | **Time** | Creation or receival time of the mail message | [optional] |
| **add_time** | **Time** | The insertion into the database time of the mail message | [optional] |
| **update_time** | **Time** | The updating time in the database of the mail message | [optional] |
| **has_attachments_flag** | **Float** |  | [optional][default to HAS_ATTACHMENTS_FLAG::N0] |
| **has_inline_attachments_flag** | **Float** |  | [optional][default to HAS_INLINE_ATTACHMENTS_FLAG::N0] |
| **has_real_attachments_flag** | **Float** |  | [optional][default to HAS_REAL_ATTACHMENTS_FLAG::N0] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::MailMessageResponse200AllOfData.new(
  id: null,
  from: null,
  to: null,
  cc: null,
  bcc: null,
  body_url: null,
  account_id: null,
  user_id: null,
  mail_thread_id: null,
  subject: null,
  snippet: null,
  mail_tracking_status: null,
  mail_link_tracking_enabled_flag: null,
  read_flag: null,
  draft: null,
  draft_flag: null,
  synced_flag: null,
  deleted_flag: null,
  has_body_flag: null,
  sent_flag: null,
  sent_from_pipedrive_flag: null,
  smart_bcc_flag: null,
  message_time: null,
  add_time: null,
  update_time: null,
  has_attachments_flag: null,
  has_inline_attachments_flag: null,
  has_real_attachments_flag: null
)
```

