# OpenPipette::GetWebhooksResponse200AllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the Webhook | [optional] |
| **company_id** | **Integer** | The ID of the company related to the Webhook | [optional] |
| **owner_id** | **Integer** | The ID of the user who owns the Webhook | [optional] |
| **user_id** | **Integer** | The ID of the user related to the Webhook | [optional] |
| **event_action** | **String** | The Webhook action | [optional] |
| **event_object** | **String** | The Webhook object | [optional] |
| **subscription_url** | **String** | The subscription URL of the Webhook | [optional] |
| **is_active** | **Float** |  | [optional][default to IS_ACTIVE::N1] |
| **add_time** | **Time** | The date when the Webhook was added | [optional] |
| **remove_time** | **Time** | The date when the Webhook was removed (if removed) | [optional] |
| **type** | **String** | The type of the Webhook | [optional] |
| **http_auth_user** | **String** | The username of the &#x60;subscription_url&#x60; of the Webhook | [optional] |
| **http_auth_password** | **String** | The password of the &#x60;subscription_url&#x60; of the Webhook | [optional] |
| **additional_data** | **Object** | Any additional data related to the Webhook | [optional] |
| **remove_reason** | **String** | The removal reason of the Webhook (if removed) | [optional] |
| **last_delivery_time** | **Time** | The last delivery time of the Webhook | [optional] |
| **last_http_status** | **Integer** | The last delivery HTTP status of the Webhook | [optional] |
| **admin_id** | **Integer** | The ID of the admin of the Webhook | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetWebhooksResponse200AllOfDataInner.new(
  id: null,
  company_id: null,
  owner_id: null,
  user_id: null,
  event_action: null,
  event_object: null,
  subscription_url: null,
  is_active: null,
  add_time: null,
  remove_time: null,
  type: null,
  http_auth_user: null,
  http_auth_password: null,
  additional_data: null,
  remove_reason: null,
  last_delivery_time: null,
  last_http_status: null,
  admin_id: null
)
```

