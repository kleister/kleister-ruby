# Kleister::UserApi

All URIs are relative to *http://try.kleister.tech/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**append_user_to_mod**](UserApi.md#append_user_to_mod) | **POST** /users/{user_id}/mods | Assign a mod to user
[**append_user_to_pack**](UserApi.md#append_user_to_pack) | **POST** /users/{user_id}/packs | Assign a pack to user
[**append_user_to_team**](UserApi.md#append_user_to_team) | **POST** /users/{user_id}/teams | Assign a team to user
[**create_user**](UserApi.md#create_user) | **POST** /users | Create a new user
[**delete_user**](UserApi.md#delete_user) | **DELETE** /users/{user_id} | Delete a specific user
[**delete_user_from_mod**](UserApi.md#delete_user_from_mod) | **DELETE** /users/{user_id}/mods | Remove a mod from user
[**delete_user_from_pack**](UserApi.md#delete_user_from_pack) | **DELETE** /users/{user_id}/packs | Remove a pack from user
[**delete_user_from_team**](UserApi.md#delete_user_from_team) | **DELETE** /users/{user_id}/teams | Remove a team from user
[**list_user_mods**](UserApi.md#list_user_mods) | **GET** /users/{user_id}/mods | Fetch all mods assigned to user
[**list_user_packs**](UserApi.md#list_user_packs) | **GET** /users/{user_id}/packs | Fetch all packs assigned to user
[**list_user_teams**](UserApi.md#list_user_teams) | **GET** /users/{user_id}/teams | Fetch all teams assigned to user
[**list_users**](UserApi.md#list_users) | **GET** /users | Fetch all available users
[**permit_user_mod**](UserApi.md#permit_user_mod) | **PUT** /users/{user_id}/mods | Update mod perms for user
[**permit_user_pack**](UserApi.md#permit_user_pack) | **PUT** /users/{user_id}/packs | Update pack perms for user
[**permit_user_team**](UserApi.md#permit_user_team) | **PUT** /users/{user_id}/teams | Update team perms for user
[**show_user**](UserApi.md#show_user) | **GET** /users/{user_id} | Fetch a specific user
[**update_user**](UserApi.md#update_user) | **PUT** /users/{user_id} | Update a specific user



## append_user_to_mod

> GeneralError append_user_to_mod(user_id, params)

Assign a mod to user

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
params = Kleister::UserModParams.new # UserModParams | The user mod data to assign

begin
  #Assign a mod to user
  result = api_instance.append_user_to_mod(user_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling UserApi->append_user_to_mod: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| A user UUID or slug | 
 **params** | [**UserModParams**](UserModParams.md)| The user mod data to assign | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## append_user_to_pack

> GeneralError append_user_to_pack(user_id, params)

Assign a pack to user

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
params = Kleister::UserPackParams.new # UserPackParams | The user pack data to assign

begin
  #Assign a pack to user
  result = api_instance.append_user_to_pack(user_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling UserApi->append_user_to_pack: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| A user UUID or slug | 
 **params** | [**UserPackParams**](UserPackParams.md)| The user pack data to assign | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## append_user_to_team

> GeneralError append_user_to_team(user_id, params)

Assign a team to user

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
params = Kleister::UserTeamParams.new # UserTeamParams | The user team data to assign

begin
  #Assign a team to user
  result = api_instance.append_user_to_team(user_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling UserApi->append_user_to_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| A user UUID or slug | 
 **params** | [**UserTeamParams**](UserTeamParams.md)| The user team data to assign | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_user

> User create_user(params)

Create a new user

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::UserApi.new
params = Kleister::User.new # User | The user data to create

begin
  #Create a new user
  result = api_instance.create_user(params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling UserApi->create_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **params** | [**User**](User.md)| The user data to create | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user

> GeneralError delete_user(user_id)

Delete a specific user

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug

begin
  #Delete a specific user
  result = api_instance.delete_user(user_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling UserApi->delete_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| A user UUID or slug | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_user_from_mod

> GeneralError delete_user_from_mod(user_id, params)

Remove a mod from user

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
params = Kleister::UserModParams.new # UserModParams | The user mod data to delete

begin
  #Remove a mod from user
  result = api_instance.delete_user_from_mod(user_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling UserApi->delete_user_from_mod: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| A user UUID or slug | 
 **params** | [**UserModParams**](UserModParams.md)| The user mod data to delete | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user_from_pack

> GeneralError delete_user_from_pack(user_id, params)

Remove a pack from user

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
params = Kleister::UserPackParams.new # UserPackParams | The user pack data to delete

begin
  #Remove a pack from user
  result = api_instance.delete_user_from_pack(user_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling UserApi->delete_user_from_pack: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| A user UUID or slug | 
 **params** | [**UserPackParams**](UserPackParams.md)| The user pack data to delete | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user_from_team

> GeneralError delete_user_from_team(user_id, params)

Remove a team from user

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
params = Kleister::UserTeamParams.new # UserTeamParams | The user team data to delete

begin
  #Remove a team from user
  result = api_instance.delete_user_from_team(user_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling UserApi->delete_user_from_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| A user UUID or slug | 
 **params** | [**UserTeamParams**](UserTeamParams.md)| The user team data to delete | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_user_mods

> Array&lt;UserMod&gt; list_user_mods(user_id)

Fetch all mods assigned to user

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug

begin
  #Fetch all mods assigned to user
  result = api_instance.list_user_mods(user_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling UserApi->list_user_mods: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| A user UUID or slug | 

### Return type

[**Array&lt;UserMod&gt;**](UserMod.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_user_packs

> Array&lt;UserPack&gt; list_user_packs(user_id)

Fetch all packs assigned to user

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug

begin
  #Fetch all packs assigned to user
  result = api_instance.list_user_packs(user_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling UserApi->list_user_packs: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| A user UUID or slug | 

### Return type

[**Array&lt;UserPack&gt;**](UserPack.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_user_teams

> Array&lt;TeamUser&gt; list_user_teams(user_id)

Fetch all teams assigned to user

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug

begin
  #Fetch all teams assigned to user
  result = api_instance.list_user_teams(user_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling UserApi->list_user_teams: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| A user UUID or slug | 

### Return type

[**Array&lt;TeamUser&gt;**](TeamUser.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_users

> Array&lt;User&gt; list_users

Fetch all available users

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::UserApi.new

begin
  #Fetch all available users
  result = api_instance.list_users
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling UserApi->list_users: #{e}"
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

> GeneralError permit_user_mod(user_id, params)

Update mod perms for user

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
params = Kleister::UserModParams.new # UserModParams | The user mod data to update

begin
  #Update mod perms for user
  result = api_instance.permit_user_mod(user_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling UserApi->permit_user_mod: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| A user UUID or slug | 
 **params** | [**UserModParams**](UserModParams.md)| The user mod data to update | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## permit_user_pack

> GeneralError permit_user_pack(user_id, params)

Update pack perms for user

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
params = Kleister::UserPackParams.new # UserPackParams | The user pack data to update

begin
  #Update pack perms for user
  result = api_instance.permit_user_pack(user_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling UserApi->permit_user_pack: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| A user UUID or slug | 
 **params** | [**UserPackParams**](UserPackParams.md)| The user pack data to update | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## permit_user_team

> GeneralError permit_user_team(user_id, params)

Update team perms for user

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
params = Kleister::UserTeamParams.new # UserTeamParams | The user team data to update

begin
  #Update team perms for user
  result = api_instance.permit_user_team(user_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling UserApi->permit_user_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| A user UUID or slug | 
 **params** | [**UserTeamParams**](UserTeamParams.md)| The user team data to update | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## show_user

> User show_user(user_id)

Fetch a specific user

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug

begin
  #Fetch a specific user
  result = api_instance.show_user(user_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling UserApi->show_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| A user UUID or slug | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user

> User update_user(user_id, params)

Update a specific user

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
params = Kleister::User.new # User | The user data to update

begin
  #Update a specific user
  result = api_instance.update_user(user_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling UserApi->update_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| A user UUID or slug | 
 **params** | [**User**](User.md)| The user data to update | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

