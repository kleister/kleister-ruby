# Kleister::ListQuiltBuilds200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** |  |  |
| **limit** | **Integer** |  |  |
| **offset** | **Integer** |  |  |
| **quilt** | [**Quilt**](Quilt.md) |  | [optional] |
| **builds** | [**Array&lt;Build&gt;**](Build.md) |  |  |

## Example

```ruby
require 'kleister'

instance = Kleister::ListQuiltBuilds200Response.new(
  total: null,
  limit: null,
  offset: null,
  quilt: null,
  builds: null
)
```

