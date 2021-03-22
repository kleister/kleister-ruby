# Kleister::ForgeApi

All URIs are relative to *http://try.kleister.tech/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**append_forge_to_build**](ForgeApi.md#append_forge_to_build) | **POST** /forge/{forge_id}/builds | Assign a build to a Forge version |
| [**delete_forge_from_build**](ForgeApi.md#delete_forge_from_build) | **DELETE** /forge/{forge_id}/builds | Unlink a build from a Forge version |
| [**list_forge_builds**](ForgeApi.md#list_forge_builds) | **GET** /forge/{forge_id}/builds | Fetch the builds assigned to a Forge version |
| [**list_forges**](ForgeApi.md#list_forges) | **GET** /forge | Fetch the available Forge versions |
| [**search_forges**](ForgeApi.md#search_forges) | **GET** /forge/{forge_id} | Search for available Forge versions |
| [**update_forge**](ForgeApi.md#update_forge) | **PUT** /forge | Update the available Forge versions |


## append_forge_to_build

> <Array<Build>> append_forge_to_build(forge_id, forge_build)

Assign a build to a Forge version

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::ForgeApi.new
forge_id = 'forge_id_example' # String | A forge UUID or slug
forge_build = Kleister::ForgeBuildParams.new({pack: 'pack_example', build: 'build_example'}) # ForgeBuildParams | The build data to append

begin
  # Assign a build to a Forge version
  result = api_instance.append_forge_to_build(forge_id, forge_build)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ForgeApi->append_forge_to_build: #{e}"
end
```

#### Using the append_forge_to_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Build>>, Integer, Hash)> append_forge_to_build_with_http_info(forge_id, forge_build)

```ruby
begin
  # Assign a build to a Forge version
  data, status_code, headers = api_instance.append_forge_to_build_with_http_info(forge_id, forge_build)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Build>>
rescue Kleister::ApiError => e
  puts "Error when calling ForgeApi->append_forge_to_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **forge_id** | **String** | A forge UUID or slug |  |
| **forge_build** | [**ForgeBuildParams**](ForgeBuildParams.md) | The build data to append |  |

### Return type

[**Array&lt;Build&gt;**](Build.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_forge_from_build

> <Array<Build>> delete_forge_from_build(forge_id, forge_build)

Unlink a build from a Forge version

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::ForgeApi.new
forge_id = 'forge_id_example' # String | A forge UUID or slug
forge_build = Kleister::ForgeBuildParams.new({pack: 'pack_example', build: 'build_example'}) # ForgeBuildParams | The build data to unlink

begin
  # Unlink a build from a Forge version
  result = api_instance.delete_forge_from_build(forge_id, forge_build)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ForgeApi->delete_forge_from_build: #{e}"
end
```

#### Using the delete_forge_from_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Build>>, Integer, Hash)> delete_forge_from_build_with_http_info(forge_id, forge_build)

```ruby
begin
  # Unlink a build from a Forge version
  data, status_code, headers = api_instance.delete_forge_from_build_with_http_info(forge_id, forge_build)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Build>>
rescue Kleister::ApiError => e
  puts "Error when calling ForgeApi->delete_forge_from_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **forge_id** | **String** | A forge UUID or slug |  |
| **forge_build** | [**ForgeBuildParams**](ForgeBuildParams.md) | The build data to unlink |  |

### Return type

[**Array&lt;Build&gt;**](Build.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_forge_builds

> <Array<Build>> list_forge_builds(forge_id)

Fetch the builds assigned to a Forge version

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::ForgeApi.new
forge_id = 'forge_id_example' # String | A forge UUID or slug

begin
  # Fetch the builds assigned to a Forge version
  result = api_instance.list_forge_builds(forge_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ForgeApi->list_forge_builds: #{e}"
end
```

#### Using the list_forge_builds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Build>>, Integer, Hash)> list_forge_builds_with_http_info(forge_id)

```ruby
begin
  # Fetch the builds assigned to a Forge version
  data, status_code, headers = api_instance.list_forge_builds_with_http_info(forge_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Build>>
rescue Kleister::ApiError => e
  puts "Error when calling ForgeApi->list_forge_builds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **forge_id** | **String** | A forge UUID or slug |  |

### Return type

[**Array&lt;Build&gt;**](Build.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_forges

> <Array<Forge>> list_forges

Fetch the available Forge versions

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::ForgeApi.new

begin
  # Fetch the available Forge versions
  result = api_instance.list_forges
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ForgeApi->list_forges: #{e}"
end
```

#### Using the list_forges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Forge>>, Integer, Hash)> list_forges_with_http_info

```ruby
begin
  # Fetch the available Forge versions
  data, status_code, headers = api_instance.list_forges_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Forge>>
rescue Kleister::ApiError => e
  puts "Error when calling ForgeApi->list_forges_with_http_info: #{e}"
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

> <Array<Forge>> search_forges(forge_id)

Search for available Forge versions

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::ForgeApi.new
forge_id = 'forge_id_example' # String | A search token to search Forge versions

begin
  # Search for available Forge versions
  result = api_instance.search_forges(forge_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling ForgeApi->search_forges: #{e}"
end
```

#### Using the search_forges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Forge>>, Integer, Hash)> search_forges_with_http_info(forge_id)

```ruby
begin
  # Search for available Forge versions
  data, status_code, headers = api_instance.search_forges_with_http_info(forge_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Forge>>
rescue Kleister::ApiError => e
  puts "Error when calling ForgeApi->search_forges_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **forge_id** | **String** | A search token to search Forge versions |  |

### Return type

[**Array&lt;Forge&gt;**](Forge.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_forge

> <GeneralError> update_forge

Update the available Forge versions

### Examples

```ruby
require 'time'
require 'kleister'

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

> <Array(<GeneralError>, Integer, Hash)> update_forge_with_http_info

```ruby
begin
  # Update the available Forge versions
  data, status_code, headers = api_instance.update_forge_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling ForgeApi->update_forge_with_http_info: #{e}"
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

