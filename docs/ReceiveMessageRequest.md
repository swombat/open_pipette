# OpenPipette::ReceiveMessageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the message |  |
| **channel_id** | **String** | The channel ID as in the provider |  |
| **sender_id** | **String** | The ID of the provider&#39;s user that sent the message |  |
| **conversation_id** | **String** | The ID of the conversation |  |
| **message** | **String** | The body of the message |  |
| **status** | **String** | The status of the message |  |
| **created_at** | **Time** | The date and time when the message was created in the provider, in UTC. Format: YYYY-MM-DD HH:MM |  |
| **reply_by** | **Time** | The date and time when the message can no longer receive a reply, in UTC. Format: YYYY-MM-DD HH:MM | [optional] |
| **conversation_link** | **String** | A URL that can open the conversation in the provider&#39;s side | [optional] |
| **attachments** | [**Array&lt;ReceiveMessageRequestAttachmentsInner&gt;**](ReceiveMessageRequestAttachmentsInner.md) | The list of attachments available in the message | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::ReceiveMessageRequest.new(
  id: null,
  channel_id: null,
  sender_id: null,
  conversation_id: null,
  message: null,
  status: null,
  created_at: null,
  reply_by: null,
  conversation_link: null,
  attachments: null
)
```

