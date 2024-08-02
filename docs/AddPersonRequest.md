# OpenPipette::AddPersonRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the person |  |
| **owner_id** | **Integer** | The ID of the user who will be marked as the owner of this person. When omitted, the authorized user ID will be used. | [optional] |
| **org_id** | **Integer** | The ID of the organization this person will belong to | [optional] |
| **email** | [**Array&lt;BasicPersonRequestEmailInner&gt;**](BasicPersonRequestEmailInner.md) | An email address as a string or an array of email objects related to the person. The structure of the array is as follows: &#x60;[{ \&quot;value\&quot;: \&quot;mail@example.com\&quot;, \&quot;primary\&quot;: \&quot;true\&quot;, \&quot;label\&quot;: \&quot;main\&quot; }]&#x60;. Please note that only &#x60;value&#x60; is required. | [optional] |
| **phone** | [**Array&lt;PersonItemAllOfPhoneInner&gt;**](PersonItemAllOfPhoneInner.md) | A phone number supplied as a string or an array of phone objects related to the person. The structure of the array is as follows: &#x60;[{ \&quot;value\&quot;: \&quot;12345\&quot;, \&quot;primary\&quot;: \&quot;true\&quot;, \&quot;label\&quot;: \&quot;mobile\&quot; }]&#x60;. Please note that only &#x60;value&#x60; is required. | [optional] |
| **label** | **Integer** | The ID of the label. | [optional] |
| **visible_to** | **String** |  | [optional] |
| **marketing_status** | **String** |  | [optional] |
| **add_time** | **String** | The optional creation date &amp; time of the person in UTC. Format: YYYY-MM-DD HH:MM:SS | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddPersonRequest.new(
  name: null,
  owner_id: null,
  org_id: null,
  email: null,
  phone: null,
  label: null,
  visible_to: null,
  marketing_status: null,
  add_time: null
)
```

