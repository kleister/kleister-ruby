# Kleister::NeoforgeApi

All URIs are relative to *https://try.kleister.eu/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**attach_neoforge_to_build**](NeoforgeApi.md#attach_neoforge_to_build) | **POST** /neoforge/{neoforge_id}/builds | Attach a build to a Neoforge version |
| [**delete_neoforge_from_build**](NeoforgeApi.md#delete_neoforge_from_build) | **DELETE** /neoforge/{neoforge_id}/builds | Unlink a build from a Neoforge version |
| [**list_neoforge_builds**](NeoforgeApi.md#list_neoforge_builds) | **GET** /neoforge/{neoforge_id}/builds | Fetch the builds attached to a Neoforge version |
| [**list_neoforges**](NeoforgeApi.md#list_neoforges) | **GET** /neoforge | Fetch the available Neoforge versions |
| [**update_neoforge**](NeoforgeApi.md#update_neoforge) | **PUT** /neoforge | Update the available Neoforge versions |


## attach_neoforge_to_build

> <Notification> attach_neoforge_to_build(neoforge_id, neoforge_build_params)

Attach a build to a Neoforge version

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

api_instance = Kleister::NeoforgeApi.new
neoforge_id = 'neoforge_id_example' # String | A neoforge identifier or slug
neoforge_build_params = Kleister::NeoforgeBuildParams.new({pack: 'pack_example', build: 'build_example'}) # NeoforgeBuildParams | The build data to attach

begin
  # Attach a build to a Neoforge version
  result = api_instance.attach_neoforge_to_build(neoforge_id, neoforge_build_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling NeoforgeApi->attach_neoforge_to_build: #{e}"
end
```

#### Using the attach_neoforge_to_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_neoforge_to_build_with_http_info(neoforge_id, neoforge_build_params)

```ruby
begin
  # Attach a build to a Neoforge version
  data, status_code, headers = api_instance.attach_neoforge_to_build_with_http_info(neoforge_id, neoforge_build_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling NeoforgeApi->attach_neoforge_to_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **neoforge_id** | **String** | A neoforge identifier or slug |  |
| **neoforge_build_params** | [**NeoforgeBuildParams**](NeoforgeBuildParams.md) | The build data to attach |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_neoforge_from_build

> <Notification> delete_neoforge_from_build(neoforge_id, neoforge_build_params)

Unlink a build from a Neoforge version

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

api_instance = Kleister::NeoforgeApi.new
neoforge_id = 'neoforge_id_example' # String | A neoforge identifier or slug
neoforge_build_params = Kleister::NeoforgeBuildParams.new({pack: 'pack_example', build: 'build_example'}) # NeoforgeBuildParams | The build data to unlink

begin
  # Unlink a build from a Neoforge version
  result = api_instance.delete_neoforge_from_build(neoforge_id, neoforge_build_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling NeoforgeApi->delete_neoforge_from_build: #{e}"
end
```

#### Using the delete_neoforge_from_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_neoforge_from_build_with_http_info(neoforge_id, neoforge_build_params)

```ruby
begin
  # Unlink a build from a Neoforge version
  data, status_code, headers = api_instance.delete_neoforge_from_build_with_http_info(neoforge_id, neoforge_build_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling NeoforgeApi->delete_neoforge_from_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **neoforge_id** | **String** | A neoforge identifier or slug |  |
| **neoforge_build_params** | [**NeoforgeBuildParams**](NeoforgeBuildParams.md) | The build data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_neoforge_builds

> <NeoforgeBuilds> list_neoforge_builds(neoforge_id, opts)

Fetch the builds attached to a Neoforge version

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

api_instance = Kleister::NeoforgeApi.new
neoforge_id = 'neoforge_id_example' # String | A neoforge identifier or slug
opts = {
  search: '"John Doe"', # String | Search query
  sort: 'name', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch the builds attached to a Neoforge version
  result = api_instance.list_neoforge_builds(neoforge_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling NeoforgeApi->list_neoforge_builds: #{e}"
end
```

#### Using the list_neoforge_builds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NeoforgeBuilds>, Integer, Hash)> list_neoforge_builds_with_http_info(neoforge_id, opts)

```ruby
begin
  # Fetch the builds attached to a Neoforge version
  data, status_code, headers = api_instance.list_neoforge_builds_with_http_info(neoforge_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NeoforgeBuilds>
rescue Kleister::ApiError => e
  puts "Error when calling NeoforgeApi->list_neoforge_builds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **neoforge_id** | **String** | A neoforge identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional][default to &#39;name&#39;] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**NeoforgeBuilds**](NeoforgeBuilds.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_neoforges

> <Neoforges> list_neoforges(opts)

Fetch the available Neoforge versions

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

api_instance = Kleister::NeoforgeApi.new
opts = {
  search: '"John Doe"' # String | Search query
}

begin
  # Fetch the available Neoforge versions
  result = api_instance.list_neoforges(opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling NeoforgeApi->list_neoforges: #{e}"
end
```

#### Using the list_neoforges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Neoforges>, Integer, Hash)> list_neoforges_with_http_info(opts)

```ruby
begin
  # Fetch the available Neoforge versions
  data, status_code, headers = api_instance.list_neoforges_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Neoforges>
rescue Kleister::ApiError => e
  puts "Error when calling NeoforgeApi->list_neoforges_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** | Search query | [optional] |

### Return type

[**Neoforges**](Neoforges.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_neoforge

> <Notification> update_neoforge

Update the available Neoforge versions

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

api_instance = Kleister::NeoforgeApi.new

begin
  # Update the available Neoforge versions
  result = api_instance.update_neoforge
  p result
rescue Kleister::ApiError => e
  puts "Error when calling NeoforgeApi->update_neoforge: #{e}"
end
```

#### Using the update_neoforge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> update_neoforge_with_http_info

```ruby
begin
  # Update the available Neoforge versions
  data, status_code, headers = api_instance.update_neoforge_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling NeoforgeApi->update_neoforge_with_http_info: #{e}"
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

