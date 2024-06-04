# Kleister::ModApi

All URIs are relative to *https://try.kleister.eu/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**attach_mod_to_team**](ModApi.md#attach_mod_to_team) | **POST** /mods/{mod_id}/teams | Attach a team to mod |
| [**attach_mod_to_user**](ModApi.md#attach_mod_to_user) | **POST** /mods/{mod_id}/users | Attach a user to mod |
| [**attach_version_to_build**](ModApi.md#attach_version_to_build) | **POST** /mods/{mod_id}/versions/{version_id}/builds | Attach a build to a version |
| [**create_mod**](ModApi.md#create_mod) | **POST** /mods | Create a new mod |
| [**create_version**](ModApi.md#create_version) | **POST** /mods/{mod_id}/versions | Create a new version for a mod |
| [**delete_mod**](ModApi.md#delete_mod) | **DELETE** /mods/{mod_id} | Delete a specific mod |
| [**delete_mod_from_team**](ModApi.md#delete_mod_from_team) | **DELETE** /mods/{mod_id}/teams | Unlink a team from mod |
| [**delete_mod_from_user**](ModApi.md#delete_mod_from_user) | **DELETE** /mods/{mod_id}/users | Unlink a user from mod |
| [**delete_version**](ModApi.md#delete_version) | **DELETE** /mods/{mod_id}/versions/{version_id} | Delete a specific version for a mod |
| [**delete_version_from_build**](ModApi.md#delete_version_from_build) | **DELETE** /mods/{mod_id}/versions/{version_id}/builds | Unlink a build from a version |
| [**list_mod_teams**](ModApi.md#list_mod_teams) | **GET** /mods/{mod_id}/teams | Fetch all teams attached to mod |
| [**list_mod_users**](ModApi.md#list_mod_users) | **GET** /mods/{mod_id}/users | Fetch all users attached to mod |
| [**list_mods**](ModApi.md#list_mods) | **GET** /mods | Fetch all available mods |
| [**list_version_builds**](ModApi.md#list_version_builds) | **GET** /mods/{mod_id}/versions/{version_id}/builds | Fetch all builds attached to version |
| [**list_versions**](ModApi.md#list_versions) | **GET** /mods/{mod_id}/versions | Fetch all available versions for a mod |
| [**permit_mod_team**](ModApi.md#permit_mod_team) | **PUT** /mods/{mod_id}/teams | Update team perms for mod |
| [**permit_mod_user**](ModApi.md#permit_mod_user) | **PUT** /mods/{mod_id}/users | Update user perms for mod |
| [**show_mod**](ModApi.md#show_mod) | **GET** /mods/{mod_id} | Fetch a specific mod |
| [**show_version**](ModApi.md#show_version) | **GET** /mods/{mod_id}/versions/{version_id} | Fetch a specific version for a mod |
| [**update_mod**](ModApi.md#update_mod) | **PUT** /mods/{mod_id} | Update a specific mod |
| [**update_version**](ModApi.md#update_version) | **PUT** /mods/{mod_id}/versions/{version_id} | Update a specific version for a mod |


## attach_mod_to_team

> <Notification> attach_mod_to_team(mod_id, mod_team_params)

Attach a team to mod

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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod identifier or slug
mod_team_params = Kleister::ModTeamParams.new({team: 'team_example'}) # ModTeamParams | The team data to attach

begin
  # Attach a team to mod
  result = api_instance.attach_mod_to_team(mod_id, mod_team_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->attach_mod_to_team: #{e}"
end
```

#### Using the attach_mod_to_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_mod_to_team_with_http_info(mod_id, mod_team_params)

```ruby
begin
  # Attach a team to mod
  data, status_code, headers = api_instance.attach_mod_to_team_with_http_info(mod_id, mod_team_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->attach_mod_to_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **mod_team_params** | [**ModTeamParams**](ModTeamParams.md) | The team data to attach |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## attach_mod_to_user

> <Notification> attach_mod_to_user(mod_id, mod_user_params)

Attach a user to mod

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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod identifier or slug
mod_user_params = Kleister::ModUserParams.new({user: 'user_example'}) # ModUserParams | The user data to attach

begin
  # Attach a user to mod
  result = api_instance.attach_mod_to_user(mod_id, mod_user_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->attach_mod_to_user: #{e}"
end
```

#### Using the attach_mod_to_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_mod_to_user_with_http_info(mod_id, mod_user_params)

```ruby
begin
  # Attach a user to mod
  data, status_code, headers = api_instance.attach_mod_to_user_with_http_info(mod_id, mod_user_params)
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
| **mod_user_params** | [**ModUserParams**](ModUserParams.md) | The user data to attach |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## attach_version_to_build

> <Notification> attach_version_to_build(mod_id, version_id, version_build_params)

Attach a build to a version

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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod identifier or slug
version_id = 'version_id_example' # String | A version identifier or slug
version_build_params = Kleister::VersionBuildParams.new({pack: 'pack_example', build: 'build_example'}) # VersionBuildParams | The version build data to attach

begin
  # Attach a build to a version
  result = api_instance.attach_version_to_build(mod_id, version_id, version_build_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->attach_version_to_build: #{e}"
end
```

#### Using the attach_version_to_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_version_to_build_with_http_info(mod_id, version_id, version_build_params)

```ruby
begin
  # Attach a build to a version
  data, status_code, headers = api_instance.attach_version_to_build_with_http_info(mod_id, version_id, version_build_params)
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
| **version_build_params** | [**VersionBuildParams**](VersionBuildParams.md) | The version build data to attach |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_mod

> <User> create_mod(mod)

Create a new mod

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

api_instance = Kleister::ModApi.new
mod = Kleister::Mod.new # Mod | The mod data to create

begin
  # Create a new mod
  result = api_instance.create_mod(mod)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->create_mod: #{e}"
end
```

#### Using the create_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> create_mod_with_http_info(mod)

```ruby
begin
  # Create a new mod
  data, status_code, headers = api_instance.create_mod_with_http_info(mod)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->create_mod_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod** | [**Mod**](Mod.md) | The mod data to create |  |

### Return type

[**User**](User.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_version

> <Version> create_version(mod_id, version)

Create a new version for a mod

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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod identifier or slug
version = Kleister::Version.new # Version | The version data to create

begin
  # Create a new version for a mod
  result = api_instance.create_version(mod_id, version)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->create_version: #{e}"
end
```

#### Using the create_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Version>, Integer, Hash)> create_version_with_http_info(mod_id, version)

```ruby
begin
  # Create a new version for a mod
  data, status_code, headers = api_instance.create_version_with_http_info(mod_id, version)
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
| **version** | [**Version**](Version.md) | The version data to create |  |

### Return type

[**Version**](Version.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod identifier or slug

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

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_mod_from_team

> <Notification> delete_mod_from_team(mod_id, mod_team_params)

Unlink a team from mod

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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod identifier or slug
mod_team_params = Kleister::ModTeamParams.new({team: 'team_example'}) # ModTeamParams | The mod team data to unlink

begin
  # Unlink a team from mod
  result = api_instance.delete_mod_from_team(mod_id, mod_team_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_mod_from_team: #{e}"
end
```

#### Using the delete_mod_from_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_mod_from_team_with_http_info(mod_id, mod_team_params)

```ruby
begin
  # Unlink a team from mod
  data, status_code, headers = api_instance.delete_mod_from_team_with_http_info(mod_id, mod_team_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_mod_from_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **mod_team_params** | [**ModTeamParams**](ModTeamParams.md) | The mod team data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_mod_from_user

> <Notification> delete_mod_from_user(mod_id, mod_user_params)

Unlink a user from mod

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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod identifier or slug
mod_user_params = Kleister::ModUserParams.new({user: 'user_example'}) # ModUserParams | The mod user data to unlink

begin
  # Unlink a user from mod
  result = api_instance.delete_mod_from_user(mod_id, mod_user_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_mod_from_user: #{e}"
end
```

#### Using the delete_mod_from_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_mod_from_user_with_http_info(mod_id, mod_user_params)

```ruby
begin
  # Unlink a user from mod
  data, status_code, headers = api_instance.delete_mod_from_user_with_http_info(mod_id, mod_user_params)
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
| **mod_user_params** | [**ModUserParams**](ModUserParams.md) | The mod user data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod identifier or slug
version_id = 'version_id_example' # String | A version identifier or slug

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

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_version_from_build

> <Notification> delete_version_from_build(mod_id, version_id, version_build_params)

Unlink a build from a version

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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod identifier or slug
version_id = 'version_id_example' # String | A version identifier or slug
version_build_params = Kleister::VersionBuildParams.new({pack: 'pack_example', build: 'build_example'}) # VersionBuildParams | The version build data to unlink

begin
  # Unlink a build from a version
  result = api_instance.delete_version_from_build(mod_id, version_id, version_build_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_version_from_build: #{e}"
end
```

#### Using the delete_version_from_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_version_from_build_with_http_info(mod_id, version_id, version_build_params)

```ruby
begin
  # Unlink a build from a version
  data, status_code, headers = api_instance.delete_version_from_build_with_http_info(mod_id, version_id, version_build_params)
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
| **version_build_params** | [**VersionBuildParams**](VersionBuildParams.md) | The version build data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_mod_teams

> <ModTeams> list_mod_teams(mod_id, opts)

Fetch all teams attached to mod

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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod identifier or slug
opts = {
  search: '"John Doe"', # String | Search query
  sort: 'slug', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all teams attached to mod
  result = api_instance.list_mod_teams(mod_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_mod_teams: #{e}"
end
```

#### Using the list_mod_teams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModTeams>, Integer, Hash)> list_mod_teams_with_http_info(mod_id, opts)

```ruby
begin
  # Fetch all teams attached to mod
  data, status_code, headers = api_instance.list_mod_teams_with_http_info(mod_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModTeams>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_mod_teams_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional][default to &#39;name&#39;] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**ModTeams**](ModTeams.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_mod_users

> <ModUsers> list_mod_users(mod_id, opts)

Fetch all users attached to mod

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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod identifier or slug
opts = {
  search: '"John Doe"', # String | Search query
  sort: 'username', # String | Sorting column
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

> <Array(<ModUsers>, Integer, Hash)> list_mod_users_with_http_info(mod_id, opts)

```ruby
begin
  # Fetch all users attached to mod
  data, status_code, headers = api_instance.list_mod_users_with_http_info(mod_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModUsers>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_mod_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional][default to &#39;username&#39;] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**ModUsers**](ModUsers.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_mods

> <Mods> list_mods(opts)

Fetch all available mods

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

api_instance = Kleister::ModApi.new
opts = {
  search: '"John Doe"', # String | Search query
  sort: 'name', # String | Sorting column
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

> <Array(<Mods>, Integer, Hash)> list_mods_with_http_info(opts)

```ruby
begin
  # Fetch all available mods
  data, status_code, headers = api_instance.list_mods_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Mods>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_mods_with_http_info: #{e}"
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

[**Mods**](Mods.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_version_builds

> <VersionBuilds> list_version_builds(mod_id, version_id, opts)

Fetch all builds attached to version

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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod identifier or slug
version_id = 'version_id_example' # String | A version identifier or slug
opts = {
  search: '"John Doe"', # String | Search query
  sort: 'slug', # String | Sorting column
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

> <Array(<VersionBuilds>, Integer, Hash)> list_version_builds_with_http_info(mod_id, version_id, opts)

```ruby
begin
  # Fetch all builds attached to version
  data, status_code, headers = api_instance.list_version_builds_with_http_info(mod_id, version_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VersionBuilds>
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
| **sort** | **String** | Sorting column | [optional][default to &#39;name&#39;] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**VersionBuilds**](VersionBuilds.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_versions

> <Versions> list_versions(mod_id, opts)

Fetch all available versions for a mod

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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod identifier or slug
opts = {
  search: '"John Doe"', # String | Search query
  sort: 'slug', # String | Sorting column
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

> <Array(<Versions>, Integer, Hash)> list_versions_with_http_info(mod_id, opts)

```ruby
begin
  # Fetch all available versions for a mod
  data, status_code, headers = api_instance.list_versions_with_http_info(mod_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Versions>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional][default to &#39;name&#39;] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**Versions**](Versions.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## permit_mod_team

> <Notification> permit_mod_team(mod_id, mod_team_params)

Update team perms for mod

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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod identifier or slug
mod_team_params = Kleister::ModTeamParams.new({team: 'team_example'}) # ModTeamParams | The team data to update

begin
  # Update team perms for mod
  result = api_instance.permit_mod_team(mod_id, mod_team_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->permit_mod_team: #{e}"
end
```

#### Using the permit_mod_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> permit_mod_team_with_http_info(mod_id, mod_team_params)

```ruby
begin
  # Update team perms for mod
  data, status_code, headers = api_instance.permit_mod_team_with_http_info(mod_id, mod_team_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->permit_mod_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod identifier or slug |  |
| **mod_team_params** | [**ModTeamParams**](ModTeamParams.md) | The team data to update |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## permit_mod_user

> <Notification> permit_mod_user(mod_id, mod_user_params)

Update user perms for mod

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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod identifier or slug
mod_user_params = Kleister::ModUserParams.new({user: 'user_example'}) # ModUserParams | The user data to update

begin
  # Update user perms for mod
  result = api_instance.permit_mod_user(mod_id, mod_user_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->permit_mod_user: #{e}"
end
```

#### Using the permit_mod_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> permit_mod_user_with_http_info(mod_id, mod_user_params)

```ruby
begin
  # Update user perms for mod
  data, status_code, headers = api_instance.permit_mod_user_with_http_info(mod_id, mod_user_params)
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
| **mod_user_params** | [**ModUserParams**](ModUserParams.md) | The user data to update |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod identifier or slug

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

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod identifier or slug
version_id = 'version_id_example' # String | A version identifier or slug

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

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_mod

> <Mod> update_mod(mod_id, mod)

Update a specific mod

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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod identifier or slug
mod = Kleister::Mod.new # Mod | The mod data to update

begin
  # Update a specific mod
  result = api_instance.update_mod(mod_id, mod)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->update_mod: #{e}"
end
```

#### Using the update_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Mod>, Integer, Hash)> update_mod_with_http_info(mod_id, mod)

```ruby
begin
  # Update a specific mod
  data, status_code, headers = api_instance.update_mod_with_http_info(mod_id, mod)
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
| **mod** | [**Mod**](Mod.md) | The mod data to update |  |

### Return type

[**Mod**](Mod.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_version

> <Version> update_version(mod_id, version_id, version)

Update a specific version for a mod

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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod identifier or slug
version_id = 'version_id_example' # String | A version identifier or slug
version = Kleister::Version.new # Version | The version data to update

begin
  # Update a specific version for a mod
  result = api_instance.update_version(mod_id, version_id, version)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->update_version: #{e}"
end
```

#### Using the update_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Version>, Integer, Hash)> update_version_with_http_info(mod_id, version_id, version)

```ruby
begin
  # Update a specific version for a mod
  data, status_code, headers = api_instance.update_version_with_http_info(mod_id, version_id, version)
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
| **version** | [**Version**](Version.md) | The version data to update |  |

### Return type

[**Version**](Version.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

