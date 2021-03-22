# Kleister::TeamApi

All URIs are relative to *http://try.kleister.tech/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**append_team_to_mod**](TeamApi.md#append_team_to_mod) | **POST** /teams/{team_id}/mods | Assign a mod to team |
| [**append_team_to_pack**](TeamApi.md#append_team_to_pack) | **POST** /teams/{team_id}/packs | Assign a pack to team |
| [**append_team_to_user**](TeamApi.md#append_team_to_user) | **POST** /teams/{team_id}/users | Assign a user to team |
| [**create_team**](TeamApi.md#create_team) | **POST** /teams | Create a new team |
| [**delete_team**](TeamApi.md#delete_team) | **DELETE** /teams/{team_id} | Delete a specific team |
| [**delete_team_from_mod**](TeamApi.md#delete_team_from_mod) | **DELETE** /teams/{team_id}/mods | Remove a mod from team |
| [**delete_team_from_pack**](TeamApi.md#delete_team_from_pack) | **DELETE** /teams/{team_id}/packs | Remove a pack from team |
| [**delete_team_from_user**](TeamApi.md#delete_team_from_user) | **DELETE** /teams/{team_id}/users | Remove a user from team |
| [**list_team_mods**](TeamApi.md#list_team_mods) | **GET** /teams/{team_id}/mods | Fetch all mods assigned to team |
| [**list_team_packs**](TeamApi.md#list_team_packs) | **GET** /teams/{team_id}/packs | Fetch all packs assigned to team |
| [**list_team_users**](TeamApi.md#list_team_users) | **GET** /teams/{team_id}/users | Fetch all users assigned to team |
| [**list_teams**](TeamApi.md#list_teams) | **GET** /teams | Fetch all available teams |
| [**permit_team_mod**](TeamApi.md#permit_team_mod) | **PUT** /teams/{team_id}/mods | Update mod perms for team |
| [**permit_team_pack**](TeamApi.md#permit_team_pack) | **PUT** /teams/{team_id}/packs | Update pack perms for team |
| [**permit_team_user**](TeamApi.md#permit_team_user) | **PUT** /teams/{team_id}/users | Update user perms for team |
| [**show_team**](TeamApi.md#show_team) | **GET** /teams/{team_id} | Fetch a specific team |
| [**update_team**](TeamApi.md#update_team) | **PUT** /teams/{team_id} | Update a specific team |


## append_team_to_mod

> <GeneralError> append_team_to_mod(team_id, team_mod)

Assign a mod to team

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
team_mod = Kleister::TeamModParams.new({mod: 'mod_example', perm: 'user'}) # TeamModParams | The team mod data to assign

begin
  # Assign a mod to team
  result = api_instance.append_team_to_mod(team_id, team_mod)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->append_team_to_mod: #{e}"
end
```

#### Using the append_team_to_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> append_team_to_mod_with_http_info(team_id, team_mod)

```ruby
begin
  # Assign a mod to team
  data, status_code, headers = api_instance.append_team_to_mod_with_http_info(team_id, team_mod)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->append_team_to_mod_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team UUID or slug |  |
| **team_mod** | [**TeamModParams**](TeamModParams.md) | The team mod data to assign |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## append_team_to_pack

> <GeneralError> append_team_to_pack(team_id, team_pack)

Assign a pack to team

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
team_pack = Kleister::TeamPackParams.new({pack: 'pack_example', perm: 'user'}) # TeamPackParams | The team pack data to assign

begin
  # Assign a pack to team
  result = api_instance.append_team_to_pack(team_id, team_pack)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->append_team_to_pack: #{e}"
end
```

#### Using the append_team_to_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> append_team_to_pack_with_http_info(team_id, team_pack)

```ruby
begin
  # Assign a pack to team
  data, status_code, headers = api_instance.append_team_to_pack_with_http_info(team_id, team_pack)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->append_team_to_pack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team UUID or slug |  |
| **team_pack** | [**TeamPackParams**](TeamPackParams.md) | The team pack data to assign |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## append_team_to_user

> <GeneralError> append_team_to_user(team_id, team_user)

Assign a user to team

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
team_user = Kleister::TeamUserParams.new({user: 'user_example', perm: 'user'}) # TeamUserParams | The team user data to assign

begin
  # Assign a user to team
  result = api_instance.append_team_to_user(team_id, team_user)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->append_team_to_user: #{e}"
end
```

#### Using the append_team_to_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> append_team_to_user_with_http_info(team_id, team_user)

```ruby
begin
  # Assign a user to team
  data, status_code, headers = api_instance.append_team_to_user_with_http_info(team_id, team_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->append_team_to_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team UUID or slug |  |
| **team_user** | [**TeamUserParams**](TeamUserParams.md) | The team user data to assign |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

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

api_instance = Kleister::TeamApi.new
team = Kleister::Team.new({name: 'name_example'}) # Team | The team data to create

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

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_team

> <GeneralError> delete_team(team_id)

Delete a specific team

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug

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

> <Array(<GeneralError>, Integer, Hash)> delete_team_with_http_info(team_id)

```ruby
begin
  # Delete a specific team
  data, status_code, headers = api_instance.delete_team_with_http_info(team_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->delete_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team UUID or slug |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_team_from_mod

> <GeneralError> delete_team_from_mod(team_id, team_mod)

Remove a mod from team

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
team_mod = Kleister::TeamModParams.new({mod: 'mod_example', perm: 'user'}) # TeamModParams | The team mod data to delete

begin
  # Remove a mod from team
  result = api_instance.delete_team_from_mod(team_id, team_mod)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->delete_team_from_mod: #{e}"
end
```

#### Using the delete_team_from_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> delete_team_from_mod_with_http_info(team_id, team_mod)

```ruby
begin
  # Remove a mod from team
  data, status_code, headers = api_instance.delete_team_from_mod_with_http_info(team_id, team_mod)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->delete_team_from_mod_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team UUID or slug |  |
| **team_mod** | [**TeamModParams**](TeamModParams.md) | The team mod data to delete |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_team_from_pack

> <GeneralError> delete_team_from_pack(team_id, team_pack)

Remove a pack from team

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
team_pack = Kleister::TeamPackParams.new({pack: 'pack_example', perm: 'user'}) # TeamPackParams | The team pack data to delete

begin
  # Remove a pack from team
  result = api_instance.delete_team_from_pack(team_id, team_pack)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->delete_team_from_pack: #{e}"
end
```

#### Using the delete_team_from_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> delete_team_from_pack_with_http_info(team_id, team_pack)

```ruby
begin
  # Remove a pack from team
  data, status_code, headers = api_instance.delete_team_from_pack_with_http_info(team_id, team_pack)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->delete_team_from_pack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team UUID or slug |  |
| **team_pack** | [**TeamPackParams**](TeamPackParams.md) | The team pack data to delete |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_team_from_user

> <GeneralError> delete_team_from_user(team_id, team_user)

Remove a user from team

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
team_user = Kleister::TeamUserParams.new({user: 'user_example', perm: 'user'}) # TeamUserParams | The team user data to delete

begin
  # Remove a user from team
  result = api_instance.delete_team_from_user(team_id, team_user)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->delete_team_from_user: #{e}"
end
```

#### Using the delete_team_from_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> delete_team_from_user_with_http_info(team_id, team_user)

```ruby
begin
  # Remove a user from team
  data, status_code, headers = api_instance.delete_team_from_user_with_http_info(team_id, team_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->delete_team_from_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team UUID or slug |  |
| **team_user** | [**TeamUserParams**](TeamUserParams.md) | The team user data to delete |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_team_mods

> <Array<TeamMod>> list_team_mods(team_id)

Fetch all mods assigned to team

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug

begin
  # Fetch all mods assigned to team
  result = api_instance.list_team_mods(team_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->list_team_mods: #{e}"
end
```

#### Using the list_team_mods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TeamMod>>, Integer, Hash)> list_team_mods_with_http_info(team_id)

```ruby
begin
  # Fetch all mods assigned to team
  data, status_code, headers = api_instance.list_team_mods_with_http_info(team_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TeamMod>>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->list_team_mods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team UUID or slug |  |

### Return type

[**Array&lt;TeamMod&gt;**](TeamMod.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_team_packs

> <Array<TeamPack>> list_team_packs(team_id)

Fetch all packs assigned to team

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug

begin
  # Fetch all packs assigned to team
  result = api_instance.list_team_packs(team_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->list_team_packs: #{e}"
end
```

#### Using the list_team_packs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TeamPack>>, Integer, Hash)> list_team_packs_with_http_info(team_id)

```ruby
begin
  # Fetch all packs assigned to team
  data, status_code, headers = api_instance.list_team_packs_with_http_info(team_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TeamPack>>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->list_team_packs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team UUID or slug |  |

### Return type

[**Array&lt;TeamPack&gt;**](TeamPack.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_team_users

> <Array<TeamUser>> list_team_users(team_id)

Fetch all users assigned to team

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug

begin
  # Fetch all users assigned to team
  result = api_instance.list_team_users(team_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->list_team_users: #{e}"
end
```

#### Using the list_team_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TeamUser>>, Integer, Hash)> list_team_users_with_http_info(team_id)

```ruby
begin
  # Fetch all users assigned to team
  data, status_code, headers = api_instance.list_team_users_with_http_info(team_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TeamUser>>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->list_team_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team UUID or slug |  |

### Return type

[**Array&lt;TeamUser&gt;**](TeamUser.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_teams

> <Array<Team>> list_teams

Fetch all available teams

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::TeamApi.new

begin
  # Fetch all available teams
  result = api_instance.list_teams
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->list_teams: #{e}"
end
```

#### Using the list_teams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Team>>, Integer, Hash)> list_teams_with_http_info

```ruby
begin
  # Fetch all available teams
  data, status_code, headers = api_instance.list_teams_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Team>>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->list_teams_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Team&gt;**](Team.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## permit_team_mod

> <GeneralError> permit_team_mod(team_id, team_mod)

Update mod perms for team

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
team_mod = Kleister::TeamModParams.new({mod: 'mod_example', perm: 'user'}) # TeamModParams | The team mod data to update

begin
  # Update mod perms for team
  result = api_instance.permit_team_mod(team_id, team_mod)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->permit_team_mod: #{e}"
end
```

#### Using the permit_team_mod_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> permit_team_mod_with_http_info(team_id, team_mod)

```ruby
begin
  # Update mod perms for team
  data, status_code, headers = api_instance.permit_team_mod_with_http_info(team_id, team_mod)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->permit_team_mod_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team UUID or slug |  |
| **team_mod** | [**TeamModParams**](TeamModParams.md) | The team mod data to update |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## permit_team_pack

> <GeneralError> permit_team_pack(team_id, team_pack)

Update pack perms for team

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
team_pack = Kleister::TeamPackParams.new({pack: 'pack_example', perm: 'user'}) # TeamPackParams | The team pack data to update

begin
  # Update pack perms for team
  result = api_instance.permit_team_pack(team_id, team_pack)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->permit_team_pack: #{e}"
end
```

#### Using the permit_team_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> permit_team_pack_with_http_info(team_id, team_pack)

```ruby
begin
  # Update pack perms for team
  data, status_code, headers = api_instance.permit_team_pack_with_http_info(team_id, team_pack)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->permit_team_pack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team UUID or slug |  |
| **team_pack** | [**TeamPackParams**](TeamPackParams.md) | The team pack data to update |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## permit_team_user

> <GeneralError> permit_team_user(team_id, team_user)

Update user perms for team

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
team_user = Kleister::TeamUserParams.new({user: 'user_example', perm: 'user'}) # TeamUserParams | The team user data to update

begin
  # Update user perms for team
  result = api_instance.permit_team_user(team_id, team_user)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->permit_team_user: #{e}"
end
```

#### Using the permit_team_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralError>, Integer, Hash)> permit_team_user_with_http_info(team_id, team_user)

```ruby
begin
  # Update user perms for team
  data, status_code, headers = api_instance.permit_team_user_with_http_info(team_id, team_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling TeamApi->permit_team_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team UUID or slug |  |
| **team_user** | [**TeamUserParams**](TeamUserParams.md) | The team user data to update |  |

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

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

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug

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
| **team_id** | **String** | A team UUID or slug |  |

### Return type

[**Team**](Team.md)

### Authorization

No authorization required

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

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
team = Kleister::Team.new({name: 'name_example'}) # Team | The team data to update

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
| **team_id** | **String** | A team UUID or slug |  |
| **team** | [**Team**](Team.md) | The team data to update |  |

### Return type

[**Team**](Team.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

