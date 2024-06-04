# Kleister::MinecraftApi

All URIs are relative to *https://try.kleister.eu/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**attach_minecraft_to_build**](MinecraftApi.md#attach_minecraft_to_build) | **POST** /minecraft/{minecraft_id}/builds | Attach a build to a Minecraft version |
| [**delete_minecraft_from_build**](MinecraftApi.md#delete_minecraft_from_build) | **DELETE** /minecraft/{minecraft_id}/builds | Unlink a build from a Minecraft version |
| [**list_minecraft_builds**](MinecraftApi.md#list_minecraft_builds) | **GET** /minecraft/{minecraft_id}/builds | Fetch the builds attached to a Minecraft version |
| [**list_minecrafts**](MinecraftApi.md#list_minecrafts) | **GET** /minecraft | Fetch the available Minecraft versions |
| [**update_minecraft**](MinecraftApi.md#update_minecraft) | **PUT** /minecraft | Update the available Minecraft versions |


## attach_minecraft_to_build

> <Notification> attach_minecraft_to_build(minecraft_id, minecraft_build_params)

Attach a build to a Minecraft version

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::MinecraftApi.new
minecraft_id = 'minecraft_id_example' # String | A minecraft identifier or slug
minecraft_build_params = Kleister::MinecraftBuildParams.new({pack: 'pack_example', build: 'build_example'}) # MinecraftBuildParams | The build data to attach

begin
  # Attach a build to a Minecraft version
  result = api_instance.attach_minecraft_to_build(minecraft_id, minecraft_build_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling MinecraftApi->attach_minecraft_to_build: #{e}"
end
```

#### Using the attach_minecraft_to_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_minecraft_to_build_with_http_info(minecraft_id, minecraft_build_params)

```ruby
begin
  # Attach a build to a Minecraft version
  data, status_code, headers = api_instance.attach_minecraft_to_build_with_http_info(minecraft_id, minecraft_build_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling MinecraftApi->attach_minecraft_to_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **minecraft_id** | **String** | A minecraft identifier or slug |  |
| **minecraft_build_params** | [**MinecraftBuildParams**](MinecraftBuildParams.md) | The build data to attach |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_minecraft_from_build

> <Notification> delete_minecraft_from_build(minecraft_id, minecraft_build_params)

Unlink a build from a Minecraft version

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::MinecraftApi.new
minecraft_id = 'minecraft_id_example' # String | A minecraft identifier or slug
minecraft_build_params = Kleister::MinecraftBuildParams.new({pack: 'pack_example', build: 'build_example'}) # MinecraftBuildParams | The build data to unlink

begin
  # Unlink a build from a Minecraft version
  result = api_instance.delete_minecraft_from_build(minecraft_id, minecraft_build_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling MinecraftApi->delete_minecraft_from_build: #{e}"
end
```

#### Using the delete_minecraft_from_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_minecraft_from_build_with_http_info(minecraft_id, minecraft_build_params)

```ruby
begin
  # Unlink a build from a Minecraft version
  data, status_code, headers = api_instance.delete_minecraft_from_build_with_http_info(minecraft_id, minecraft_build_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling MinecraftApi->delete_minecraft_from_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **minecraft_id** | **String** | A minecraft identifier or slug |  |
| **minecraft_build_params** | [**MinecraftBuildParams**](MinecraftBuildParams.md) | The build data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_minecraft_builds

> <MinecraftBuilds> list_minecraft_builds(minecraft_id, opts)

Fetch the builds attached to a Minecraft version

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::MinecraftApi.new
minecraft_id = 'minecraft_id_example' # String | A minecraft identifier or slug
opts = {
  search: '"John Doe"', # String | Search query
  sort: 'name', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch the builds attached to a Minecraft version
  result = api_instance.list_minecraft_builds(minecraft_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling MinecraftApi->list_minecraft_builds: #{e}"
end
```

#### Using the list_minecraft_builds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MinecraftBuilds>, Integer, Hash)> list_minecraft_builds_with_http_info(minecraft_id, opts)

```ruby
begin
  # Fetch the builds attached to a Minecraft version
  data, status_code, headers = api_instance.list_minecraft_builds_with_http_info(minecraft_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MinecraftBuilds>
rescue Kleister::ApiError => e
  puts "Error when calling MinecraftApi->list_minecraft_builds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **minecraft_id** | **String** | A minecraft identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional][default to &#39;name&#39;] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**MinecraftBuilds**](MinecraftBuilds.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_minecrafts

> <Minecrafts> list_minecrafts(opts)

Fetch the available Minecraft versions

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::MinecraftApi.new
opts = {
  search: '"John Doe"' # String | Search query
}

begin
  # Fetch the available Minecraft versions
  result = api_instance.list_minecrafts(opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling MinecraftApi->list_minecrafts: #{e}"
end
```

#### Using the list_minecrafts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Minecrafts>, Integer, Hash)> list_minecrafts_with_http_info(opts)

```ruby
begin
  # Fetch the available Minecraft versions
  data, status_code, headers = api_instance.list_minecrafts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Minecrafts>
rescue Kleister::ApiError => e
  puts "Error when calling MinecraftApi->list_minecrafts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** | Search query | [optional] |

### Return type

[**Minecrafts**](Minecrafts.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_minecraft

> <Notification> update_minecraft

Update the available Minecraft versions

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::MinecraftApi.new

begin
  # Update the available Minecraft versions
  result = api_instance.update_minecraft
  p result
rescue Kleister::ApiError => e
  puts "Error when calling MinecraftApi->update_minecraft: #{e}"
end
```

#### Using the update_minecraft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> update_minecraft_with_http_info

```ruby
begin
  # Update the available Minecraft versions
  data, status_code, headers = api_instance.update_minecraft_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling MinecraftApi->update_minecraft_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

