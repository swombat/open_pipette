# OpenPipette::GetFilesResponse200DataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the file | [optional] |
| **user_id** | **Integer** | The ID of the user to associate the file with | [optional] |
| **deal_id** | **Integer** | The ID of the deal to associate the file with | [optional] |
| **person_id** | **Integer** | The ID of the person to associate the file with | [optional] |
| **org_id** | **Integer** | The ID of the organization to associate the file with | [optional] |
| **product_id** | **Integer** | The ID of the product to associate the file with | [optional] |
| **activity_id** | **Integer** | The ID of the activity to associate the file with | [optional] |
| **lead_id** | **String** | The ID of the lead to associate the file with | [optional] |
| **add_time** | **String** | The date and time when the file was added/created. Format: YYYY-MM-DD HH:MM:SS | [optional] |
| **update_time** | **String** | The last updated date and time of the file. Format: YYYY-MM-DD HH:MM:SS | [optional] |
| **file_name** | **String** | The original name of the file | [optional] |
| **file_size** | **Integer** | The size of the file | [optional] |
| **active_flag** | **Boolean** | Whether the user is active or not. false &#x3D; Not activated, true &#x3D; Activated | [optional] |
| **inline_flag** | **Boolean** | Whether the file was uploaded as inline or not | [optional] |
| **remote_location** | **String** | The location type to send the file to. Only googledrive is supported at the moment. | [optional] |
| **remote_id** | **String** | The ID of the remote item | [optional] |
| **cid** | **String** | The ID of the inline attachment | [optional] |
| **s3_bucket** | **String** | The location of the cloud storage | [optional] |
| **mail_message_id** | **String** | The ID of the mail message to associate the file with | [optional] |
| **mail_template_id** | **String** | The ID of the mail template to associate the file with | [optional] |
| **deal_name** | **String** | The name of the deal associated with the file | [optional] |
| **person_name** | **String** | The name of the person associated with the file | [optional] |
| **org_name** | **String** | The name of the organization associated with the file | [optional] |
| **product_name** | **String** | The name of the product associated with the file | [optional] |
| **lead_name** | **String** | The name of the lead associated with the file | [optional] |
| **url** | **String** | The URL of the download file | [optional] |
| **name** | **String** | The visible name of the file | [optional] |
| **description** | **String** | The description of the file | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetFilesResponse200DataInner.new(
  id: null,
  user_id: null,
  deal_id: null,
  person_id: null,
  org_id: null,
  product_id: null,
  activity_id: null,
  lead_id: null,
  add_time: null,
  update_time: null,
  file_name: null,
  file_size: null,
  active_flag: null,
  inline_flag: null,
  remote_location: null,
  remote_id: null,
  cid: null,
  s3_bucket: null,
  mail_message_id: null,
  mail_template_id: null,
  deal_name: null,
  person_name: null,
  org_name: null,
  product_name: null,
  lead_name: null,
  url: null,
  name: null,
  description: null
)
```

