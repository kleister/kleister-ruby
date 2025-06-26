# Kleister::UserApi

All URIs are relative to *https://try.kleister.eu/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**attach_user_to_group**](UserApi.md#attach_user_to_group) | **POST** /users/{user_id}/groups | Attach a group to user |
| [**attach_user_to_mod**](UserApi.md#attach_user_to_mod) | **POST** /users/{user_id}/mods | Attach a mod to user |
| [**attach_user_to_pack**](UserApi.md#attach_user_to_pack) | **POST** /users/{user_id}/packs | Attach a pack to user |
| [**create_user**](UserApi.md#create_user) | **POST** /users | Create a new user |
| [**delete_user**](UserApi.md#delete_user) | **DELETE** /users/{user_id} | Delete a specific user |
| [**delete_user_from_group**](UserApi.md#delete_user_from_group) | **DELETE** /users/{user_id}/groups | Unlink a group from user |
| [**delete_user_from_mod**](UserApi.md#delete_user_from_mod) | **DELETE** /users/{user_id}/mods | Unlink a mod from user |
| [**delete_user_from_pack**](UserApi.md#delete_user_from_pack) | **DELETE** /users/{user_id}/packs | Unlink a pack from user |
| [**list_user_groups**](UserApi.md#list_user_groups) | **GET** /users/{user_id}/groups | Fetch all groups attached to user |
| [**list_user_mods**](UserApi.md#list_user_mods) | **GET** /users/{user_id}/mods | Fetch all mods attached to user |
| [**list_user_packs**](UserApi.md#list_user_packs) | **GET** /users/{user_id}/packs | Fetch all packs attached to user |
| [**list_users**](UserApi.md#list_users) | **GET** /users | Fetch all available users |
| [**permit_user_group**](UserApi.md#permit_user_group) | **PUT** /users/{user_id}/groups | Update group perms for user |
| [**permit_user_mod**](UserApi.md#permit_user_mod) | **PUT** /users/{user_id}/mods | Update mod perms for user |
| [**permit_user_pack**](UserApi.md#permit_user_pack) | **PUT** /users/{user_id}/packs | Update pack perms for user |
| [**show_user**](UserApi.md#show_user) | **GET** /users/{user_id} | Fetch a specific user |
| [**update_user**](UserApi.md#update_user) | **PUT** /users/{user_id} | Update a specific user |


## attach_user_to_group

> <Notification> attach_user_to_group(user_id, permit_pack_group_request)

Attach a group to user

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
permit_pack_group_request = Kleister::PermitPackGroupRequest.new({group: 'group_example', perm: 'perm_example'}) # PermitPackGroupRequest | The user group data to permit

begin
  # Attach a group to user
  result = api_instance.attach_user_to_group(user_id, permit_pack_group_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->attach_user_to_group: #{e}"
end
```

#### Using the attach_user_to_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_user_to_group_with_http_info(user_id, permit_pack_group_request)

```ruby
begin
  # Attach a group to user
  data, status_code, headers = api_instance.attach_user_to_group_with_http_info(user_id, permit_pack_group_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->attach_user_to_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user identifier or slug |  |
| **permit_pack_group_request** | [**PermitPackGroupRequest**](PermitPackGroupRequest.md) | The user group data to permit |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## attach_user_to_mod

> <Notification> attach_user_to_mod(user_id, permit_group_mod_request)

Attach a mod to user

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
permit_group_mod_request = Kleister::PermitGroupModRequest.new({mod: 'mod_example', perm: 'perm_example'}) # PermitGroupModRequest | The user mod data to permit

begin
  # Attach a mod to user
  result = api_instance.attach_user_to_mod(user_id, permit_group_mod_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->attach_user_to_mod: #{e}"
end
```

#### Using the attach_user_to_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_user_to_mod_with_http_info(user_id, permit_group_mod_request)

```ruby
begin
  # Attach a mod to user
  data, status_code, headers = api_instance.attach_user_to_mod_with_http_info(user_id, permit_group_mod_request)
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
| **permit_group_mod_request** | [**PermitGroupModRequest**](PermitGroupModRequest.md) | The user mod data to permit |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## attach_user_to_pack

> <Notification> attach_user_to_pack(user_id, permit_group_pack_request)

Attach a pack to user

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
permit_group_pack_request = Kleister::PermitGroupPackRequest.new({pack: 'pack_example', perm: 'perm_example'}) # PermitGroupPackRequest | The user pack data to permit

begin
  # Attach a pack to user
  result = api_instance.attach_user_to_pack(user_id, permit_group_pack_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->attach_user_to_pack: #{e}"
end
```

#### Using the attach_user_to_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_user_to_pack_with_http_info(user_id, permit_group_pack_request)

```ruby
begin
  # Attach a pack to user
  data, status_code, headers = api_instance.attach_user_to_pack_with_http_info(user_id, permit_group_pack_request)
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
| **permit_group_pack_request** | [**PermitGroupPackRequest**](PermitGroupPackRequest.md) | The user pack data to permit |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_user

> <User> create_user(create_user_request)

Create a new user

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::UserApi.new
create_user_request = Kleister::CreateUserRequest.new # CreateUserRequest | The user data to create

begin
  # Create a new user
  result = api_instance.create_user(create_user_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->create_user: #{e}"
end
```

#### Using the create_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> create_user_with_http_info(create_user_request)

```ruby
begin
  # Create a new user
  data, status_code, headers = api_instance.create_user_with_http_info(create_user_request)
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
| **create_user_request** | [**CreateUserRequest**](CreateUserRequest.md) | The user data to create |  |

### Return type

[**User**](User.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

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
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

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

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_user_from_group

> <Notification> delete_user_from_group(user_id, delete_pack_from_group_request)

Unlink a group from user

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
delete_pack_from_group_request = Kleister::DeletePackFromGroupRequest.new({group: 'group_example'}) # DeletePackFromGroupRequest | The user group data to unlink

begin
  # Unlink a group from user
  result = api_instance.delete_user_from_group(user_id, delete_pack_from_group_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->delete_user_from_group: #{e}"
end
```

#### Using the delete_user_from_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_user_from_group_with_http_info(user_id, delete_pack_from_group_request)

```ruby
begin
  # Unlink a group from user
  data, status_code, headers = api_instance.delete_user_from_group_with_http_info(user_id, delete_pack_from_group_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->delete_user_from_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user identifier or slug |  |
| **delete_pack_from_group_request** | [**DeletePackFromGroupRequest**](DeletePackFromGroupRequest.md) | The user group data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user_from_mod

> <Notification> delete_user_from_mod(user_id, delete_group_from_mod_request)

Unlink a mod from user

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
delete_group_from_mod_request = Kleister::DeleteGroupFromModRequest.new({mod: 'mod_example'}) # DeleteGroupFromModRequest | The user mod data to unlink

begin
  # Unlink a mod from user
  result = api_instance.delete_user_from_mod(user_id, delete_group_from_mod_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->delete_user_from_mod: #{e}"
end
```

#### Using the delete_user_from_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_user_from_mod_with_http_info(user_id, delete_group_from_mod_request)

```ruby
begin
  # Unlink a mod from user
  data, status_code, headers = api_instance.delete_user_from_mod_with_http_info(user_id, delete_group_from_mod_request)
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
| **delete_group_from_mod_request** | [**DeleteGroupFromModRequest**](DeleteGroupFromModRequest.md) | The user mod data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user_from_pack

> <Notification> delete_user_from_pack(user_id, delete_group_from_pack_request)

Unlink a pack from user

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
delete_group_from_pack_request = Kleister::DeleteGroupFromPackRequest.new({pack: 'pack_example'}) # DeleteGroupFromPackRequest | The user pack data to unlink

begin
  # Unlink a pack from user
  result = api_instance.delete_user_from_pack(user_id, delete_group_from_pack_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->delete_user_from_pack: #{e}"
end
```

#### Using the delete_user_from_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_user_from_pack_with_http_info(user_id, delete_group_from_pack_request)

```ruby
begin
  # Unlink a pack from user
  data, status_code, headers = api_instance.delete_user_from_pack_with_http_info(user_id, delete_group_from_pack_request)
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
| **delete_group_from_pack_request** | [**DeleteGroupFromPackRequest**](DeleteGroupFromPackRequest.md) | The user pack data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_user_groups

> <InlineObject26> list_user_groups(user_id, opts)

Fetch all groups attached to user

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
opts = {
  search: 'search_example', # String | Search query
  sort: 'sort_example', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all groups attached to user
  result = api_instance.list_user_groups(user_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->list_user_groups: #{e}"
end
```

#### Using the list_user_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject26>, Integer, Hash)> list_user_groups_with_http_info(user_id, opts)

```ruby
begin
  # Fetch all groups attached to user
  data, status_code, headers = api_instance.list_user_groups_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject26>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->list_user_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**InlineObject26**](InlineObject26.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_user_mods

> <InlineObject27> list_user_mods(user_id, opts)

Fetch all mods attached to user

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
opts = {
  search: 'search_example', # String | Search query
  sort: 'sort_example', # String | Sorting column
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

> <Array(<InlineObject27>, Integer, Hash)> list_user_mods_with_http_info(user_id, opts)

```ruby
begin
  # Fetch all mods attached to user
  data, status_code, headers = api_instance.list_user_mods_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject27>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->list_user_mods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**InlineObject27**](InlineObject27.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_user_packs

> <InlineObject28> list_user_packs(user_id, opts)

Fetch all packs attached to user

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
opts = {
  search: 'search_example', # String | Search query
  sort: 'sort_example', # String | Sorting column
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

> <Array(<InlineObject28>, Integer, Hash)> list_user_packs_with_http_info(user_id, opts)

```ruby
begin
  # Fetch all packs attached to user
  data, status_code, headers = api_instance.list_user_packs_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject28>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->list_user_packs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**InlineObject28**](InlineObject28.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_users

> <InlineObject25> list_users(opts)

Fetch all available users

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::UserApi.new
opts = {
  search: 'search_example', # String | Search query
  sort: 'sort_example', # String | Sorting column
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

> <Array(<InlineObject25>, Integer, Hash)> list_users_with_http_info(opts)

```ruby
begin
  # Fetch all available users
  data, status_code, headers = api_instance.list_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject25>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->list_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**InlineObject25**](InlineObject25.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## permit_user_group

> <Notification> permit_user_group(user_id, permit_pack_group_request)

Update group perms for user

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
permit_pack_group_request = Kleister::PermitPackGroupRequest.new({group: 'group_example', perm: 'perm_example'}) # PermitPackGroupRequest | The user group data to permit

begin
  # Update group perms for user
  result = api_instance.permit_user_group(user_id, permit_pack_group_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->permit_user_group: #{e}"
end
```

#### Using the permit_user_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> permit_user_group_with_http_info(user_id, permit_pack_group_request)

```ruby
begin
  # Update group perms for user
  data, status_code, headers = api_instance.permit_user_group_with_http_info(user_id, permit_pack_group_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->permit_user_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user identifier or slug |  |
| **permit_pack_group_request** | [**PermitPackGroupRequest**](PermitPackGroupRequest.md) | The user group data to permit |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## permit_user_mod

> <Notification> permit_user_mod(user_id, permit_group_mod_request)

Update mod perms for user

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
permit_group_mod_request = Kleister::PermitGroupModRequest.new({mod: 'mod_example', perm: 'perm_example'}) # PermitGroupModRequest | The user mod data to permit

begin
  # Update mod perms for user
  result = api_instance.permit_user_mod(user_id, permit_group_mod_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->permit_user_mod: #{e}"
end
```

#### Using the permit_user_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> permit_user_mod_with_http_info(user_id, permit_group_mod_request)

```ruby
begin
  # Update mod perms for user
  data, status_code, headers = api_instance.permit_user_mod_with_http_info(user_id, permit_group_mod_request)
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
| **permit_group_mod_request** | [**PermitGroupModRequest**](PermitGroupModRequest.md) | The user mod data to permit |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## permit_user_pack

> <Notification> permit_user_pack(user_id, permit_group_pack_request)

Update pack perms for user

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
permit_group_pack_request = Kleister::PermitGroupPackRequest.new({pack: 'pack_example', perm: 'perm_example'}) # PermitGroupPackRequest | The user pack data to permit

begin
  # Update pack perms for user
  result = api_instance.permit_user_pack(user_id, permit_group_pack_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->permit_user_pack: #{e}"
end
```

#### Using the permit_user_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> permit_user_pack_with_http_info(user_id, permit_group_pack_request)

```ruby
begin
  # Update pack perms for user
  data, status_code, headers = api_instance.permit_user_pack_with_http_info(user_id, permit_group_pack_request)
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
| **permit_group_pack_request** | [**PermitGroupPackRequest**](PermitGroupPackRequest.md) | The user pack data to permit |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

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
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

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

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user

> <User> update_user(user_id, update_user_request)

Update a specific user

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::UserApi.new
user_id = '"jdoe"' # String | A user identifier or slug
update_user_request = Kleister::UpdateUserRequest.new # UpdateUserRequest | The user data to update

begin
  # Update a specific user
  result = api_instance.update_user(user_id, update_user_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->update_user: #{e}"
end
```

#### Using the update_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> update_user_with_http_info(user_id, update_user_request)

```ruby
begin
  # Update a specific user
  data, status_code, headers = api_instance.update_user_with_http_info(user_id, update_user_request)
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
| **update_user_request** | [**UpdateUserRequest**](UpdateUserRequest.md) | The user data to update |  |

### Return type

[**User**](User.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

