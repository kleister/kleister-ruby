# Kleister::Mod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
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
| **versions** | [**Array&lt;Version&gt;**](Version.md) |  | [optional][readonly] |
| **users** | [**Array&lt;UserMod&gt;**](UserMod.md) |  | [optional][readonly] |
| **teams** | [**Array&lt;TeamMod&gt;**](TeamMod.md) |  | [optional][readonly] |

## Example

```ruby
require 'kleister'

instance = Kleister::Mod.new(
  id: null,
  slug: null,
  name: null,
  side: null,
  description: null,
  author: null,
  website: null,
  donate: null,
  public: null,
  created_at: null,
  updated_at: null,
  versions: null,
  users: null,
  teams: null
)
```

