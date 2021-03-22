# Kleister::UserApi

All URIs are relative to *http://try.kleister.tech/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**append_user_to_mod**](UserApi.md#append_user_to_mod) | **POST** /users/{user_id}/mods | Assign a mod to user |
| [**append_user_to_pack**](UserApi.md#append_user_to_pack) | **POST** /users/{user_id}/packs | Assign a pack to user |
| [**append_user_to_team**](UserApi.md#append_user_to_team) | **POST** /users/{user_id}/teams | Assign a team to user |
| [**create_user**](UserApi.md#create_user) | **POST** /users | Create a new user |
| [**delete_user**](UserApi.md#delete_user) | **DELETE** /users/{user_id} | Delete a specific user |
| [**delete_user_from_mod**](UserApi.md#delete_user_from_mod) | **DELETE** /users/{user_id}/mods | Remove a mod from user |
| [**delete_user_from_pack**](UserApi.md#delete_user_from_pack) | **DELETE** /users/{user_id}/packs | Remove a pack from user |
| [**delete_user_from_team**](UserApi.md#delete_user_from_team) | **DELETE** /users/{user_id}/teams | Remove a team from user |
| [**list_user_mods**](UserApi.md#list_user_mods) | **GET** /users/{user_id}/mods | Fetch all mods assigned to user |
| [**list_user_packs**](UserApi.md#list_user_packs) | **GET** /users/{user_id}/packs | Fetch all packs assigned to user |
| [**list_user_teams**](UserApi.md#list_user_teams) | **GET** /users/{user_id}/teams | Fetch all teams assigned to user |
| [**list_users**](UserApi.md#list_users) | **GET** /users | Fetch all available users |
| [**permit_user_mod**](UserApi.md#permit_user_mod) | **PUT** /users/{user_id}/mods | Update mod perms for user |
| [**permit_user_pack**](UserApi.md#permit_user_pack) | **PUT** /users/{user_id}/packs | Update pack perms for user |
| [**permit_user_team**](UserApi.md#permit_user_team) | **PUT** /users/{user_id}/teams | Update team perms for user |
| [**show_user**](UserApi.md#show_user) | **GET** /users/{user_id} | Fetch a specific user |
| [**update_user**](UserApi.md#update_user) | **PUT** /users/{user_id} | Update a specific user |


## append_user_to_mod

> <GeneralError> append_user_to_mod(user_id, user_mod)

Assign a mod to user

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
user_mod = Kleister::UserModParams.new({mod: 'mod_example', perm: 'user'}) # UserModParams | The user mod data to assign

begin
  # Assign a mod to user
  result = api_instance.append_user_to_mod(user_id, user_mod)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->append_user_to_mod: #{e}"
end
```

#### Using the append_user_to_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> append_user_to_mod_with_http_info(user_id, user_mod)

```ruby
begin
  # Assign a mod to user
  data, status_code, headers = api_instance.append_user_to_mod_with_http_info(user_id, user_mod)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->append_user_to_mod_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user UUID or slug |  |
| **user_mod** | [**UserModParams**](UserModParams.md) | The user mod data to assign |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## append_user_to_pack

> <GeneralError> append_user_to_pack(user_id, user_pack)

Assign a pack to user

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
user_pack = Kleister::UserPackParams.new({pack: 'pack_example', perm: 'user'}) # UserPackParams | The user pack data to assign

begin
  # Assign a pack to user
  result = api_instance.append_user_to_pack(user_id, user_pack)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->append_user_to_pack: #{e}"
end
```

#### Using the append_user_to_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> append_user_to_pack_with_http_info(user_id, user_pack)

```ruby
begin
  # Assign a pack to user
  data, status_code, headers = api_instance.append_user_to_pack_with_http_info(user_id, user_pack)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->append_user_to_pack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user UUID or slug |  |
| **user_pack** | [**UserPackParams**](UserPackParams.md) | The user pack data to assign |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## append_user_to_team

> <GeneralError> append_user_to_team(user_id, user_team)

Assign a team to user

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
user_team = Kleister::UserTeamParams.new({team: 'team_example', perm: 'user'}) # UserTeamParams | The user team data to assign

begin
  # Assign a team to user
  result = api_instance.append_user_to_team(user_id, user_team)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->append_user_to_team: #{e}"
end
```

#### Using the append_user_to_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> append_user_to_team_with_http_info(user_id, user_team)

```ruby
begin
  # Assign a team to user
  data, status_code, headers = api_instance.append_user_to_team_with_http_info(user_id, user_team)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->append_user_to_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user UUID or slug |  |
| **user_team** | [**UserTeamParams**](UserTeamParams.md) | The user team data to assign |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

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

api_instance = Kleister::UserApi.new
user = Kleister::User.new({username: 'username_example', email: 'email_example'}) # User | The user data to create

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

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user

> <GeneralError> delete_user(user_id)

Delete a specific user

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug

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

> <Array(<GeneralError>, Integer, Hash)> delete_user_with_http_info(user_id)

```ruby
begin
  # Delete a specific user
  data, status_code, headers = api_instance.delete_user_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->delete_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user UUID or slug |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_user_from_mod

> <GeneralError> delete_user_from_mod(user_id, user_mod)

Remove a mod from user

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
user_mod = Kleister::UserModParams.new({mod: 'mod_example', perm: 'user'}) # UserModParams | The user mod data to delete

begin
  # Remove a mod from user
  result = api_instance.delete_user_from_mod(user_id, user_mod)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->delete_user_from_mod: #{e}"
end
```

#### Using the delete_user_from_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> delete_user_from_mod_with_http_info(user_id, user_mod)

```ruby
begin
  # Remove a mod from user
  data, status_code, headers = api_instance.delete_user_from_mod_with_http_info(user_id, user_mod)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->delete_user_from_mod_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user UUID or slug |  |
| **user_mod** | [**UserModParams**](UserModParams.md) | The user mod data to delete |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user_from_pack

> <GeneralError> delete_user_from_pack(user_id, user_pack)

Remove a pack from user

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
user_pack = Kleister::UserPackParams.new({pack: 'pack_example', perm: 'user'}) # UserPackParams | The user pack data to delete

begin
  # Remove a pack from user
  result = api_instance.delete_user_from_pack(user_id, user_pack)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->delete_user_from_pack: #{e}"
end
```

#### Using the delete_user_from_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> delete_user_from_pack_with_http_info(user_id, user_pack)

```ruby
begin
  # Remove a pack from user
  data, status_code, headers = api_instance.delete_user_from_pack_with_http_info(user_id, user_pack)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->delete_user_from_pack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user UUID or slug |  |
| **user_pack** | [**UserPackParams**](UserPackParams.md) | The user pack data to delete |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user_from_team

> <GeneralError> delete_user_from_team(user_id, user_team)

Remove a team from user

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
user_team = Kleister::UserTeamParams.new({team: 'team_example', perm: 'user'}) # UserTeamParams | The user team data to delete

begin
  # Remove a team from user
  result = api_instance.delete_user_from_team(user_id, user_team)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->delete_user_from_team: #{e}"
end
```

#### Using the delete_user_from_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> delete_user_from_team_with_http_info(user_id, user_team)

```ruby
begin
  # Remove a team from user
  data, status_code, headers = api_instance.delete_user_from_team_with_http_info(user_id, user_team)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->delete_user_from_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user UUID or slug |  |
| **user_team** | [**UserTeamParams**](UserTeamParams.md) | The user team data to delete |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_user_mods

> <Array<UserMod>> list_user_mods(user_id)

Fetch all mods assigned to user

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug

begin
  # Fetch all mods assigned to user
  result = api_instance.list_user_mods(user_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->list_user_mods: #{e}"
end
```

#### Using the list_user_mods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UserMod>>, Integer, Hash)> list_user_mods_with_http_info(user_id)

```ruby
begin
  # Fetch all mods assigned to user
  data, status_code, headers = api_instance.list_user_mods_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UserMod>>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->list_user_mods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user UUID or slug |  |

### Return type

[**Array&lt;UserMod&gt;**](UserMod.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_user_packs

> <Array<UserPack>> list_user_packs(user_id)

Fetch all packs assigned to user

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug

begin
  # Fetch all packs assigned to user
  result = api_instance.list_user_packs(user_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->list_user_packs: #{e}"
end
```

#### Using the list_user_packs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UserPack>>, Integer, Hash)> list_user_packs_with_http_info(user_id)

```ruby
begin
  # Fetch all packs assigned to user
  data, status_code, headers = api_instance.list_user_packs_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UserPack>>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->list_user_packs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user UUID or slug |  |

### Return type

[**Array&lt;UserPack&gt;**](UserPack.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_user_teams

> <Array<TeamUser>> list_user_teams(user_id)

Fetch all teams assigned to user

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug

begin
  # Fetch all teams assigned to user
  result = api_instance.list_user_teams(user_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->list_user_teams: #{e}"
end
```

#### Using the list_user_teams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TeamUser>>, Integer, Hash)> list_user_teams_with_http_info(user_id)

```ruby
begin
  # Fetch all teams assigned to user
  data, status_code, headers = api_instance.list_user_teams_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TeamUser>>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->list_user_teams_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user UUID or slug |  |

### Return type

[**Array&lt;TeamUser&gt;**](TeamUser.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_users

> <Array<User>> list_users

Fetch all available users

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::UserApi.new

begin
  # Fetch all available users
  result = api_instance.list_users
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->list_users: #{e}"
end
```

#### Using the list_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<User>>, Integer, Hash)> list_users_with_http_info

```ruby
begin
  # Fetch all available users
  data, status_code, headers = api_instance.list_users_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<User>>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->list_users_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;User&gt;**](User.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## permit_user_mod

> <GeneralError> permit_user_mod(user_id, user_mod)

Update mod perms for user

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
user_mod = Kleister::UserModParams.new({mod: 'mod_example', perm: 'user'}) # UserModParams | The user mod data to update

begin
  # Update mod perms for user
  result = api_instance.permit_user_mod(user_id, user_mod)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->permit_user_mod: #{e}"
end
```

#### Using the permit_user_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> permit_user_mod_with_http_info(user_id, user_mod)

```ruby
begin
  # Update mod perms for user
  data, status_code, headers = api_instance.permit_user_mod_with_http_info(user_id, user_mod)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->permit_user_mod_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user UUID or slug |  |
| **user_mod** | [**UserModParams**](UserModParams.md) | The user mod data to update |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## permit_user_pack

> <GeneralError> permit_user_pack(user_id, user_pack)

Update pack perms for user

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
user_pack = Kleister::UserPackParams.new({pack: 'pack_example', perm: 'user'}) # UserPackParams | The user pack data to update

begin
  # Update pack perms for user
  result = api_instance.permit_user_pack(user_id, user_pack)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->permit_user_pack: #{e}"
end
```

#### Using the permit_user_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> permit_user_pack_with_http_info(user_id, user_pack)

```ruby
begin
  # Update pack perms for user
  data, status_code, headers = api_instance.permit_user_pack_with_http_info(user_id, user_pack)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->permit_user_pack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user UUID or slug |  |
| **user_pack** | [**UserPackParams**](UserPackParams.md) | The user pack data to update |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## permit_user_team

> <GeneralError> permit_user_team(user_id, user_team)

Update team perms for user

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
user_team = Kleister::UserTeamParams.new({team: 'team_example', perm: 'user'}) # UserTeamParams | The user team data to update

begin
  # Update team perms for user
  result = api_instance.permit_user_team(user_id, user_team)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->permit_user_team: #{e}"
end
```

#### Using the permit_user_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> permit_user_team_with_http_info(user_id, user_team)

```ruby
begin
  # Update team perms for user
  data, status_code, headers = api_instance.permit_user_team_with_http_info(user_id, user_team)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling UserApi->permit_user_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | A user UUID or slug |  |
| **user_team** | [**UserTeamParams**](UserTeamParams.md) | The user team data to update |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

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

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug

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
| **user_id** | **String** | A user UUID or slug |  |

### Return type

[**User**](User.md)

### Authorization

No authorization required

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

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
user = Kleister::User.new({username: 'username_example', email: 'email_example'}) # User | The user data to update

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
| **user_id** | **String** | A user UUID or slug |  |
| **user** | [**User**](User.md) | The user data to update |  |

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

