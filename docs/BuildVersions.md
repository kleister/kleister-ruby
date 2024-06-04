# Kleister::BuildVersions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pack** | [**Pack**](Pack.md) |  | [optional] |
| **build** | [**Build**](Build.md) |  | [optional] |
| **total** | **Integer** |  | [optional] |
| **versions** | [**Array&lt;BuildVersion&gt;**](BuildVersion.md) |  | [optional] |

## Example

```ruby
require 'kleister'

instance = Kleister::BuildVersions.new(
  pack: null,
  build: null,
  total: null,
  versions: null
)
```

