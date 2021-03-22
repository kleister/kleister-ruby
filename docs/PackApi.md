# Kleister::PackApi

All URIs are relative to *http://try.kleister.tech/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**append_build_to_version**](PackApi.md#append_build_to_version) | **POST** /packs/{pack_id}/builds/{build_id}/versions | Assign a version to a build |
| [**append_pack_to_team**](PackApi.md#append_pack_to_team) | **POST** /packs/{pack_id}/teams | Assign a team to pack |
| [**append_pack_to_user**](PackApi.md#append_pack_to_user) | **POST** /packs/{pack_id}/users | Assign a user to pack |
| [**create_build**](PackApi.md#create_build) | **POST** /packs/{pack_id}/builds | Create a new build for a pack |
| [**create_pack**](PackApi.md#create_pack) | **POST** /packs | Create a new pack |
| [**delete_build**](PackApi.md#delete_build) | **DELETE** /packs/{pack_id}/builds/{build_id} | Delete a specific build for a pack |
| [**delete_build_from_version**](PackApi.md#delete_build_from_version) | **DELETE** /packs/{pack_id}/builds/{build_id}/versions | Unlink a version from a build |
| [**delete_pack**](PackApi.md#delete_pack) | **DELETE** /packs/{pack_id} | Delete a specific pack |
| [**delete_pack_from_team**](PackApi.md#delete_pack_from_team) | **DELETE** /packs/{pack_id}/teams | Remove a team from pack |
| [**delete_pack_from_user**](PackApi.md#delete_pack_from_user) | **DELETE** /packs/{pack_id}/users | Remove a user from pack |
| [**list_build_versions**](PackApi.md#list_build_versions) | **GET** /packs/{pack_id}/builds/{build_id}/versions | Fetch all versions assigned to build |
| [**list_builds**](PackApi.md#list_builds) | **GET** /packs/{pack_id}/builds | Fetch all available builds for a pack |
| [**list_pack_teams**](PackApi.md#list_pack_teams) | **GET** /packs/{pack_id}/teams | Fetch all teams assigned to pack |
| [**list_pack_users**](PackApi.md#list_pack_users) | **GET** /packs/{pack_id}/users | Fetch all users assigned to pack |
| [**list_packs**](PackApi.md#list_packs) | **GET** /packs | Fetch all available packs |
| [**permit_pack_team**](PackApi.md#permit_pack_team) | **PUT** /packs/{pack_id}/teams | Update team perms for pack |
| [**permit_pack_user**](PackApi.md#permit_pack_user) | **PUT** /packs/{pack_id}/users | Update user perms for pack |
| [**show_build**](PackApi.md#show_build) | **GET** /packs/{pack_id}/builds/{build_id} | Fetch a specific build for a pack |
| [**show_pack**](PackApi.md#show_pack) | **GET** /packs/{pack_id} | Fetch a specific pack |
| [**update_build**](PackApi.md#update_build) | **PUT** /packs/{pack_id}/builds/{build_id} | Update a specific build for a pack |
| [**update_pack**](PackApi.md#update_pack) | **PUT** /packs/{pack_id} | Update a specific pack |


## append_build_to_version

> <GeneralError> append_build_to_version(pack_id, build_id, build_version)

Assign a version to a build

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
build_id = 'build_id_example' # String | A build UUID or slug
build_version = Kleister::BuildVersionParams.new({mod: 'mod_example', version: 'version_example'}) # BuildVersionParams | The version data to append to build

begin
  # Assign a version to a build
  result = api_instance.append_build_to_version(pack_id, build_id, build_version)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->append_build_to_version: #{e}"
end
```

#### Using the append_build_to_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> append_build_to_version_with_http_info(pack_id, build_id, build_version)

```ruby
begin
  # Assign a version to a build
  data, status_code, headers = api_instance.append_build_to_version_with_http_info(pack_id, build_id, build_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->append_build_to_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack UUID or slug |  |
| **build_id** | **String** | A build UUID or slug |  |
| **build_version** | [**BuildVersionParams**](BuildVersionParams.md) | The version data to append to build |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## append_pack_to_team

> <GeneralError> append_pack_to_team(pack_id, pack_team)

Assign a team to pack

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
pack_team = Kleister::PackTeamParams.new({team: 'team_example', perm: 'user'}) # PackTeamParams | The pack team data to assign

begin
  # Assign a team to pack
  result = api_instance.append_pack_to_team(pack_id, pack_team)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->append_pack_to_team: #{e}"
end
```

#### Using the append_pack_to_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> append_pack_to_team_with_http_info(pack_id, pack_team)

```ruby
begin
  # Assign a team to pack
  data, status_code, headers = api_instance.append_pack_to_team_with_http_info(pack_id, pack_team)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->append_pack_to_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack UUID or slug |  |
| **pack_team** | [**PackTeamParams**](PackTeamParams.md) | The pack team data to assign |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## append_pack_to_user

> <GeneralError> append_pack_to_user(pack_id, pack_user)

Assign a user to pack

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
pack_user = Kleister::PackUserParams.new({user: 'user_example', perm: 'user'}) # PackUserParams | The pack user data to assign

begin
  # Assign a user to pack
  result = api_instance.append_pack_to_user(pack_id, pack_user)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->append_pack_to_user: #{e}"
end
```

#### Using the append_pack_to_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> append_pack_to_user_with_http_info(pack_id, pack_user)

```ruby
begin
  # Assign a user to pack
  data, status_code, headers = api_instance.append_pack_to_user_with_http_info(pack_id, pack_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->append_pack_to_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack UUID or slug |  |
| **pack_user** | [**PackUserParams**](PackUserParams.md) | The pack user data to assign |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
build = Kleister::Build.new({pack_id: 'pack_id_example', name: 'name_example'}) # Build | The build data to create

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
| **pack_id** | **String** | A pack UUID or slug |  |
| **build** | [**Build**](Build.md) | The build data to create |  |

### Return type

[**Build**](Build.md)

### Authorization

No authorization required

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

api_instance = Kleister::PackApi.new
pack = Kleister::Pack.new({name: 'name_example'}) # Pack | The pack data to create

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

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_build

> <GeneralError> delete_build(pack_id, build_id)

Delete a specific build for a pack

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
build_id = 'build_id_example' # String | A build UUID or slug

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

> <Array(<GeneralError>, Integer, Hash)> delete_build_with_http_info(pack_id, build_id)

```ruby
begin
  # Delete a specific build for a pack
  data, status_code, headers = api_instance.delete_build_with_http_info(pack_id, build_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->delete_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack UUID or slug |  |
| **build_id** | **String** | A build UUID or slug |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_build_from_version

> <GeneralError> delete_build_from_version(pack_id, build_id, build_version)

Unlink a version from a build

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
build_id = 'build_id_example' # String | A build UUID or slug
build_version = Kleister::BuildVersionParams.new({mod: 'mod_example', version: 'version_example'}) # BuildVersionParams | The version data to unlink from build

begin
  # Unlink a version from a build
  result = api_instance.delete_build_from_version(pack_id, build_id, build_version)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->delete_build_from_version: #{e}"
end
```

#### Using the delete_build_from_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> delete_build_from_version_with_http_info(pack_id, build_id, build_version)

```ruby
begin
  # Unlink a version from a build
  data, status_code, headers = api_instance.delete_build_from_version_with_http_info(pack_id, build_id, build_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->delete_build_from_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack UUID or slug |  |
| **build_id** | **String** | A build UUID or slug |  |
| **build_version** | [**BuildVersionParams**](BuildVersionParams.md) | The version data to unlink from build |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_pack

> <GeneralError> delete_pack(pack_id)

Delete a specific pack

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug

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

> <Array(<GeneralError>, Integer, Hash)> delete_pack_with_http_info(pack_id)

```ruby
begin
  # Delete a specific pack
  data, status_code, headers = api_instance.delete_pack_with_http_info(pack_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->delete_pack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack UUID or slug |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_pack_from_team

> <GeneralError> delete_pack_from_team(pack_id, pack_team)

Remove a team from pack

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
pack_team = Kleister::PackTeamParams.new({team: 'team_example', perm: 'user'}) # PackTeamParams | The pack team data to delete

begin
  # Remove a team from pack
  result = api_instance.delete_pack_from_team(pack_id, pack_team)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->delete_pack_from_team: #{e}"
end
```

#### Using the delete_pack_from_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> delete_pack_from_team_with_http_info(pack_id, pack_team)

```ruby
begin
  # Remove a team from pack
  data, status_code, headers = api_instance.delete_pack_from_team_with_http_info(pack_id, pack_team)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->delete_pack_from_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack UUID or slug |  |
| **pack_team** | [**PackTeamParams**](PackTeamParams.md) | The pack team data to delete |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_pack_from_user

> <GeneralError> delete_pack_from_user(pack_id, pack_user)

Remove a user from pack

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
pack_user = Kleister::PackUserParams.new({user: 'user_example', perm: 'user'}) # PackUserParams | The pack user data to delete

begin
  # Remove a user from pack
  result = api_instance.delete_pack_from_user(pack_id, pack_user)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->delete_pack_from_user: #{e}"
end
```

#### Using the delete_pack_from_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> delete_pack_from_user_with_http_info(pack_id, pack_user)

```ruby
begin
  # Remove a user from pack
  data, status_code, headers = api_instance.delete_pack_from_user_with_http_info(pack_id, pack_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->delete_pack_from_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack UUID or slug |  |
| **pack_user** | [**PackUserParams**](PackUserParams.md) | The pack user data to delete |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_build_versions

> <Array<BuildVersion>> list_build_versions(pack_id, build_id)

Fetch all versions assigned to build

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
build_id = 'build_id_example' # String | A build UUID or slug

begin
  # Fetch all versions assigned to build
  result = api_instance.list_build_versions(pack_id, build_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->list_build_versions: #{e}"
end
```

#### Using the list_build_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BuildVersion>>, Integer, Hash)> list_build_versions_with_http_info(pack_id, build_id)

```ruby
begin
  # Fetch all versions assigned to build
  data, status_code, headers = api_instance.list_build_versions_with_http_info(pack_id, build_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BuildVersion>>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->list_build_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack UUID or slug |  |
| **build_id** | **String** | A build UUID or slug |  |

### Return type

[**Array&lt;BuildVersion&gt;**](BuildVersion.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_builds

> <Array<Build>> list_builds(pack_id)

Fetch all available builds for a pack

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug

begin
  # Fetch all available builds for a pack
  result = api_instance.list_builds(pack_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->list_builds: #{e}"
end
```

#### Using the list_builds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Build>>, Integer, Hash)> list_builds_with_http_info(pack_id)

```ruby
begin
  # Fetch all available builds for a pack
  data, status_code, headers = api_instance.list_builds_with_http_info(pack_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Build>>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->list_builds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack UUID or slug |  |

### Return type

[**Array&lt;Build&gt;**](Build.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_pack_teams

> <Array<TeamPack>> list_pack_teams(pack_id)

Fetch all teams assigned to pack

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug

begin
  # Fetch all teams assigned to pack
  result = api_instance.list_pack_teams(pack_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->list_pack_teams: #{e}"
end
```

#### Using the list_pack_teams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TeamPack>>, Integer, Hash)> list_pack_teams_with_http_info(pack_id)

```ruby
begin
  # Fetch all teams assigned to pack
  data, status_code, headers = api_instance.list_pack_teams_with_http_info(pack_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TeamPack>>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->list_pack_teams_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack UUID or slug |  |

### Return type

[**Array&lt;TeamPack&gt;**](TeamPack.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_pack_users

> <Array<UserPack>> list_pack_users(pack_id)

Fetch all users assigned to pack

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug

begin
  # Fetch all users assigned to pack
  result = api_instance.list_pack_users(pack_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->list_pack_users: #{e}"
end
```

#### Using the list_pack_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UserPack>>, Integer, Hash)> list_pack_users_with_http_info(pack_id)

```ruby
begin
  # Fetch all users assigned to pack
  data, status_code, headers = api_instance.list_pack_users_with_http_info(pack_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UserPack>>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->list_pack_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack UUID or slug |  |

### Return type

[**Array&lt;UserPack&gt;**](UserPack.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_packs

> <Array<Pack>> list_packs

Fetch all available packs

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::PackApi.new

begin
  # Fetch all available packs
  result = api_instance.list_packs
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->list_packs: #{e}"
end
```

#### Using the list_packs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Pack>>, Integer, Hash)> list_packs_with_http_info

```ruby
begin
  # Fetch all available packs
  data, status_code, headers = api_instance.list_packs_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Pack>>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->list_packs_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Pack&gt;**](Pack.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## permit_pack_team

> <GeneralError> permit_pack_team(pack_id, pack_team)

Update team perms for pack

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
pack_team = Kleister::PackTeamParams.new({team: 'team_example', perm: 'user'}) # PackTeamParams | The pack team data to update

begin
  # Update team perms for pack
  result = api_instance.permit_pack_team(pack_id, pack_team)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->permit_pack_team: #{e}"
end
```

#### Using the permit_pack_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> permit_pack_team_with_http_info(pack_id, pack_team)

```ruby
begin
  # Update team perms for pack
  data, status_code, headers = api_instance.permit_pack_team_with_http_info(pack_id, pack_team)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->permit_pack_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack UUID or slug |  |
| **pack_team** | [**PackTeamParams**](PackTeamParams.md) | The pack team data to update |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## permit_pack_user

> <GeneralError> permit_pack_user(pack_id, pack_user)

Update user perms for pack

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
pack_user = Kleister::PackUserParams.new({user: 'user_example', perm: 'user'}) # PackUserParams | The pack user data to update

begin
  # Update user perms for pack
  result = api_instance.permit_pack_user(pack_id, pack_user)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->permit_pack_user: #{e}"
end
```

#### Using the permit_pack_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> permit_pack_user_with_http_info(pack_id, pack_user)

```ruby
begin
  # Update user perms for pack
  data, status_code, headers = api_instance.permit_pack_user_with_http_info(pack_id, pack_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling PackApi->permit_pack_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack_id** | **String** | A pack UUID or slug |  |
| **pack_user** | [**PackUserParams**](PackUserParams.md) | The pack user data to update |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
build_id = 'build_id_example' # String | A build UUID or slug

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
| **pack_id** | **String** | A pack UUID or slug |  |
| **build_id** | **String** | A build UUID or slug |  |

### Return type

[**Build**](Build.md)

### Authorization

No authorization required

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug

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
| **pack_id** | **String** | A pack UUID or slug |  |

### Return type

[**Pack**](Pack.md)

### Authorization

No authorization required

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
build_id = 'build_id_example' # String | A build UUID or slug
build = Kleister::Build.new({pack_id: 'pack_id_example', name: 'name_example'}) # Build | The build data to update

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
| **pack_id** | **String** | A pack UUID or slug |  |
| **build_id** | **String** | A build UUID or slug |  |
| **build** | [**Build**](Build.md) | The build data to update |  |

### Return type

[**Build**](Build.md)

### Authorization

No authorization required

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

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
pack = Kleister::Pack.new({name: 'name_example'}) # Pack | The pack data to update

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
| **pack_id** | **String** | A pack UUID or slug |  |
| **pack** | [**Pack**](Pack.md) | The pack data to update |  |

### Return type

[**Pack**](Pack.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

