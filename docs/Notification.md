# Kleister::Notification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **Integer** |  | [optional] |
| **message** | **String** |  | [optional] |
| **errors** | [**Array&lt;Validation&gt;**](Validation.md) |  | [optional] |

## Example

```ruby
require 'kleister'

instance = Kleister::Notification.new(
  status: null,
  message: null,
  errors: null
)
```

