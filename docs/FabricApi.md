# Kleister::FabricApi

All URIs are relative to *https://try.kleister.eu/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**attach_fabric_to_build**](FabricApi.md#attach_fabric_to_build) | **POST** /fabric/{fabric_id}/builds | Attach a build to a Fabric version |
| [**delete_fabric_from_build**](FabricApi.md#delete_fabric_from_build) | **DELETE** /fabric/{fabric_id}/builds | Unlink a build from a Fabric version |
| [**list_fabric_builds**](FabricApi.md#list_fabric_builds) | **GET** /fabric/{fabric_id}/builds | Fetch the builds attached to a Fabric version |
| [**list_fabrics**](FabricApi.md#list_fabrics) | **GET** /fabric | Fetch the available Fabric versions |
| [**update_fabric**](FabricApi.md#update_fabric) | **PUT** /fabric | Update the available Fabric versions |


## attach_fabric_to_build

> <Notification> attach_fabric_to_build(fabric_id, fabric_build_params)

Attach a build to a Fabric version

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

api_instance = Kleister::FabricApi.new
fabric_id = 'fabric_id_example' # String | A fabric identifier or slug
fabric_build_params = Kleister::FabricBuildParams.new({pack: 'pack_example', build: 'build_example'}) # FabricBuildParams | The build data to attach

begin
  # Attach a build to a Fabric version
  result = api_instance.attach_fabric_to_build(fabric_id, fabric_build_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling FabricApi->attach_fabric_to_build: #{e}"
end
```

#### Using the attach_fabric_to_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_fabric_to_build_with_http_info(fabric_id, fabric_build_params)

```ruby
begin
  # Attach a build to a Fabric version
  data, status_code, headers = api_instance.attach_fabric_to_build_with_http_info(fabric_id, fabric_build_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling FabricApi->attach_fabric_to_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fabric_id** | **String** | A fabric identifier or slug |  |
| **fabric_build_params** | [**FabricBuildParams**](FabricBuildParams.md) | The build data to attach |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_fabric_from_build

> <Notification> delete_fabric_from_build(fabric_id, fabric_build_params)

Unlink a build from a Fabric version

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

api_instance = Kleister::FabricApi.new
fabric_id = 'fabric_id_example' # String | A fabric identifier or slug
fabric_build_params = Kleister::FabricBuildParams.new({pack: 'pack_example', build: 'build_example'}) # FabricBuildParams | The build data to unlink

begin
  # Unlink a build from a Fabric version
  result = api_instance.delete_fabric_from_build(fabric_id, fabric_build_params)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling FabricApi->delete_fabric_from_build: #{e}"
end
```

#### Using the delete_fabric_from_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_fabric_from_build_with_http_info(fabric_id, fabric_build_params)

```ruby
begin
  # Unlink a build from a Fabric version
  data, status_code, headers = api_instance.delete_fabric_from_build_with_http_info(fabric_id, fabric_build_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling FabricApi->delete_fabric_from_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fabric_id** | **String** | A fabric identifier or slug |  |
| **fabric_build_params** | [**FabricBuildParams**](FabricBuildParams.md) | The build data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_fabric_builds

> <FabricBuilds> list_fabric_builds(fabric_id, opts)

Fetch the builds attached to a Fabric version

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

api_instance = Kleister::FabricApi.new
fabric_id = 'fabric_id_example' # String | A fabric identifier or slug
opts = {
  search: '"John Doe"', # String | Search query
  sort: 'build_name', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch the builds attached to a Fabric version
  result = api_instance.list_fabric_builds(fabric_id, opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling FabricApi->list_fabric_builds: #{e}"
end
```

#### Using the list_fabric_builds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FabricBuilds>, Integer, Hash)> list_fabric_builds_with_http_info(fabric_id, opts)

```ruby
begin
  # Fetch the builds attached to a Fabric version
  data, status_code, headers = api_instance.list_fabric_builds_with_http_info(fabric_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FabricBuilds>
rescue Kleister::ApiError => e
  puts "Error when calling FabricApi->list_fabric_builds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fabric_id** | **String** | A fabric identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional][default to &#39;build_name&#39;] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**FabricBuilds**](FabricBuilds.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_fabrics

> <Fabrics> list_fabrics(opts)

Fetch the available Fabric versions

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

api_instance = Kleister::FabricApi.new
opts = {
  search: '"John Doe"' # String | Search query
}

begin
  # Fetch the available Fabric versions
  result = api_instance.list_fabrics(opts)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling FabricApi->list_fabrics: #{e}"
end
```

#### Using the list_fabrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Fabrics>, Integer, Hash)> list_fabrics_with_http_info(opts)

```ruby
begin
  # Fetch the available Fabric versions
  data, status_code, headers = api_instance.list_fabrics_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Fabrics>
rescue Kleister::ApiError => e
  puts "Error when calling FabricApi->list_fabrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** | Search query | [optional] |

### Return type

[**Fabrics**](Fabrics.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_fabric

> <Notification> update_fabric

Update the available Fabric versions

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

api_instance = Kleister::FabricApi.new

begin
  # Update the available Fabric versions
  result = api_instance.update_fabric
  p result
rescue Kleister::ApiError => e
  puts "Error when calling FabricApi->update_fabric: #{e}"
end
```

#### Using the update_fabric_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> update_fabric_with_http_info

```ruby
begin
  # Update the available Fabric versions
  data, status_code, headers = api_instance.update_fabric_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Kleister::ApiError => e
  puts "Error when calling FabricApi->update_fabric_with_http_info: #{e}"
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

