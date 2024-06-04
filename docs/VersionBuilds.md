# Kleister::VersionBuilds

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mod** | [**Mod**](Mod.md) |  | [optional] |
| **version** | [**Version**](Version.md) |  | [optional] |
| **total** | **Integer** |  | [optional] |
| **builds** | [**Array&lt;BuildVersion&gt;**](BuildVersion.md) |  | [optional] |

## Example

```ruby
require 'kleister'

instance = Kleister::VersionBuilds.new(
  mod: null,
  version: null,
  total: null,
  builds: null
)
```

