# Kleister::GroupApi

All URIs are relative to *https://try.kleister.eu/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**attach_group_to_mod**](GroupApi.md#attach_group_to_mod) | **POST** /groups/{group_id}/mods | Attach a mod to group |
| [**attach_group_to_pack**](GroupApi.md#attach_group_to_pack) | **POST** /groups/{group_id}/packs | Attach a pack to group |
| [**attach_group_to_user**](GroupApi.md#attach_group_to_user) | **POST** /groups/{group_id}/users | Attach a user to group |
| [**create_group**](GroupApi.md#create_group) | **POST** /groups | Create a new group |
| [**delete_group**](GroupApi.md#delete_group) | **DELETE** /groups/{group_id} | Delete a specific group |
| [**delete_group_from_mod**](GroupApi.md#delete_group_from_mod) | **DELETE** /groups/{group_id}/mods | Unlink a mod from group |
| [**delete_group_from_pack**](GroupApi.md#delete_group_from_pack) | **DELETE** /groups/{group_id}/packs | Unlink a pack from group |
| [**delete_group_from_user**](GroupApi.md#delete_group_from_user) | **DELETE** /groups/{group_id}/users | Unlink a user from group |
| [**list_group_mods**](GroupApi.md#list_group_mods) | **GET** /groups/{group_id}/mods | Fetch all mods attached to group |
| [**list_group_packs**](GroupApi.md#list_group_packs) | **GET** /groups/{group_id}/packs | Fetch all packs attached to group |
| [**list_group_users**](GroupApi.md#list_group_users) | **GET** /groups/{group_id}/users | Fetch all users attached to group |
| [**list_groups**](GroupApi.md#list_groups) | **GET** /groups | Fetch all available groups |
| [**permit_group_mod**](GroupApi.md#permit_group_mod) | **PUT** /groups/{group_id}/mods | Update mod perms for group |
| [**permit_group_pack**](GroupApi.md#permit_group_pack) | **PUT** /groups/{group_id}/packs | Update pack perms for group |
| [**permit_group_user**](GroupApi.md#permit_group_user) | **PUT** /groups/{group_id}/users | Update user perms for group |
| [**show_group**](GroupApi.md#show_group) | **GET** /groups/{group_id} | Fetch a specific group |
| [**update_group**](GroupApi.md#update_group) | **PUT** /groups/{group_id} | Update a specific group |


## attach_group_to_mod

> <Notification> attach_group_to_mod(group_id, permit_group_mod_request)

Attach a mod to group

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

api_instance = Kleister::GroupApi.new
group_id = '"group-1"' # String | A group identifier or slug
permit_group_mod_request = Kleister::PermitGroupModRequest.new({mod: 'mod_example', perm: 'perm_example'}) # PermitGroupModRequest | The group mod data to permit

begin
  # Attach a mod to group
  result = api_instance.attach_group_to_mod(group_id, permit_group_mod_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->attach_group_to_mod: #{e}"
end
```

#### Using the attach_group_to_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_group_to_mod_with_http_info(group_id, permit_group_mod_request)

```ruby
begin
  # Attach a mod to group
  data, status_code, headers = api_instance.attach_group_to_mod_with_http_info(group_id, permit_group_mod_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->attach_group_to_mod_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | A group identifier or slug |  |
| **permit_group_mod_request** | [**PermitGroupModRequest**](PermitGroupModRequest.md) | The group mod data to permit |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## attach_group_to_pack

> <Notification> attach_group_to_pack(group_id, permit_group_pack_request)

Attach a pack to group

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

api_instance = Kleister::GroupApi.new
group_id = '"group-1"' # String | A group identifier or slug
permit_group_pack_request = Kleister::PermitGroupPackRequest.new({pack: 'pack_example', perm: 'perm_example'}) # PermitGroupPackRequest | The group pack data to permit

begin
  # Attach a pack to group
  result = api_instance.attach_group_to_pack(group_id, permit_group_pack_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->attach_group_to_pack: #{e}"
end
```

#### Using the attach_group_to_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_group_to_pack_with_http_info(group_id, permit_group_pack_request)

```ruby
begin
  # Attach a pack to group
  data, status_code, headers = api_instance.attach_group_to_pack_with_http_info(group_id, permit_group_pack_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->attach_group_to_pack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | A group identifier or slug |  |
| **permit_group_pack_request** | [**PermitGroupPackRequest**](PermitGroupPackRequest.md) | The group pack data to permit |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## attach_group_to_user

> <Notification> attach_group_to_user(group_id, permit_pack_user_request)

Attach a user to group

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

api_instance = Kleister::GroupApi.new
group_id = '"group-1"' # String | A group identifier or slug
permit_pack_user_request = Kleister::PermitPackUserRequest.new({user: 'user_example', perm: 'perm_example'}) # PermitPackUserRequest | The group user data to permit

begin
  # Attach a user to group
  result = api_instance.attach_group_to_user(group_id, permit_pack_user_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->attach_group_to_user: #{e}"
end
```

#### Using the attach_group_to_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_group_to_user_with_http_info(group_id, permit_pack_user_request)

```ruby
begin
  # Attach a user to group
  data, status_code, headers = api_instance.attach_group_to_user_with_http_info(group_id, permit_pack_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->attach_group_to_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | A group identifier or slug |  |
| **permit_pack_user_request** | [**PermitPackUserRequest**](PermitPackUserRequest.md) | The group user data to permit |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_group

> <Group> create_group(create_group_request)

Create a new group

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

api_instance = Kleister::GroupApi.new
create_group_request = Kleister::CreateGroupRequest.new # CreateGroupRequest | The group data to create

begin
  # Create a new group
  result = api_instance.create_group(create_group_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->create_group: #{e}"
end
```

#### Using the create_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Group>, Integer, Hash)> create_group_with_http_info(create_group_request)

```ruby
begin
  # Create a new group
  data, status_code, headers = api_instance.create_group_with_http_info(create_group_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Group>
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->create_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_group_request** | [**CreateGroupRequest**](CreateGroupRequest.md) | The group data to create |  |

### Return type

[**Group**](Group.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_group

> <Notification> delete_group(group_id)

Delete a specific group

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

api_instance = Kleister::GroupApi.new
group_id = '"group-1"' # String | A group identifier or slug

begin
  # Delete a specific group
  result = api_instance.delete_group(group_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->delete_group: #{e}"
end
```

#### Using the delete_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_group_with_http_info(group_id)

```ruby
begin
  # Delete a specific group
  data, status_code, headers = api_instance.delete_group_with_http_info(group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->delete_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | A group identifier or slug |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_group_from_mod

> <Notification> delete_group_from_mod(group_id, delete_group_from_mod_request)

Unlink a mod from group

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

api_instance = Kleister::GroupApi.new
group_id = '"group-1"' # String | A group identifier or slug
delete_group_from_mod_request = Kleister::DeleteGroupFromModRequest.new({mod: 'mod_example'}) # DeleteGroupFromModRequest | The group mod data to unlink

begin
  # Unlink a mod from group
  result = api_instance.delete_group_from_mod(group_id, delete_group_from_mod_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->delete_group_from_mod: #{e}"
end
```

#### Using the delete_group_from_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_group_from_mod_with_http_info(group_id, delete_group_from_mod_request)

```ruby
begin
  # Unlink a mod from group
  data, status_code, headers = api_instance.delete_group_from_mod_with_http_info(group_id, delete_group_from_mod_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->delete_group_from_mod_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | A group identifier or slug |  |
| **delete_group_from_mod_request** | [**DeleteGroupFromModRequest**](DeleteGroupFromModRequest.md) | The group mod data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_group_from_pack

> <Notification> delete_group_from_pack(group_id, delete_group_from_pack_request)

Unlink a pack from group

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

api_instance = Kleister::GroupApi.new
group_id = '"group-1"' # String | A group identifier or slug
delete_group_from_pack_request = Kleister::DeleteGroupFromPackRequest.new({pack: 'pack_example'}) # DeleteGroupFromPackRequest | The group pack data to unlink

begin
  # Unlink a pack from group
  result = api_instance.delete_group_from_pack(group_id, delete_group_from_pack_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->delete_group_from_pack: #{e}"
end
```

#### Using the delete_group_from_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_group_from_pack_with_http_info(group_id, delete_group_from_pack_request)

```ruby
begin
  # Unlink a pack from group
  data, status_code, headers = api_instance.delete_group_from_pack_with_http_info(group_id, delete_group_from_pack_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->delete_group_from_pack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | A group identifier or slug |  |
| **delete_group_from_pack_request** | [**DeleteGroupFromPackRequest**](DeleteGroupFromPackRequest.md) | The group pack data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_group_from_user

> <Notification> delete_group_from_user(group_id, delete_pack_from_user_request)

Unlink a user from group

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

api_instance = Kleister::GroupApi.new
group_id = '"group-1"' # String | A group identifier or slug
delete_pack_from_user_request = Kleister::DeletePackFromUserRequest.new({user: 'user_example'}) # DeletePackFromUserRequest | The group user data to unlink

begin
  # Unlink a user from group
  result = api_instance.delete_group_from_user(group_id, delete_pack_from_user_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->delete_group_from_user: #{e}"
end
```

#### Using the delete_group_from_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_group_from_user_with_http_info(group_id, delete_pack_from_user_request)

```ruby
begin
  # Unlink a user from group
  data, status_code, headers = api_instance.delete_group_from_user_with_http_info(group_id, delete_pack_from_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->delete_group_from_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | A group identifier or slug |  |
| **delete_pack_from_user_request** | [**DeletePackFromUserRequest**](DeletePackFromUserRequest.md) | The group user data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_group_mods

> <ListGroupMods200Response> list_group_mods(group_id, opts)

Fetch all mods attached to group

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

api_instance = Kleister::GroupApi.new
group_id = '"group-1"' # String | A group identifier or slug
opts = {
  search: 'search_example', # String | Search query
  sort: 'sort_example', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all mods attached to group
  result = api_instance.list_group_mods(group_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->list_group_mods: #{e}"
end
```

#### Using the list_group_mods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListGroupMods200Response>, Integer, Hash)> list_group_mods_with_http_info(group_id, opts)

```ruby
begin
  # Fetch all mods attached to group
  data, status_code, headers = api_instance.list_group_mods_with_http_info(group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListGroupMods200Response>
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->list_group_mods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | A group identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**ListGroupMods200Response**](ListGroupMods200Response.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_group_packs

> <ListGroupPacks200Response> list_group_packs(group_id, opts)

Fetch all packs attached to group

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

api_instance = Kleister::GroupApi.new
group_id = '"group-1"' # String | A group identifier or slug
opts = {
  search: 'search_example', # String | Search query
  sort: 'sort_example', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all packs attached to group
  result = api_instance.list_group_packs(group_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->list_group_packs: #{e}"
end
```

#### Using the list_group_packs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListGroupPacks200Response>, Integer, Hash)> list_group_packs_with_http_info(group_id, opts)

```ruby
begin
  # Fetch all packs attached to group
  data, status_code, headers = api_instance.list_group_packs_with_http_info(group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListGroupPacks200Response>
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->list_group_packs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | A group identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**ListGroupPacks200Response**](ListGroupPacks200Response.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_group_users

> <ListGroupUsers200Response> list_group_users(group_id, opts)

Fetch all users attached to group

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

api_instance = Kleister::GroupApi.new
group_id = '"group-1"' # String | A group identifier or slug
opts = {
  search: 'search_example', # String | Search query
  sort: 'sort_example', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all users attached to group
  result = api_instance.list_group_users(group_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->list_group_users: #{e}"
end
```

#### Using the list_group_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListGroupUsers200Response>, Integer, Hash)> list_group_users_with_http_info(group_id, opts)

```ruby
begin
  # Fetch all users attached to group
  data, status_code, headers = api_instance.list_group_users_with_http_info(group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListGroupUsers200Response>
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->list_group_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | A group identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**ListGroupUsers200Response**](ListGroupUsers200Response.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_groups

> <ListGroups200Response> list_groups(opts)

Fetch all available groups

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

api_instance = Kleister::GroupApi.new
opts = {
  search: 'search_example', # String | Search query
  sort: 'sort_example', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all available groups
  result = api_instance.list_groups(opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->list_groups: #{e}"
end
```

#### Using the list_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListGroups200Response>, Integer, Hash)> list_groups_with_http_info(opts)

```ruby
begin
  # Fetch all available groups
  data, status_code, headers = api_instance.list_groups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListGroups200Response>
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->list_groups_with_http_info: #{e}"
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

[**ListGroups200Response**](ListGroups200Response.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## permit_group_mod

> <Notification> permit_group_mod(group_id, permit_group_mod_request)

Update mod perms for group

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

api_instance = Kleister::GroupApi.new
group_id = '"group-1"' # String | A group identifier or slug
permit_group_mod_request = Kleister::PermitGroupModRequest.new({mod: 'mod_example', perm: 'perm_example'}) # PermitGroupModRequest | The group mod data to permit

begin
  # Update mod perms for group
  result = api_instance.permit_group_mod(group_id, permit_group_mod_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->permit_group_mod: #{e}"
end
```

#### Using the permit_group_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> permit_group_mod_with_http_info(group_id, permit_group_mod_request)

```ruby
begin
  # Update mod perms for group
  data, status_code, headers = api_instance.permit_group_mod_with_http_info(group_id, permit_group_mod_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->permit_group_mod_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | A group identifier or slug |  |
| **permit_group_mod_request** | [**PermitGroupModRequest**](PermitGroupModRequest.md) | The group mod data to permit |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## permit_group_pack

> <Notification> permit_group_pack(group_id, permit_group_pack_request)

Update pack perms for group

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

api_instance = Kleister::GroupApi.new
group_id = '"group-1"' # String | A group identifier or slug
permit_group_pack_request = Kleister::PermitGroupPackRequest.new({pack: 'pack_example', perm: 'perm_example'}) # PermitGroupPackRequest | The group pack data to permit

begin
  # Update pack perms for group
  result = api_instance.permit_group_pack(group_id, permit_group_pack_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->permit_group_pack: #{e}"
end
```

#### Using the permit_group_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> permit_group_pack_with_http_info(group_id, permit_group_pack_request)

```ruby
begin
  # Update pack perms for group
  data, status_code, headers = api_instance.permit_group_pack_with_http_info(group_id, permit_group_pack_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->permit_group_pack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | A group identifier or slug |  |
| **permit_group_pack_request** | [**PermitGroupPackRequest**](PermitGroupPackRequest.md) | The group pack data to permit |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## permit_group_user

> <Notification> permit_group_user(group_id, permit_pack_user_request)

Update user perms for group

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

api_instance = Kleister::GroupApi.new
group_id = '"group-1"' # String | A group identifier or slug
permit_pack_user_request = Kleister::PermitPackUserRequest.new({user: 'user_example', perm: 'perm_example'}) # PermitPackUserRequest | The group user data to permit

begin
  # Update user perms for group
  result = api_instance.permit_group_user(group_id, permit_pack_user_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->permit_group_user: #{e}"
end
```

#### Using the permit_group_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> permit_group_user_with_http_info(group_id, permit_pack_user_request)

```ruby
begin
  # Update user perms for group
  data, status_code, headers = api_instance.permit_group_user_with_http_info(group_id, permit_pack_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->permit_group_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | A group identifier or slug |  |
| **permit_pack_user_request** | [**PermitPackUserRequest**](PermitPackUserRequest.md) | The group user data to permit |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## show_group

> <Group> show_group(group_id)

Fetch a specific group

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

api_instance = Kleister::GroupApi.new
group_id = '"group-1"' # String | A group identifier or slug

begin
  # Fetch a specific group
  result = api_instance.show_group(group_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->show_group: #{e}"
end
```

#### Using the show_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Group>, Integer, Hash)> show_group_with_http_info(group_id)

```ruby
begin
  # Fetch a specific group
  data, status_code, headers = api_instance.show_group_with_http_info(group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Group>
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->show_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | A group identifier or slug |  |

### Return type

[**Group**](Group.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_group

> <Group> update_group(group_id, create_group_request)

Update a specific group

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

api_instance = Kleister::GroupApi.new
group_id = '"group-1"' # String | A group identifier or slug
create_group_request = Kleister::CreateGroupRequest.new # CreateGroupRequest | The group data to update

begin
  # Update a specific group
  result = api_instance.update_group(group_id, create_group_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->update_group: #{e}"
end
```

#### Using the update_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Group>, Integer, Hash)> update_group_with_http_info(group_id, create_group_request)

```ruby
begin
  # Update a specific group
  data, status_code, headers = api_instance.update_group_with_http_info(group_id, create_group_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Group>
rescue Kleister::ApiError => e
  puts "Error when calling GroupApi->update_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | A group identifier or slug |  |
| **create_group_request** | [**CreateGroupRequest**](CreateGroupRequest.md) | The group data to update |  |

### Return type

[**Group**](Group.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

