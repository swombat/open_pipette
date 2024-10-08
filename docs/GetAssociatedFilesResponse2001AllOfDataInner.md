# OpenPipette::GetAssociatedFilesResponse2001AllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the file | [optional] |
| **product_id** | **Integer** | The ID of the product associated with the file | [optional] |
| **add_time** | **String** | The UTC date time when the file was uploaded. Format: YYYY-MM-DD HH:MM:SS | [optional] |
| **update_time** | **String** | The UTC date time when the file was last updated. Format: YYYY-MM-DD HH:MM:SS | [optional] |
| **file_name** | **String** | The original name of the file | [optional] |
| **file_size** | **Integer** | The size of the file in bytes | [optional] |
| **active_flag** | **Boolean** | Whether the user is active or not. | [optional] |
| **inline_flag** | **Boolean** | Whether the file was uploaded as inline or not | [optional] |
| **remote_location** | **String** | The location type to send the file to. Only googledrive is supported at the moment. | [optional] |
| **remote_id** | **String** | The ID of the remote item | [optional] |
| **s3_bucket** | **String** | The location of the cloud storage | [optional] |
| **product_name** | **String** | The name of the product associated with the file | [optional] |
| **url** | **String** | The URL to download the file | [optional] |
| **name** | **String** | The visible name of the file | [optional] |
| **description** | **String** | The description of the file | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetAssociatedFilesResponse2001AllOfDataInner.new(
  id: null,
  product_id: null,
  add_time: null,
  update_time: null,
  file_name: null,
  file_size: null,
  active_flag: null,
  inline_flag: null,
  remote_location: null,
  remote_id: null,
  s3_bucket: null,
  product_name: null,
  url: null,
  name: null,
  description: null
)
```

