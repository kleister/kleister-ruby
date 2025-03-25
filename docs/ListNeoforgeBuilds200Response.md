# Kleister::ListNeoforgeBuilds200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** |  |  |
| **limit** | **Integer** |  |  |
| **offset** | **Integer** |  |  |
| **neoforge** | [**Neoforge**](Neoforge.md) |  | [optional] |
| **builds** | [**Array&lt;Build&gt;**](Build.md) |  |  |

## Example

```ruby
require 'kleister'

instance = Kleister::ListNeoforgeBuilds200Response.new(
  total: null,
  limit: null,
  offset: null,
  neoforge: null,
  builds: null
)
```

