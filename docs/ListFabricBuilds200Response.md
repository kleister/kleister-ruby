# Kleister::ListFabricBuilds200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** |  |  |
| **limit** | **Integer** |  |  |
| **offset** | **Integer** |  |  |
| **fabric** | [**Fabric**](Fabric.md) |  | [optional] |
| **builds** | [**Array&lt;Build&gt;**](Build.md) |  |  |

## Example

```ruby
require 'kleister'

instance = Kleister::ListFabricBuilds200Response.new(
  total: null,
  limit: null,
  offset: null,
  fabric: null,
  builds: null
)
```

