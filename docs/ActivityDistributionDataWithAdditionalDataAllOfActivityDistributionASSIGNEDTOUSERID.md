# OpenPipette::ActivityDistributionDataWithAdditionalDataAllOfActivityDistributionASSIGNEDTOUSERID

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **activities** | [**ActivityDistributionDataWithAdditionalDataAllOfActivityDistributionASSIGNEDTOUSERIDActivities**](ActivityDistributionDataWithAdditionalDataAllOfActivityDistributionASSIGNEDTOUSERIDActivities.md) |  | [optional] |
| **name** | **String** | The name of the user | [optional] |
| **activity_count** | **Integer** | The overall count of activities for the user | [optional] |
| **share** | **Integer** | The percentage of activities belongs to the user | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::ActivityDistributionDataWithAdditionalDataAllOfActivityDistributionASSIGNEDTOUSERID.new(
  activities: null,
  name: null,
  activity_count: null,
  share: null
)
```

