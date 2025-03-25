# Kleister::ListVersions200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** |  |  |
| **limit** | **Integer** |  |  |
| **offset** | **Integer** |  |  |
| **mod** | [**Mod**](Mod.md) |  | [optional] |
| **versions** | [**Array&lt;Version&gt;**](Version.md) |  |  |

## Example

```ruby
require 'kleister'

instance = Kleister::ListVersions200Response.new(
  total: null,
  limit: null,
  offset: null,
  mod: null,
  versions: null
)
```

