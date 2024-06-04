# Kleister::Build

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **pack_id** | **String** |  | [optional] |
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
| **slug** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **java** | **String** |  | [optional] |
| **memory** | **String** |  | [optional] |
| **public** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |
| **versions** | [**Array&lt;BuildVersion&gt;**](BuildVersion.md) |  | [optional][readonly] |

## Example

```ruby
require 'kleister'

instance = Kleister::Build.new(
  id: null,
  pack_id: null,
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
  slug: null,
  name: null,
  java: null,
  memory: null,
  public: null,
  created_at: null,
  updated_at: null,
  versions: null
)
```

