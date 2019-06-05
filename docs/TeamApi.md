# Kleister::TeamApi

All URIs are relative to *http://try.kleister.tech/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**append_team_to_mod**](TeamApi.md#append_team_to_mod) | **POST** /teams/{team_id}/mods | Assign a mod to team
[**append_team_to_pack**](TeamApi.md#append_team_to_pack) | **POST** /teams/{team_id}/packs | Assign a pack to team
[**append_team_to_user**](TeamApi.md#append_team_to_user) | **POST** /teams/{team_id}/users | Assign a user to team
[**create_team**](TeamApi.md#create_team) | **POST** /teams | Create a new team
[**delete_team**](TeamApi.md#delete_team) | **DELETE** /teams/{team_id} | Delete a specific team
[**delete_team_from_mod**](TeamApi.md#delete_team_from_mod) | **DELETE** /teams/{team_id}/mods | Remove a mod from team
[**delete_team_from_pack**](TeamApi.md#delete_team_from_pack) | **DELETE** /teams/{team_id}/packs | Remove a pack from team
[**delete_team_from_user**](TeamApi.md#delete_team_from_user) | **DELETE** /teams/{team_id}/users | Remove a user from team
[**list_team_mods**](TeamApi.md#list_team_mods) | **GET** /teams/{team_id}/mods | Fetch all mods assigned to team
[**list_team_packs**](TeamApi.md#list_team_packs) | **GET** /teams/{team_id}/packs | Fetch all packs assigned to team
[**list_team_users**](TeamApi.md#list_team_users) | **GET** /teams/{team_id}/users | Fetch all users assigned to team
[**list_teams**](TeamApi.md#list_teams) | **GET** /teams | Fetch all available teams
[**permit_team_mod**](TeamApi.md#permit_team_mod) | **PUT** /teams/{team_id}/mods | Update mod perms for team
[**permit_team_pack**](TeamApi.md#permit_team_pack) | **PUT** /teams/{team_id}/packs | Update pack perms for team
[**permit_team_user**](TeamApi.md#permit_team_user) | **PUT** /teams/{team_id}/users | Update user perms for team
[**show_team**](TeamApi.md#show_team) | **GET** /teams/{team_id} | Fetch a specific team
[**update_team**](TeamApi.md#update_team) | **PUT** /teams/{team_id} | Update a specific team



## append_team_to_mod

> GeneralError append_team_to_mod(team_id, params)

Assign a mod to team

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
params = Kleister::TeamModParams.new # TeamModParams | The team mod data to assign

begin
  #Assign a mod to team
  result = api_instance.append_team_to_mod(team_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling TeamApi->append_team_to_mod: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| A team UUID or slug | 
 **params** | [**TeamModParams**](TeamModParams.md)| The team mod data to assign | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## append_team_to_pack

> GeneralError append_team_to_pack(team_id, params)

Assign a pack to team

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
params = Kleister::TeamPackParams.new # TeamPackParams | The team pack data to assign

begin
  #Assign a pack to team
  result = api_instance.append_team_to_pack(team_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling TeamApi->append_team_to_pack: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| A team UUID or slug | 
 **params** | [**TeamPackParams**](TeamPackParams.md)| The team pack data to assign | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## append_team_to_user

> GeneralError append_team_to_user(team_id, params)

Assign a user to team

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
params = Kleister::TeamUserParams.new # TeamUserParams | The team user data to assign

begin
  #Assign a user to team
  result = api_instance.append_team_to_user(team_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling TeamApi->append_team_to_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| A team UUID or slug | 
 **params** | [**TeamUserParams**](TeamUserParams.md)| The team user data to assign | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_team

> Team create_team(params)

Create a new team

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::TeamApi.new
params = Kleister::Team.new # Team | The team data to create

begin
  #Create a new team
  result = api_instance.create_team(params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling TeamApi->create_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **params** | [**Team**](Team.md)| The team data to create | 

### Return type

[**Team**](Team.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_team

> GeneralError delete_team(team_id)

Delete a specific team

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug

begin
  #Delete a specific team
  result = api_instance.delete_team(team_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling TeamApi->delete_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| A team UUID or slug | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_team_from_mod

> GeneralError delete_team_from_mod(team_id, params)

Remove a mod from team

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
params = Kleister::TeamModParams.new # TeamModParams | The team mod data to delete

begin
  #Remove a mod from team
  result = api_instance.delete_team_from_mod(team_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling TeamApi->delete_team_from_mod: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| A team UUID or slug | 
 **params** | [**TeamModParams**](TeamModParams.md)| The team mod data to delete | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_team_from_pack

> GeneralError delete_team_from_pack(team_id, params)

Remove a pack from team

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
params = Kleister::TeamPackParams.new # TeamPackParams | The team pack data to delete

begin
  #Remove a pack from team
  result = api_instance.delete_team_from_pack(team_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling TeamApi->delete_team_from_pack: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| A team UUID or slug | 
 **params** | [**TeamPackParams**](TeamPackParams.md)| The team pack data to delete | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_team_from_user

> GeneralError delete_team_from_user(team_id, params)

Remove a user from team

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
params = Kleister::TeamUserParams.new # TeamUserParams | The team user data to delete

begin
  #Remove a user from team
  result = api_instance.delete_team_from_user(team_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling TeamApi->delete_team_from_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| A team UUID or slug | 
 **params** | [**TeamUserParams**](TeamUserParams.md)| The team user data to delete | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_team_mods

> Array&lt;TeamMod&gt; list_team_mods(team_id)

Fetch all mods assigned to team

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug

begin
  #Fetch all mods assigned to team
  result = api_instance.list_team_mods(team_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling TeamApi->list_team_mods: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| A team UUID or slug | 

### Return type

[**Array&lt;TeamMod&gt;**](TeamMod.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_team_packs

> Array&lt;TeamPack&gt; list_team_packs(team_id)

Fetch all packs assigned to team

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug

begin
  #Fetch all packs assigned to team
  result = api_instance.list_team_packs(team_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling TeamApi->list_team_packs: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| A team UUID or slug | 

### Return type

[**Array&lt;TeamPack&gt;**](TeamPack.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_team_users

> Array&lt;TeamUser&gt; list_team_users(team_id)

Fetch all users assigned to team

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug

begin
  #Fetch all users assigned to team
  result = api_instance.list_team_users(team_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling TeamApi->list_team_users: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| A team UUID or slug | 

### Return type

[**Array&lt;TeamUser&gt;**](TeamUser.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_teams

> Array&lt;Team&gt; list_teams

Fetch all available teams

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::TeamApi.new

begin
  #Fetch all available teams
  result = api_instance.list_teams
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling TeamApi->list_teams: #{e}"
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

> GeneralError permit_team_mod(team_id, params)

Update mod perms for team

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
params = Kleister::TeamModParams.new # TeamModParams | The team mod data to update

begin
  #Update mod perms for team
  result = api_instance.permit_team_mod(team_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling TeamApi->permit_team_mod: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| A team UUID or slug | 
 **params** | [**TeamModParams**](TeamModParams.md)| The team mod data to update | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## permit_team_pack

> GeneralError permit_team_pack(team_id, params)

Update pack perms for team

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
params = Kleister::TeamPackParams.new # TeamPackParams | The team pack data to update

begin
  #Update pack perms for team
  result = api_instance.permit_team_pack(team_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling TeamApi->permit_team_pack: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| A team UUID or slug | 
 **params** | [**TeamPackParams**](TeamPackParams.md)| The team pack data to update | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## permit_team_user

> GeneralError permit_team_user(team_id, params)

Update user perms for team

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
params = Kleister::TeamUserParams.new # TeamUserParams | The team user data to update

begin
  #Update user perms for team
  result = api_instance.permit_team_user(team_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling TeamApi->permit_team_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| A team UUID or slug | 
 **params** | [**TeamUserParams**](TeamUserParams.md)| The team user data to update | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## show_team

> Team show_team(team_id)

Fetch a specific team

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug

begin
  #Fetch a specific team
  result = api_instance.show_team(team_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling TeamApi->show_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| A team UUID or slug | 

### Return type

[**Team**](Team.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_team

> Team update_team(team_id, params)

Update a specific team

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
params = Kleister::Team.new # Team | The team data to update

begin
  #Update a specific team
  result = api_instance.update_team(team_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling TeamApi->update_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| A team UUID or slug | 
 **params** | [**Team**](Team.md)| The team data to update | 

### Return type

[**Team**](Team.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

