# OpenPipette::GetNoteFieldsResponse200AllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the field | [optional] |
| **key** | **String** | The key of the field | [optional] |
| **name** | **String** | The name of the field | [optional] |
| **field_type** | **String** | The type of the field&lt;table&gt;&lt;tr&gt;&lt;th&gt;Value&lt;/th&gt;&lt;th&gt;Description&lt;/th&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;address&#x60;&lt;/td&gt;&lt;td&gt;Address field&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;date&#x60;&lt;/td&gt;&lt;td&gt;Date (format YYYY-MM-DD)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;daterange&#x60;&lt;/td&gt;&lt;td&gt;Date-range field (has a start date and end date value, both YYYY-MM-DD)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;double&#x60;&lt;/td&gt;&lt;td&gt;Numeric value&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;enum&#x60;&lt;/td&gt;&lt;td&gt;Options field with a single possible chosen option&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;monetary&#x60;&lt;/td&gt;&lt;td&gt;Monetary field (has a numeric value and a currency value)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;org&#x60;&lt;/td&gt;&lt;td&gt;Organization field (contains an organization ID which is stored on the same account)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;people&#x60;&lt;/td&gt;&lt;td&gt;Person field (contains a person ID which is stored on the same account)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;phone&#x60;&lt;/td&gt;&lt;td&gt;Phone field (up to 255 numbers and/or characters)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;set&#x60;&lt;/td&gt;&lt;td&gt;Options field with a possibility of having multiple chosen options&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;text&#x60;&lt;/td&gt;&lt;td&gt;Long text (up to 65k characters)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;time&#x60;&lt;/td&gt;&lt;td&gt;Time field (format HH:MM:SS)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;timerange&#x60;&lt;/td&gt;&lt;td&gt;Time-range field (has a start time and end time value, both HH:MM:SS)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;user&#x60;&lt;/td&gt;&lt;td&gt;User field (contains a user ID of another Pipedrive user)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;varchar&#x60;&lt;/td&gt;&lt;td&gt;Text (up to 255 characters)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;varchar_auto&#x60;&lt;/td&gt;&lt;td&gt;Autocomplete text (up to 255 characters)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&#x60;visible_to&#x60;&lt;/td&gt;&lt;td&gt;System field that keeps item&#39;s visibility setting&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt; | [optional] |
| **active_flag** | **Boolean** | The active flag of the field | [optional] |
| **edit_flag** | **Boolean** | The edit flag of the field | [optional] |
| **bulk_edit_allowed** | **Boolean** | Not used | [optional] |
| **mandatory_flag** | **Boolean** | Whether or not the field is mandatory | [optional] |
| **options** | [**Array&lt;GetNoteFieldsResponse200AllOfDataInnerOptionsInner&gt;**](GetNoteFieldsResponse200AllOfDataInnerOptionsInner.md) | The options of the field. When there are no options, &#x60;null&#x60; is returned. | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetNoteFieldsResponse200AllOfDataInner.new(
  id: null,
  key: null,
  name: null,
  field_type: null,
  active_flag: null,
  edit_flag: null,
  bulk_edit_allowed: null,
  mandatory_flag: null,
  options: null
)
```

