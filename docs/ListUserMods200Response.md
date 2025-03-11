# Kleister::ListUserMods200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** |  |  |
| **limit** | **Integer** |  |  |
| **offset** | **Integer** |  |  |
| **user** | [**User**](User.md) |  | [optional] |
| **mods** | [**Array&lt;UserMod&gt;**](UserMod.md) |  |  |

## Example

```ruby
require 'kleister'

instance = Kleister::ListUserMods200Response.new(
  total: null,
  limit: null,
  offset: null,
  user: null,
  mods: null
)
```

