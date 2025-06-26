# Kleister::QuiltApi

All URIs are relative to *https://try.kleister.eu/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**attach_quilt_to_build**](QuiltApi.md#attach_quilt_to_build) | **POST** /quilt/{quilt_id}/builds | Attach a build to a Quilt version |
| [**delete_quilt_from_build**](QuiltApi.md#delete_quilt_from_build) | **DELETE** /quilt/{quilt_id}/builds | Unlink a build from a Quilt version |
| [**list_quilt_builds**](QuiltApi.md#list_quilt_builds) | **GET** /quilt/{quilt_id}/builds | Fetch the builds attached to a Quilt version |
| [**list_quilts**](QuiltApi.md#list_quilts) | **GET** /quilt | Fetch the available Quilt versions |
| [**update_quilt**](QuiltApi.md#update_quilt) | **PUT** /quilt | Update the available Quilt versions |


## attach_quilt_to_build

> <Notification> attach_quilt_to_build(quilt_id, attach_minecraft_to_build_request)

Attach a build to a Quilt version

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

api_instance = Kleister::QuiltApi.new
quilt_id = '"quilt-1"' # String | A quilt identifier or slug
attach_minecraft_to_build_request = Kleister::AttachMinecraftToBuildRequest.new({pack: 'pack_example', build: 'build_example'}) # AttachMinecraftToBuildRequest | The quilt build data to create or update

begin
  # Attach a build to a Quilt version
  result = api_instance.attach_quilt_to_build(quilt_id, attach_minecraft_to_build_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling QuiltApi->attach_quilt_to_build: #{e}"
end
```

#### Using the attach_quilt_to_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_quilt_to_build_with_http_info(quilt_id, attach_minecraft_to_build_request)

```ruby
begin
  # Attach a build to a Quilt version
  data, status_code, headers = api_instance.attach_quilt_to_build_with_http_info(quilt_id, attach_minecraft_to_build_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling QuiltApi->attach_quilt_to_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quilt_id** | **String** | A quilt identifier or slug |  |
| **attach_minecraft_to_build_request** | [**AttachMinecraftToBuildRequest**](AttachMinecraftToBuildRequest.md) | The quilt build data to create or update |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_quilt_from_build

> <Notification> delete_quilt_from_build(quilt_id, attach_minecraft_to_build_request)

Unlink a build from a Quilt version

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

api_instance = Kleister::QuiltApi.new
quilt_id = '"quilt-1"' # String | A quilt identifier or slug
attach_minecraft_to_build_request = Kleister::AttachMinecraftToBuildRequest.new({pack: 'pack_example', build: 'build_example'}) # AttachMinecraftToBuildRequest | The quilt build data to create or update

begin
  # Unlink a build from a Quilt version
  result = api_instance.delete_quilt_from_build(quilt_id, attach_minecraft_to_build_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling QuiltApi->delete_quilt_from_build: #{e}"
end
```

#### Using the delete_quilt_from_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_quilt_from_build_with_http_info(quilt_id, attach_minecraft_to_build_request)

```ruby
begin
  # Unlink a build from a Quilt version
  data, status_code, headers = api_instance.delete_quilt_from_build_with_http_info(quilt_id, attach_minecraft_to_build_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling QuiltApi->delete_quilt_from_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quilt_id** | **String** | A quilt identifier or slug |  |
| **attach_minecraft_to_build_request** | [**AttachMinecraftToBuildRequest**](AttachMinecraftToBuildRequest.md) | The quilt build data to create or update |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_quilt_builds

> <InlineObject8> list_quilt_builds(quilt_id, opts)

Fetch the builds attached to a Quilt version

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

api_instance = Kleister::QuiltApi.new
quilt_id = '"quilt-1"' # String | A quilt identifier or slug
opts = {
  search: 'search_example', # String | Search query
  sort: 'sort_example', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch the builds attached to a Quilt version
  result = api_instance.list_quilt_builds(quilt_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling QuiltApi->list_quilt_builds: #{e}"
end
```

#### Using the list_quilt_builds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject8>, Integer, Hash)> list_quilt_builds_with_http_info(quilt_id, opts)

```ruby
begin
  # Fetch the builds attached to a Quilt version
  data, status_code, headers = api_instance.list_quilt_builds_with_http_info(quilt_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject8>
rescue Kleister::ApiError => e
  puts "Error when calling QuiltApi->list_quilt_builds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quilt_id** | **String** | A quilt identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**InlineObject8**](InlineObject8.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_quilts

> <InlineObject7> list_quilts(opts)

Fetch the available Quilt versions

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

api_instance = Kleister::QuiltApi.new
opts = {
  search: 'search_example' # String | Search query
}

begin
  # Fetch the available Quilt versions
  result = api_instance.list_quilts(opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling QuiltApi->list_quilts: #{e}"
end
```

#### Using the list_quilts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject7>, Integer, Hash)> list_quilts_with_http_info(opts)

```ruby
begin
  # Fetch the available Quilt versions
  data, status_code, headers = api_instance.list_quilts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject7>
rescue Kleister::ApiError => e
  puts "Error when calling QuiltApi->list_quilts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** | Search query | [optional] |

### Return type

[**InlineObject7**](InlineObject7.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_quilt

> <Notification> update_quilt

Update the available Quilt versions

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

api_instance = Kleister::QuiltApi.new

begin
  # Update the available Quilt versions
  result = api_instance.update_quilt
  p result
rescue Kleister::ApiError => e
  puts "Error when calling QuiltApi->update_quilt: #{e}"
end
```

#### Using the update_quilt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> update_quilt_with_http_info

```ruby
begin
  # Update the available Quilt versions
  data, status_code, headers = api_instance.update_quilt_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling QuiltApi->update_quilt_with_http_info: #{e}"
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

