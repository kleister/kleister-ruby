# Kleister::ListVersionBuilds200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** |  |  |
| **limit** | **Integer** |  |  |
| **offset** | **Integer** |  |  |
| **mod** | [**Mod**](Mod.md) |  | [optional] |
| **version** | [**Version**](Version.md) |  | [optional] |
| **builds** | [**Array&lt;BuildVersion&gt;**](BuildVersion.md) |  |  |

## Example

```ruby
require 'kleister'

instance = Kleister::ListVersionBuilds200Response.new(
  total: null,
  limit: null,
  offset: null,
  mod: null,
  version: null,
  builds: null
)
```

