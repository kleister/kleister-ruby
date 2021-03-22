# Kleister::Build

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **pack_id** | **String** |  |  |
| **minecraft_id** | **String** |  | [optional] |
| **forge_id** | **String** |  | [optional] |
| **slug** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **min_java** | **String** |  | [optional] |
| **min_memory** | **String** |  | [optional] |
| **published** | **Boolean** |  | [optional] |
| **hidden** | **Boolean** |  | [optional] |
| **private** | **Boolean** |  | [optional] |
| **public** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'kleister'

instance = Kleister::Build.new(
  id: null,
  pack_id: null,
  minecraft_id: null,
  forge_id: null,
  slug: null,
  name: null,
  min_java: null,
  min_memory: null,
  published: null,
  hidden: null,
  private: null,
  public: null,
  created_at: null,
  updated_at: null
)
```

