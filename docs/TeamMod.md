# Kleister::TeamMod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** |  |  |
| **team** | [**Team**](Team.md) |  | [optional] |
| **mod_id** | **String** |  |  |
| **mod** | [**Mod**](Mod.md) |  | [optional] |
| **perm** | **String** |  | [optional][default to &#39;team&#39;] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'kleister'

instance = Kleister::TeamMod.new(
  team_id: null,
  team: null,
  mod_id: null,
  mod: null,
  perm: null,
  created_at: null,
  updated_at: null
)
```

