# Kleister::Pack

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **icon** | [**PackIcon**](PackIcon.md) |  | [optional] |
| **logo** | [**PackLogo**](PackLogo.md) |  | [optional] |
| **back** | [**PackBack**](PackBack.md) |  | [optional] |
| **recommended_id** | **String** |  | [optional] |
| **recommended** | [**Build**](Build.md) |  | [optional] |
| **latest_id** | **String** |  | [optional] |
| **latest** | [**Build**](Build.md) |  | [optional] |
| **slug** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **website** | **String** |  | [optional] |
| **public** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |
| **builds** | [**Array&lt;Build&gt;**](Build.md) |  | [optional][readonly] |
| **users** | [**Array&lt;UserPack&gt;**](UserPack.md) |  | [optional][readonly] |
| **teams** | [**Array&lt;TeamPack&gt;**](TeamPack.md) |  | [optional][readonly] |

## Example

```ruby
require 'kleister'

instance = Kleister::Pack.new(
  id: null,
  icon: null,
  logo: null,
  back: null,
  recommended_id: null,
  recommended: null,
  latest_id: null,
  latest: null,
  slug: null,
  name: null,
  website: null,
  public: null,
  created_at: null,
  updated_at: null,
  builds: null,
  users: null,
  teams: null
)
```

