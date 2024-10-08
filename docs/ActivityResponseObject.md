# OpenPipette::ActivityResponseObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **due_date** | **Date** | The due date of the activity. Format: YYYY-MM-DD | [optional] |
| **due_time** | **String** | The due time of the activity in UTC. Format: HH:MM | [optional] |
| **duration** | **String** | The duration of the activity. Format: HH:MM | [optional] |
| **deal_id** | **Integer** | The ID of the deal this activity is associated with | [optional] |
| **lead_id** | **String** | The ID of the lead in the UUID format this activity is associated with | [optional] |
| **person_id** | **Integer** | The ID of the person this activity is associated with | [optional] |
| **project_id** | **Integer** | The ID of the project this activity is associated with | [optional] |
| **org_id** | **Integer** | The ID of the organization this activity is associated with | [optional] |
| **location** | **String** | The address of the activity. | [optional] |
| **public_description** | **String** | Additional details about the activity that is synced to your external calendar. Unlike the note added to the activity, the description is publicly visible to any guests added to the activity. | [optional] |
| **id** | **Integer** | The ID of the activity, generated when the activity was created | [optional] |
| **note** | **String** | The note of the activity (HTML format) | [optional] |
| **done** | **Boolean** | Whether the activity is done or not | [optional] |
| **subject** | **String** | The subject of the activity | [optional] |
| **type** | **String** | The type of the activity. This is in correlation with the &#x60;key_string&#x60; parameter of ActivityTypes. | [optional] |
| **user_id** | **Integer** | The ID of the user whom the activity is assigned to | [optional] |
| **participants** | **Array&lt;Object&gt;** | List of multiple persons (participants) this activity is associated with | [optional] |
| **busy_flag** | **Boolean** | Marks if the activity is set as &#39;Busy&#39; or &#39;Free&#39;. If the flag is set to &#x60;true&#x60;, your customers will not be able to book that time slot through any Scheduler links. The flag can also be unset. When the value of the flag is unset (&#x60;null&#x60;), the flag defaults to &#39;Busy&#39; if it has a time set, and &#39;Free&#39; if it is an all-day event without specified time. | [optional] |
| **attendees** | **Array&lt;Object&gt;** | The attendees of the activity. This can be either your existing Pipedrive contacts or an external email address. | [optional] |
| **company_id** | **Integer** | The user&#39;s company ID | [optional] |
| **reference_type** | **String** | If the activity references some other object, it is indicated here. For example, value &#x60;Salesphone&#x60; refers to activities created with Caller. | [optional] |
| **reference_id** | **Integer** | Together with the &#x60;reference_type&#x60;, gives the ID of the other object | [optional] |
| **conference_meeting_client** | **String** | The ID of the Marketplace app, which is connected to this activity | [optional] |
| **conference_meeting_url** | **String** | The link to join the meeting which is associated with this activity | [optional] |
| **conference_meeting_id** | **String** | The meeting ID of the meeting provider (Zoom, MS Teams etc.) that is associated with this activity | [optional] |
| **add_time** | **String** | The creation date and time of the activity in UTC. Format: YYYY-MM-DD HH:MM:SS. | [optional] |
| **marked_as_done_time** | **String** | The date and time this activity was marked as done. Format: YYYY-MM-DD HH:MM:SS. | [optional] |
| **last_notification_time** | **String** | The date and time of latest notifications sent about this activity to the participants or the attendees of this activity | [optional] |
| **last_notification_user_id** | **Integer** | The ID of the user who triggered the sending of the latest notifications about this activity to the participants or the attendees of this activity | [optional] |
| **notification_language_id** | **Integer** | The ID of the language the notifications are sent in | [optional] |
| **active_flag** | **Boolean** | Whether the activity is active or not | [optional] |
| **update_time** | **String** | The last update date and time of the activity. Format: YYYY-MM-DD HH:MM:SS. | [optional] |
| **update_user_id** | **Integer** | The ID of the user who was the last to update this activity | [optional] |
| **gcal_event_id** | **String** | For the activity which syncs to Google calendar, this is the Google event ID. NB! This field is related to old Google calendar sync and will be deprecated soon. | [optional] |
| **google_calendar_id** | **String** | The Google calendar ID that this activity syncs to. NB! This field is related to old Google calendar sync and will be deprecated soon. | [optional] |
| **google_calendar_etag** | **String** | The Google calendar API etag (version) that is used for syncing this activity. NB! This field is related to old Google calendar sync and will be deprecated soon. | [optional] |
| **calendar_sync_include_context** | **String** | For activities that sync to an external calendar, this setting indicates if the activity syncs with context (what are the deals, persons, organizations this activity is related to) | [optional] |
| **source_timezone** | **String** | The timezone the activity was created in an external calendar | [optional] |
| **rec_rule** | **String** | The rule for the recurrence of the activity. Is important for activities synced into Pipedrive from an external calendar. Example: \&quot;RRULE:FREQ&#x3D;WEEKLY;BYDAY&#x3D;WE\&quot; | [optional] |
| **rec_rule_extension** | **String** | Additional rules for the recurrence of the activity, extend the &#x60;rec_rule&#x60;. Is important for activities synced into Pipedrive from an external calendar. | [optional] |
| **rec_master_activity_id** | **Integer** | The ID of parent activity for a recurrent activity if the current activity is an exception to recurrence rules | [optional] |
| **series** | **Array&lt;Object&gt;** | The list of recurring activity instances. It is in a structure as follows: &#x60;[{due_date: \&quot;2020-06-24\&quot;, due_time: \&quot;10:00:00\&quot;}]&#x60; | [optional] |
| **created_by_user_id** | **Integer** | The ID of the user who created the activity | [optional] |
| **location_subpremise** | **String** | A subfield of the location field. Indicates apartment/suite number. | [optional] |
| **location_street_number** | **String** | A subfield of the location field. Indicates house number. | [optional] |
| **location_route** | **String** | A subfield of the location field. Indicates street name. | [optional] |
| **location_sublocality** | **String** | A subfield of the location field. Indicates district/sublocality. | [optional] |
| **location_locality** | **String** | A subfield of the location field. Indicates city/town/village/locality. | [optional] |
| **location_admin_area_level_1** | **String** | A subfield of the location field. Indicates state/county. | [optional] |
| **location_admin_area_level_2** | **String** | A subfield of the location field. Indicates region. | [optional] |
| **location_country** | **String** | A subfield of the location field. Indicates country. | [optional] |
| **location_postal_code** | **String** | A subfield of the location field. Indicates ZIP/postal code. | [optional] |
| **location_formatted_address** | **String** | A subfield of the location field. Indicates full/combined address. | [optional] |
| **org_name** | **String** | The name of the organization this activity is associated with | [optional] |
| **person_name** | **String** | The name of the person this activity is associated with | [optional] |
| **deal_title** | **String** | The name of the deal this activity is associated with | [optional] |
| **owner_name** | **String** | The name of the user this activity is owned by | [optional] |
| **person_dropbox_bcc** | **String** | The BCC email address of the person | [optional] |
| **deal_dropbox_bcc** | **String** | The BCC email address of the deal | [optional] |
| **assigned_to_user_id** | **Integer** | The ID of the user to whom the activity is assigned to. Equal to &#x60;user_id&#x60;. | [optional] |
| **file** | **Object** | The file that is attached to this activity. For example, this can be a reference to an audio note file generated with Pipedrive mobile app. | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::ActivityResponseObject.new(
  due_date: null,
  due_time: null,
  duration: null,
  deal_id: null,
  lead_id: null,
  person_id: null,
  project_id: null,
  org_id: null,
  location: null,
  public_description: null,
  id: null,
  note: null,
  done: null,
  subject: null,
  type: null,
  user_id: null,
  participants: null,
  busy_flag: null,
  attendees: null,
  company_id: null,
  reference_type: null,
  reference_id: null,
  conference_meeting_client: null,
  conference_meeting_url: null,
  conference_meeting_id: null,
  add_time: null,
  marked_as_done_time: null,
  last_notification_time: null,
  last_notification_user_id: null,
  notification_language_id: null,
  active_flag: null,
  update_time: null,
  update_user_id: null,
  gcal_event_id: null,
  google_calendar_id: null,
  google_calendar_etag: null,
  calendar_sync_include_context: null,
  source_timezone: null,
  rec_rule: null,
  rec_rule_extension: null,
  rec_master_activity_id: null,
  series: null,
  created_by_user_id: null,
  location_subpremise: null,
  location_street_number: null,
  location_route: null,
  location_sublocality: null,
  location_locality: null,
  location_admin_area_level_1: null,
  location_admin_area_level_2: null,
  location_country: null,
  location_postal_code: null,
  location_formatted_address: null,
  org_name: null,
  person_name: null,
  deal_title: null,
  owner_name: null,
  person_dropbox_bcc: null,
  deal_dropbox_bcc: null,
  assigned_to_user_id: null,
  file: null
)
```

