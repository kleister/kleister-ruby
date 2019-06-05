# Kleister::MinecraftApi

All URIs are relative to *http://try.kleister.tech/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**append_minecraft_to_build**](MinecraftApi.md#append_minecraft_to_build) | **POST** /minecraft/{minecraft_id}/builds | Assign a build to a Minecraft version
[**delete_minecraft_from_build**](MinecraftApi.md#delete_minecraft_from_build) | **DELETE** /minecraft/{minecraft_id}/builds | Unlink a build from a Minecraft version
[**list_minecraft_builds**](MinecraftApi.md#list_minecraft_builds) | **GET** /minecraft/{minecraft_id}/builds | Fetch the builds assigned to a Minecraft version
[**list_minecrafts**](MinecraftApi.md#list_minecrafts) | **GET** /minecraft | Fetch the available Minecraft versions
[**search_minecrafts**](MinecraftApi.md#search_minecrafts) | **GET** /minecraft/{minecraft_id} | Search for available Minecraft versions
[**update_minecraft**](MinecraftApi.md#update_minecraft) | **PUT** /minecraft | Update the available Minecraft versions



## append_minecraft_to_build

> Array&lt;Build&gt; append_minecraft_to_build(minecraft_id, params)

Assign a build to a Minecraft version

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::MinecraftApi.new
minecraft_id = 'minecraft_id_example' # String | A minecraft UUID or slug
params = Kleister::MinecraftBuildParams.new # MinecraftBuildParams | The build data to append

begin
  #Assign a build to a Minecraft version
  result = api_instance.append_minecraft_to_build(minecraft_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling MinecraftApi->append_minecraft_to_build: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minecraft_id** | **String**| A minecraft UUID or slug | 
 **params** | [**MinecraftBuildParams**](MinecraftBuildParams.md)| The build data to append | 

### Return type

[**Array&lt;Build&gt;**](Build.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_minecraft_from_build

> Array&lt;Build&gt; delete_minecraft_from_build(minecraft_id, params)

Unlink a build from a Minecraft version

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::MinecraftApi.new
minecraft_id = 'minecraft_id_example' # String | A minecraft UUID or slug
params = Kleister::MinecraftBuildParams.new # MinecraftBuildParams | The build data to unlink

begin
  #Unlink a build from a Minecraft version
  result = api_instance.delete_minecraft_from_build(minecraft_id, params)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling MinecraftApi->delete_minecraft_from_build: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minecraft_id** | **String**| A minecraft UUID or slug | 
 **params** | [**MinecraftBuildParams**](MinecraftBuildParams.md)| The build data to unlink | 

### Return type

[**Array&lt;Build&gt;**](Build.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_minecraft_builds

> Array&lt;Build&gt; list_minecraft_builds(minecraft_id)

Fetch the builds assigned to a Minecraft version

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::MinecraftApi.new
minecraft_id = 'minecraft_id_example' # String | A minecraft UUID or slug

begin
  #Fetch the builds assigned to a Minecraft version
  result = api_instance.list_minecraft_builds(minecraft_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling MinecraftApi->list_minecraft_builds: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minecraft_id** | **String**| A minecraft UUID or slug | 

### Return type

[**Array&lt;Build&gt;**](Build.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_minecrafts

> Array&lt;Minecraft&gt; list_minecrafts

Fetch the available Minecraft versions

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::MinecraftApi.new

begin
  #Fetch the available Minecraft versions
  result = api_instance.list_minecrafts
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling MinecraftApi->list_minecrafts: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Minecraft&gt;**](Minecraft.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_minecrafts

> Array&lt;Minecraft&gt; search_minecrafts(minecraft_id)

Search for available Minecraft versions

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::MinecraftApi.new
minecraft_id = 'minecraft_id_example' # String | A search token to search Minecraft versions

begin
  #Search for available Minecraft versions
  result = api_instance.search_minecrafts(minecraft_id)
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling MinecraftApi->search_minecrafts: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minecraft_id** | **String**| A search token to search Minecraft versions | 

### Return type

[**Array&lt;Minecraft&gt;**](Minecraft.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_minecraft

> GeneralError update_minecraft

Update the available Minecraft versions

### Example

```ruby
# load the gem
require 'kleister'

api_instance = Kleister::MinecraftApi.new

begin
  #Update the available Minecraft versions
  result = api_instance.update_minecraft
  p result
rescue Kleister::ApiError => e
  puts "Exception when calling MinecraftApi->update_minecraft: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

