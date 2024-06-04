# Kleister::UserTeam

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user** | [**User**](User.md) |  | [optional] |
| **team_id** | **String** |  |  |
| **team** | [**Team**](Team.md) |  | [optional] |
| **perm** | **String** |  | [optional][default to &#39;user&#39;] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'kleister'

instance = Kleister::UserTeam.new(
  user_id: null,
  user: null,
  team_id: null,
  team: null,
  perm: null,
  created_at: null,
  updated_at: null
)
```

