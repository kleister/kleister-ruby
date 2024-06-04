# Kleister::UserPack

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user** | [**User**](User.md) |  | [optional] |
| **pack_id** | **String** |  |  |
| **pack** | [**Pack**](Pack.md) |  | [optional] |
| **perm** | **String** |  | [optional][default to &#39;user&#39;] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'kleister'

instance = Kleister::UserPack.new(
  user_id: null,
  user: null,
  pack_id: null,
  pack: null,
  perm: null,
  created_at: null,
  updated_at: null
)
```

