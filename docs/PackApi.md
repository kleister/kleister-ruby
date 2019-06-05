# Kleister::PackApi

All URIs are relative to *http://try.kleister.tech/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**append_build_to_version**](PackApi.md#append_build_to_version) | **POST** /packs/{pack_id}/builds/{build_id}/versions | Assign a version to a build
[**append_pack_to_team**](PackApi.md#append_pack_to_team) | **POST** /packs/{pack_id}/teams | Assign a team to pack
[**append_pack_to_user**](PackApi.md#append_pack_to_user) | **POST** /packs/{pack_id}/users | Assign a user to pack
[**create_build**](PackApi.md#create_build) | **POST** /packs/{pack_id}/builds | Create a new build for a pack
[**create_pack**](PackApi.md#create_pack) | **POST** /packs | Create a new pack
[**delete_build**](PackApi.md#delete_build) | **DELETE** /packs/{pack_id}/builds/{build_id} | Delete a specific build for a pack
[**delete_build_from_version**](PackApi.md#delete_build_from_version) | **DELETE** /packs/{pack_id}/builds/{build_id}/versions | Unlink a version from a build
[**delete_pack**](PackApi.md#delete_pack) | **DELETE** /packs/{pack_id} | Delete a specific pack
[**delete_pack_from_team**](PackApi.md#delete_pack_from_team) | **DELETE** /packs/{pack_id}/teams | Remove a team from pack
[**delete_pack_from_user**](PackApi.md#delete_pack_from_user) | **DELETE** /packs/{pack_id}/users | Remove a user from pack
[**list_build_versions**](PackApi.md#list_build_versions) | **GET** /packs/{pack_id}/builds/{build_id}/versions | Fetch all versions assigned to build
[**list_builds**](PackApi.md#list_builds) | **GET** /packs/{pack_id}/builds | Fetch all available builds for a pack
[**list_pack_teams**](PackApi.md#list_pack_teams) | **GET** /packs/{pack_id}/teams | Fetch all teams assigned to pack
[**list_pack_users**](PackApi.md#list_pack_users) | **GET** /packs/{pack_id}/users | Fetch all users assigned to pack
[**list_packs**](PackApi.md#list_packs) | **GET** /packs | Fetch all available packs
[**permit_pack_team**](PackApi.md#permit_pack_team) | **PUT** /packs/{pack_id}/teams | Update team perms for pack
[**permit_pack_user**](PackApi.md#permit_pack_user) | **PUT** /packs/{pack_id}/users | Update user perms for pack
[**show_build**](PackApi.md#show_build) | **GET** /packs/{pack_id}/builds/{build_id} | Fetch a specific build for a pack
[**show_pack**](PackApi.md#show_pack) | **GET** /packs/{pack_id} | Fetch a specific pack
[**update_build**](PackApi.md#update_build) | **PUT** /packs/{pack_id}/builds/{build_id} | Update a specific build for a pack
[**update_pack**](PackApi.md#update_pack) | **PUT** /packs/{pack_id} | Update a specific pack



## append_build_to_version

> GeneralError append_build_to_version(pack_id, build_id, params)

Assign a version to a build

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
build_id = 'build_id_example' # String | A build UUID or slug
params = Kleister::BuildVersionParams.new # BuildVersionParams | The version data to append to build

begin
  #Assign a version to a build
  result = api_instance.append_build_to_version(pack_id, build_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling PackApi->append_build_to_version: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pack_id** | **String**| A pack UUID or slug | 
 **build_id** | **String**| A build UUID or slug | 
 **params** | [**BuildVersionParams**](BuildVersionParams.md)| The version data to append to build | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## append_pack_to_team

> GeneralError append_pack_to_team(pack_id, params)

Assign a team to pack

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
params = Kleister::PackTeamParams.new # PackTeamParams | The pack team data to assign

begin
  #Assign a team to pack
  result = api_instance.append_pack_to_team(pack_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling PackApi->append_pack_to_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pack_id** | **String**| A pack UUID or slug | 
 **params** | [**PackTeamParams**](PackTeamParams.md)| The pack team data to assign | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## append_pack_to_user

> GeneralError append_pack_to_user(pack_id, params)

Assign a user to pack

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
params = Kleister::PackUserParams.new # PackUserParams | The pack user data to assign

begin
  #Assign a user to pack
  result = api_instance.append_pack_to_user(pack_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling PackApi->append_pack_to_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pack_id** | **String**| A pack UUID or slug | 
 **params** | [**PackUserParams**](PackUserParams.md)| The pack user data to assign | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_build

> Build create_build(pack_id, params)

Create a new build for a pack

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
params = Kleister::Build.new # Build | The build data to create

begin
  #Create a new build for a pack
  result = api_instance.create_build(pack_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling PackApi->create_build: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pack_id** | **String**| A pack UUID or slug | 
 **params** | [**Build**](Build.md)| The build data to create | 

### Return type

[**Build**](Build.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_pack

> Pack create_pack(params)

Create a new pack

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::PackApi.new
params = Kleister::Pack.new # Pack | The pack data to create

begin
  #Create a new pack
  result = api_instance.create_pack(params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling PackApi->create_pack: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **params** | [**Pack**](Pack.md)| The pack data to create | 

### Return type

[**Pack**](Pack.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_build

> GeneralError delete_build(pack_id, build_id)

Delete a specific build for a pack

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
build_id = 'build_id_example' # String | A build UUID or slug

begin
  #Delete a specific build for a pack
  result = api_instance.delete_build(pack_id, build_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling PackApi->delete_build: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pack_id** | **String**| A pack UUID or slug | 
 **build_id** | **String**| A build UUID or slug | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_build_from_version

> GeneralError delete_build_from_version(pack_id, build_id, params)

Unlink a version from a build

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
build_id = 'build_id_example' # String | A build UUID or slug
params = Kleister::BuildVersionParams.new # BuildVersionParams | The version data to unlink from build

begin
  #Unlink a version from a build
  result = api_instance.delete_build_from_version(pack_id, build_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling PackApi->delete_build_from_version: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pack_id** | **String**| A pack UUID or slug | 
 **build_id** | **String**| A build UUID or slug | 
 **params** | [**BuildVersionParams**](BuildVersionParams.md)| The version data to unlink from build | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_pack

> GeneralError delete_pack(pack_id)

Delete a specific pack

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug

begin
  #Delete a specific pack
  result = api_instance.delete_pack(pack_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling PackApi->delete_pack: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pack_id** | **String**| A pack UUID or slug | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_pack_from_team

> GeneralError delete_pack_from_team(pack_id, params)

Remove a team from pack

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
params = Kleister::PackTeamParams.new # PackTeamParams | The pack team data to delete

begin
  #Remove a team from pack
  result = api_instance.delete_pack_from_team(pack_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling PackApi->delete_pack_from_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pack_id** | **String**| A pack UUID or slug | 
 **params** | [**PackTeamParams**](PackTeamParams.md)| The pack team data to delete | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_pack_from_user

> GeneralError delete_pack_from_user(pack_id, params)

Remove a user from pack

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
params = Kleister::PackUserParams.new # PackUserParams | The pack user data to delete

begin
  #Remove a user from pack
  result = api_instance.delete_pack_from_user(pack_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling PackApi->delete_pack_from_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pack_id** | **String**| A pack UUID or slug | 
 **params** | [**PackUserParams**](PackUserParams.md)| The pack user data to delete | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_build_versions

> Array&lt;BuildVersion&gt; list_build_versions(pack_id, build_id)

Fetch all versions assigned to build

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
build_id = 'build_id_example' # String | A build UUID or slug

begin
  #Fetch all versions assigned to build
  result = api_instance.list_build_versions(pack_id, build_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling PackApi->list_build_versions: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pack_id** | **String**| A pack UUID or slug | 
 **build_id** | **String**| A build UUID or slug | 

### Return type

[**Array&lt;BuildVersion&gt;**](BuildVersion.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_builds

> Array&lt;Build&gt; list_builds(pack_id)

Fetch all available builds for a pack

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug

begin
  #Fetch all available builds for a pack
  result = api_instance.list_builds(pack_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling PackApi->list_builds: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pack_id** | **String**| A pack UUID or slug | 

### Return type

[**Array&lt;Build&gt;**](Build.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_pack_teams

> Array&lt;TeamPack&gt; list_pack_teams(pack_id)

Fetch all teams assigned to pack

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug

begin
  #Fetch all teams assigned to pack
  result = api_instance.list_pack_teams(pack_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling PackApi->list_pack_teams: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pack_id** | **String**| A pack UUID or slug | 

### Return type

[**Array&lt;TeamPack&gt;**](TeamPack.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_pack_users

> Array&lt;UserPack&gt; list_pack_users(pack_id)

Fetch all users assigned to pack

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug

begin
  #Fetch all users assigned to pack
  result = api_instance.list_pack_users(pack_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling PackApi->list_pack_users: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pack_id** | **String**| A pack UUID or slug | 

### Return type

[**Array&lt;UserPack&gt;**](UserPack.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_packs

> Array&lt;Pack&gt; list_packs

Fetch all available packs

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::PackApi.new

begin
  #Fetch all available packs
  result = api_instance.list_packs
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling PackApi->list_packs: #{e}"
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

> GeneralError permit_pack_team(pack_id, params)

Update team perms for pack

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
params = Kleister::PackTeamParams.new # PackTeamParams | The pack team data to update

begin
  #Update team perms for pack
  result = api_instance.permit_pack_team(pack_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling PackApi->permit_pack_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pack_id** | **String**| A pack UUID or slug | 
 **params** | [**PackTeamParams**](PackTeamParams.md)| The pack team data to update | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## permit_pack_user

> GeneralError permit_pack_user(pack_id, params)

Update user perms for pack

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
params = Kleister::PackUserParams.new # PackUserParams | The pack user data to update

begin
  #Update user perms for pack
  result = api_instance.permit_pack_user(pack_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling PackApi->permit_pack_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pack_id** | **String**| A pack UUID or slug | 
 **params** | [**PackUserParams**](PackUserParams.md)| The pack user data to update | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## show_build

> Build show_build(pack_id, build_id)

Fetch a specific build for a pack

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
build_id = 'build_id_example' # String | A build UUID or slug

begin
  #Fetch a specific build for a pack
  result = api_instance.show_build(pack_id, build_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling PackApi->show_build: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pack_id** | **String**| A pack UUID or slug | 
 **build_id** | **String**| A build UUID or slug | 

### Return type

[**Build**](Build.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_pack

> Pack show_pack(pack_id)

Fetch a specific pack

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug

begin
  #Fetch a specific pack
  result = api_instance.show_pack(pack_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling PackApi->show_pack: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pack_id** | **String**| A pack UUID or slug | 

### Return type

[**Pack**](Pack.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_build

> Build update_build(pack_id, build_id, params)

Update a specific build for a pack

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
build_id = 'build_id_example' # String | A build UUID or slug
params = Kleister::Build.new # Build | The build data to update

begin
  #Update a specific build for a pack
  result = api_instance.update_build(pack_id, build_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling PackApi->update_build: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pack_id** | **String**| A pack UUID or slug | 
 **build_id** | **String**| A build UUID or slug | 
 **params** | [**Build**](Build.md)| The build data to update | 

### Return type

[**Build**](Build.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_pack

> Pack update_pack(pack_id, params)

Update a specific pack

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::PackApi.new
pack_id = 'pack_id_example' # String | A pack UUID or slug
params = Kleister::Pack.new # Pack | The pack data to update

begin
  #Update a specific pack
  result = api_instance.update_pack(pack_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling PackApi->update_pack: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pack_id** | **String**| A pack UUID or slug | 
 **params** | [**Pack**](Pack.md)| The pack data to update | 

### Return type

[**Pack**](Pack.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

