# Kleister::Build

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **pack** | [**Pack**](Pack.md) |  | [optional] |
| **minecraft_id** | **String** |  | [optional] |
| **minecraft** | [**Minecraft**](Minecraft.md) |  | [optional] |
| **forge_id** | **String** |  | [optional] |
| **forge** | [**Forge**](Forge.md) |  | [optional] |
| **neoforge_id** | **String** |  | [optional] |
| **neoforge** | [**Neoforge**](Neoforge.md) |  | [optional] |
| **quilt_id** | **String** |  | [optional] |
| **quilt** | [**Quilt**](Quilt.md) |  | [optional] |
| **fabric_id** | **String** |  | [optional] |
| **fabric** | [**Fabric**](Fabric.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **java** | **String** |  | [optional] |
| **memory** | **String** |  | [optional] |
| **latest** | **Boolean** |  | [optional] |
| **recommended** | **Boolean** |  | [optional] |
| **public** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'kleister'

instance = Kleister::Build.new(
  id: null,
  pack: null,
  minecraft_id: null,
  minecraft: null,
  forge_id: null,
  forge: null,
  neoforge_id: null,
  neoforge: null,
  quilt_id: null,
  quilt: null,
  fabric_id: null,
  fabric: null,
  name: null,
  java: null,
  memory: null,
  latest: null,
  recommended: null,
  public: null,
  created_at: null,
  updated_at: null
)
```

