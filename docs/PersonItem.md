# OpenPipette::PersonItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the person | [optional] |
| **company_id** | **Integer** | The ID of the company related to the person | [optional] |
| **active_flag** | **Boolean** | Whether the person is active or not | [optional] |
| **phone** | [**Array&lt;PersonItemAllOfPhoneInner&gt;**](PersonItemAllOfPhoneInner.md) | A phone number supplied as a string or an array of phone objects related to the person. The structure of the array is as follows: &#x60;[{ \&quot;value\&quot;: \&quot;12345\&quot;, \&quot;primary\&quot;: \&quot;true\&quot;, \&quot;label\&quot;: \&quot;mobile\&quot; }]&#x60;. Please note that only &#x60;value&#x60; is required. | [optional] |
| **email** | [**Array&lt;PersonItemAllOfEmailInner&gt;**](PersonItemAllOfEmailInner.md) | An email address as a string or an array of email objects related to the person. The structure of the array is as follows: &#x60;[{ \&quot;value\&quot;: \&quot;mail@example.com\&quot;, \&quot;primary\&quot;: \&quot;true\&quot;, \&quot;label\&quot;: \&quot;main\&quot; } ]&#x60;. Please note that only &#x60;value&#x60; is required. | [optional] |
| **first_char** | **String** | The first letter of the name of the person | [optional] |
| **add_time** | **String** | The date and time when the person was added/created. Format: YYYY-MM-DD HH:MM:SS | [optional] |
| **update_time** | **String** | The last updated date and time of the person. Format: YYYY-MM-DD HH:MM:SS | [optional] |
| **visible_to** | **String** | The visibility group ID of who can see the person | [optional] |
| **picture_id** | [**PersonItemAllOfPictureId**](PersonItemAllOfPictureId.md) |  | [optional] |
| **label** | **Integer** | The label assigned to the person | [optional] |
| **org_name** | **String** | The name of the organization associated with the person | [optional] |
| **owner_name** | **String** | The name of the owner associated with the person | [optional] |
| **cc_email** | **String** | The BCC email associated with the person | [optional] |
| **owner_id** | [**Owner**](Owner.md) |  | [optional] |
| **org_id** | [**RelationshipOrganizationInfoItemWithActiveFlag**](RelationshipOrganizationInfoItemWithActiveFlag.md) |  | [optional] |
| **name** | **String** | The name of the person | [optional] |
| **first_name** | **String** | The first name of the person | [optional] |
| **last_name** | **String** | The last name of the person | [optional] |
| **email_messages_count** | **Integer** | The count of email messages related to the person | [optional] |
| **activities_count** | **Integer** | The count of activities related to the person | [optional] |
| **done_activities_count** | **Integer** | The count of done activities related to the person | [optional] |
| **undone_activities_count** | **Integer** | The count of undone activities related to the person | [optional] |
| **files_count** | **Integer** | The count of files related to the person | [optional] |
| **notes_count** | **Integer** | The count of notes related to the person | [optional] |
| **followers_count** | **Integer** | The count of followers related to the person | [optional] |
| **last_incoming_mail_time** | **String** | The date and time of the last incoming email associated with the person | [optional] |
| **last_outgoing_mail_time** | **String** | The date and time of the last outgoing email associated with the person | [optional] |
| **open_deals_count** | **Integer** | The count of open deals related with the item | [optional] |
| **related_open_deals_count** | **Integer** | The count of related open deals related with the item | [optional] |
| **closed_deals_count** | **Integer** | The count of closed deals related with the item | [optional] |
| **related_closed_deals_count** | **Integer** | The count of related closed deals related with the item | [optional] |
| **won_deals_count** | **Integer** | The count of won deals related with the item | [optional] |
| **related_won_deals_count** | **Integer** | The count of related won deals related with the item | [optional] |
| **lost_deals_count** | **Integer** | The count of lost deals related with the item | [optional] |
| **related_lost_deals_count** | **Integer** | The count of related lost deals related with the item | [optional] |
| **next_activity_date** | **String** | The date of the next activity associated with the deal | [optional] |
| **next_activity_time** | **String** | The time of the next activity associated with the deal | [optional] |
| **next_activity_id** | **Integer** | The ID of the next activity associated with the deal | [optional] |
| **last_activity_id** | **Integer** | The ID of the last activity associated with the deal | [optional] |
| **last_activity_date** | **String** | The date of the last activity associated with the deal | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::PersonItem.new(
  id: null,
  company_id: null,
  active_flag: null,
  phone: null,
  email: null,
  first_char: null,
  add_time: null,
  update_time: null,
  visible_to: null,
  picture_id: null,
  label: null,
  org_name: null,
  owner_name: null,
  cc_email: null,
  owner_id: null,
  org_id: null,
  name: null,
  first_name: null,
  last_name: null,
  email_messages_count: null,
  activities_count: null,
  done_activities_count: null,
  undone_activities_count: null,
  files_count: null,
  notes_count: null,
  followers_count: null,
  last_incoming_mail_time: null,
  last_outgoing_mail_time: null,
  open_deals_count: null,
  related_open_deals_count: null,
  closed_deals_count: null,
  related_closed_deals_count: null,
  won_deals_count: null,
  related_won_deals_count: null,
  lost_deals_count: null,
  related_lost_deals_count: null,
  next_activity_date: null,
  next_activity_time: null,
  next_activity_id: null,
  last_activity_id: null,
  last_activity_date: null
)
```

