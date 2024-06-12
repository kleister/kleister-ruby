# Kleister::UserApi

All URIs are relative to *https://try.kleister.eu/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**attach_user_to_mod**](UserApi.md#attach_user_to_mod) | **POST** /users/{user_id}/mods | Attach a mod to user |
| [**attach_user_to_pack**](UserApi.md#attach_user_to_pack) | **POST** /users/{user_id}/packs | Attach a pack to user |
| [**attach_user_to_team**](UserApi.md#attach_user_to_team) | **POST** /users/{user_id}/teams | Attach a team to user |
| [**create_user**](UserApi.md#create_user) | **POST** /users | Create a new user |
| [**delete_user**](UserApi.md#delete_user) | **DELETE** /users/{user_id} | Delete a specific user |
| [**delete_user_from_mod**](UserApi.md#delete_user_from_mod) | **DELETE** /users/{user_id}/mods | Unlink a mod from user |
| [**delete_user_from_pack**](UserApi.md#delete_user_from_pack) | **DELETE** /users/{user_id}/packs | Unlink a pack from user |
| [**delete_user_from_team**](UserApi.md#delete_user_from_team) | **DELETE** /users/{user_id}/teams | Unlink a team from user |
| [**list_user_mods**](UserApi.md#list_user_mods) | **GET** /users/{user_id}/mods | Fetch all mods attached to user |
| [**list_user_packs**](UserApi.md#list_user_packs) | **GET** /users/{user_id}/packs | Fetch all packs attached to user |
| [**list_user_teams**](UserApi.md#list_user_teams) | **GET** /users/{user_id}/teams | Fetch all teams attached to user |
| [**list_users**](UserApi.md#list_users) | **GET** /users | Fetch all available users |
| [**permit_user_mod**](UserApi.md#permit_user_mod) | **PUT** /users/{user_id}/mods | Update mod perms for user |
| [**permit_user_pack**](UserApi.md#permit_user_pack) | **PUT** /users/{user_id}/packs | Update pack perms for user |
| [**permit_user_team**](UserApi.md#permit_user_team) | **PUT** /users/{user_id}/teams | Update team perms for user |
| [**show_user**](UserApi.md#show_user) | **GET** /users/{user_id} | Fetch a specific user |
| [**update_user**](UserApi.md#update_user) | **PUT** /users/{user_id} | Update a specific user |


## attach_user_to_mod

> <Notification> attach_user_to_mod(user_id, user_mod_params)

Attach a mod to user

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

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
user_mod_params = Kleister::UserModParams.new({mod: 'mod_example'}) # UserModParams | The user mod data to attach

begin
  # Attach a mod to user
  result = api_instance.attach_user_to_mod(user_id, user_mod_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->attach_user_to_mod: #{e}"
end
```

#### Using the attach_user_to_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_user_to_mod_with_http_info(user_id, user_mod_params)

```ruby
begin
  # Attach a mod to user
  data, status_code, headers = api_instance.attach_user_to_mod_with_http_info(user_id, user_mod_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->attach_user_to_mod_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user identifier or slug |  |
| **user_mod_params** | [**UserModParams**](UserModParams.md) | The user mod data to attach |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## attach_user_to_pack

> <Notification> attach_user_to_pack(user_id, user_pack_params)

Attach a pack to user

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

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
user_pack_params = Kleister::UserPackParams.new({pack: 'pack_example'}) # UserPackParams | The user pack data to attach

begin
  # Attach a pack to user
  result = api_instance.attach_user_to_pack(user_id, user_pack_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->attach_user_to_pack: #{e}"
end
```

#### Using the attach_user_to_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_user_to_pack_with_http_info(user_id, user_pack_params)

```ruby
begin
  # Attach a pack to user
  data, status_code, headers = api_instance.attach_user_to_pack_with_http_info(user_id, user_pack_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->attach_user_to_pack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user identifier or slug |  |
| **user_pack_params** | [**UserPackParams**](UserPackParams.md) | The user pack data to attach |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## attach_user_to_team

> <Notification> attach_user_to_team(user_id, user_team_params)

Attach a team to user

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

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
user_team_params = Kleister::UserTeamParams.new({team: 'team_example'}) # UserTeamParams | The user team data to attach

begin
  # Attach a team to user
  result = api_instance.attach_user_to_team(user_id, user_team_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->attach_user_to_team: #{e}"
end
```

#### Using the attach_user_to_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_user_to_team_with_http_info(user_id, user_team_params)

```ruby
begin
  # Attach a team to user
  data, status_code, headers = api_instance.attach_user_to_team_with_http_info(user_id, user_team_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->attach_user_to_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user identifier or slug |  |
| **user_team_params** | [**UserTeamParams**](UserTeamParams.md) | The user team data to attach |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_user

> <User> create_user(user)

Create a new user

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

api_instance = Kleister::UserApi.new
user = Kleister::User.new # User | The user data to create

begin
  # Create a new user
  result = api_instance.create_user(user)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->create_user: #{e}"
end
```

#### Using the create_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> create_user_with_http_info(user)

```ruby
begin
  # Create a new user
  data, status_code, headers = api_instance.create_user_with_http_info(user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->create_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | [**User**](User.md) | The user data to create |  |

### Return type

[**User**](User.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user

> <Notification> delete_user(user_id)

Delete a specific user

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

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug

begin
  # Delete a specific user
  result = api_instance.delete_user(user_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->delete_user: #{e}"
end
```

#### Using the delete_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_user_with_http_info(user_id)

```ruby
begin
  # Delete a specific user
  data, status_code, headers = api_instance.delete_user_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->delete_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user identifier or slug |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_user_from_mod

> <Notification> delete_user_from_mod(user_id, user_mod_params)

Unlink a mod from user

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

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
user_mod_params = Kleister::UserModParams.new({mod: 'mod_example'}) # UserModParams | The user mod data to unlink

begin
  # Unlink a mod from user
  result = api_instance.delete_user_from_mod(user_id, user_mod_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->delete_user_from_mod: #{e}"
end
```

#### Using the delete_user_from_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_user_from_mod_with_http_info(user_id, user_mod_params)

```ruby
begin
  # Unlink a mod from user
  data, status_code, headers = api_instance.delete_user_from_mod_with_http_info(user_id, user_mod_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->delete_user_from_mod_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user identifier or slug |  |
| **user_mod_params** | [**UserModParams**](UserModParams.md) | The user mod data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user_from_pack

> <Notification> delete_user_from_pack(user_id, user_pack_params)

Unlink a pack from user

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

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
user_pack_params = Kleister::UserPackParams.new({pack: 'pack_example'}) # UserPackParams | The user pack data to unlink

begin
  # Unlink a pack from user
  result = api_instance.delete_user_from_pack(user_id, user_pack_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->delete_user_from_pack: #{e}"
end
```

#### Using the delete_user_from_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_user_from_pack_with_http_info(user_id, user_pack_params)

```ruby
begin
  # Unlink a pack from user
  data, status_code, headers = api_instance.delete_user_from_pack_with_http_info(user_id, user_pack_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->delete_user_from_pack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user identifier or slug |  |
| **user_pack_params** | [**UserPackParams**](UserPackParams.md) | The user pack data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user_from_team

> <Notification> delete_user_from_team(user_id, user_team_params)

Unlink a team from user

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

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
user_team_params = Kleister::UserTeamParams.new({team: 'team_example'}) # UserTeamParams | The user team data to unlink

begin
  # Unlink a team from user
  result = api_instance.delete_user_from_team(user_id, user_team_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->delete_user_from_team: #{e}"
end
```

#### Using the delete_user_from_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_user_from_team_with_http_info(user_id, user_team_params)

```ruby
begin
  # Unlink a team from user
  data, status_code, headers = api_instance.delete_user_from_team_with_http_info(user_id, user_team_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->delete_user_from_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user identifier or slug |  |
| **user_team_params** | [**UserTeamParams**](UserTeamParams.md) | The user team data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_user_mods

> <UserMods> list_user_mods(user_id, opts)

Fetch all mods attached to user

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

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
opts = {
  search: '"John Doe"', # String | Search query
  sort: 'slug', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all mods attached to user
  result = api_instance.list_user_mods(user_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->list_user_mods: #{e}"
end
```

#### Using the list_user_mods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserMods>, Integer, Hash)> list_user_mods_with_http_info(user_id, opts)

```ruby
begin
  # Fetch all mods attached to user
  data, status_code, headers = api_instance.list_user_mods_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserMods>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->list_user_mods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional][default to &#39;name&#39;] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional] |
| **offset** | **Integer** | Paging offset | [optional] |

### Return type

[**UserMods**](UserMods.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_user_packs

> <UserPacks> list_user_packs(user_id, opts)

Fetch all packs attached to user

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

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
opts = {
  search: '"John Doe"', # String | Search query
  sort: 'slug', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all packs attached to user
  result = api_instance.list_user_packs(user_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->list_user_packs: #{e}"
end
```

#### Using the list_user_packs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserPacks>, Integer, Hash)> list_user_packs_with_http_info(user_id, opts)

```ruby
begin
  # Fetch all packs attached to user
  data, status_code, headers = api_instance.list_user_packs_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserPacks>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->list_user_packs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional][default to &#39;name&#39;] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional] |
| **offset** | **Integer** | Paging offset | [optional] |

### Return type

[**UserPacks**](UserPacks.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_user_teams

> <UserTeams> list_user_teams(user_id, opts)

Fetch all teams attached to user

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

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
opts = {
  search: '"John Doe"', # String | Search query
  sort: 'slug', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all teams attached to user
  result = api_instance.list_user_teams(user_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->list_user_teams: #{e}"
end
```

#### Using the list_user_teams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserTeams>, Integer, Hash)> list_user_teams_with_http_info(user_id, opts)

```ruby
begin
  # Fetch all teams attached to user
  data, status_code, headers = api_instance.list_user_teams_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserTeams>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->list_user_teams_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional][default to &#39;name&#39;] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional] |
| **offset** | **Integer** | Paging offset | [optional] |

### Return type

[**UserTeams**](UserTeams.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_users

> <Users> list_users(opts)

Fetch all available users

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

api_instance = Kleister::UserApi.new
opts = {
  search: '"John Doe"', # String | Search query
  sort: 'username', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all available users
  result = api_instance.list_users(opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->list_users: #{e}"
end
```

#### Using the list_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Users>, Integer, Hash)> list_users_with_http_info(opts)

```ruby
begin
  # Fetch all available users
  data, status_code, headers = api_instance.list_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Users>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->list_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional][default to &#39;username&#39;] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**Users**](Users.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## permit_user_mod

> <Notification> permit_user_mod(user_id, user_mod_params)

Update mod perms for user

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

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
user_mod_params = Kleister::UserModParams.new({mod: 'mod_example'}) # UserModParams | The user mod data to update

begin
  # Update mod perms for user
  result = api_instance.permit_user_mod(user_id, user_mod_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->permit_user_mod: #{e}"
end
```

#### Using the permit_user_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> permit_user_mod_with_http_info(user_id, user_mod_params)

```ruby
begin
  # Update mod perms for user
  data, status_code, headers = api_instance.permit_user_mod_with_http_info(user_id, user_mod_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->permit_user_mod_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user identifier or slug |  |
| **user_mod_params** | [**UserModParams**](UserModParams.md) | The user mod data to update |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## permit_user_pack

> <Notification> permit_user_pack(user_id, user_pack_params)

Update pack perms for user

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

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
user_pack_params = Kleister::UserPackParams.new({pack: 'pack_example'}) # UserPackParams | The user pack data to update

begin
  # Update pack perms for user
  result = api_instance.permit_user_pack(user_id, user_pack_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->permit_user_pack: #{e}"
end
```

#### Using the permit_user_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> permit_user_pack_with_http_info(user_id, user_pack_params)

```ruby
begin
  # Update pack perms for user
  data, status_code, headers = api_instance.permit_user_pack_with_http_info(user_id, user_pack_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->permit_user_pack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user identifier or slug |  |
| **user_pack_params** | [**UserPackParams**](UserPackParams.md) | The user pack data to update |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## permit_user_team

> <Notification> permit_user_team(user_id, user_team_params)

Update team perms for user

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

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
user_team_params = Kleister::UserTeamParams.new({team: 'team_example'}) # UserTeamParams | The user team data to update

begin
  # Update team perms for user
  result = api_instance.permit_user_team(user_id, user_team_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->permit_user_team: #{e}"
end
```

#### Using the permit_user_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> permit_user_team_with_http_info(user_id, user_team_params)

```ruby
begin
  # Update team perms for user
  data, status_code, headers = api_instance.permit_user_team_with_http_info(user_id, user_team_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->permit_user_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user identifier or slug |  |
| **user_team_params** | [**UserTeamParams**](UserTeamParams.md) | The user team data to update |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## show_user

> <User> show_user(user_id)

Fetch a specific user

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

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug

begin
  # Fetch a specific user
  result = api_instance.show_user(user_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->show_user: #{e}"
end
```

#### Using the show_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> show_user_with_http_info(user_id)

```ruby
begin
  # Fetch a specific user
  data, status_code, headers = api_instance.show_user_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->show_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user identifier or slug |  |

### Return type

[**User**](User.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user

> <User> update_user(user_id, user)

Update a specific user

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

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
user = Kleister::User.new # User | The user data to update

begin
  # Update a specific user
  result = api_instance.update_user(user_id, user)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->update_user: #{e}"
end
```

#### Using the update_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> update_user_with_http_info(user_id, user)

```ruby
begin
  # Update a specific user
  data, status_code, headers = api_instance.update_user_with_http_info(user_id, user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->update_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user identifier or slug |  |
| **user** | [**User**](User.md) | The user data to update |  |

### Return type

[**User**](User.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

