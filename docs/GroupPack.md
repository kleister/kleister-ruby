# Kleister::GroupPack

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** |  |  |
| **group** | [**Group**](Group.md) |  | [optional] |
| **pack_id** | **String** |  |  |
| **pack** | [**Pack**](Pack.md) |  | [optional] |
| **perm** | **String** |  | [optional][default to &#39;user&#39;] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'kleister'

instance = Kleister::GroupPack.new(
  group_id: null,
  group: null,
  pack_id: null,
  pack: null,
  perm: null,
  created_at: null,
  updated_at: null
)
```

