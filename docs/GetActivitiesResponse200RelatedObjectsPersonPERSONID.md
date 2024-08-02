# OpenPipette::GetActivitiesResponse200RelatedObjectsPersonPERSONID

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the person associated with the item | [optional] |
| **name** | **String** | The name of the person associated with the item | [optional] |
| **email** | [**Array&lt;GetActivitiesResponse200RelatedObjectsPersonPERSONIDAllOfEmailInner&gt;**](GetActivitiesResponse200RelatedObjectsPersonPERSONIDAllOfEmailInner.md) | The emails of the person associated with the item | [optional] |
| **phone** | [**Array&lt;GetActivitiesResponse200RelatedObjectsPersonPERSONIDAllOfPhoneInner&gt;**](GetActivitiesResponse200RelatedObjectsPersonPERSONIDAllOfPhoneInner.md) | The phone numbers of the person associated with the item | [optional] |
| **owner_id** | **Integer** | The ID of the owner of the person that is associated with the item | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetActivitiesResponse200RelatedObjectsPersonPERSONID.new(
  id: null,
  name: null,
  email: null,
  phone: null,
  owner_id: null
)
```

