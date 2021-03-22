# Kleister::MinecraftApi

All URIs are relative to *http://try.kleister.tech/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**append_minecraft_to_build**](MinecraftApi.md#append_minecraft_to_build) | **POST** /minecraft/{minecraft_id}/builds | Assign a build to a Minecraft version |
| [**delete_minecraft_from_build**](MinecraftApi.md#delete_minecraft_from_build) | **DELETE** /minecraft/{minecraft_id}/builds | Unlink a build from a Minecraft version |
| [**list_minecraft_builds**](MinecraftApi.md#list_minecraft_builds) | **GET** /minecraft/{minecraft_id}/builds | Fetch the builds assigned to a Minecraft version |
| [**list_minecrafts**](MinecraftApi.md#list_minecrafts) | **GET** /minecraft | Fetch the available Minecraft versions |
| [**search_minecrafts**](MinecraftApi.md#search_minecrafts) | **GET** /minecraft/{minecraft_id} | Search for available Minecraft versions |
| [**update_minecraft**](MinecraftApi.md#update_minecraft) | **PUT** /minecraft | Update the available Minecraft versions |


## append_minecraft_to_build

> <Array<Build>> append_minecraft_to_build(minecraft_id, minecraft_build)

Assign a build to a Minecraft version

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::MinecraftApi.new
minecraft_id = 'minecraft_id_example' # String | A minecraft UUID or slug
minecraft_build = Kleister::MinecraftBuildParams.new({pack: 'pack_example', build: 'build_example'}) # MinecraftBuildParams | The build data to append

begin
  # Assign a build to a Minecraft version
  result = api_instance.append_minecraft_to_build(minecraft_id, minecraft_build)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling MinecraftApi->append_minecraft_to_build: #{e}"
end
```

#### Using the append_minecraft_to_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Build>>, Integer, Hash)> append_minecraft_to_build_with_http_info(minecraft_id, minecraft_build)

```ruby
begin
  # Assign a build to a Minecraft version
  data, status_code, headers = api_instance.append_minecraft_to_build_with_http_info(minecraft_id, minecraft_build)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Build>>
rescue Kleister::ApiError => e
  puts "Error when calling MinecraftApi->append_minecraft_to_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **minecraft_id** | **String** | A minecraft UUID or slug |  |
| **minecraft_build** | [**MinecraftBuildParams**](MinecraftBuildParams.md) | The build data to append |  |

### Return type

[**Array&lt;Build&gt;**](Build.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_minecraft_from_build

> <Array<Build>> delete_minecraft_from_build(minecraft_id, minecraft_build)

Unlink a build from a Minecraft version

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::MinecraftApi.new
minecraft_id = 'minecraft_id_example' # String | A minecraft UUID or slug
minecraft_build = Kleister::MinecraftBuildParams.new({pack: 'pack_example', build: 'build_example'}) # MinecraftBuildParams | The build data to unlink

begin
  # Unlink a build from a Minecraft version
  result = api_instance.delete_minecraft_from_build(minecraft_id, minecraft_build)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling MinecraftApi->delete_minecraft_from_build: #{e}"
end
```

#### Using the delete_minecraft_from_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Build>>, Integer, Hash)> delete_minecraft_from_build_with_http_info(minecraft_id, minecraft_build)

```ruby
begin
  # Unlink a build from a Minecraft version
  data, status_code, headers = api_instance.delete_minecraft_from_build_with_http_info(minecraft_id, minecraft_build)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Build>>
rescue Kleister::ApiError => e
  puts "Error when calling MinecraftApi->delete_minecraft_from_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **minecraft_id** | **String** | A minecraft UUID or slug |  |
| **minecraft_build** | [**MinecraftBuildParams**](MinecraftBuildParams.md) | The build data to unlink |  |

### Return type

[**Array&lt;Build&gt;**](Build.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_minecraft_builds

> <Array<Build>> list_minecraft_builds(minecraft_id)

Fetch the builds assigned to a Minecraft version

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::MinecraftApi.new
minecraft_id = 'minecraft_id_example' # String | A minecraft UUID or slug

begin
  # Fetch the builds assigned to a Minecraft version
  result = api_instance.list_minecraft_builds(minecraft_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling MinecraftApi->list_minecraft_builds: #{e}"
end
```

#### Using the list_minecraft_builds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Build>>, Integer, Hash)> list_minecraft_builds_with_http_info(minecraft_id)

```ruby
begin
  # Fetch the builds assigned to a Minecraft version
  data, status_code, headers = api_instance.list_minecraft_builds_with_http_info(minecraft_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Build>>
rescue Kleister::ApiError => e
  puts "Error when calling MinecraftApi->list_minecraft_builds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **minecraft_id** | **String** | A minecraft UUID or slug |  |

### Return type

[**Array&lt;Build&gt;**](Build.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_minecrafts

> <Array<Minecraft>> list_minecrafts

Fetch the available Minecraft versions

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::MinecraftApi.new

begin
  # Fetch the available Minecraft versions
  result = api_instance.list_minecrafts
  p result
rescue Kleister::ApiError => e
  puts "Error when calling MinecraftApi->list_minecrafts: #{e}"
end
```

#### Using the list_minecrafts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Minecraft>>, Integer, Hash)> list_minecrafts_with_http_info

```ruby
begin
  # Fetch the available Minecraft versions
  data, status_code, headers = api_instance.list_minecrafts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Minecraft>>
rescue Kleister::ApiError => e
  puts "Error when calling MinecraftApi->list_minecrafts_with_http_info: #{e}"
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

> <Array<Minecraft>> search_minecrafts(minecraft_id)

Search for available Minecraft versions

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::MinecraftApi.new
minecraft_id = 'minecraft_id_example' # String | A search token to search Minecraft versions

begin
  # Search for available Minecraft versions
  result = api_instance.search_minecrafts(minecraft_id)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling MinecraftApi->search_minecrafts: #{e}"
end
```

#### Using the search_minecrafts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Minecraft>>, Integer, Hash)> search_minecrafts_with_http_info(minecraft_id)

```ruby
begin
  # Search for available Minecraft versions
  data, status_code, headers = api_instance.search_minecrafts_with_http_info(minecraft_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Minecraft>>
rescue Kleister::ApiError => e
  puts "Error when calling MinecraftApi->search_minecrafts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **minecraft_id** | **String** | A search token to search Minecraft versions |  |

### Return type

[**Array&lt;Minecraft&gt;**](Minecraft.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_minecraft

> <GeneralError> update_minecraft

Update the available Minecraft versions

### Examples

```ruby
require 'time'
require 'kleister'

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

> <Array(<GeneralError>, Integer, Hash)> update_minecraft_with_http_info

```ruby
begin
  # Update the available Minecraft versions
  data, status_code, headers = api_instance.update_minecraft_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralError>
rescue Kleister::ApiError => e
  puts "Error when calling MinecraftApi->update_minecraft_with_http_info: #{e}"
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

