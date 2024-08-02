# OpenPipette::GetTokensResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** | You need to use an &#x60;access_token&#x60; for accessing the user&#39;s data via API. You will need to [refresh the access token](https://pipedrive.readme.io/docs/marketplace-oauth-authorization#step-7-refreshing-the-tokens) if the &#x60;access_token&#x60; becomes invalid. | [optional] |
| **token_type** | **String** | The format of the token. Always \&quot;Bearer\&quot;. | [optional] |
| **refresh_token** | **String** | A refresh token is needed when you refresh the access token. refresh_token will expire if it isn&#39;t used in 60 days. Each time refresh_token is used, its expiry date is reset back to 60 days. | [optional] |
| **scope** | **String** | List of scopes to which users have agreed to grant access within this &#x60;access_token&#x60; | [optional] |
| **expires_in** | **Integer** | The maximum time in seconds until the &#x60;access_token&#x60; expires | [optional] |
| **api_domain** | **String** | The base URL path, including the company_domain, where the requests can be sent to | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetTokensResponse200.new(
  access_token: null,
  token_type: null,
  refresh_token: null,
  scope: null,
  expires_in: null,
  api_domain: null
)
```

