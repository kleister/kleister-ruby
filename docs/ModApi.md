# Kleister::ModApi

All URIs are relative to *http://try.kleister.tech/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**append_mod_to_team**](ModApi.md#append_mod_to_team) | **POST** /mods/{mod_id}/teams | Assign a team to mod |
| [**append_mod_to_user**](ModApi.md#append_mod_to_user) | **POST** /mods/{mod_id}/users | Assign a user to mod |
| [**append_version_to_build**](ModApi.md#append_version_to_build) | **POST** /mods/{mod_id}/versions/{version_id}/builds | Assign a build to a version |
| [**create_mod**](ModApi.md#create_mod) | **POST** /mods | Create a new mod |
| [**create_version**](ModApi.md#create_version) | **POST** /mods/{mod_id}/versions | Create a new version for a mod |
| [**delete_mod**](ModApi.md#delete_mod) | **DELETE** /mods/{mod_id} | Delete a specific mod |
| [**delete_mod_from_team**](ModApi.md#delete_mod_from_team) | **DELETE** /mods/{mod_id}/teams | Remove a team from mod |
| [**delete_mod_from_user**](ModApi.md#delete_mod_from_user) | **DELETE** /mods/{mod_id}/users | Remove a user from mod |
| [**delete_version**](ModApi.md#delete_version) | **DELETE** /mods/{mod_id}/versions/{version_id} | Delete a specific version for a mod |
| [**delete_version_from_build**](ModApi.md#delete_version_from_build) | **DELETE** /mods/{mod_id}/versions/{version_id}/builds | Unlink a build from a version |
| [**list_mod_teams**](ModApi.md#list_mod_teams) | **GET** /mods/{mod_id}/teams | Fetch all teams assigned to mod |
| [**list_mod_users**](ModApi.md#list_mod_users) | **GET** /mods/{mod_id}/users | Fetch all users assigned to mod |
| [**list_mods**](ModApi.md#list_mods) | **GET** /mods | Fetch all available mods |
| [**list_version_builds**](ModApi.md#list_version_builds) | **GET** /mods/{mod_id}/versions/{version_id}/builds | Fetch all builds assigned to version |
| [**list_versions**](ModApi.md#list_versions) | **GET** /mods/{mod_id}/versions | Fetch all available versions for a mod |
| [**permit_mod_team**](ModApi.md#permit_mod_team) | **PUT** /mods/{mod_id}/teams | Update team perms for mod |
| [**permit_mod_user**](ModApi.md#permit_mod_user) | **PUT** /mods/{mod_id}/users | Update user perms for mod |
| [**show_mod**](ModApi.md#show_mod) | **GET** /mods/{mod_id} | Fetch a specific mod |
| [**show_version**](ModApi.md#show_version) | **GET** /mods/{mod_id}/versions/{version_id} | Fetch a specific version for a mod |
| [**update_mod**](ModApi.md#update_mod) | **PUT** /mods/{mod_id} | Update a specific mod |
| [**update_version**](ModApi.md#update_version) | **PUT** /mods/{mod_id}/versions/{version_id} | Update a specific version for a mod |


## append_mod_to_team

> <GeneralError> append_mod_to_team(mod_id, mod_team)

Assign a team to mod

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
mod_team = Kleister::ModTeamParams.new({team: 'team_example', perm: 'user'}) # ModTeamParams | The mod team data to assign

begin
  # Assign a team to mod
  result = api_instance.append_mod_to_team(mod_id, mod_team)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->append_mod_to_team: #{e}"
end
```

#### Using the append_mod_to_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> append_mod_to_team_with_http_info(mod_id, mod_team)

```ruby
begin
  # Assign a team to mod
  data, status_code, headers = api_instance.append_mod_to_team_with_http_info(mod_id, mod_team)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->append_mod_to_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod UUID or slug |  |
| **mod_team** | [**ModTeamParams**](ModTeamParams.md) | The mod team data to assign |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## append_mod_to_user

> <GeneralError> append_mod_to_user(mod_id, mod_user)

Assign a user to mod

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
mod_user = Kleister::ModUserParams.new({user: 'user_example', perm: 'user'}) # ModUserParams | The mod user data to assign

begin
  # Assign a user to mod
  result = api_instance.append_mod_to_user(mod_id, mod_user)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->append_mod_to_user: #{e}"
end
```

#### Using the append_mod_to_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> append_mod_to_user_with_http_info(mod_id, mod_user)

```ruby
begin
  # Assign a user to mod
  data, status_code, headers = api_instance.append_mod_to_user_with_http_info(mod_id, mod_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->append_mod_to_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod UUID or slug |  |
| **mod_user** | [**ModUserParams**](ModUserParams.md) | The mod user data to assign |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## append_version_to_build

> <GeneralError> append_version_to_build(mod_id, version_id, version_build)

Assign a build to a version

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
version_id = 'version_id_example' # String | A version UUID or slug
version_build = Kleister::VersionBuildParams.new({pack: 'pack_example', build: 'build_example'}) # VersionBuildParams | The build data to append to version

begin
  # Assign a build to a version
  result = api_instance.append_version_to_build(mod_id, version_id, version_build)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->append_version_to_build: #{e}"
end
```

#### Using the append_version_to_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> append_version_to_build_with_http_info(mod_id, version_id, version_build)

```ruby
begin
  # Assign a build to a version
  data, status_code, headers = api_instance.append_version_to_build_with_http_info(mod_id, version_id, version_build)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->append_version_to_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod UUID or slug |  |
| **version_id** | **String** | A version UUID or slug |  |
| **version_build** | [**VersionBuildParams**](VersionBuildParams.md) | The build data to append to version |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_mod

> <Mod> create_mod(mod)

Create a new mod

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::ModApi.new
mod = Kleister::Mod.new({name: 'name_example'}) # Mod | The mod data to create

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

> <Array(<Mod>, Integer, Hash)> create_mod_with_http_info(mod)

```ruby
begin
  # Create a new mod
  data, status_code, headers = api_instance.create_mod_with_http_info(mod)
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
| **mod** | [**Mod**](Mod.md) | The mod data to create |  |

### Return type

[**Mod**](Mod.md)

### Authorization

No authorization required

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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
version = Kleister::Version.new({name: 'name_example'}) # Version | The version data to create

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
| **mod_id** | **String** | A mod UUID or slug |  |
| **version** | [**Version**](Version.md) | The version data to create |  |

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_mod

> <GeneralError> delete_mod(mod_id)

Delete a specific mod

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug

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

> <Array(<GeneralError>, Integer, Hash)> delete_mod_with_http_info(mod_id)

```ruby
begin
  # Delete a specific mod
  data, status_code, headers = api_instance.delete_mod_with_http_info(mod_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_mod_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod UUID or slug |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_mod_from_team

> <GeneralError> delete_mod_from_team(mod_id, mod_team)

Remove a team from mod

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
mod_team = Kleister::ModTeamParams.new({team: 'team_example', perm: 'user'}) # ModTeamParams | The mod team data to delete

begin
  # Remove a team from mod
  result = api_instance.delete_mod_from_team(mod_id, mod_team)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_mod_from_team: #{e}"
end
```

#### Using the delete_mod_from_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> delete_mod_from_team_with_http_info(mod_id, mod_team)

```ruby
begin
  # Remove a team from mod
  data, status_code, headers = api_instance.delete_mod_from_team_with_http_info(mod_id, mod_team)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_mod_from_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod UUID or slug |  |
| **mod_team** | [**ModTeamParams**](ModTeamParams.md) | The mod team data to delete |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_mod_from_user

> <GeneralError> delete_mod_from_user(mod_id, mod_user)

Remove a user from mod

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
mod_user = Kleister::ModUserParams.new({user: 'user_example', perm: 'user'}) # ModUserParams | The mod user data to delete

begin
  # Remove a user from mod
  result = api_instance.delete_mod_from_user(mod_id, mod_user)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_mod_from_user: #{e}"
end
```

#### Using the delete_mod_from_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> delete_mod_from_user_with_http_info(mod_id, mod_user)

```ruby
begin
  # Remove a user from mod
  data, status_code, headers = api_instance.delete_mod_from_user_with_http_info(mod_id, mod_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_mod_from_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod UUID or slug |  |
| **mod_user** | [**ModUserParams**](ModUserParams.md) | The mod user data to delete |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_version

> <GeneralError> delete_version(mod_id, version_id)

Delete a specific version for a mod

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
version_id = 'version_id_example' # String | A version UUID or slug

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

> <Array(<GeneralError>, Integer, Hash)> delete_version_with_http_info(mod_id, version_id)

```ruby
begin
  # Delete a specific version for a mod
  data, status_code, headers = api_instance.delete_version_with_http_info(mod_id, version_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod UUID or slug |  |
| **version_id** | **String** | A version UUID or slug |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_version_from_build

> <GeneralError> delete_version_from_build(mod_id, version_id, version_build)

Unlink a build from a version

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
version_id = 'version_id_example' # String | A version UUID or slug
version_build = Kleister::VersionBuildParams.new({pack: 'pack_example', build: 'build_example'}) # VersionBuildParams | The build data to unlink from version

begin
  # Unlink a build from a version
  result = api_instance.delete_version_from_build(mod_id, version_id, version_build)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_version_from_build: #{e}"
end
```

#### Using the delete_version_from_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> delete_version_from_build_with_http_info(mod_id, version_id, version_build)

```ruby
begin
  # Unlink a build from a version
  data, status_code, headers = api_instance.delete_version_from_build_with_http_info(mod_id, version_id, version_build)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->delete_version_from_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod UUID or slug |  |
| **version_id** | **String** | A version UUID or slug |  |
| **version_build** | [**VersionBuildParams**](VersionBuildParams.md) | The build data to unlink from version |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_mod_teams

> <Array<TeamMod>> list_mod_teams(mod_id)

Fetch all teams assigned to mod

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug

begin
  # Fetch all teams assigned to mod
  result = api_instance.list_mod_teams(mod_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_mod_teams: #{e}"
end
```

#### Using the list_mod_teams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TeamMod>>, Integer, Hash)> list_mod_teams_with_http_info(mod_id)

```ruby
begin
  # Fetch all teams assigned to mod
  data, status_code, headers = api_instance.list_mod_teams_with_http_info(mod_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TeamMod>>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_mod_teams_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod UUID or slug |  |

### Return type

[**Array&lt;TeamMod&gt;**](TeamMod.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_mod_users

> <Array<UserMod>> list_mod_users(mod_id)

Fetch all users assigned to mod

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug

begin
  # Fetch all users assigned to mod
  result = api_instance.list_mod_users(mod_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_mod_users: #{e}"
end
```

#### Using the list_mod_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UserMod>>, Integer, Hash)> list_mod_users_with_http_info(mod_id)

```ruby
begin
  # Fetch all users assigned to mod
  data, status_code, headers = api_instance.list_mod_users_with_http_info(mod_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UserMod>>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_mod_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod UUID or slug |  |

### Return type

[**Array&lt;UserMod&gt;**](UserMod.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_mods

> <Array<Mod>> list_mods

Fetch all available mods

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::ModApi.new

begin
  # Fetch all available mods
  result = api_instance.list_mods
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_mods: #{e}"
end
```

#### Using the list_mods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Mod>>, Integer, Hash)> list_mods_with_http_info

```ruby
begin
  # Fetch all available mods
  data, status_code, headers = api_instance.list_mods_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Mod>>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_mods_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Mod&gt;**](Mod.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_version_builds

> <Array<BuildVersion>> list_version_builds(mod_id, version_id)

Fetch all builds assigned to version

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
version_id = 'version_id_example' # String | A version UUID or slug

begin
  # Fetch all builds assigned to version
  result = api_instance.list_version_builds(mod_id, version_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_version_builds: #{e}"
end
```

#### Using the list_version_builds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BuildVersion>>, Integer, Hash)> list_version_builds_with_http_info(mod_id, version_id)

```ruby
begin
  # Fetch all builds assigned to version
  data, status_code, headers = api_instance.list_version_builds_with_http_info(mod_id, version_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BuildVersion>>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_version_builds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod UUID or slug |  |
| **version_id** | **String** | A version UUID or slug |  |

### Return type

[**Array&lt;BuildVersion&gt;**](BuildVersion.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_versions

> <Array<Version>> list_versions(mod_id)

Fetch all available versions for a mod

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug

begin
  # Fetch all available versions for a mod
  result = api_instance.list_versions(mod_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_versions: #{e}"
end
```

#### Using the list_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Version>>, Integer, Hash)> list_versions_with_http_info(mod_id)

```ruby
begin
  # Fetch all available versions for a mod
  data, status_code, headers = api_instance.list_versions_with_http_info(mod_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Version>>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->list_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod UUID or slug |  |

### Return type

[**Array&lt;Version&gt;**](Version.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## permit_mod_team

> <GeneralError> permit_mod_team(mod_id, mod_team)

Update team perms for mod

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
mod_team = Kleister::ModTeamParams.new({team: 'team_example', perm: 'user'}) # ModTeamParams | The mod team data to update

begin
  # Update team perms for mod
  result = api_instance.permit_mod_team(mod_id, mod_team)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->permit_mod_team: #{e}"
end
```

#### Using the permit_mod_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> permit_mod_team_with_http_info(mod_id, mod_team)

```ruby
begin
  # Update team perms for mod
  data, status_code, headers = api_instance.permit_mod_team_with_http_info(mod_id, mod_team)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->permit_mod_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod UUID or slug |  |
| **mod_team** | [**ModTeamParams**](ModTeamParams.md) | The mod team data to update |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## permit_mod_user

> <GeneralError> permit_mod_user(mod_id, mod_user)

Update user perms for mod

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
mod_user = Kleister::ModUserParams.new({user: 'user_example', perm: 'user'}) # ModUserParams | The mod user data to update

begin
  # Update user perms for mod
  result = api_instance.permit_mod_user(mod_id, mod_user)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->permit_mod_user: #{e}"
end
```

#### Using the permit_mod_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> permit_mod_user_with_http_info(mod_id, mod_user)

```ruby
begin
  # Update user perms for mod
  data, status_code, headers = api_instance.permit_mod_user_with_http_info(mod_id, mod_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling ModApi->permit_mod_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod_id** | **String** | A mod UUID or slug |  |
| **mod_user** | [**ModUserParams**](ModUserParams.md) | The mod user data to update |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug

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
| **mod_id** | **String** | A mod UUID or slug |  |

### Return type

[**Mod**](Mod.md)

### Authorization

No authorization required

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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
version_id = 'version_id_example' # String | A version UUID or slug

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
| **mod_id** | **String** | A mod UUID or slug |  |
| **version_id** | **String** | A version UUID or slug |  |

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
mod = Kleister::Mod.new({name: 'name_example'}) # Mod | The mod data to update

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
| **mod_id** | **String** | A mod UUID or slug |  |
| **mod** | [**Mod**](Mod.md) | The mod data to update |  |

### Return type

[**Mod**](Mod.md)

### Authorization

No authorization required

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

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
version_id = 'version_id_example' # String | A version UUID or slug
version = Kleister::Version.new({name: 'name_example'}) # Version | The version data to update

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
| **mod_id** | **String** | A mod UUID or slug |  |
| **version_id** | **String** | A version UUID or slug |  |
| **version** | [**Version**](Version.md) | The version data to update |  |

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

