# Kleister::ModApi

All URIs are relative to *https://try.kleister.eu/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**attach_mod_to_group**](ModApi.md#attach_mod_to_group) | **POST** /mods/{mod_id}/groups | Attach a group to mod |
| [**attach_mod_to_user**](ModApi.md#attach_mod_to_user) | **POST** /mods/{mod_id}/users | Attach a user to mod |
| [**attach_version_to_build**](ModApi.md#attach_version_to_build) | **POST** /mods/{mod_id}/versions/{version_id}/builds | Attach a build to a version |
| [**create_mod**](ModApi.md#create_mod) | **POST** /mods | Create a new mod |
| [**create_mod_avatar**](ModApi.md#create_mod_avatar) | **POST** /mods/{mod_id}/avatar | Upload an avatar for the defined mod |
| [**create_pack_avatar**](ModApi.md#create_pack_avatar) | **POST** /packs/{pack_id}/avatar | Upload an avatar for the defined pack |
| [**create_version**](ModApi.md#create_version) | **POST** /mods/{mod_id}/versions | Create a new version for a mod |
| [**delete_mod**](ModApi.md#delete_mod) | **DELETE** /mods/{mod_id} | Delete a specific mod |
| [**delete_mod_avatar**](ModApi.md#delete_mod_avatar) | **DELETE** /mods/{mod_id}/avatar | Delete the avatar for the defined mod |
| [**delete_mod_from_group**](ModApi.md#delete_mod_from_group) | **DELETE** /mods/{mod_id}/groups | Unlink a group from mod |
| [**delete_mod_from_user**](ModApi.md#delete_mod_from_user) | **DELETE** /mods/{mod_id}/users | Unlink a user from mod |
| [**delete_pack_avatar**](ModApi.md#delete_pack_avatar) | **DELETE** /packs/{pack_id}/avatar | Delete the avatar for the defined pack |
| [**delete_version**](ModApi.md#delete_version) | **DELETE** /mods/{mod_id}/versions/{version_id} | Delete a specific version for a mod |
| [**delete_version_from_build**](ModApi.md#delete_version_from_build) | **DELETE** /mods/{mod_id}/versions/{version_id}/builds | Unlink a build from a version |
| [**list_mod_groups**](ModApi.md#list_mod_groups) | **GET** /mods/{mod_id}/groups | Fetch all groups attached to mod |
| [**list_mod_users**](ModApi.md#list_mod_users) | **GET** /mods/{mod_id}/users | Fetch all users attached to mod |
| [**list_mods**](ModApi.md#list_mods) | **GET** /mods | Fetch all available mods |
| [**list_version_builds**](ModApi.md#list_version_builds) | **GET** /mods/{mod_id}/versions/{version_id}/builds | Fetch all builds attached to version |
| [**list_versions**](ModApi.md#list_versions) | **GET** /mods/{mod_id}/versions | Fetch all available versions for a mod |
| [**permit_mod_group**](ModApi.md#permit_mod_group) | **PUT** /mods/{mod_id}/groups | Update group perms for mod |
| [**permit_mod_user**](ModApi.md#permit_mod_user) | **PUT** /mods/{mod_id}/users | Update user perms for mod |
| [**show_mod**](ModApi.md#show_mod) | **GET** /mods/{mod_id} | Fetch a specific mod |
| [**show_version**](ModApi.md#show_version) | **GET** /mods/{mod_id}/versions/{version_id} | Fetch a specific version for a mod |
| [**update_mod**](ModApi.md#update_mod) | **PUT** /mods/{mod_id} | Update a specific mod |
| [**update_version**](ModApi.md#update_version) | **PUT** /mods/{mod_id}/versions/{version_id} | Update a specific version for a mod |


## attach_mod_to_group

> <Notification> attach_mod_to_group(mod_id, permit_pack_group_request)

Attach a group to mod

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

api_instance = Kleister::ModApi.new
mod_id = '"mod-1"' # String | A mod identifier or slug
permit_pack_group_request = Kleister::PermitPackGroupRequest.new({group: 'group_example', perm: 'perm_example'}) # PermitPackGroupRequest | The mod group data to permit

begin
  # Attach a group to mod
  result = api_instance.attach_mod_to_group(mod_id, permit_pack_group_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->attach_mod_to_group: #{e}"
end
```

#### Using the attach_mod_to_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_mod_to_group_with_http_info(mod_id, permit_pack_group_request)

```ruby
begin
  # Attach a group to mod
  data, status_code, headers = api_instance.attach_mod_to_group_with_http_info(mod_id, permit_pack_group_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->attach_mod_to_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **permit_pack_group_request** | [**PermitPackGroupRequest**](PermitPackGroupRequest.md) | The mod group data to permit |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## attach_mod_to_user

> <Notification> attach_mod_to_user(mod_id, permit_pack_user_request)

Attach a user to mod

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

api_instance = Kleister::ModApi.new
mod_id = '"mod-1"' # String | A mod identifier or slug
permit_pack_user_request = Kleister::PermitPackUserRequest.new({user: 'user_example', perm: 'perm_example'}) # PermitPackUserRequest | The mod user data to permit

begin
  # Attach a user to mod
  result = api_instance.attach_mod_to_user(mod_id, permit_pack_user_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->attach_mod_to_user: #{e}"
end
```

#### Using the attach_mod_to_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_mod_to_user_with_http_info(mod_id, permit_pack_user_request)

```ruby
begin
  # Attach a user to mod
  data, status_code, headers = api_instance.attach_mod_to_user_with_http_info(mod_id, permit_pack_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->attach_mod_to_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **permit_pack_user_request** | [**PermitPackUserRequest**](PermitPackUserRequest.md) | The mod user data to permit |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## attach_version_to_build

> <Notification> attach_version_to_build(mod_id, version_id, attach_minecraft_to_build_request)

Attach a build to a version

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

api_instance = Kleister::ModApi.new
mod_id = '"mod-1"' # String | A mod identifier or slug
version_id = '"version-1"' # String | A version identifier or slug
attach_minecraft_to_build_request = Kleister::AttachMinecraftToBuildRequest.new({pack: 'pack_example', build: 'build_example'}) # AttachMinecraftToBuildRequest | The version build data to create or delete

begin
  # Attach a build to a version
  result = api_instance.attach_version_to_build(mod_id, version_id, attach_minecraft_to_build_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->attach_version_to_build: #{e}"
end
```

#### Using the attach_version_to_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_version_to_build_with_http_info(mod_id, version_id, attach_minecraft_to_build_request)

```ruby
begin
  # Attach a build to a version
  data, status_code, headers = api_instance.attach_version_to_build_with_http_info(mod_id, version_id, attach_minecraft_to_build_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->attach_version_to_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **version_id** | **String** | A version identifier or slug |  |
| **attach_minecraft_to_build_request** | [**AttachMinecraftToBuildRequest**](AttachMinecraftToBuildRequest.md) | The version build data to create or delete |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_mod

> <Mod> create_mod(create_mod_request)

Create a new mod

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

api_instance = Kleister::ModApi.new
create_mod_request = Kleister::CreateModRequest.new # CreateModRequest | The mod data to create

begin
  # Create a new mod
  result = api_instance.create_mod(create_mod_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->create_mod: #{e}"
end
```

#### Using the create_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Mod>, Integer, Hash)> create_mod_with_http_info(create_mod_request)

```ruby
begin
  # Create a new mod
  data, status_code, headers = api_instance.create_mod_with_http_info(create_mod_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Mod>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->create_mod_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_mod_request** | [**CreateModRequest**](CreateModRequest.md) | The mod data to create |  |

### Return type

[**Mod**](Mod.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_mod_avatar

> <ModAvatar> create_mod_avatar(mod_id, opts)

Upload an avatar for the defined mod

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

api_instance = Kleister::ModApi.new
mod_id = '"mod-1"' # String | A mod identifier or slug
opts = {
  file: File.new('/path/to/some/file') # File | 
}

begin
  # Upload an avatar for the defined mod
  result = api_instance.create_mod_avatar(mod_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->create_mod_avatar: #{e}"
end
```

#### Using the create_mod_avatar_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModAvatar>, Integer, Hash)> create_mod_avatar_with_http_info(mod_id, opts)

```ruby
begin
  # Upload an avatar for the defined mod
  data, status_code, headers = api_instance.create_mod_avatar_with_http_info(mod_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModAvatar>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->create_mod_avatar_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **file** | **File** |  | [optional] |

### Return type

[**ModAvatar**](ModAvatar.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## create_pack_avatar

> <PackAvatar> create_pack_avatar(pack_id, opts)

Upload an avatar for the defined pack

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

api_instance = Kleister::ModApi.new
pack_id = '"pack-1"' # String | A pack identifier or slug
opts = {
  file: File.new('/path/to/some/file') # File | 
}

begin
  # Upload an avatar for the defined pack
  result = api_instance.create_pack_avatar(pack_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->create_pack_avatar: #{e}"
end
```

#### Using the create_pack_avatar_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PackAvatar>, Integer, Hash)> create_pack_avatar_with_http_info(pack_id, opts)

```ruby
begin
  # Upload an avatar for the defined pack
  data, status_code, headers = api_instance.create_pack_avatar_with_http_info(pack_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PackAvatar>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->create_pack_avatar_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack identifier or slug |  |
| **file** | **File** |  | [optional] |

### Return type

[**PackAvatar**](PackAvatar.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## create_version

> <Version> create_version(mod_id, create_version_request)

Create a new version for a mod

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

api_instance = Kleister::ModApi.new
mod_id = '"mod-1"' # String | A mod identifier or slug
create_version_request = Kleister::CreateVersionRequest.new # CreateVersionRequest | The version data to create

begin
  # Create a new version for a mod
  result = api_instance.create_version(mod_id, create_version_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->create_version: #{e}"
end
```

#### Using the create_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Version>, Integer, Hash)> create_version_with_http_info(mod_id, create_version_request)

```ruby
begin
  # Create a new version for a mod
  data, status_code, headers = api_instance.create_version_with_http_info(mod_id, create_version_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Version>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->create_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **create_version_request** | [**CreateVersionRequest**](CreateVersionRequest.md) | The version data to create |  |

### Return type

[**Version**](Version.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_mod

> <Notification> delete_mod(mod_id)

Delete a specific mod

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

api_instance = Kleister::ModApi.new
mod_id = '"mod-1"' # String | A mod identifier or slug

begin
  # Delete a specific mod
  result = api_instance.delete_mod(mod_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_mod: #{e}"
end
```

#### Using the delete_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_mod_with_http_info(mod_id)

```ruby
begin
  # Delete a specific mod
  data, status_code, headers = api_instance.delete_mod_with_http_info(mod_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_mod_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_mod_avatar

> <ModAvatar> delete_mod_avatar(mod_id)

Delete the avatar for the defined mod

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

api_instance = Kleister::ModApi.new
mod_id = '"mod-1"' # String | A mod identifier or slug

begin
  # Delete the avatar for the defined mod
  result = api_instance.delete_mod_avatar(mod_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_mod_avatar: #{e}"
end
```

#### Using the delete_mod_avatar_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModAvatar>, Integer, Hash)> delete_mod_avatar_with_http_info(mod_id)

```ruby
begin
  # Delete the avatar for the defined mod
  data, status_code, headers = api_instance.delete_mod_avatar_with_http_info(mod_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModAvatar>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_mod_avatar_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |

### Return type

[**ModAvatar**](ModAvatar.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_mod_from_group

> <Notification> delete_mod_from_group(mod_id, delete_pack_from_group_request)

Unlink a group from mod

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

api_instance = Kleister::ModApi.new
mod_id = '"mod-1"' # String | A mod identifier or slug
delete_pack_from_group_request = Kleister::DeletePackFromGroupRequest.new({group: 'group_example'}) # DeletePackFromGroupRequest | The mod group data to unlink

begin
  # Unlink a group from mod
  result = api_instance.delete_mod_from_group(mod_id, delete_pack_from_group_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_mod_from_group: #{e}"
end
```

#### Using the delete_mod_from_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_mod_from_group_with_http_info(mod_id, delete_pack_from_group_request)

```ruby
begin
  # Unlink a group from mod
  data, status_code, headers = api_instance.delete_mod_from_group_with_http_info(mod_id, delete_pack_from_group_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_mod_from_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **delete_pack_from_group_request** | [**DeletePackFromGroupRequest**](DeletePackFromGroupRequest.md) | The mod group data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_mod_from_user

> <Notification> delete_mod_from_user(mod_id, delete_pack_from_user_request)

Unlink a user from mod

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

api_instance = Kleister::ModApi.new
mod_id = '"mod-1"' # String | A mod identifier or slug
delete_pack_from_user_request = Kleister::DeletePackFromUserRequest.new({user: 'user_example'}) # DeletePackFromUserRequest | The mod user data to unlink

begin
  # Unlink a user from mod
  result = api_instance.delete_mod_from_user(mod_id, delete_pack_from_user_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_mod_from_user: #{e}"
end
```

#### Using the delete_mod_from_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_mod_from_user_with_http_info(mod_id, delete_pack_from_user_request)

```ruby
begin
  # Unlink a user from mod
  data, status_code, headers = api_instance.delete_mod_from_user_with_http_info(mod_id, delete_pack_from_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_mod_from_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **delete_pack_from_user_request** | [**DeletePackFromUserRequest**](DeletePackFromUserRequest.md) | The mod user data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_pack_avatar

> <PackAvatar> delete_pack_avatar(pack_id)

Delete the avatar for the defined pack

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

api_instance = Kleister::ModApi.new
pack_id = '"pack-1"' # String | A pack identifier or slug

begin
  # Delete the avatar for the defined pack
  result = api_instance.delete_pack_avatar(pack_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_pack_avatar: #{e}"
end
```

#### Using the delete_pack_avatar_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PackAvatar>, Integer, Hash)> delete_pack_avatar_with_http_info(pack_id)

```ruby
begin
  # Delete the avatar for the defined pack
  data, status_code, headers = api_instance.delete_pack_avatar_with_http_info(pack_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PackAvatar>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_pack_avatar_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack identifier or slug |  |

### Return type

[**PackAvatar**](PackAvatar.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_version

> <Notification> delete_version(mod_id, version_id)

Delete a specific version for a mod

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

api_instance = Kleister::ModApi.new
mod_id = '"mod-1"' # String | A mod identifier or slug
version_id = '"version-1"' # String | A version identifier or slug

begin
  # Delete a specific version for a mod
  result = api_instance.delete_version(mod_id, version_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_version: #{e}"
end
```

#### Using the delete_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_version_with_http_info(mod_id, version_id)

```ruby
begin
  # Delete a specific version for a mod
  data, status_code, headers = api_instance.delete_version_with_http_info(mod_id, version_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **version_id** | **String** | A version identifier or slug |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_version_from_build

> <Notification> delete_version_from_build(mod_id, version_id, attach_minecraft_to_build_request)

Unlink a build from a version

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

api_instance = Kleister::ModApi.new
mod_id = '"mod-1"' # String | A mod identifier or slug
version_id = '"version-1"' # String | A version identifier or slug
attach_minecraft_to_build_request = Kleister::AttachMinecraftToBuildRequest.new({pack: 'pack_example', build: 'build_example'}) # AttachMinecraftToBuildRequest | The version build data to create or delete

begin
  # Unlink a build from a version
  result = api_instance.delete_version_from_build(mod_id, version_id, attach_minecraft_to_build_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_version_from_build: #{e}"
end
```

#### Using the delete_version_from_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_version_from_build_with_http_info(mod_id, version_id, attach_minecraft_to_build_request)

```ruby
begin
  # Unlink a build from a version
  data, status_code, headers = api_instance.delete_version_from_build_with_http_info(mod_id, version_id, attach_minecraft_to_build_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_version_from_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **version_id** | **String** | A version identifier or slug |  |
| **attach_minecraft_to_build_request** | [**AttachMinecraftToBuildRequest**](AttachMinecraftToBuildRequest.md) | The version build data to create or delete |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_mod_groups

> <InlineObject13> list_mod_groups(mod_id, opts)

Fetch all groups attached to mod

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

api_instance = Kleister::ModApi.new
mod_id = '"mod-1"' # String | A mod identifier or slug
opts = {
  search: 'search_example', # String | Search query
  sort: 'sort_example', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all groups attached to mod
  result = api_instance.list_mod_groups(mod_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_mod_groups: #{e}"
end
```

#### Using the list_mod_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject13>, Integer, Hash)> list_mod_groups_with_http_info(mod_id, opts)

```ruby
begin
  # Fetch all groups attached to mod
  data, status_code, headers = api_instance.list_mod_groups_with_http_info(mod_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject13>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_mod_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**InlineObject13**](InlineObject13.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_mod_users

> <InlineObject12> list_mod_users(mod_id, opts)

Fetch all users attached to mod

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

api_instance = Kleister::ModApi.new
mod_id = '"mod-1"' # String | A mod identifier or slug
opts = {
  search: 'search_example', # String | Search query
  sort: 'sort_example', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all users attached to mod
  result = api_instance.list_mod_users(mod_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_mod_users: #{e}"
end
```

#### Using the list_mod_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject12>, Integer, Hash)> list_mod_users_with_http_info(mod_id, opts)

```ruby
begin
  # Fetch all users attached to mod
  data, status_code, headers = api_instance.list_mod_users_with_http_info(mod_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject12>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_mod_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**InlineObject12**](InlineObject12.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_mods

> <InlineObject11> list_mods(opts)

Fetch all available mods

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

api_instance = Kleister::ModApi.new
opts = {
  search: 'search_example', # String | Search query
  sort: 'sort_example', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all available mods
  result = api_instance.list_mods(opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_mods: #{e}"
end
```

#### Using the list_mods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject11>, Integer, Hash)> list_mods_with_http_info(opts)

```ruby
begin
  # Fetch all available mods
  data, status_code, headers = api_instance.list_mods_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject11>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_mods_with_http_info: #{e}"
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

[**InlineObject11**](InlineObject11.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_version_builds

> <InlineObject15> list_version_builds(mod_id, version_id, opts)

Fetch all builds attached to version

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

api_instance = Kleister::ModApi.new
mod_id = '"mod-1"' # String | A mod identifier or slug
version_id = '"version-1"' # String | A version identifier or slug
opts = {
  search: 'search_example', # String | Search query
  sort: 'sort_example', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all builds attached to version
  result = api_instance.list_version_builds(mod_id, version_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_version_builds: #{e}"
end
```

#### Using the list_version_builds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject15>, Integer, Hash)> list_version_builds_with_http_info(mod_id, version_id, opts)

```ruby
begin
  # Fetch all builds attached to version
  data, status_code, headers = api_instance.list_version_builds_with_http_info(mod_id, version_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject15>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_version_builds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **version_id** | **String** | A version identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**InlineObject15**](InlineObject15.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_versions

> <InlineObject14> list_versions(mod_id, opts)

Fetch all available versions for a mod

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

api_instance = Kleister::ModApi.new
mod_id = '"mod-1"' # String | A mod identifier or slug
opts = {
  search: 'search_example', # String | Search query
  sort: 'sort_example', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all available versions for a mod
  result = api_instance.list_versions(mod_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_versions: #{e}"
end
```

#### Using the list_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject14>, Integer, Hash)> list_versions_with_http_info(mod_id, opts)

```ruby
begin
  # Fetch all available versions for a mod
  data, status_code, headers = api_instance.list_versions_with_http_info(mod_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject14>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**InlineObject14**](InlineObject14.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## permit_mod_group

> <Notification> permit_mod_group(mod_id, permit_pack_group_request)

Update group perms for mod

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

api_instance = Kleister::ModApi.new
mod_id = '"mod-1"' # String | A mod identifier or slug
permit_pack_group_request = Kleister::PermitPackGroupRequest.new({group: 'group_example', perm: 'perm_example'}) # PermitPackGroupRequest | The mod group data to permit

begin
  # Update group perms for mod
  result = api_instance.permit_mod_group(mod_id, permit_pack_group_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->permit_mod_group: #{e}"
end
```

#### Using the permit_mod_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> permit_mod_group_with_http_info(mod_id, permit_pack_group_request)

```ruby
begin
  # Update group perms for mod
  data, status_code, headers = api_instance.permit_mod_group_with_http_info(mod_id, permit_pack_group_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->permit_mod_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **permit_pack_group_request** | [**PermitPackGroupRequest**](PermitPackGroupRequest.md) | The mod group data to permit |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## permit_mod_user

> <Notification> permit_mod_user(mod_id, permit_pack_user_request)

Update user perms for mod

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

api_instance = Kleister::ModApi.new
mod_id = '"mod-1"' # String | A mod identifier or slug
permit_pack_user_request = Kleister::PermitPackUserRequest.new({user: 'user_example', perm: 'perm_example'}) # PermitPackUserRequest | The mod user data to permit

begin
  # Update user perms for mod
  result = api_instance.permit_mod_user(mod_id, permit_pack_user_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->permit_mod_user: #{e}"
end
```

#### Using the permit_mod_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> permit_mod_user_with_http_info(mod_id, permit_pack_user_request)

```ruby
begin
  # Update user perms for mod
  data, status_code, headers = api_instance.permit_mod_user_with_http_info(mod_id, permit_pack_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->permit_mod_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **permit_pack_user_request** | [**PermitPackUserRequest**](PermitPackUserRequest.md) | The mod user data to permit |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## show_mod

> <Mod> show_mod(mod_id)

Fetch a specific mod

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

api_instance = Kleister::ModApi.new
mod_id = '"mod-1"' # String | A mod identifier or slug

begin
  # Fetch a specific mod
  result = api_instance.show_mod(mod_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->show_mod: #{e}"
end
```

#### Using the show_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Mod>, Integer, Hash)> show_mod_with_http_info(mod_id)

```ruby
begin
  # Fetch a specific mod
  data, status_code, headers = api_instance.show_mod_with_http_info(mod_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Mod>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->show_mod_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |

### Return type

[**Mod**](Mod.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_version

> <Version> show_version(mod_id, version_id)

Fetch a specific version for a mod

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

api_instance = Kleister::ModApi.new
mod_id = '"mod-1"' # String | A mod identifier or slug
version_id = '"version-1"' # String | A version identifier or slug

begin
  # Fetch a specific version for a mod
  result = api_instance.show_version(mod_id, version_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->show_version: #{e}"
end
```

#### Using the show_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Version>, Integer, Hash)> show_version_with_http_info(mod_id, version_id)

```ruby
begin
  # Fetch a specific version for a mod
  data, status_code, headers = api_instance.show_version_with_http_info(mod_id, version_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Version>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->show_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **version_id** | **String** | A version identifier or slug |  |

### Return type

[**Version**](Version.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_mod

> <Mod> update_mod(mod_id, create_mod_request)

Update a specific mod

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

api_instance = Kleister::ModApi.new
mod_id = '"mod-1"' # String | A mod identifier or slug
create_mod_request = Kleister::CreateModRequest.new # CreateModRequest | The mod data to update

begin
  # Update a specific mod
  result = api_instance.update_mod(mod_id, create_mod_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->update_mod: #{e}"
end
```

#### Using the update_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Mod>, Integer, Hash)> update_mod_with_http_info(mod_id, create_mod_request)

```ruby
begin
  # Update a specific mod
  data, status_code, headers = api_instance.update_mod_with_http_info(mod_id, create_mod_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Mod>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->update_mod_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **create_mod_request** | [**CreateModRequest**](CreateModRequest.md) | The mod data to update |  |

### Return type

[**Mod**](Mod.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_version

> <Version> update_version(mod_id, version_id, create_version_request)

Update a specific version for a mod

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

api_instance = Kleister::ModApi.new
mod_id = '"mod-1"' # String | A mod identifier or slug
version_id = '"version-1"' # String | A version identifier or slug
create_version_request = Kleister::CreateVersionRequest.new # CreateVersionRequest | The version data to update

begin
  # Update a specific version for a mod
  result = api_instance.update_version(mod_id, version_id, create_version_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->update_version: #{e}"
end
```

#### Using the update_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Version>, Integer, Hash)> update_version_with_http_info(mod_id, version_id, create_version_request)

```ruby
begin
  # Update a specific version for a mod
  data, status_code, headers = api_instance.update_version_with_http_info(mod_id, version_id, create_version_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Version>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->update_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **version_id** | **String** | A version identifier or slug |  |
| **create_version_request** | [**CreateVersionRequest**](CreateVersionRequest.md) | The version data to update |  |

### Return type

[**Version**](Version.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

