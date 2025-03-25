# Kleister::ListPackUsers200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** |  |  |
| **limit** | **Integer** |  |  |
| **offset** | **Integer** |  |  |
| **pack** | [**Pack**](Pack.md) |  | [optional] |
| **users** | [**Array&lt;UserPack&gt;**](UserPack.md) |  |  |

## Example

```ruby
require 'kleister'

instance = Kleister::ListPackUsers200Response.new(
  total: null,
  limit: null,
  offset: null,
  pack: null,
  users: null
)
```

