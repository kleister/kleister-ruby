# Kleister::Pack

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **icon** | [**PackIcon**](PackIcon.md) |  | [optional] |
| **logo** | [**PackLogo**](PackLogo.md) |  | [optional] |
| **back** | [**PackBack**](PackBack.md) |  | [optional] |
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
  icon: null,
  logo: null,
  back: null,
  slug: null,
  name: null,
  website: null,
  public: null,
  created_at: null,
  updated_at: null
)
```

