# Kleister::Mod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **avatar** | [**ModAvatar**](ModAvatar.md) |  | [optional] |
| **slug** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **side** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **author** | **String** |  | [optional] |
| **website** | **String** |  | [optional] |
| **donate** | **String** |  | [optional] |
| **public** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'kleister'

instance = Kleister::Mod.new(
  id: null,
  avatar: null,
  slug: null,
  name: null,
  side: null,
  description: null,
  author: null,
  website: null,
  donate: null,
  public: null,
  created_at: null,
  updated_at: null
)
```

