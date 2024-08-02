# OpenPipette::FieldsResponse200AllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the field. Value is &#x60;null&#x60; in case of subfields. | [optional] |
| **key** | **String** | The key of the field. For custom fields this is generated upon creation. | [optional] |
| **name** | **String** | The name of the field | [optional] |
| **order_nr** | **Integer** | The order number of the field | [optional] |
| **field_type** | **String** | The type of the field&lt;table&gt;&lt;tr&gt;&lt;th&gt;Value&lt;/th&gt;&lt;th&gt;Description&lt;/th&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;address&#x60;&lt;/td&gt;&lt;td&gt;Address field&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;date&#x60;&lt;/td&gt;&lt;td&gt;Date (format YYYY-MM-DD)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;daterange&#x60;&lt;/td&gt;&lt;td&gt;Date-range field (has a start date and end date value, both YYYY-MM-DD)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;double&#x60;&lt;/td&gt;&lt;td&gt;Numeric value&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;enum&#x60;&lt;/td&gt;&lt;td&gt;Options field with a single possible chosen option&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;monetary&#x60;&lt;/td&gt;&lt;td&gt;Monetary field (has a numeric value and a currency value)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;org&#x60;&lt;/td&gt;&lt;td&gt;Organization field (contains an organization ID which is stored on the same account)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;people&#x60;&lt;/td&gt;&lt;td&gt;Person field (contains a person ID which is stored on the same account)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;phone&#x60;&lt;/td&gt;&lt;td&gt;Phone field (up to 255 numbers and/or characters)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;set&#x60;&lt;/td&gt;&lt;td&gt;Options field with a possibility of having multiple chosen options&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;text&#x60;&lt;/td&gt;&lt;td&gt;Long text (up to 65k characters)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;time&#x60;&lt;/td&gt;&lt;td&gt;Time field (format HH:MM:SS)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;timerange&#x60;&lt;/td&gt;&lt;td&gt;Time-range field (has a start time and end time value, both HH:MM:SS)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;user&#x60;&lt;/td&gt;&lt;td&gt;User field (contains a user ID of another Pipedrive user)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;varchar&#x60;&lt;/td&gt;&lt;td&gt;Text (up to 255 characters)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;varchar_auto&#x60;&lt;/td&gt;&lt;td&gt;Autocomplete text (up to 255 characters)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;visible_to&#x60;&lt;/td&gt;&lt;td&gt;System field that keeps item&#39;s visibility setting&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt; | [optional] |
| **add_time** | **Time** | The creation time of the field | [optional] |
| **update_time** | **Time** | The update time of the field | [optional] |
| **last_updated_by_user_id** | **Integer** | The ID of the user who created or most recently updated the field, only applicable for custom fields | [optional] |
| **created_by_user_id** | **Integer** | The ID of the user who created the field | [optional] |
| **active_flag** | **Boolean** | The active flag of the field | [optional] |
| **edit_flag** | **Boolean** | The edit flag of the field | [optional] |
| **index_visible_flag** | **Boolean** | Not used | [optional] |
| **details_visible_flag** | **Boolean** | Not used | [optional] |
| **add_visible_flag** | **Boolean** | Not used | [optional] |
| **important_flag** | **Boolean** | Not used | [optional] |
| **bulk_edit_allowed** | **Boolean** | Whether or not the field of an item can be edited in bulk | [optional] |
| **searchable_flag** | **Boolean** | Whether or not items can be searched by this field | [optional] |
| **filtering_allowed** | **Boolean** | Whether or not items can be filtered by this field | [optional] |
| **sortable_flag** | **Boolean** | Whether or not items can be sorted by this field | [optional] |
| **mandatory_flag** | **Boolean** | Whether or not the field is mandatory | [optional] |
| **options** | **Array&lt;Object&gt;** | The options of the field. When there are no options, &#x60;null&#x60; is returned. | [optional] |
| **options_deleted** | **Array&lt;Object&gt;** | The deleted options of the field. Only present when there is at least 1 deleted option. | [optional] |
| **is_subfield** | **Boolean** | Whether or not the field is a subfield of another field. Only present if field is subfield. | [optional] |
| **subfields** | **Array&lt;Object&gt;** | The subfields of the field. Only present when the field has subfields. | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::FieldsResponse200AllOfDataInner.new(
  id: null,
  key: null,
  name: null,
  order_nr: null,
  field_type: null,
  add_time: null,
  update_time: null,
  last_updated_by_user_id: null,
  created_by_user_id: null,
  active_flag: null,
  edit_flag: null,
  index_visible_flag: null,
  details_visible_flag: null,
  add_visible_flag: null,
  important_flag: null,
  bulk_edit_allowed: null,
  searchable_flag: null,
  filtering_allowed: null,
  sortable_flag: null,
  mandatory_flag: null,
  options: null,
  options_deleted: null,
  is_subfield: null,
  subfields: null
)
```

