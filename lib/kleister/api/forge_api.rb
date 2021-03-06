=begin
#Kleister OpenAPI

#API definition for Kleister, manage mod packs for Minecraft

The version of the OpenAPI document: 1.0.0-alpha1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0

=end

require 'uri'

module Kleister
  class ForgeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Assign a build to a Forge version
    # @param forge_id [String] A forge UUID or slug
    # @param forge_build [ForgeBuildParams] The build data to append
    # @param [Hash] opts the optional parameters
    # @return [Array<Build>]
    def append_forge_to_build(forge_id, forge_build, opts = {})
      data, _status_code, _headers = append_forge_to_build_with_http_info(forge_id, forge_build, opts)
      data
    end

    # Assign a build to a Forge version
    # @param forge_id [String] A forge UUID or slug
    # @param forge_build [ForgeBuildParams] The build data to append
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Build>, Integer, Hash)>] Array<Build> data, response status code and response headers
    def append_forge_to_build_with_http_info(forge_id, forge_build, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ForgeApi.append_forge_to_build ...'
      end
      # verify the required parameter 'forge_id' is set
      if @api_client.config.client_side_validation && forge_id.nil?
        fail ArgumentError, "Missing the required parameter 'forge_id' when calling ForgeApi.append_forge_to_build"
      end
      # verify the required parameter 'forge_build' is set
      if @api_client.config.client_side_validation && forge_build.nil?
        fail ArgumentError, "Missing the required parameter 'forge_build' when calling ForgeApi.append_forge_to_build"
      end
      # resource path
      local_var_path = '/forge/{forge_id}/builds'.sub('{' + 'forge_id' + '}', forge_id.to_s)

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
      post_body = opts[:body] || @api_client.object_to_http_body(forge_build) 

      # return_type
      return_type = opts[:return_type] || 'Array<Build>' 

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
        @api_client.config.logger.debug "API called: ForgeApi#append_forge_to_build\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unlink a build from a Forge version
    # @param forge_id [String] A forge UUID or slug
    # @param forge_build [ForgeBuildParams] The build data to unlink
    # @param [Hash] opts the optional parameters
    # @return [Array<Build>]
    def delete_forge_from_build(forge_id, forge_build, opts = {})
      data, _status_code, _headers = delete_forge_from_build_with_http_info(forge_id, forge_build, opts)
      data
    end

    # Unlink a build from a Forge version
    # @param forge_id [String] A forge UUID or slug
    # @param forge_build [ForgeBuildParams] The build data to unlink
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Build>, Integer, Hash)>] Array<Build> data, response status code and response headers
    def delete_forge_from_build_with_http_info(forge_id, forge_build, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ForgeApi.delete_forge_from_build ...'
      end
      # verify the required parameter 'forge_id' is set
      if @api_client.config.client_side_validation && forge_id.nil?
        fail ArgumentError, "Missing the required parameter 'forge_id' when calling ForgeApi.delete_forge_from_build"
      end
      # verify the required parameter 'forge_build' is set
      if @api_client.config.client_side_validation && forge_build.nil?
        fail ArgumentError, "Missing the required parameter 'forge_build' when calling ForgeApi.delete_forge_from_build"
      end
      # resource path
      local_var_path = '/forge/{forge_id}/builds'.sub('{' + 'forge_id' + '}', forge_id.to_s)

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
      post_body = opts[:body] || @api_client.object_to_http_body(forge_build) 

      # return_type
      return_type = opts[:return_type] || 'Array<Build>' 

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

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ForgeApi#delete_forge_from_build\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fetch the builds assigned to a Forge version
    # @param forge_id [String] A forge UUID or slug
    # @param [Hash] opts the optional parameters
    # @return [Array<Build>]
    def list_forge_builds(forge_id, opts = {})
      data, _status_code, _headers = list_forge_builds_with_http_info(forge_id, opts)
      data
    end

    # Fetch the builds assigned to a Forge version
    # @param forge_id [String] A forge UUID or slug
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Build>, Integer, Hash)>] Array<Build> data, response status code and response headers
    def list_forge_builds_with_http_info(forge_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ForgeApi.list_forge_builds ...'
      end
      # verify the required parameter 'forge_id' is set
      if @api_client.config.client_side_validation && forge_id.nil?
        fail ArgumentError, "Missing the required parameter 'forge_id' when calling ForgeApi.list_forge_builds"
      end
      # resource path
      local_var_path = '/forge/{forge_id}/builds'.sub('{' + 'forge_id' + '}', forge_id.to_s)

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
      return_type = opts[:return_type] || 'Array<Build>' 

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
        @api_client.config.logger.debug "API called: ForgeApi#list_forge_builds\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fetch the available Forge versions
    # @param [Hash] opts the optional parameters
    # @return [Array<Forge>]
    def list_forges(opts = {})
      data, _status_code, _headers = list_forges_with_http_info(opts)
      data
    end

    # Fetch the available Forge versions
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Forge>, Integer, Hash)>] Array<Forge> data, response status code and response headers
    def list_forges_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ForgeApi.list_forges ...'
      end
      # resource path
      local_var_path = '/forge'

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
      return_type = opts[:return_type] || 'Array<Forge>' 

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
        @api_client.config.logger.debug "API called: ForgeApi#list_forges\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for available Forge versions
    # @param forge_id [String] A search token to search Forge versions
    # @param [Hash] opts the optional parameters
    # @return [Array<Forge>]
    def search_forges(forge_id, opts = {})
      data, _status_code, _headers = search_forges_with_http_info(forge_id, opts)
      data
    end

    # Search for available Forge versions
    # @param forge_id [String] A search token to search Forge versions
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Forge>, Integer, Hash)>] Array<Forge> data, response status code and response headers
    def search_forges_with_http_info(forge_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ForgeApi.search_forges ...'
      end
      # verify the required parameter 'forge_id' is set
      if @api_client.config.client_side_validation && forge_id.nil?
        fail ArgumentError, "Missing the required parameter 'forge_id' when calling ForgeApi.search_forges"
      end
      # resource path
      local_var_path = '/forge/{forge_id}'.sub('{' + 'forge_id' + '}', forge_id.to_s)

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
      return_type = opts[:return_type] || 'Array<Forge>' 

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
        @api_client.config.logger.debug "API called: ForgeApi#search_forges\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the available Forge versions
    # @param [Hash] opts the optional parameters
    # @return [GeneralError]
    def update_forge(opts = {})
      data, _status_code, _headers = update_forge_with_http_info(opts)
      data
    end

    # Update the available Forge versions
    # @param [Hash] opts the optional parameters
    # @return [Array<(GeneralError, Integer, Hash)>] GeneralError data, response status code and response headers
    def update_forge_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ForgeApi.update_forge ...'
      end
      # resource path
      local_var_path = '/forge'

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
      return_type = opts[:return_type] || 'GeneralError' 

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

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ForgeApi#update_forge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
