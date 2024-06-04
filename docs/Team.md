# Kleister::Team

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **slug** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |
| **users** | [**Array&lt;UserTeam&gt;**](UserTeam.md) |  | [optional][readonly] |
| **packs** | [**Array&lt;TeamPack&gt;**](TeamPack.md) |  | [optional][readonly] |
| **mods** | [**Array&lt;TeamMod&gt;**](TeamMod.md) |  | [optional][readonly] |

## Example

```ruby
require 'kleister'

instance = Kleister::Team.new(
  id: null,
  slug: null,
  name: null,
  created_at: null,
  updated_at: null,
  users: null,
  packs: null,
  mods: null
)
```

