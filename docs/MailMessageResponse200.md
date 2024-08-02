# OpenPipette::MailMessageResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **status_code** | **Integer** | The email service specific status code and it is returned through the response body. | [optional] |
| **status_text** | **String** | The status text of the response. | [optional] |
| **service** | **String** | The service name of the response. | [optional] |
| **data** | [**MailMessageResponse200AllOfData**](MailMessageResponse200AllOfData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::MailMessageResponse200.new(
  success: null,
  status_code: null,
  status_text: null,
  service: null,
  data: null
)
```

