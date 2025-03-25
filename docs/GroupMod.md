# Kleister::GroupMod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** |  |  |
| **group** | [**Group**](Group.md) |  | [optional] |
| **mod_id** | **String** |  |  |
| **mod** | [**Mod**](Mod.md) |  | [optional] |
| **perm** | **String** |  | [optional][default to &#39;user&#39;] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'kleister'

instance = Kleister::GroupMod.new(
  group_id: null,
  group: null,
  mod_id: null,
  mod: null,
  perm: null,
  created_at: null,
  updated_at: null
)
```

