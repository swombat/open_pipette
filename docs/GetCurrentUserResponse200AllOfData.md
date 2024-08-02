# OpenPipette::GetCurrentUserResponse200AllOfData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The user ID | [optional] |
| **name** | **String** | The user name | [optional] |
| **default_currency** | **String** | The user default currency | [optional] |
| **locale** | **String** | The user locale | [optional] |
| **lang** | **Integer** | The user language ID | [optional] |
| **email** | **String** | The user email | [optional] |
| **phone** | **String** | The user phone | [optional] |
| **activated** | **Boolean** | Boolean that indicates whether the user is activated | [optional] |
| **last_login** | **String** | The last login date and time of the user. Format: YYYY-MM-DD HH:MM:SS | [optional] |
| **created** | **String** | The creation date and time of the user. Format: YYYY-MM-DD HH:MM:SS | [optional] |
| **modified** | **String** | The last modification date and time of the user. Format: YYYY-MM-DD HH:MM:SS | [optional] |
| **has_created_company** | **Boolean** | Boolean that indicates whether the user has created a company | [optional] |
| **access** | [**Array&lt;GetRecentsResponse200DataInnerAnyOf11DataAccessInner&gt;**](GetRecentsResponse200DataInnerAnyOf11DataAccessInner.md) |  | [optional] |
| **active_flag** | **Boolean** | Boolean that indicates whether the user is activated | [optional] |
| **timezone_name** | **String** | The user timezone name | [optional] |
| **timezone_offset** | **String** | The user timezone offset | [optional] |
| **role_id** | **Integer** | The ID of the user role | [optional] |
| **icon_url** | **String** | The user icon URL | [optional] |
| **is_you** | **Boolean** | Boolean that indicates if the requested user is the same which is logged in (in this case, always true) | [optional] |
| **is_deleted** | **Boolean** | Boolean that indicates whether the user is deleted from the company | [optional] |
| **company_id** | **Integer** | The user company ID | [optional] |
| **company_name** | **String** | The user company name | [optional] |
| **company_domain** | **String** | The user company domain | [optional] |
| **company_country** | **String** | The user company country | [optional] |
| **company_industry** | **String** | The user company industry | [optional] |
| **language** | [**GetCurrentUserResponse200AllOfDataAllOfLanguage**](GetCurrentUserResponse200AllOfDataAllOfLanguage.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetCurrentUserResponse200AllOfData.new(
  id: null,
  name: null,
  default_currency: null,
  locale: null,
  lang: null,
  email: null,
  phone: null,
  activated: null,
  last_login: null,
  created: null,
  modified: null,
  has_created_company: null,
  access: null,
  active_flag: null,
  timezone_name: null,
  timezone_offset: null,
  role_id: null,
  icon_url: null,
  is_you: null,
  is_deleted: null,
  company_id: null,
  company_name: null,
  company_domain: null,
  company_country: null,
  company_industry: null,
  language: null
)
```

