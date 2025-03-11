# Kleister::CreateBuildRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **minecraft_id** | **String** |  | [optional] |
| **forge_id** | **String** |  | [optional] |
| **neoforge_id** | **String** |  | [optional] |
| **quilt_id** | **String** |  | [optional] |
| **fabric_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **java** | **String** |  | [optional] |
| **memory** | **String** |  | [optional] |
| **latest** | **Boolean** |  | [optional] |
| **recommended** | **Boolean** |  | [optional] |
| **public** | **Boolean** |  | [optional] |

## Example

```ruby
require 'kleister'

instance = Kleister::CreateBuildRequest.new(
  minecraft_id: null,
  forge_id: null,
  neoforge_id: null,
  quilt_id: null,
  fabric_id: null,
  name: null,
  java: null,
  memory: null,
  latest: null,
  recommended: null,
  public: null
)
```

