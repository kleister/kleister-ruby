# Kleister::UserMod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user** | [**User**](User.md) |  | [optional] |
| **mod_id** | **String** |  |  |
| **mod** | [**Mod**](Mod.md) |  | [optional] |
| **perm** | **String** |  | [optional][default to &#39;user&#39;] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'kleister'

instance = Kleister::UserMod.new(
  user_id: null,
  user: null,
  mod_id: null,
  mod: null,
  perm: null,
  created_at: null,
  updated_at: null
)
```

