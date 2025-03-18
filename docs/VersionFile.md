# Kleister::VersionFile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  | [optional] |
| **content_type** | **String** |  | [optional] |
| **md5** | **String** |  | [optional] |
| **path** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'kleister'

instance = Kleister::VersionFile.new(
  slug: null,
  content_type: null,
  md5: null,
  path: null,
  url: null,
  created_at: null,
  updated_at: null
)
```

