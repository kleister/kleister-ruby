# Kleister::ForgeApi

All URIs are relative to *http://http:/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**append_forge_to_build**](ForgeApi.md#append_forge_to_build) | **POST** /forge/{forge_id}/builds | Assign a build to a Forge version
[**delete_forge_from_build**](ForgeApi.md#delete_forge_from_build) | **DELETE** /forge/{forge_id}/builds | Unlink a build from a Forge version
[**list_forge_builds**](ForgeApi.md#list_forge_builds) | **GET** /forge/{forge_id}/builds | Fetch the builds assigned to a Forge version
[**list_forges**](ForgeApi.md#list_forges) | **GET** /forge | Fetch the available Forge versions
[**search_forges**](ForgeApi.md#search_forges) | **GET** /forge/{forge_id} | Search for available Forge versions
[**update_forge**](ForgeApi.md#update_forge) | **PUT** /forge | Update the available Forge versions



## append_forge_to_build

> Array&lt;Build&gt; append_forge_to_build(forge_id, params)

Assign a build to a Forge version

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ForgeApi.new
forge_id = 'forge_id_example' # String | A forge UUID or slug
params = Kleister::ForgeBuildParams.new # ForgeBuildParams | The build data to append

begin
  #Assign a build to a Forge version
  result = api_instance.append_forge_to_build(forge_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ForgeApi->append_forge_to_build: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forge_id** | **String**| A forge UUID or slug | 
 **params** | [**ForgeBuildParams**](ForgeBuildParams.md)| The build data to append | 

### Return type

[**Array&lt;Build&gt;**](Build.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_forge_from_build

> Array&lt;Build&gt; delete_forge_from_build(forge_id, params)

Unlink a build from a Forge version

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ForgeApi.new
forge_id = 'forge_id_example' # String | A forge UUID or slug
params = Kleister::ForgeBuildParams.new # ForgeBuildParams | The build data to unlink

begin
  #Unlink a build from a Forge version
  result = api_instance.delete_forge_from_build(forge_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ForgeApi->delete_forge_from_build: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forge_id** | **String**| A forge UUID or slug | 
 **params** | [**ForgeBuildParams**](ForgeBuildParams.md)| The build data to unlink | 

### Return type

[**Array&lt;Build&gt;**](Build.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_forge_builds

> Array&lt;Build&gt; list_forge_builds(forge_id)

Fetch the builds assigned to a Forge version

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ForgeApi.new
forge_id = 'forge_id_example' # String | A forge UUID or slug

begin
  #Fetch the builds assigned to a Forge version
  result = api_instance.list_forge_builds(forge_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ForgeApi->list_forge_builds: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forge_id** | **String**| A forge UUID or slug | 

### Return type

[**Array&lt;Build&gt;**](Build.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_forges

> Array&lt;Forge&gt; list_forges

Fetch the available Forge versions

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ForgeApi.new

begin
  #Fetch the available Forge versions
  result = api_instance.list_forges
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ForgeApi->list_forges: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Forge&gt;**](Forge.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_forges

> Array&lt;Forge&gt; search_forges(forge_id)

Search for available Forge versions

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ForgeApi.new
forge_id = 'forge_id_example' # String | A search token to search Forge versions

begin
  #Search for available Forge versions
  result = api_instance.search_forges(forge_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ForgeApi->search_forges: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forge_id** | **String**| A search token to search Forge versions | 

### Return type

[**Array&lt;Forge&gt;**](Forge.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_forge

> Object update_forge

Update the available Forge versions

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::ForgeApi.new

begin
  #Update the available Forge versions
  result = api_instance.update_forge
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling ForgeApi->update_forge: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

