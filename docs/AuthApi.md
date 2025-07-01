# Kleister::AuthApi

All URIs are relative to *https://try.kleister.eu/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**callback_provider**](AuthApi.md#callback_provider) | **GET** /auth/{provider}/callback | Callback to parse the defined provider |
| [**list_providers**](AuthApi.md#list_providers) | **GET** /auth/providers | Fetch the available auth providers |
| [**login_auth**](AuthApi.md#login_auth) | **POST** /auth/login | Authenticate an user by credentials |
| [**redirect_auth**](AuthApi.md#redirect_auth) | **POST** /auth/redirect | Retrieve real token after redirect |
| [**refresh_auth**](AuthApi.md#refresh_auth) | **GET** /auth/refresh | Refresh an auth token before it expires |
| [**request_provider**](AuthApi.md#request_provider) | **GET** /auth/{provider}/request | Request the redirect to defined provider |
| [**verify_auth**](AuthApi.md#verify_auth) | **GET** /auth/verify | Verify validity for an authentication token |


## callback_provider

> callback_provider(provider, opts)

Callback to parse the defined provider

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::AuthApi.new
provider = '"github"' # String | An identifier for the auth provider
opts = {
  state: 'state_example', # String | Auth state
  code: 'code_example' # String | Auth code
}

begin
  # Callback to parse the defined provider
  api_instance.callback_provider(provider, opts)
rescue Kleister::ApiError => e
  puts "Error when calling AuthApi->callback_provider: #{e}"
end
```

#### Using the callback_provider_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> callback_provider_with_http_info(provider, opts)

```ruby
begin
  # Callback to parse the defined provider
  data, status_code, headers = api_instance.callback_provider_with_http_info(provider, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Kleister::ApiError => e
  puts "Error when calling AuthApi->callback_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **String** | An identifier for the auth provider |  |
| **state** | **String** | Auth state | [optional] |
| **code** | **String** | Auth code | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## list_providers

> <InlineObject> list_providers

Fetch the available auth providers

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::AuthApi.new

begin
  # Fetch the available auth providers
  result = api_instance.list_providers
  p result
rescue Kleister::ApiError => e
  puts "Error when calling AuthApi->list_providers: #{e}"
end
```

#### Using the list_providers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject>, Integer, Hash)> list_providers_with_http_info

```ruby
begin
  # Fetch the available auth providers
  data, status_code, headers = api_instance.list_providers_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject>
rescue Kleister::ApiError => e
  puts "Error when calling AuthApi->list_providers_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## login_auth

> <AuthToken> login_auth(login_auth_request)

Authenticate an user by credentials

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::AuthApi.new
login_auth_request = Kleister::LoginAuthRequest.new({username: 'username_example', password: 'password_example'}) # LoginAuthRequest | The credentials to authenticate

begin
  # Authenticate an user by credentials
  result = api_instance.login_auth(login_auth_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling AuthApi->login_auth: #{e}"
end
```

#### Using the login_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthToken>, Integer, Hash)> login_auth_with_http_info(login_auth_request)

```ruby
begin
  # Authenticate an user by credentials
  data, status_code, headers = api_instance.login_auth_with_http_info(login_auth_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthToken>
rescue Kleister::ApiError => e
  puts "Error when calling AuthApi->login_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **login_auth_request** | [**LoginAuthRequest**](LoginAuthRequest.md) | The credentials to authenticate |  |

### Return type

[**AuthToken**](AuthToken.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## redirect_auth

> <AuthToken> redirect_auth(redirect_auth_request)

Retrieve real token after redirect

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::AuthApi.new
redirect_auth_request = Kleister::RedirectAuthRequest.new({token: 'token_example'}) # RedirectAuthRequest | The redirect token to authenticate

begin
  # Retrieve real token after redirect
  result = api_instance.redirect_auth(redirect_auth_request)
  p result
rescue Kleister::ApiError => e
  puts "Error when calling AuthApi->redirect_auth: #{e}"
end
```

#### Using the redirect_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthToken>, Integer, Hash)> redirect_auth_with_http_info(redirect_auth_request)

```ruby
begin
  # Retrieve real token after redirect
  data, status_code, headers = api_instance.redirect_auth_with_http_info(redirect_auth_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthToken>
rescue Kleister::ApiError => e
  puts "Error when calling AuthApi->redirect_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **redirect_auth_request** | [**RedirectAuthRequest**](RedirectAuthRequest.md) | The redirect token to authenticate |  |

### Return type

[**AuthToken**](AuthToken.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## refresh_auth

> <AuthToken> refresh_auth

Refresh an auth token before it expires

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::AuthApi.new

begin
  # Refresh an auth token before it expires
  result = api_instance.refresh_auth
  p result
rescue Kleister::ApiError => e
  puts "Error when calling AuthApi->refresh_auth: #{e}"
end
```

#### Using the refresh_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthToken>, Integer, Hash)> refresh_auth_with_http_info

```ruby
begin
  # Refresh an auth token before it expires
  data, status_code, headers = api_instance.refresh_auth_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthToken>
rescue Kleister::ApiError => e
  puts "Error when calling AuthApi->refresh_auth_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AuthToken**](AuthToken.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## request_provider

> request_provider(provider)

Request the redirect to defined provider

### Examples

```ruby
require 'time'
require 'kleister'

api_instance = Kleister::AuthApi.new
provider = '"github"' # String | An identifier for the auth provider

begin
  # Request the redirect to defined provider
  api_instance.request_provider(provider)
rescue Kleister::ApiError => e
  puts "Error when calling AuthApi->request_provider: #{e}"
end
```

#### Using the request_provider_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> request_provider_with_http_info(provider)

```ruby
begin
  # Request the redirect to defined provider
  data, status_code, headers = api_instance.request_provider_with_http_info(provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Kleister::ApiError => e
  puts "Error when calling AuthApi->request_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **String** | An identifier for the auth provider |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## verify_auth

> <AuthVerify> verify_auth

Verify validity for an authentication token

### Examples

```ruby
require 'time'
require 'kleister'
# setup authorization
Kleister.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kleister::AuthApi.new

begin
  # Verify validity for an authentication token
  result = api_instance.verify_auth
  p result
rescue Kleister::ApiError => e
  puts "Error when calling AuthApi->verify_auth: #{e}"
end
```

#### Using the verify_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthVerify>, Integer, Hash)> verify_auth_with_http_info

```ruby
begin
  # Verify validity for an authentication token
  data, status_code, headers = api_instance.verify_auth_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthVerify>
rescue Kleister::ApiError => e
  puts "Error when calling AuthApi->verify_auth_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AuthVerify**](AuthVerify.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

