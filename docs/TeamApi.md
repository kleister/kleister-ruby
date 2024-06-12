# Kleister::TeamApi

All URIs are relative to *https://try.kleister.eu/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**attach_team_to_mod**](TeamApi.md#attach_team_to_mod) | **POST** /teams/{team_id}/mods | Attach a mod to team |
| [**attach_team_to_pack**](TeamApi.md#attach_team_to_pack) | **POST** /teams/{team_id}/packs | Attach a pack to team |
| [**attach_team_to_user**](TeamApi.md#attach_team_to_user) | **POST** /teams/{team_id}/users | Attach a user to team |
| [**create_team**](TeamApi.md#create_team) | **POST** /teams | Create a new team |
| [**delete_team**](TeamApi.md#delete_team) | **DELETE** /teams/{team_id} | Delete a specific team |
| [**delete_team_from_mod**](TeamApi.md#delete_team_from_mod) | **DELETE** /teams/{team_id}/mods | Unlink a mod from team |
| [**delete_team_from_pack**](TeamApi.md#delete_team_from_pack) | **DELETE** /teams/{team_id}/packs | Unlink a pack from team |
| [**delete_team_from_user**](TeamApi.md#delete_team_from_user) | **DELETE** /teams/{team_id}/users | Unlink a user from team |
| [**list_team_mods**](TeamApi.md#list_team_mods) | **GET** /teams/{team_id}/mods | Fetch all mods attached to team |
| [**list_team_packs**](TeamApi.md#list_team_packs) | **GET** /teams/{team_id}/packs | Fetch all packs attached to team |
| [**list_team_users**](TeamApi.md#list_team_users) | **GET** /teams/{team_id}/users | Fetch all users attached to team |
| [**list_teams**](TeamApi.md#list_teams) | **GET** /teams | Fetch all available teams |
| [**permit_team_mod**](TeamApi.md#permit_team_mod) | **PUT** /teams/{team_id}/mods | Update mod perms for team |
| [**permit_team_pack**](TeamApi.md#permit_team_pack) | **PUT** /teams/{team_id}/packs | Update pack perms for team |
| [**permit_team_user**](TeamApi.md#permit_team_user) | **PUT** /teams/{team_id}/users | Update user perms for team |
| [**show_team**](TeamApi.md#show_team) | **GET** /teams/{team_id} | Fetch a specific team |
| [**update_team**](TeamApi.md#update_team) | **PUT** /teams/{team_id} | Update a specific team |


## attach_team_to_mod

> <Notification> attach_team_to_mod(team_id, team_mod_params)

Attach a mod to team

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::TeamApi.new
team_id = '"team-1"' # String | A team identifier or slug
team_mod_params = Kleister::TeamModParams.new({mod: 'mod_example'}) # TeamModParams | The team mod data to attach

begin
  # Attach a mod to team
  result = api_instance.attach_team_to_mod(team_id, team_mod_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->attach_team_to_mod: #{e}"
end
```

#### Using the attach_team_to_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_team_to_mod_with_http_info(team_id, team_mod_params)

```ruby
begin
  # Attach a mod to team
  data, status_code, headers = api_instance.attach_team_to_mod_with_http_info(team_id, team_mod_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->attach_team_to_mod_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team identifier or slug |  |
| **team_mod_params** | [**TeamModParams**](TeamModParams.md) | The team mod data to attach |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## attach_team_to_pack

> <Notification> attach_team_to_pack(team_id, team_pack_params)

Attach a pack to team

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::TeamApi.new
team_id = '"team-1"' # String | A team identifier or slug
team_pack_params = Kleister::TeamPackParams.new({pack: 'pack_example'}) # TeamPackParams | The team pack data to attach

begin
  # Attach a pack to team
  result = api_instance.attach_team_to_pack(team_id, team_pack_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->attach_team_to_pack: #{e}"
end
```

#### Using the attach_team_to_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_team_to_pack_with_http_info(team_id, team_pack_params)

```ruby
begin
  # Attach a pack to team
  data, status_code, headers = api_instance.attach_team_to_pack_with_http_info(team_id, team_pack_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->attach_team_to_pack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team identifier or slug |  |
| **team_pack_params** | [**TeamPackParams**](TeamPackParams.md) | The team pack data to attach |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## attach_team_to_user

> <Notification> attach_team_to_user(team_id, team_user_params)

Attach a user to team

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::TeamApi.new
team_id = '"team-1"' # String | A team identifier or slug
team_user_params = Kleister::TeamUserParams.new({user: 'user_example'}) # TeamUserParams | The team user data to attach

begin
  # Attach a user to team
  result = api_instance.attach_team_to_user(team_id, team_user_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->attach_team_to_user: #{e}"
end
```

#### Using the attach_team_to_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_team_to_user_with_http_info(team_id, team_user_params)

```ruby
begin
  # Attach a user to team
  data, status_code, headers = api_instance.attach_team_to_user_with_http_info(team_id, team_user_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->attach_team_to_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team identifier or slug |  |
| **team_user_params** | [**TeamUserParams**](TeamUserParams.md) | The team user data to attach |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_team

> <Team> create_team(team)

Create a new team

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::TeamApi.new
team = Kleister::Team.new # Team | The team data to create

begin
  # Create a new team
  result = api_instance.create_team(team)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->create_team: #{e}"
end
```

#### Using the create_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Team>, Integer, Hash)> create_team_with_http_info(team)

```ruby
begin
  # Create a new team
  data, status_code, headers = api_instance.create_team_with_http_info(team)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Team>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->create_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team** | [**Team**](Team.md) | The team data to create |  |

### Return type

[**Team**](Team.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_team

> <Notification> delete_team(team_id)

Delete a specific team

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::TeamApi.new
team_id = '"team-1"' # String | A team identifier or slug

begin
  # Delete a specific team
  result = api_instance.delete_team(team_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->delete_team: #{e}"
end
```

#### Using the delete_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_team_with_http_info(team_id)

```ruby
begin
  # Delete a specific team
  data, status_code, headers = api_instance.delete_team_with_http_info(team_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->delete_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team identifier or slug |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_team_from_mod

> <Notification> delete_team_from_mod(team_id, team_mod_params)

Unlink a mod from team

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::TeamApi.new
team_id = '"team-1"' # String | A team identifier or slug
team_mod_params = Kleister::TeamModParams.new({mod: 'mod_example'}) # TeamModParams | The team mod data to unlink

begin
  # Unlink a mod from team
  result = api_instance.delete_team_from_mod(team_id, team_mod_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->delete_team_from_mod: #{e}"
end
```

#### Using the delete_team_from_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_team_from_mod_with_http_info(team_id, team_mod_params)

```ruby
begin
  # Unlink a mod from team
  data, status_code, headers = api_instance.delete_team_from_mod_with_http_info(team_id, team_mod_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->delete_team_from_mod_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team identifier or slug |  |
| **team_mod_params** | [**TeamModParams**](TeamModParams.md) | The team mod data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_team_from_pack

> <Notification> delete_team_from_pack(team_id, team_pack_params)

Unlink a pack from team

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::TeamApi.new
team_id = '"team-1"' # String | A team identifier or slug
team_pack_params = Kleister::TeamPackParams.new({pack: 'pack_example'}) # TeamPackParams | The team pack data to unlink

begin
  # Unlink a pack from team
  result = api_instance.delete_team_from_pack(team_id, team_pack_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->delete_team_from_pack: #{e}"
end
```

#### Using the delete_team_from_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_team_from_pack_with_http_info(team_id, team_pack_params)

```ruby
begin
  # Unlink a pack from team
  data, status_code, headers = api_instance.delete_team_from_pack_with_http_info(team_id, team_pack_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->delete_team_from_pack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team identifier or slug |  |
| **team_pack_params** | [**TeamPackParams**](TeamPackParams.md) | The team pack data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_team_from_user

> <Notification> delete_team_from_user(team_id, team_user_params)

Unlink a user from team

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::TeamApi.new
team_id = '"team-1"' # String | A team identifier or slug
team_user_params = Kleister::TeamUserParams.new({user: 'user_example'}) # TeamUserParams | The team user data to unlink

begin
  # Unlink a user from team
  result = api_instance.delete_team_from_user(team_id, team_user_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->delete_team_from_user: #{e}"
end
```

#### Using the delete_team_from_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_team_from_user_with_http_info(team_id, team_user_params)

```ruby
begin
  # Unlink a user from team
  data, status_code, headers = api_instance.delete_team_from_user_with_http_info(team_id, team_user_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->delete_team_from_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team identifier or slug |  |
| **team_user_params** | [**TeamUserParams**](TeamUserParams.md) | The team user data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_team_mods

> <TeamMods> list_team_mods(team_id, opts)

Fetch all mods attached to team

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::TeamApi.new
team_id = '"team-1"' # String | A team identifier or slug
opts = {
  search: '"John Doe"', # String | Search query
  sort: 'slug', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all mods attached to team
  result = api_instance.list_team_mods(team_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->list_team_mods: #{e}"
end
```

#### Using the list_team_mods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeamMods>, Integer, Hash)> list_team_mods_with_http_info(team_id, opts)

```ruby
begin
  # Fetch all mods attached to team
  data, status_code, headers = api_instance.list_team_mods_with_http_info(team_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeamMods>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->list_team_mods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional][default to &#39;name&#39;] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**TeamMods**](TeamMods.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_team_packs

> <TeamPacks> list_team_packs(team_id, opts)

Fetch all packs attached to team

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::TeamApi.new
team_id = '"team-1"' # String | A team identifier or slug
opts = {
  search: '"John Doe"', # String | Search query
  sort: 'slug', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all packs attached to team
  result = api_instance.list_team_packs(team_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->list_team_packs: #{e}"
end
```

#### Using the list_team_packs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeamPacks>, Integer, Hash)> list_team_packs_with_http_info(team_id, opts)

```ruby
begin
  # Fetch all packs attached to team
  data, status_code, headers = api_instance.list_team_packs_with_http_info(team_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeamPacks>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->list_team_packs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional][default to &#39;name&#39;] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**TeamPacks**](TeamPacks.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_team_users

> <TeamUsers> list_team_users(team_id, opts)

Fetch all users attached to team

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::TeamApi.new
team_id = '"team-1"' # String | A team identifier or slug
opts = {
  search: '"John Doe"', # String | Search query
  sort: 'username', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all users attached to team
  result = api_instance.list_team_users(team_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->list_team_users: #{e}"
end
```

#### Using the list_team_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeamUsers>, Integer, Hash)> list_team_users_with_http_info(team_id, opts)

```ruby
begin
  # Fetch all users attached to team
  data, status_code, headers = api_instance.list_team_users_with_http_info(team_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeamUsers>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->list_team_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional][default to &#39;username&#39;] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**TeamUsers**](TeamUsers.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_teams

> <Teams> list_teams(opts)

Fetch all available teams

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::TeamApi.new
opts = {
  search: '"John Doe"', # String | Search query
  sort: 'slug', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all available teams
  result = api_instance.list_teams(opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->list_teams: #{e}"
end
```

#### Using the list_teams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Teams>, Integer, Hash)> list_teams_with_http_info(opts)

```ruby
begin
  # Fetch all available teams
  data, status_code, headers = api_instance.list_teams_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Teams>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->list_teams_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional][default to &#39;name&#39;] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**Teams**](Teams.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## permit_team_mod

> <Notification> permit_team_mod(team_id, team_mod_params)

Update mod perms for team

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::TeamApi.new
team_id = '"team-1"' # String | A team identifier or slug
team_mod_params = Kleister::TeamModParams.new({mod: 'mod_example'}) # TeamModParams | The team mod data to update

begin
  # Update mod perms for team
  result = api_instance.permit_team_mod(team_id, team_mod_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->permit_team_mod: #{e}"
end
```

#### Using the permit_team_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> permit_team_mod_with_http_info(team_id, team_mod_params)

```ruby
begin
  # Update mod perms for team
  data, status_code, headers = api_instance.permit_team_mod_with_http_info(team_id, team_mod_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->permit_team_mod_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team identifier or slug |  |
| **team_mod_params** | [**TeamModParams**](TeamModParams.md) | The team mod data to update |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## permit_team_pack

> <Notification> permit_team_pack(team_id, team_pack_params)

Update pack perms for team

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::TeamApi.new
team_id = '"team-1"' # String | A team identifier or slug
team_pack_params = Kleister::TeamPackParams.new({pack: 'pack_example'}) # TeamPackParams | The team pack data to update

begin
  # Update pack perms for team
  result = api_instance.permit_team_pack(team_id, team_pack_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->permit_team_pack: #{e}"
end
```

#### Using the permit_team_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> permit_team_pack_with_http_info(team_id, team_pack_params)

```ruby
begin
  # Update pack perms for team
  data, status_code, headers = api_instance.permit_team_pack_with_http_info(team_id, team_pack_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->permit_team_pack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team identifier or slug |  |
| **team_pack_params** | [**TeamPackParams**](TeamPackParams.md) | The team pack data to update |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## permit_team_user

> <Notification> permit_team_user(team_id, team_user_params)

Update user perms for team

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::TeamApi.new
team_id = '"team-1"' # String | A team identifier or slug
team_user_params = Kleister::TeamUserParams.new({user: 'user_example'}) # TeamUserParams | The team user data to update

begin
  # Update user perms for team
  result = api_instance.permit_team_user(team_id, team_user_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->permit_team_user: #{e}"
end
```

#### Using the permit_team_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> permit_team_user_with_http_info(team_id, team_user_params)

```ruby
begin
  # Update user perms for team
  data, status_code, headers = api_instance.permit_team_user_with_http_info(team_id, team_user_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->permit_team_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team identifier or slug |  |
| **team_user_params** | [**TeamUserParams**](TeamUserParams.md) | The team user data to update |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## show_team

> <Team> show_team(team_id)

Fetch a specific team

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::TeamApi.new
team_id = '"team-1"' # String | A team identifier or slug

begin
  # Fetch a specific team
  result = api_instance.show_team(team_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->show_team: #{e}"
end
```

#### Using the show_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Team>, Integer, Hash)> show_team_with_http_info(team_id)

```ruby
begin
  # Fetch a specific team
  data, status_code, headers = api_instance.show_team_with_http_info(team_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Team>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->show_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team identifier or slug |  |

### Return type

[**Team**](Team.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_team

> <Team> update_team(team_id, team)

Update a specific team

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::TeamApi.new
team_id = '"team-1"' # String | A team identifier or slug
team = Kleister::Team.new # Team | The team data to update

begin
  # Update a specific team
  result = api_instance.update_team(team_id, team)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->update_team: #{e}"
end
```

#### Using the update_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Team>, Integer, Hash)> update_team_with_http_info(team_id, team)

```ruby
begin
  # Update a specific team
  data, status_code, headers = api_instance.update_team_with_http_info(team_id, team)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Team>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->update_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team identifier or slug |  |
| **team** | [**Team**](Team.md) | The team data to update |  |

### Return type

[**Team**](Team.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

