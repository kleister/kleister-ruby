# Kleister::TeamPack

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** |  |  |
| **team** | [**Team**](Team.md) |  | [optional] |
| **pack_id** | **String** |  |  |
| **pack** | [**Pack**](Pack.md) |  | [optional] |
| **perm** | **String** |  | [optional][default to &#39;user&#39;] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'kleister'

instance = Kleister::TeamPack.new(
  team_id: null,
  team: null,
  pack_id: null,
  pack: null,
  perm: null,
  created_at: null,
  updated_at: null
)
```

