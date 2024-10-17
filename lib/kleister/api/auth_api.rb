# Kleister OpenAPI
#
# API definition for Kleister, manage mod packs for Minecraft
#
# The version of the OpenAPI document: 1.0.0-alpha1
# Contact: kleister@webhippie.de
# Generated by: https://openapi-generator.tech
# Generator version: 7.6.0
#

require 'cgi'

module Kleister
  class AuthApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Callback for external authentication
    # @param provider [String] An identifier for the auth provider
    # @param [Hash] opts the optional parameters
    # @option opts [String] :state Auth state
    # @option opts [String] :code Auth code
    # @return [Notification]
    def external_callback(provider, opts = {})
      data, _status_code, _headers = external_callback_with_http_info(provider, opts)
      data
    end

    # Callback for external authentication
    # @param provider [String] An identifier for the auth provider
    # @param [Hash] opts the optional parameters
    # @option opts [String] :state Auth state
    # @option opts [String] :code Auth code
    # @return [Array<(Notification, Integer, Hash)>] Notification data, response status code and response headers
    def external_callback_with_http_info(provider, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.external_callback ...'
      end
      # verify the required parameter 'provider' is set
      if @api_client.config.client_side_validation && provider.nil?
        raise ArgumentError, "Missing the required parameter 'provider' when calling AuthApi.external_callback"
      end

      # resource path
      local_var_path = '/auth/{provider}/callback'.sub('{' + 'provider' + '}', CGI.escape(provider.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:state] = opts[:state] unless opts[:state].nil?
      query_params[:code] = opts[:code] unless opts[:code].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Notification'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        operation: :'AuthApi.external_callback',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#external_callback\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Initialize the external authentication
    # @param provider [String] An identifier for the auth provider
    # @param [Hash] opts the optional parameters
    # @option opts [String] :state Auth state
    # @return [Notification]
    def external_initialize(provider, opts = {})
      data, _status_code, _headers = external_initialize_with_http_info(provider, opts)
      data
    end

    # Initialize the external authentication
    # @param provider [String] An identifier for the auth provider
    # @param [Hash] opts the optional parameters
    # @option opts [String] :state Auth state
    # @return [Array<(Notification, Integer, Hash)>] Notification data, response status code and response headers
    def external_initialize_with_http_info(provider, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.external_initialize ...'
      end
      # verify the required parameter 'provider' is set
      if @api_client.config.client_side_validation && provider.nil?
        raise ArgumentError, "Missing the required parameter 'provider' when calling AuthApi.external_initialize"
      end

      # resource path
      local_var_path = '/auth/{provider}/initialize'.sub('{' + 'provider' + '}', CGI.escape(provider.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:state] = opts[:state] unless opts[:state].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Notification'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        operation: :'AuthApi.external_initialize',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#external_initialize\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Fetch the available auth providers
    # @param [Hash] opts the optional parameters
    # @return [Providers]
    def external_providers(opts = {})
      data, _status_code, _headers = external_providers_with_http_info(opts)
      data
    end

    # Fetch the available auth providers
    # @param [Hash] opts the optional parameters
    # @return [Array<(Providers, Integer, Hash)>] Providers data, response status code and response headers
    def external_providers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.external_providers ...'
      end
      # resource path
      local_var_path = '/auth/providers'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Providers'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        operation: :'AuthApi.external_providers',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#external_providers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Authenticate an user by credentials
    # @param auth_login [AuthLogin] The credentials to authenticate
    # @param [Hash] opts the optional parameters
    # @return [AuthToken]
    def login_auth(auth_login, opts = {})
      data, _status_code, _headers = login_auth_with_http_info(auth_login, opts)
      data
    end

    # Authenticate an user by credentials
    # @param auth_login [AuthLogin] The credentials to authenticate
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthToken, Integer, Hash)>] AuthToken data, response status code and response headers
    def login_auth_with_http_info(auth_login, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.login_auth ...'
      end
      # verify the required parameter 'auth_login' is set
      if @api_client.config.client_side_validation && auth_login.nil?
        raise ArgumentError, "Missing the required parameter 'auth_login' when calling AuthApi.login_auth"
      end

      # resource path
      local_var_path = '/auth/login'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      unless content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(auth_login)

      # return_type
      return_type = opts[:debug_return_type] || 'AuthToken'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        operation: :'AuthApi.login_auth',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#login_auth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Refresh an auth token before it expires
    # @param [Hash] opts the optional parameters
    # @return [AuthToken]
    def refresh_auth(opts = {})
      data, _status_code, _headers = refresh_auth_with_http_info(opts)
      data
    end

    # Refresh an auth token before it expires
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthToken, Integer, Hash)>] AuthToken data, response status code and response headers
    def refresh_auth_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.refresh_auth ...'
      end
      # resource path
      local_var_path = '/auth/refresh'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AuthToken'

      # auth_names
      auth_names = opts[:debug_auth_names] || %w[Cookie Basic Header Bearer]

      new_options = opts.merge(
        operation: :'AuthApi.refresh_auth',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#refresh_auth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Verify validity for an authentication token
    # @param [Hash] opts the optional parameters
    # @return [AuthVerify]
    def verify_auth(opts = {})
      data, _status_code, _headers = verify_auth_with_http_info(opts)
      data
    end

    # Verify validity for an authentication token
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthVerify, Integer, Hash)>] AuthVerify data, response status code and response headers
    def verify_auth_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.verify_auth ...'
      end
      # resource path
      local_var_path = '/auth/verify'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AuthVerify'

      # auth_names
      auth_names = opts[:debug_auth_names] || %w[Cookie Basic Header Bearer]

      new_options = opts.merge(
        operation: :'AuthApi.verify_auth',
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#verify_auth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end
