# OpenPipette::BaseOrganizationItemWithEditNameFlag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the organization | [optional] |
| **company_id** | **Integer** | The ID of the company related to the organization | [optional] |
| **owner_id** | [**Owner**](Owner.md) |  | [optional] |
| **name** | **String** | The name of the organization | [optional] |
| **active_flag** | **Boolean** | Whether the organization is active or not | [optional] |
| **picture_id** | [**BaseOrganizationItemAllOfPictureId**](BaseOrganizationItemAllOfPictureId.md) |  | [optional] |
| **country_code** | **String** | The country code of the organization | [optional] |
| **first_char** | **String** | The first character of the organization name | [optional] |
| **add_time** | **String** | The creation date and time of the organization | [optional] |
| **update_time** | **String** | The last updated date and time of the organization | [optional] |
| **visible_to** | **String** | The visibility group ID of who can see the organization | [optional] |
| **label** | **Integer** | The label assigned to the organization | [optional] |
| **owner_name** | **String** | The name of the organization owner | [optional] |
| **cc_email** | **String** | The BCC email associated with the organization | [optional] |
| **email_messages_count** | **Integer** | The count of email messages related to the organization | [optional] |
| **people_count** | **Integer** | The count of persons related to the organization | [optional] |
| **activities_count** | **Integer** | The count of activities related to the organization | [optional] |
| **done_activities_count** | **Integer** | The count of done activities related to the organization | [optional] |
| **undone_activities_count** | **Integer** | The count of undone activities related to the organization | [optional] |
| **files_count** | **Integer** | The count of files related to the organization | [optional] |
| **notes_count** | **Integer** | The count of notes related to the organization | [optional] |
| **followers_count** | **Integer** | The count of followers related to the organization | [optional] |
| **address** | **String** | The full address of the organization | [optional] |
| **address_subpremise** | **String** | The sub-premise of the organization location | [optional] |
| **address_street_number** | **String** | The street number of the organization location | [optional] |
| **address_route** | **String** | The route of the organization location | [optional] |
| **address_sublocality** | **String** | The sub-locality of the organization location | [optional] |
| **address_locality** | **String** | The locality of the organization location | [optional] |
| **address_admin_area_level_1** | **String** | The level 1 admin area of the organization location | [optional] |
| **address_admin_area_level_2** | **String** | The level 2 admin area of the organization location | [optional] |
| **address_country** | **String** | The country of the organization location | [optional] |
| **address_postal_code** | **String** | The postal code of the organization location | [optional] |
| **address_formatted_address** | **String** | The formatted organization location | [optional] |
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
| **edit_name** | **Boolean** | If the company ID of the organization and company ID of the request is same or not | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::BaseOrganizationItemWithEditNameFlag.new(
  id: null,
  company_id: null,
  owner_id: null,
  name: null,
  active_flag: null,
  picture_id: null,
  country_code: null,
  first_char: null,
  add_time: null,
  update_time: null,
  visible_to: null,
  label: null,
  owner_name: null,
  cc_email: null,
  email_messages_count: null,
  people_count: null,
  activities_count: null,
  done_activities_count: null,
  undone_activities_count: null,
  files_count: null,
  notes_count: null,
  followers_count: null,
  address: null,
  address_subpremise: null,
  address_street_number: null,
  address_route: null,
  address_sublocality: null,
  address_locality: null,
  address_admin_area_level_1: null,
  address_admin_area_level_2: null,
  address_country: null,
  address_postal_code: null,
  address_formatted_address: null,
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
  last_activity_date: null,
  edit_name: null
)
```

