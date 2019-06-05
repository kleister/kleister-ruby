# Kleister::ModApi

All URIs are relative to *http://try.kleister.tech/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**append_mod_to_team**](ModApi.md#append_mod_to_team) | **POST** /mods/{mod_id}/teams | Assign a team to mod
[**append_mod_to_user**](ModApi.md#append_mod_to_user) | **POST** /mods/{mod_id}/users | Assign a user to mod
[**append_version_to_build**](ModApi.md#append_version_to_build) | **POST** /mods/{mod_id}/versions/{version_id}/builds | Assign a build to a version
[**create_mod**](ModApi.md#create_mod) | **POST** /mods | Create a new mod
[**create_version**](ModApi.md#create_version) | **POST** /mods/{mod_id}/versions | Create a new version for a mod
[**delete_mod**](ModApi.md#delete_mod) | **DELETE** /mods/{mod_id} | Delete a specific mod
[**delete_mod_from_team**](ModApi.md#delete_mod_from_team) | **DELETE** /mods/{mod_id}/teams | Remove a team from mod
[**delete_mod_from_user**](ModApi.md#delete_mod_from_user) | **DELETE** /mods/{mod_id}/users | Remove a user from mod
[**delete_version**](ModApi.md#delete_version) | **DELETE** /mods/{mod_id}/versions/{version_id} | Delete a specific version for a mod
[**delete_version_from_build**](ModApi.md#delete_version_from_build) | **DELETE** /mods/{mod_id}/versions/{version_id}/builds | Unlink a build from a version
[**list_mod_teams**](ModApi.md#list_mod_teams) | **GET** /mods/{mod_id}/teams | Fetch all teams assigned to mod
[**list_mod_users**](ModApi.md#list_mod_users) | **GET** /mods/{mod_id}/users | Fetch all users assigned to mod
[**list_mods**](ModApi.md#list_mods) | **GET** /mods | Fetch all available mods
[**list_version_builds**](ModApi.md#list_version_builds) | **GET** /mods/{mod_id}/versions/{version_id}/builds | Fetch all builds assigned to version
[**list_versions**](ModApi.md#list_versions) | **GET** /mods/{mod_id}/versions | Fetch all available versions for a mod
[**permit_mod_team**](ModApi.md#permit_mod_team) | **PUT** /mods/{mod_id}/teams | Update team perms for mod
[**permit_mod_user**](ModApi.md#permit_mod_user) | **PUT** /mods/{mod_id}/users | Update user perms for mod
[**show_mod**](ModApi.md#show_mod) | **GET** /mods/{mod_id} | Fetch a specific mod
[**show_version**](ModApi.md#show_version) | **GET** /mods/{mod_id}/versions/{version_id} | Fetch a specific version for a mod
[**update_mod**](ModApi.md#update_mod) | **PUT** /mods/{mod_id} | Update a specific mod
[**update_version**](ModApi.md#update_version) | **PUT** /mods/{mod_id}/versions/{version_id} | Update a specific version for a mod



## append_mod_to_team

> GeneralError append_mod_to_team(mod_id, params)

Assign a team to mod

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
params = Kleister::ModTeamParams.new # ModTeamParams | The mod team data to assign

begin
  #Assign a team to mod
  result = api_instance.append_mod_to_team(mod_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ModApi->append_mod_to_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mod_id** | **String**| A mod UUID or slug | 
 **params** | [**ModTeamParams**](ModTeamParams.md)| The mod team data to assign | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## append_mod_to_user

> GeneralError append_mod_to_user(mod_id, params)

Assign a user to mod

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
params = Kleister::ModUserParams.new # ModUserParams | The mod user data to assign

begin
  #Assign a user to mod
  result = api_instance.append_mod_to_user(mod_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ModApi->append_mod_to_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mod_id** | **String**| A mod UUID or slug | 
 **params** | [**ModUserParams**](ModUserParams.md)| The mod user data to assign | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## append_version_to_build

> GeneralError append_version_to_build(mod_id, version_id, params)

Assign a build to a version

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
version_id = 'version_id_example' # String | A version UUID or slug
params = Kleister::VersionBuildParams.new # VersionBuildParams | The build data to append to version

begin
  #Assign a build to a version
  result = api_instance.append_version_to_build(mod_id, version_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ModApi->append_version_to_build: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mod_id** | **String**| A mod UUID or slug | 
 **version_id** | **String**| A version UUID or slug | 
 **params** | [**VersionBuildParams**](VersionBuildParams.md)| The build data to append to version | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_mod

> Mod create_mod(params)

Create a new mod

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ModApi.new
params = Kleister::Mod.new # Mod | The mod data to create

begin
  #Create a new mod
  result = api_instance.create_mod(params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ModApi->create_mod: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **params** | [**Mod**](Mod.md)| The mod data to create | 

### Return type

[**Mod**](Mod.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_version

> Version create_version(mod_id, params)

Create a new version for a mod

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
params = Kleister::Version.new # Version | The version data to create

begin
  #Create a new version for a mod
  result = api_instance.create_version(mod_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ModApi->create_version: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mod_id** | **String**| A mod UUID or slug | 
 **params** | [**Version**](Version.md)| The version data to create | 

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_mod

> GeneralError delete_mod(mod_id)

Delete a specific mod

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug

begin
  #Delete a specific mod
  result = api_instance.delete_mod(mod_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ModApi->delete_mod: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mod_id** | **String**| A mod UUID or slug | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_mod_from_team

> GeneralError delete_mod_from_team(mod_id, params)

Remove a team from mod

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
params = Kleister::ModTeamParams.new # ModTeamParams | The mod team data to delete

begin
  #Remove a team from mod
  result = api_instance.delete_mod_from_team(mod_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ModApi->delete_mod_from_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mod_id** | **String**| A mod UUID or slug | 
 **params** | [**ModTeamParams**](ModTeamParams.md)| The mod team data to delete | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_mod_from_user

> GeneralError delete_mod_from_user(mod_id, params)

Remove a user from mod

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
params = Kleister::ModUserParams.new # ModUserParams | The mod user data to delete

begin
  #Remove a user from mod
  result = api_instance.delete_mod_from_user(mod_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ModApi->delete_mod_from_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mod_id** | **String**| A mod UUID or slug | 
 **params** | [**ModUserParams**](ModUserParams.md)| The mod user data to delete | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_version

> GeneralError delete_version(mod_id, version_id)

Delete a specific version for a mod

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
version_id = 'version_id_example' # String | A version UUID or slug

begin
  #Delete a specific version for a mod
  result = api_instance.delete_version(mod_id, version_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ModApi->delete_version: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mod_id** | **String**| A mod UUID or slug | 
 **version_id** | **String**| A version UUID or slug | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_version_from_build

> GeneralError delete_version_from_build(mod_id, version_id, params)

Unlink a build from a version

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
version_id = 'version_id_example' # String | A version UUID or slug
params = Kleister::VersionBuildParams.new # VersionBuildParams | The build data to unlink from version

begin
  #Unlink a build from a version
  result = api_instance.delete_version_from_build(mod_id, version_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ModApi->delete_version_from_build: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mod_id** | **String**| A mod UUID or slug | 
 **version_id** | **String**| A version UUID or slug | 
 **params** | [**VersionBuildParams**](VersionBuildParams.md)| The build data to unlink from version | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_mod_teams

> Array&lt;TeamMod&gt; list_mod_teams(mod_id)

Fetch all teams assigned to mod

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug

begin
  #Fetch all teams assigned to mod
  result = api_instance.list_mod_teams(mod_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ModApi->list_mod_teams: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mod_id** | **String**| A mod UUID or slug | 

### Return type

[**Array&lt;TeamMod&gt;**](TeamMod.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_mod_users

> Array&lt;UserMod&gt; list_mod_users(mod_id)

Fetch all users assigned to mod

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug

begin
  #Fetch all users assigned to mod
  result = api_instance.list_mod_users(mod_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ModApi->list_mod_users: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mod_id** | **String**| A mod UUID or slug | 

### Return type

[**Array&lt;UserMod&gt;**](UserMod.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_mods

> Array&lt;Mod&gt; list_mods

Fetch all available mods

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ModApi.new

begin
  #Fetch all available mods
  result = api_instance.list_mods
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ModApi->list_mods: #{e}"
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

> Array&lt;BuildVersion&gt; list_version_builds(mod_id, version_id)

Fetch all builds assigned to version

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
version_id = 'version_id_example' # String | A version UUID or slug

begin
  #Fetch all builds assigned to version
  result = api_instance.list_version_builds(mod_id, version_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ModApi->list_version_builds: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mod_id** | **String**| A mod UUID or slug | 
 **version_id** | **String**| A version UUID or slug | 

### Return type

[**Array&lt;BuildVersion&gt;**](BuildVersion.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_versions

> Array&lt;Version&gt; list_versions(mod_id)

Fetch all available versions for a mod

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug

begin
  #Fetch all available versions for a mod
  result = api_instance.list_versions(mod_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ModApi->list_versions: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mod_id** | **String**| A mod UUID or slug | 

### Return type

[**Array&lt;Version&gt;**](Version.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## permit_mod_team

> GeneralError permit_mod_team(mod_id, params)

Update team perms for mod

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
params = Kleister::ModTeamParams.new # ModTeamParams | The mod team data to update

begin
  #Update team perms for mod
  result = api_instance.permit_mod_team(mod_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ModApi->permit_mod_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mod_id** | **String**| A mod UUID or slug | 
 **params** | [**ModTeamParams**](ModTeamParams.md)| The mod team data to update | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## permit_mod_user

> GeneralError permit_mod_user(mod_id, params)

Update user perms for mod

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
params = Kleister::ModUserParams.new # ModUserParams | The mod user data to update

begin
  #Update user perms for mod
  result = api_instance.permit_mod_user(mod_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ModApi->permit_mod_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mod_id** | **String**| A mod UUID or slug | 
 **params** | [**ModUserParams**](ModUserParams.md)| The mod user data to update | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## show_mod

> Mod show_mod(mod_id)

Fetch a specific mod

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug

begin
  #Fetch a specific mod
  result = api_instance.show_mod(mod_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ModApi->show_mod: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mod_id** | **String**| A mod UUID or slug | 

### Return type

[**Mod**](Mod.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_version

> Version show_version(mod_id, version_id)

Fetch a specific version for a mod

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
version_id = 'version_id_example' # String | A version UUID or slug

begin
  #Fetch a specific version for a mod
  result = api_instance.show_version(mod_id, version_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ModApi->show_version: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mod_id** | **String**| A mod UUID or slug | 
 **version_id** | **String**| A version UUID or slug | 

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_mod

> Mod update_mod(mod_id, params)

Update a specific mod

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
params = Kleister::Mod.new # Mod | The mod data to update

begin
  #Update a specific mod
  result = api_instance.update_mod(mod_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ModApi->update_mod: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mod_id** | **String**| A mod UUID or slug | 
 **params** | [**Mod**](Mod.md)| The mod data to update | 

### Return type

[**Mod**](Mod.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_version

> Version update_version(mod_id, version_id, params)

Update a specific version for a mod

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ModApi.new
mod_id = 'mod_id_example' # String | A mod UUID or slug
version_id = 'version_id_example' # String | A version UUID or slug
params = Kleister::Version.new # Version | The version data to update

begin
  #Update a specific version for a mod
  result = api_instance.update_version(mod_id, version_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ModApi->update_version: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mod_id** | **String**| A mod UUID or slug | 
 **version_id** | **String**| A version UUID or slug | 
 **params** | [**Version**](Version.md)| The version data to update | 

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

