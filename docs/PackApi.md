# Kleister::PackApi

All URIs are relative to *https://try.kleister.eu/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**attach_build_to_version**](PackApi.md#attach_build_to_version) | **POST** /packs/{pack_id}/builds/{build_id}/versions | Attach a version to a build |
| [**attach_pack_to_team**](PackApi.md#attach_pack_to_team) | **POST** /packs/{pack_id}/teams | Attach a team to pack |
| [**attach_pack_to_user**](PackApi.md#attach_pack_to_user) | **POST** /packs/{pack_id}/users | Attach a user to pack |
| [**create_build**](PackApi.md#create_build) | **POST** /packs/{pack_id}/builds | Create a new build for a pack |
| [**create_pack**](PackApi.md#create_pack) | **POST** /packs | Create a new pack |
| [**delete_build**](PackApi.md#delete_build) | **DELETE** /packs/{pack_id}/builds/{build_id} | Delete a specific build for a pack |
| [**delete_build_from_version**](PackApi.md#delete_build_from_version) | **DELETE** /packs/{pack_id}/builds/{build_id}/versions | Unlink a version from a build |
| [**delete_pack**](PackApi.md#delete_pack) | **DELETE** /packs/{pack_id} | Delete a specific pack |
| [**delete_pack_from_team**](PackApi.md#delete_pack_from_team) | **DELETE** /packs/{pack_id}/teams | Unlink a team from pack |
| [**delete_pack_from_user**](PackApi.md#delete_pack_from_user) | **DELETE** /packs/{pack_id}/users | Unlink a user from pack |
| [**list_build_versions**](PackApi.md#list_build_versions) | **GET** /packs/{pack_id}/builds/{build_id}/versions | Fetch all versions attached to build |
| [**list_builds**](PackApi.md#list_builds) | **GET** /packs/{pack_id}/builds | Fetch all available builds for a pack |
| [**list_pack_teams**](PackApi.md#list_pack_teams) | **GET** /packs/{pack_id}/teams | Fetch all teams attached to pack |
| [**list_pack_users**](PackApi.md#list_pack_users) | **GET** /packs/{pack_id}/users | Fetch all users attached to pack |
| [**list_packs**](PackApi.md#list_packs) | **GET** /packs | Fetch all available packs |
| [**permit_pack_team**](PackApi.md#permit_pack_team) | **PUT** /packs/{pack_id}/teams | Update team perms for pack |
| [**permit_pack_user**](PackApi.md#permit_pack_user) | **PUT** /packs/{pack_id}/users | Update user perms for pack |
| [**show_build**](PackApi.md#show_build) | **GET** /packs/{pack_id}/builds/{build_id} | Fetch a specific build for a pack |
| [**show_pack**](PackApi.md#show_pack) | **GET** /packs/{pack_id} | Fetch a specific pack |
| [**update_build**](PackApi.md#update_build) | **PUT** /packs/{pack_id}/builds/{build_id} | Update a specific build for a pack |
| [**update_pack**](PackApi.md#update_pack) | **PUT** /packs/{pack_id} | Update a specific pack |


## attach_build_to_version

> <Notification> attach_build_to_version(pack_id, build_id, build_version_params)

Attach a version to a build

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack identifier or slug
build_id = 'build_id_example' # String | A build identifier or slug
build_version_params = Kleister::BuildVersionParams.new({mod: 'mod_example', version: 'version_example'}) # BuildVersionParams | The build version data to attach

begin
  # Attach a version to a build
  result = api_instance.attach_build_to_version(pack_id, build_id, build_version_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->attach_build_to_version: #{e}"
end
```

#### Using the attach_build_to_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_build_to_version_with_http_info(pack_id, build_id, build_version_params)

```ruby
begin
  # Attach a version to a build
  data, status_code, headers = api_instance.attach_build_to_version_with_http_info(pack_id, build_id, build_version_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->attach_build_to_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack identifier or slug |  |
| **build_id** | **String** | A build identifier or slug |  |
| **build_version_params** | [**BuildVersionParams**](BuildVersionParams.md) | The build version data to attach |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## attach_pack_to_team

> <Notification> attach_pack_to_team(pack_id, pack_team_params)

Attach a team to pack

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack identifier or slug
pack_team_params = Kleister::PackTeamParams.new({team: 'team_example'}) # PackTeamParams | The team data to attach

begin
  # Attach a team to pack
  result = api_instance.attach_pack_to_team(pack_id, pack_team_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->attach_pack_to_team: #{e}"
end
```

#### Using the attach_pack_to_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_pack_to_team_with_http_info(pack_id, pack_team_params)

```ruby
begin
  # Attach a team to pack
  data, status_code, headers = api_instance.attach_pack_to_team_with_http_info(pack_id, pack_team_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->attach_pack_to_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack identifier or slug |  |
| **pack_team_params** | [**PackTeamParams**](PackTeamParams.md) | The team data to attach |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## attach_pack_to_user

> <Notification> attach_pack_to_user(pack_id, pack_user_params)

Attach a user to pack

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack identifier or slug
pack_user_params = Kleister::PackUserParams.new({user: 'user_example'}) # PackUserParams | The user data to attach

begin
  # Attach a user to pack
  result = api_instance.attach_pack_to_user(pack_id, pack_user_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->attach_pack_to_user: #{e}"
end
```

#### Using the attach_pack_to_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_pack_to_user_with_http_info(pack_id, pack_user_params)

```ruby
begin
  # Attach a user to pack
  data, status_code, headers = api_instance.attach_pack_to_user_with_http_info(pack_id, pack_user_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->attach_pack_to_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack identifier or slug |  |
| **pack_user_params** | [**PackUserParams**](PackUserParams.md) | The user data to attach |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_build

> <Build> create_build(pack_id, build)

Create a new build for a pack

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack identifier or slug
build = Kleister::Build.new # Build | The build data to create

begin
  # Create a new build for a pack
  result = api_instance.create_build(pack_id, build)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->create_build: #{e}"
end
```

#### Using the create_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Build>, Integer, Hash)> create_build_with_http_info(pack_id, build)

```ruby
begin
  # Create a new build for a pack
  data, status_code, headers = api_instance.create_build_with_http_info(pack_id, build)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Build>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->create_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack identifier or slug |  |
| **build** | [**Build**](Build.md) | The build data to create |  |

### Return type

[**Build**](Build.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_pack

> <Pack> create_pack(pack)

Create a new pack

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

api_instance = Kleister::PackApi.new
pack = Kleister::Pack.new # Pack | The pack data to create

begin
  # Create a new pack
  result = api_instance.create_pack(pack)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->create_pack: #{e}"
end
```

#### Using the create_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pack>, Integer, Hash)> create_pack_with_http_info(pack)

```ruby
begin
  # Create a new pack
  data, status_code, headers = api_instance.create_pack_with_http_info(pack)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pack>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->create_pack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack** | [**Pack**](Pack.md) | The pack data to create |  |

### Return type

[**Pack**](Pack.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_build

> <Notification> delete_build(pack_id, build_id)

Delete a specific build for a pack

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack identifier or slug
build_id = 'build_id_example' # String | A build identifier or slug

begin
  # Delete a specific build for a pack
  result = api_instance.delete_build(pack_id, build_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->delete_build: #{e}"
end
```

#### Using the delete_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_build_with_http_info(pack_id, build_id)

```ruby
begin
  # Delete a specific build for a pack
  data, status_code, headers = api_instance.delete_build_with_http_info(pack_id, build_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->delete_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack identifier or slug |  |
| **build_id** | **String** | A build identifier or slug |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_build_from_version

> <Notification> delete_build_from_version(pack_id, build_id, build_version_params)

Unlink a version from a build

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack identifier or slug
build_id = 'build_id_example' # String | A build identifier or slug
build_version_params = Kleister::BuildVersionParams.new({mod: 'mod_example', version: 'version_example'}) # BuildVersionParams | The build version data to unlink

begin
  # Unlink a version from a build
  result = api_instance.delete_build_from_version(pack_id, build_id, build_version_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->delete_build_from_version: #{e}"
end
```

#### Using the delete_build_from_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_build_from_version_with_http_info(pack_id, build_id, build_version_params)

```ruby
begin
  # Unlink a version from a build
  data, status_code, headers = api_instance.delete_build_from_version_with_http_info(pack_id, build_id, build_version_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->delete_build_from_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack identifier or slug |  |
| **build_id** | **String** | A build identifier or slug |  |
| **build_version_params** | [**BuildVersionParams**](BuildVersionParams.md) | The build version data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_pack

> <Notification> delete_pack(pack_id)

Delete a specific pack

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack identifier or slug

begin
  # Delete a specific pack
  result = api_instance.delete_pack(pack_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->delete_pack: #{e}"
end
```

#### Using the delete_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_pack_with_http_info(pack_id)

```ruby
begin
  # Delete a specific pack
  data, status_code, headers = api_instance.delete_pack_with_http_info(pack_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->delete_pack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack identifier or slug |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_pack_from_team

> <Notification> delete_pack_from_team(pack_id, pack_team_params)

Unlink a team from pack

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack identifier or slug
pack_team_params = Kleister::PackTeamParams.new({team: 'team_example'}) # PackTeamParams | The pack team data to unlink

begin
  # Unlink a team from pack
  result = api_instance.delete_pack_from_team(pack_id, pack_team_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->delete_pack_from_team: #{e}"
end
```

#### Using the delete_pack_from_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_pack_from_team_with_http_info(pack_id, pack_team_params)

```ruby
begin
  # Unlink a team from pack
  data, status_code, headers = api_instance.delete_pack_from_team_with_http_info(pack_id, pack_team_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->delete_pack_from_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack identifier or slug |  |
| **pack_team_params** | [**PackTeamParams**](PackTeamParams.md) | The pack team data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_pack_from_user

> <Notification> delete_pack_from_user(pack_id, pack_user_params)

Unlink a user from pack

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack identifier or slug
pack_user_params = Kleister::PackUserParams.new({user: 'user_example'}) # PackUserParams | The pack user data to unlink

begin
  # Unlink a user from pack
  result = api_instance.delete_pack_from_user(pack_id, pack_user_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->delete_pack_from_user: #{e}"
end
```

#### Using the delete_pack_from_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_pack_from_user_with_http_info(pack_id, pack_user_params)

```ruby
begin
  # Unlink a user from pack
  data, status_code, headers = api_instance.delete_pack_from_user_with_http_info(pack_id, pack_user_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->delete_pack_from_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack identifier or slug |  |
| **pack_user_params** | [**PackUserParams**](PackUserParams.md) | The pack user data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_build_versions

> <UserTeams> list_build_versions(pack_id, build_id, opts)

Fetch all versions attached to build

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack identifier or slug
build_id = 'build_id_example' # String | A build identifier or slug
opts = {
  search: '"John Doe"', # String | Search query
  sort: 'slug', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all versions attached to build
  result = api_instance.list_build_versions(pack_id, build_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->list_build_versions: #{e}"
end
```

#### Using the list_build_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserTeams>, Integer, Hash)> list_build_versions_with_http_info(pack_id, build_id, opts)

```ruby
begin
  # Fetch all versions attached to build
  data, status_code, headers = api_instance.list_build_versions_with_http_info(pack_id, build_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserTeams>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->list_build_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack identifier or slug |  |
| **build_id** | **String** | A build identifier or slug |  |
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


## list_builds

> <Builds> list_builds(pack_id, opts)

Fetch all available builds for a pack

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack identifier or slug
opts = {
  search: '"John Doe"', # String | Search query
  sort: 'slug', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all available builds for a pack
  result = api_instance.list_builds(pack_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->list_builds: #{e}"
end
```

#### Using the list_builds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Builds>, Integer, Hash)> list_builds_with_http_info(pack_id, opts)

```ruby
begin
  # Fetch all available builds for a pack
  data, status_code, headers = api_instance.list_builds_with_http_info(pack_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Builds>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->list_builds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional][default to &#39;name&#39;] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional] |
| **offset** | **Integer** | Paging offset | [optional] |

### Return type

[**Builds**](Builds.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_pack_teams

> <PackTeams> list_pack_teams(pack_id, opts)

Fetch all teams attached to pack

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack identifier or slug
opts = {
  search: '"John Doe"', # String | Search query
  sort: 'slug', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all teams attached to pack
  result = api_instance.list_pack_teams(pack_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->list_pack_teams: #{e}"
end
```

#### Using the list_pack_teams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PackTeams>, Integer, Hash)> list_pack_teams_with_http_info(pack_id, opts)

```ruby
begin
  # Fetch all teams attached to pack
  data, status_code, headers = api_instance.list_pack_teams_with_http_info(pack_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PackTeams>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->list_pack_teams_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional][default to &#39;name&#39;] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**PackTeams**](PackTeams.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_pack_users

> <PackUsers> list_pack_users(pack_id, opts)

Fetch all users attached to pack

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack identifier or slug
opts = {
  search: '"John Doe"', # String | Search query
  sort: 'username', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all users attached to pack
  result = api_instance.list_pack_users(pack_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->list_pack_users: #{e}"
end
```

#### Using the list_pack_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PackUsers>, Integer, Hash)> list_pack_users_with_http_info(pack_id, opts)

```ruby
begin
  # Fetch all users attached to pack
  data, status_code, headers = api_instance.list_pack_users_with_http_info(pack_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PackUsers>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->list_pack_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional][default to &#39;username&#39;] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**PackUsers**](PackUsers.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_packs

> <Packs> list_packs(opts)

Fetch all available packs

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

api_instance = Kleister::PackApi.new
opts = {
  search: '"John Doe"', # String | Search query
  sort: 'name', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all available packs
  result = api_instance.list_packs(opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->list_packs: #{e}"
end
```

#### Using the list_packs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Packs>, Integer, Hash)> list_packs_with_http_info(opts)

```ruby
begin
  # Fetch all available packs
  data, status_code, headers = api_instance.list_packs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Packs>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->list_packs_with_http_info: #{e}"
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

[**Packs**](Packs.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## permit_pack_team

> <Notification> permit_pack_team(pack_id, pack_team_params)

Update team perms for pack

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack identifier or slug
pack_team_params = Kleister::PackTeamParams.new({team: 'team_example'}) # PackTeamParams | The team data to update

begin
  # Update team perms for pack
  result = api_instance.permit_pack_team(pack_id, pack_team_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->permit_pack_team: #{e}"
end
```

#### Using the permit_pack_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> permit_pack_team_with_http_info(pack_id, pack_team_params)

```ruby
begin
  # Update team perms for pack
  data, status_code, headers = api_instance.permit_pack_team_with_http_info(pack_id, pack_team_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->permit_pack_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack identifier or slug |  |
| **pack_team_params** | [**PackTeamParams**](PackTeamParams.md) | The team data to update |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## permit_pack_user

> <Notification> permit_pack_user(pack_id, pack_user_params)

Update user perms for pack

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack identifier or slug
pack_user_params = Kleister::PackUserParams.new({user: 'user_example'}) # PackUserParams | The user data to update

begin
  # Update user perms for pack
  result = api_instance.permit_pack_user(pack_id, pack_user_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->permit_pack_user: #{e}"
end
```

#### Using the permit_pack_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> permit_pack_user_with_http_info(pack_id, pack_user_params)

```ruby
begin
  # Update user perms for pack
  data, status_code, headers = api_instance.permit_pack_user_with_http_info(pack_id, pack_user_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->permit_pack_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack identifier or slug |  |
| **pack_user_params** | [**PackUserParams**](PackUserParams.md) | The user data to update |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## show_build

> <Build> show_build(pack_id, build_id)

Fetch a specific build for a pack

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack identifier or slug
build_id = 'build_id_example' # String | A build identifier or slug

begin
  # Fetch a specific build for a pack
  result = api_instance.show_build(pack_id, build_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->show_build: #{e}"
end
```

#### Using the show_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Build>, Integer, Hash)> show_build_with_http_info(pack_id, build_id)

```ruby
begin
  # Fetch a specific build for a pack
  data, status_code, headers = api_instance.show_build_with_http_info(pack_id, build_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Build>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->show_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack identifier or slug |  |
| **build_id** | **String** | A build identifier or slug |  |

### Return type

[**Build**](Build.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_pack

> <Pack> show_pack(pack_id)

Fetch a specific pack

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack identifier or slug

begin
  # Fetch a specific pack
  result = api_instance.show_pack(pack_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->show_pack: #{e}"
end
```

#### Using the show_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pack>, Integer, Hash)> show_pack_with_http_info(pack_id)

```ruby
begin
  # Fetch a specific pack
  data, status_code, headers = api_instance.show_pack_with_http_info(pack_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pack>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->show_pack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack identifier or slug |  |

### Return type

[**Pack**](Pack.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_build

> <Build> update_build(pack_id, build_id, build)

Update a specific build for a pack

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack identifier or slug
build_id = 'build_id_example' # String | A build identifier or slug
build = Kleister::Build.new # Build | The build data to update

begin
  # Update a specific build for a pack
  result = api_instance.update_build(pack_id, build_id, build)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->update_build: #{e}"
end
```

#### Using the update_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Build>, Integer, Hash)> update_build_with_http_info(pack_id, build_id, build)

```ruby
begin
  # Update a specific build for a pack
  data, status_code, headers = api_instance.update_build_with_http_info(pack_id, build_id, build)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Build>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->update_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack identifier or slug |  |
| **build_id** | **String** | A build identifier or slug |  |
| **build** | [**Build**](Build.md) | The build data to update |  |

### Return type

[**Build**](Build.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_pack

> <Pack> update_pack(pack_id, pack)

Update a specific pack

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack identifier or slug
pack = Kleister::Pack.new # Pack | The pack data to update

begin
  # Update a specific pack
  result = api_instance.update_pack(pack_id, pack)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->update_pack: #{e}"
end
```

#### Using the update_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pack>, Integer, Hash)> update_pack_with_http_info(pack_id, pack)

```ruby
begin
  # Update a specific pack
  data, status_code, headers = api_instance.update_pack_with_http_info(pack_id, pack)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pack>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->update_pack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack identifier or slug |  |
| **pack** | [**Pack**](Pack.md) | The pack data to update |  |

### Return type

[**Pack**](Pack.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

