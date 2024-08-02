# OpenPipette::PersonsCollectionResponseObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the person | [optional] |
| **active_flag** | **Boolean** | Whether the person is active or not | [optional] |
| **owner_id** | **Integer** | The ID of the owner related to the person | [optional] |
| **org_id** | **Integer** | The ID of the organization related to the person | [optional] |
| **name** | **String** | The name of the person | [optional] |
| **email** | [**Array&lt;BasicPersonRequestEmailInner&gt;**](BasicPersonRequestEmailInner.md) | An email address as a string or an array of email objects related to the person. The structure of the array is as follows: &#x60;[{ \&quot;value\&quot;: \&quot;mail@example.com\&quot;, \&quot;primary\&quot;: \&quot;true\&quot;, \&quot;label\&quot;: \&quot;main\&quot; }]&#x60;. Please note that only &#x60;value&#x60; is required. | [optional] |
| **phone** | [**Array&lt;PersonItemAllOfPhoneInner&gt;**](PersonItemAllOfPhoneInner.md) | A phone number supplied as a string or an array of phone objects related to the person. The structure of the array is as follows: &#x60;[{ \&quot;value\&quot;: \&quot;12345\&quot;, \&quot;primary\&quot;: \&quot;true\&quot;, \&quot;label\&quot;: \&quot;mobile\&quot; }]&#x60;. Please note that only &#x60;value&#x60; is required. | [optional] |
| **update_time** | **String** | The last updated date and time of the person. Format: YYYY-MM-DD HH:MM:SS | [optional] |
| **delete_time** | **String** | The date and time this person was deleted. Format: YYYY-MM-DD HH:MM:SS | [optional] |
| **add_time** | **String** | The date and time when the person was added/created. Format: YYYY-MM-DD HH:MM:SS | [optional] |
| **visible_to** | **String** | The visibility group ID of who can see the person | [optional] |
| **picture_id** | **Integer** | The ID of the picture associated with the item | [optional] |
| **label** | **Integer** | The label assigned to the person | [optional] |
| **cc_email** | **String** | The BCC email associated with the person | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::PersonsCollectionResponseObject.new(
  id: null,
  active_flag: null,
  owner_id: null,
  org_id: null,
  name: null,
  email: null,
  phone: null,
  update_time: null,
  delete_time: null,
  add_time: null,
  visible_to: null,
  picture_id: null,
  label: null,
  cc_email: null
)
```

