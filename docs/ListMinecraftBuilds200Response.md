# Kleister::ListMinecraftBuilds200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** |  |  |
| **limit** | **Integer** |  |  |
| **offset** | **Integer** |  |  |
| **minecraft** | [**Minecraft**](Minecraft.md) |  | [optional] |
| **builds** | [**Array&lt;Build&gt;**](Build.md) |  |  |

## Example

```ruby
require 'kleister'

instance = Kleister::ListMinecraftBuilds200Response.new(
  total: null,
  limit: null,
  offset: null,
  minecraft: null,
  builds: null
)
```

