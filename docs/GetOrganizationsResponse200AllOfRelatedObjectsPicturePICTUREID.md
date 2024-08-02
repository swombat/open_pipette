# OpenPipette::GetOrganizationsResponse200AllOfRelatedObjectsPicturePICTUREID

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the picture associated with the item | [optional] |
| **item_type** | **String** | The type of item the picture is related to | [optional] |
| **item_id** | **Integer** | The ID of related item | [optional] |
| **active_flag** | **Boolean** | Whether the associated picture is active or not | [optional] |
| **add_time** | **String** | The add time of the picture | [optional] |
| **update_time** | **String** | The update time of the picture | [optional] |
| **added_by_user_id** | **Integer** | The ID of the user who added the picture | [optional] |
| **pictures** | [**PersonItemAllOfPictureIdAllOfPictures**](PersonItemAllOfPictureIdAllOfPictures.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetOrganizationsResponse200AllOfRelatedObjectsPicturePICTUREID.new(
  id: null,
  item_type: null,
  item_id: null,
  active_flag: null,
  add_time: null,
  update_time: null,
  added_by_user_id: null,
  pictures: null
)
```

