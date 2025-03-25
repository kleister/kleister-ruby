# Kleister::ListGroupUsers200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** |  |  |
| **limit** | **Integer** |  |  |
| **offset** | **Integer** |  |  |
| **group** | [**Group**](Group.md) |  | [optional] |
| **users** | [**Array&lt;UserGroup&gt;**](UserGroup.md) |  |  |

## Example

```ruby
require 'kleister'

instance = Kleister::ListGroupUsers200Response.new(
  total: null,
  limit: null,
  offset: null,
  group: null,
  users: null
)
```

