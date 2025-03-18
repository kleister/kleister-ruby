# Kleister::ListModGroups200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** |  |  |
| **limit** | **Integer** |  |  |
| **offset** | **Integer** |  |  |
| **mod** | [**Mod**](Mod.md) |  | [optional] |
| **groups** | [**Array&lt;GroupMod&gt;**](GroupMod.md) |  |  |

## Example

```ruby
require 'kleister'

instance = Kleister::ListModGroups200Response.new(
  total: null,
  limit: null,
  offset: null,
  mod: null,
  groups: null
)
```

