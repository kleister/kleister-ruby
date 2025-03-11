# Kleister::ListUserPacks200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** |  |  |
| **limit** | **Integer** |  |  |
| **offset** | **Integer** |  |  |
| **user** | [**User**](User.md) |  | [optional] |
| **packs** | [**Array&lt;UserPack&gt;**](UserPack.md) |  |  |

## Example

```ruby
require 'kleister'

instance = Kleister::ListUserPacks200Response.new(
  total: null,
  limit: null,
  offset: null,
  user: null,
  packs: null
)
```

