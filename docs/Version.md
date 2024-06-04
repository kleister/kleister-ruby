# Kleister::Version

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **file** | [**VersionFile**](VersionFile.md) |  | [optional] |
| **mod_id** | **String** |  | [optional] |
| **mod** | [**Mod**](Mod.md) |  | [optional] |
| **slug** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **public** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |
| **builds** | [**Array&lt;BuildVersion&gt;**](BuildVersion.md) |  | [optional][readonly] |

## Example

```ruby
require 'kleister'

instance = Kleister::Version.new(
  id: null,
  file: null,
  mod_id: null,
  mod: null,
  slug: null,
  name: null,
  public: null,
  created_at: null,
  updated_at: null,
  builds: null
)
```

