=begin
#Kleister OpenAPI

#API definition for Kleister, manage mod packs for Minecraft

The version of the OpenAPI document: 1.0.0-alpha1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0

=end

require 'uri'

module Kleister
  class AuthApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Authenticate an user by credentials
    # @param params [InlineObject] 
    # @param [Hash] opts the optional parameters
    # @return [AuthToken]
    def login_user(params, opts = {})
      data, _status_code, _headers = login_user_with_http_info(params, opts)
      data
    end

    # Authenticate an user by credentials
    # @param params [InlineObject] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthToken, Integer, Hash)>] AuthToken data, response status code and response headers
    def login_user_with_http_info(params, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.login_user ...'
      end
      # verify the required parameter 'params' is set
      if @api_client.config.client_side_validation && params.nil?
        fail ArgumentError, "Missing the required parameter 'params' when calling AuthApi.login_user"
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(params) 

      # return_type
      return_type = opts[:return_type] || 'AuthToken' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#login_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
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
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'AuthToken' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#refresh_auth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Verify validity for an authentication token
    # @param token [String] A token that have to be checked
    # @param [Hash] opts the optional parameters
    # @return [AuthVerify]
    def verify_auth(token, opts = {})
      data, _status_code, _headers = verify_auth_with_http_info(token, opts)
      data
    end

    # Verify validity for an authentication token
    # @param token [String] A token that have to be checked
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthVerify, Integer, Hash)>] AuthVerify data, response status code and response headers
    def verify_auth_with_http_info(token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.verify_auth ...'
      end
      # verify the required parameter 'token' is set
      if @api_client.config.client_side_validation && token.nil?
        fail ArgumentError, "Missing the required parameter 'token' when calling AuthApi.verify_auth"
      end
      # resource path
      local_var_path = '/auth/verify/{token}'.sub('{' + 'token' + '}', token.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'AuthVerify' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#verify_auth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
