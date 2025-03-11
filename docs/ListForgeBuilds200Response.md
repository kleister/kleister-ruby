# Kleister::ListForgeBuilds200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** |  |  |
| **limit** | **Integer** |  |  |
| **offset** | **Integer** |  |  |
| **forge** | [**Forge**](Forge.md) |  | [optional] |
| **builds** | [**Array&lt;Build&gt;**](Build.md) |  |  |

## Example

```ruby
require 'kleister'

instance = Kleister::ListForgeBuilds200Response.new(
  total: null,
  limit: null,
  offset: null,
  forge: null,
  builds: null
)
```

