# Kleister::BuildVersion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **build_id** | **String** |  |  |
| **build** | [**Build**](Build.md) |  | [optional] |
| **version_id** | **String** |  |  |
| **version** | [**Version**](Version.md) |  | [optional] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'kleister'

instance = Kleister::BuildVersion.new(
  build_id: null,
  build: null,
  version_id: null,
  version: null,
  created_at: null,
  updated_at: null
)
```

