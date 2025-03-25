# Kleister::ListGroupPacks200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** |  |  |
| **limit** | **Integer** |  |  |
| **offset** | **Integer** |  |  |
| **group** | [**Group**](Group.md) |  | [optional] |
| **packs** | [**Array&lt;GroupPack&gt;**](GroupPack.md) |  |  |

## Example

```ruby
require 'kleister'

instance = Kleister::ListGroupPacks200Response.new(
  total: null,
  limit: null,
  offset: null,
  group: null,
  packs: null
)
```

