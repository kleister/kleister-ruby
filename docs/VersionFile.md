# Kleister::VersionFile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **version_id** | **String** |  | [optional] |
| **version** | [**Version**](Version.md) |  | [optional] |
| **slug** | **String** |  | [optional] |
| **content_type** | **String** |  | [optional] |
| **md5** | **String** |  | [optional] |
| **path** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **upload** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'kleister'

instance = Kleister::VersionFile.new(
  id: null,
  version_id: null,
  version: null,
  slug: null,
  content_type: null,
  md5: null,
  path: null,
  url: null,
  upload: null,
  created_at: null,
  updated_at: null
)
```

