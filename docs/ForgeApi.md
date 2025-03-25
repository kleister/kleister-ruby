# Kleister::ForgeApi

All URIs are relative to *https://try.kleister.eu/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**attach_forge_to_build**](ForgeApi.md#attach_forge_to_build) | **POST** /forge/{forge_id}/builds | Attach a build to a Forge version |
| [**delete_forge_from_build**](ForgeApi.md#delete_forge_from_build) | **DELETE** /forge/{forge_id}/builds | Unlink a build from a Forge version |
| [**list_forge_builds**](ForgeApi.md#list_forge_builds) | **GET** /forge/{forge_id}/builds | Fetch the builds attached to a Forge version |
| [**list_forges**](ForgeApi.md#list_forges) | **GET** /forge | Fetch the available Forge versions |
| [**update_forge**](ForgeApi.md#update_forge) | **PUT** /forge | Update the available Forge versions |


## attach_forge_to_build

> <Notification> attach_forge_to_build(forge_id, attach_minecraft_to_build_request)

Attach a build to a Forge version

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::ForgeApi.new
forge_id = '"forge-1"' # String | A forge identifier or slug
attach_minecraft_to_build_request = Kleister::AttachMinecraftToBuildRequest.new({pack: 'pack_example', build: 'build_example'}) # AttachMinecraftToBuildRequest | The forge build data to create or update

begin
  # Attach a build to a Forge version
  result = api_instance.attach_forge_to_build(forge_id, attach_minecraft_to_build_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ForgeApi->attach_forge_to_build: #{e}"
end
```

#### Using the attach_forge_to_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_forge_to_build_with_http_info(forge_id, attach_minecraft_to_build_request)

```ruby
begin
  # Attach a build to a Forge version
  data, status_code, headers = api_instance.attach_forge_to_build_with_http_info(forge_id, attach_minecraft_to_build_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling ForgeApi->attach_forge_to_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **forge_id** | **String** | A forge identifier or slug |  |
| **attach_minecraft_to_build_request** | [**AttachMinecraftToBuildRequest**](AttachMinecraftToBuildRequest.md) | The forge build data to create or update |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_forge_from_build

> <Notification> delete_forge_from_build(forge_id, attach_minecraft_to_build_request)

Unlink a build from a Forge version

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::ForgeApi.new
forge_id = '"forge-1"' # String | A forge identifier or slug
attach_minecraft_to_build_request = Kleister::AttachMinecraftToBuildRequest.new({pack: 'pack_example', build: 'build_example'}) # AttachMinecraftToBuildRequest | The forge build data to create or update

begin
  # Unlink a build from a Forge version
  result = api_instance.delete_forge_from_build(forge_id, attach_minecraft_to_build_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ForgeApi->delete_forge_from_build: #{e}"
end
```

#### Using the delete_forge_from_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_forge_from_build_with_http_info(forge_id, attach_minecraft_to_build_request)

```ruby
begin
  # Unlink a build from a Forge version
  data, status_code, headers = api_instance.delete_forge_from_build_with_http_info(forge_id, attach_minecraft_to_build_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling ForgeApi->delete_forge_from_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **forge_id** | **String** | A forge identifier or slug |  |
| **attach_minecraft_to_build_request** | [**AttachMinecraftToBuildRequest**](AttachMinecraftToBuildRequest.md) | The forge build data to create or update |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_forge_builds

> <ListForgeBuilds200Response> list_forge_builds(forge_id, opts)

Fetch the builds attached to a Forge version

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::ForgeApi.new
forge_id = '"forge-1"' # String | A forge identifier or slug
opts = {
  search: 'search_example', # String | Search query
  sort: 'sort_example', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch the builds attached to a Forge version
  result = api_instance.list_forge_builds(forge_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ForgeApi->list_forge_builds: #{e}"
end
```

#### Using the list_forge_builds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListForgeBuilds200Response>, Integer, Hash)> list_forge_builds_with_http_info(forge_id, opts)

```ruby
begin
  # Fetch the builds attached to a Forge version
  data, status_code, headers = api_instance.list_forge_builds_with_http_info(forge_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListForgeBuilds200Response>
rescue Kleister::ApiError => e
  puts "Error when calling ForgeApi->list_forge_builds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **forge_id** | **String** | A forge identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**ListForgeBuilds200Response**](ListForgeBuilds200Response.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_forges

> <ListForges200Response> list_forges(opts)

Fetch the available Forge versions

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::ForgeApi.new
opts = {
  search: 'search_example' # String | Search query
}

begin
  # Fetch the available Forge versions
  result = api_instance.list_forges(opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ForgeApi->list_forges: #{e}"
end
```

#### Using the list_forges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListForges200Response>, Integer, Hash)> list_forges_with_http_info(opts)

```ruby
begin
  # Fetch the available Forge versions
  data, status_code, headers = api_instance.list_forges_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListForges200Response>
rescue Kleister::ApiError => e
  puts "Error when calling ForgeApi->list_forges_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** | Search query | [optional] |

### Return type

[**ListForges200Response**](ListForges200Response.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_forge

> <Notification> update_forge

Update the available Forge versions

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::ForgeApi.new

begin
  # Update the available Forge versions
  result = api_instance.update_forge
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ForgeApi->update_forge: #{e}"
end
```

#### Using the update_forge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> update_forge_with_http_info

```ruby
begin
  # Update the available Forge versions
  data, status_code, headers = api_instance.update_forge_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling ForgeApi->update_forge_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

