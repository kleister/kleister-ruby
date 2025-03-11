# Kleister::ListModUsers200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** |  |  |
| **limit** | **Integer** |  |  |
| **offset** | **Integer** |  |  |
| **mod** | [**Mod**](Mod.md) |  | [optional] |
| **users** | [**Array&lt;UserMod&gt;**](UserMod.md) |  |  |

## Example

```ruby
require 'kleister'

instance = Kleister::ListModUsers200Response.new(
  total: null,
  limit: null,
  offset: null,
  mod: null,
  users: null
)
```

