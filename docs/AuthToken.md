# Kleister::AuthToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** |  | [readonly] |
| **expires_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'kleister'

instance = Kleister::AuthToken.new(
  token: null,
  expires_at: null
)
```

