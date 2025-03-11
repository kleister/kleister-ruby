# Kleister::ListBuildVersions200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** |  |  |
| **limit** | **Integer** |  |  |
| **offset** | **Integer** |  |  |
| **pack** | [**Pack**](Pack.md) |  | [optional] |
| **build** | [**Build**](Build.md) |  | [optional] |
| **versions** | [**Array&lt;BuildVersion&gt;**](BuildVersion.md) |  |  |

## Example

```ruby
require 'kleister'

instance = Kleister::ListBuildVersions200Response.new(
  total: null,
  limit: null,
  offset: null,
  pack: null,
  build: null,
  versions: null
)
```

