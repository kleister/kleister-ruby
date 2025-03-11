# Kleister::ListGroupMods200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** |  |  |
| **limit** | **Integer** |  |  |
| **offset** | **Integer** |  |  |
| **group** | [**Group**](Group.md) |  | [optional] |
| **mods** | [**Array&lt;GroupMod&gt;**](GroupMod.md) |  |  |

## Example

```ruby
require 'kleister'

instance = Kleister::ListGroupMods200Response.new(
  total: null,
  limit: null,
  offset: null,
  group: null,
  mods: null
)
```

