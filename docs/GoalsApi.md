# OpenPipette::GoalsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_goal**](GoalsApi.md#add_goal) | **POST** /goals | Add a new goal |
| [**delete_goal**](GoalsApi.md#delete_goal) | **DELETE** /goals/{id} | Delete existing goal |
| [**get_goal_result**](GoalsApi.md#get_goal_result) | **GET** /goals/{id}/results | Get result of a goal |
| [**get_goals**](GoalsApi.md#get_goals) | **GET** /goals/find | Find goals |
| [**update_goal**](GoalsApi.md#update_goal) | **PUT** /goals/{id} | Update existing goal |


## add_goal

> <AddOrUpdateGoalResponse200> add_goal(opts)

Add a new goal

Adds a new goal. Along with adding a new goal, a report is created to track the progress of your goal.

### Examples

```ruby
require 'time'
require 'open_pipette'
# setup authorization
OpenPipette.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenPipette::GoalsApi.new
opts = {
  add_goal_request: OpenPipette::AddGoalRequest.new({assignee: 3.56, type: 3.56, expected_outcome: 3.56, duration: 3.56, interval: 'weekly'}) # AddGoalRequest | 
}

begin
  # Add a new goal
  result = api_instance.add_goal(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling GoalsApi->add_goal: #{e}"
end
```

#### Using the add_goal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddOrUpdateGoalResponse200>, Integer, Hash)> add_goal_with_http_info(opts)

```ruby
begin
  # Add a new goal
  data, status_code, headers = api_instance.add_goal_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddOrUpdateGoalResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling GoalsApi->add_goal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_goal_request** | [**AddGoalRequest**](AddGoalRequest.md) |  | [optional] |

### Return type

[**AddOrUpdateGoalResponse200**](AddOrUpdateGoalResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_goal

> <DeleteGoalResponse200> delete_goal(id)

Delete existing goal

Marks a goal as deleted.

### Examples

```ruby
require 'time'
require 'open_pipette'
# setup authorization
OpenPipette.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenPipette::GoalsApi.new
id = 'id_example' # String | The ID of the goal

begin
  # Delete existing goal
  result = api_instance.delete_goal(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling GoalsApi->delete_goal: #{e}"
end
```

#### Using the delete_goal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteGoalResponse200>, Integer, Hash)> delete_goal_with_http_info(id)

```ruby
begin
  # Delete existing goal
  data, status_code, headers = api_instance.delete_goal_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteGoalResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling GoalsApi->delete_goal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the goal |  |

### Return type

[**DeleteGoalResponse200**](DeleteGoalResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_goal_result

> <GetGoalResultResponse200> get_goal_result(id, period_start, period_end)

Get result of a goal

Gets the progress of a goal for the specified period.

### Examples

```ruby
require 'time'
require 'open_pipette'
# setup authorization
OpenPipette.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenPipette::GoalsApi.new
id = 'id_example' # String | The ID of the goal that the results are looked for
period_start = Date.parse('2013-10-20') # Date | The start date of the period for which to find the goal's progress. Format: YYYY-MM-DD. This date must be the same or after the goal duration start date. 
period_end = Date.parse('2013-10-20') # Date | The end date of the period for which to find the goal's progress. Format: YYYY-MM-DD. This date must be the same or before the goal duration end date. 

begin
  # Get result of a goal
  result = api_instance.get_goal_result(id, period_start, period_end)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling GoalsApi->get_goal_result: #{e}"
end
```

#### Using the get_goal_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetGoalResultResponse200>, Integer, Hash)> get_goal_result_with_http_info(id, period_start, period_end)

```ruby
begin
  # Get result of a goal
  data, status_code, headers = api_instance.get_goal_result_with_http_info(id, period_start, period_end)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetGoalResultResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling GoalsApi->get_goal_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the goal that the results are looked for |  |
| **period_start** | **Date** | The start date of the period for which to find the goal&#39;s progress. Format: YYYY-MM-DD. This date must be the same or after the goal duration start date.  |  |
| **period_end** | **Date** | The end date of the period for which to find the goal&#39;s progress. Format: YYYY-MM-DD. This date must be the same or before the goal duration end date.  |  |

### Return type

[**GetGoalResultResponse200**](GetGoalResultResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_goals

> <GetGoalsResponse200> get_goals(opts)

Find goals

Returns data about goals based on criteria. For searching, append `{searchField}={searchValue}` to the URL, where `searchField` can be any one of the lowest-level fields in dot-notation (e.g. `type.params.pipeline_id`; `title`). `searchValue` should be the value you are looking for on that field. Additionally, `is_active=<true|false>` can be provided to search for only active/inactive goals. When providing `period.start`, `period.end` must also be provided and vice versa.

### Examples

```ruby
require 'time'
require 'open_pipette'
# setup authorization
OpenPipette.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenPipette::GoalsApi.new
opts = {
  type_name: 'deals_won', # String | The type of the goal. If provided, everyone's goals will be returned.
  title: 'title_example', # String | The title of the goal
  is_active: true, # Boolean | Whether the goal is active or not
  assignee_id: 56, # Integer | The ID of the user who's goal to fetch. When omitted, only your goals will be returned.
  assignee_type: 'person', # String | The type of the goal's assignee. If provided, everyone's goals will be returned.
  expected_outcome_target: 8.14, # Float | The numeric value of the outcome. If provided, everyone's goals will be returned.
  expected_outcome_tracking_metric: 'quantity', # String | The tracking metric of the expected outcome of the goal. If provided, everyone's goals will be returned.
  expected_outcome_currency_id: 56, # Integer | The numeric ID of the goal's currency. Only applicable to goals with `expected_outcome.tracking_metric` with value `sum`. If provided, everyone's goals will be returned.
  type_params_pipeline_id: [37], # Array<Integer> | An array of pipeline IDs or `null` for all pipelines. If provided, everyone's goals will be returned.
  type_params_stage_id: 56, # Integer | The ID of the stage. Applicable to only `deals_progressed` type of goals. If provided, everyone's goals will be returned.
  type_params_activity_type_id: [37], # Array<Integer> | An array of IDs or `null` for all activity types. Only applicable for `activities_completed` and/or `activities_added` types of goals. If provided, everyone's goals will be returned.
  period_start: Date.parse('2013-10-20'), # Date | The start date of the period for which to find goals. Date in format of YYYY-MM-DD. When `period.start` is provided, `period.end` must be provided too.
  period_end: Date.parse('2013-10-20') # Date | The end date of the period for which to find goals. Date in format of YYYY-MM-DD.
}

begin
  # Find goals
  result = api_instance.get_goals(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling GoalsApi->get_goals: #{e}"
end
```

#### Using the get_goals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetGoalsResponse200>, Integer, Hash)> get_goals_with_http_info(opts)

```ruby
begin
  # Find goals
  data, status_code, headers = api_instance.get_goals_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetGoalsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling GoalsApi->get_goals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type_name** | **String** | The type of the goal. If provided, everyone&#39;s goals will be returned. | [optional] |
| **title** | **String** | The title of the goal | [optional] |
| **is_active** | **Boolean** | Whether the goal is active or not | [optional][default to true] |
| **assignee_id** | **Integer** | The ID of the user who&#39;s goal to fetch. When omitted, only your goals will be returned. | [optional] |
| **assignee_type** | **String** | The type of the goal&#39;s assignee. If provided, everyone&#39;s goals will be returned. | [optional] |
| **expected_outcome_target** | **Float** | The numeric value of the outcome. If provided, everyone&#39;s goals will be returned. | [optional] |
| **expected_outcome_tracking_metric** | **String** | The tracking metric of the expected outcome of the goal. If provided, everyone&#39;s goals will be returned. | [optional] |
| **expected_outcome_currency_id** | **Integer** | The numeric ID of the goal&#39;s currency. Only applicable to goals with &#x60;expected_outcome.tracking_metric&#x60; with value &#x60;sum&#x60;. If provided, everyone&#39;s goals will be returned. | [optional] |
| **type_params_pipeline_id** | [**Array&lt;Integer&gt;**](Integer.md) | An array of pipeline IDs or &#x60;null&#x60; for all pipelines. If provided, everyone&#39;s goals will be returned. | [optional] |
| **type_params_stage_id** | **Integer** | The ID of the stage. Applicable to only &#x60;deals_progressed&#x60; type of goals. If provided, everyone&#39;s goals will be returned. | [optional] |
| **type_params_activity_type_id** | [**Array&lt;Integer&gt;**](Integer.md) | An array of IDs or &#x60;null&#x60; for all activity types. Only applicable for &#x60;activities_completed&#x60; and/or &#x60;activities_added&#x60; types of goals. If provided, everyone&#39;s goals will be returned. | [optional] |
| **period_start** | **Date** | The start date of the period for which to find goals. Date in format of YYYY-MM-DD. When &#x60;period.start&#x60; is provided, &#x60;period.end&#x60; must be provided too. | [optional] |
| **period_end** | **Date** | The end date of the period for which to find goals. Date in format of YYYY-MM-DD. | [optional] |

### Return type

[**GetGoalsResponse200**](GetGoalsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_goal

> <AddOrUpdateGoalResponse200> update_goal(id, opts)

Update existing goal

Updates an existing goal.

### Examples

```ruby
require 'time'
require 'open_pipette'
# setup authorization
OpenPipette.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenPipette::GoalsApi.new
id = 'id_example' # String | The ID of the goal
opts = {
  basic_goal_request: OpenPipette::BasicGoalRequest.new # BasicGoalRequest | 
}

begin
  # Update existing goal
  result = api_instance.update_goal(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling GoalsApi->update_goal: #{e}"
end
```

#### Using the update_goal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddOrUpdateGoalResponse200>, Integer, Hash)> update_goal_with_http_info(id, opts)

```ruby
begin
  # Update existing goal
  data, status_code, headers = api_instance.update_goal_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddOrUpdateGoalResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling GoalsApi->update_goal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the goal |  |
| **basic_goal_request** | [**BasicGoalRequest**](BasicGoalRequest.md) |  | [optional] |

### Return type

[**AddOrUpdateGoalResponse200**](AddOrUpdateGoalResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

