# Kleister::Pack

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **avatar** | [**PackAvatar**](PackAvatar.md) |  | [optional] |
| **slug** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **website** | **String** |  | [optional] |
| **public** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'kleister'

instance = Kleister::Pack.new(
  id: null,
  avatar: null,
  slug: null,
  name: null,
  website: null,
  public: null,
  created_at: null,
  updated_at: null
)
```

