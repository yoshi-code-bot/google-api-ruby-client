# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module BigquerydatatransferV1
      # BigQuery Data Transfer API
      #
      # Schedule queries or transfer external data from SaaS applications to Google
      #  BigQuery on a regular basis.
      #
      # @example
      #    require 'google/apis/bigquerydatatransfer_v1'
      #
      #    Bigquerydatatransfer = Google::Apis::BigquerydatatransferV1 # Alias the module
      #    service = Bigquerydatatransfer::BigQueryDataTransferService.new
      #
      # @see https://cloud.google.com/bigquery-transfer/
      class BigQueryDataTransferService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://bigquerydatatransfer.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, '',
                client_name: 'google-apis-bigquerydatatransfer_v1',
                client_version: Google::Apis::BigquerydatatransferV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Enroll data sources in a user project. This allows users to create transfer
        # configurations for these data sources. They will also appear in the
        # ListDataSources RPC and as such, will appear in the [BigQuery UI](https://
        # console.cloud.google.com/bigquery), and the documents can be found in the
        # public guide for [BigQuery Web UI](https://cloud.google.com/bigquery/bigquery-
        # web-ui) and [Data Transfer Service](https://cloud.google.com/bigquery/docs/
        # working-with-transfers).
        # @param [String] name
        #   Required. The name of the project resource in the form: `projects/`project_id``
        # @param [Google::Apis::BigquerydatatransferV1::EnrollDataSourcesRequest] enroll_data_sources_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enroll_project_data_sources(name, enroll_data_sources_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:enrollDataSources', options)
          command.request_representation = Google::Apis::BigquerydatatransferV1::EnrollDataSourcesRequest::Representation
          command.request_object = enroll_data_sources_request_object
          command.response_representation = Google::Apis::BigquerydatatransferV1::Empty::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns true if valid credentials exist for the given data source and
        # requesting user.
        # @param [String] name
        #   Required. The name of the data source. If you are using the regionless method,
        #   the location must be `US` and the name should be in the following form: * `
        #   projects/`project_id`/dataSources/`data_source_id`` If you are using the
        #   regionalized method, the name should be in the following form: * `projects/`
        #   project_id`/locations/`location_id`/dataSources/`data_source_id``
        # @param [Google::Apis::BigquerydatatransferV1::CheckValidCredsRequest] check_valid_creds_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::CheckValidCredsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::CheckValidCredsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def check_project_data_source_valid_creds(name, check_valid_creds_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:checkValidCreds', options)
          command.request_representation = Google::Apis::BigquerydatatransferV1::CheckValidCredsRequest::Representation
          command.request_object = check_valid_creds_request_object
          command.response_representation = Google::Apis::BigquerydatatransferV1::CheckValidCredsResponse::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::CheckValidCredsResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a supported data source and returns its settings.
        # @param [String] name
        #   Required. The name of the resource requested. If you are using the regionless
        #   method, the location must be `US` and the name should be in the following form:
        #   * `projects/`project_id`/dataSources/`data_source_id`` If you are using the
        #   regionalized method, the name should be in the following form: * `projects/`
        #   project_id`/locations/`location_id`/dataSources/`data_source_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::DataSource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::DataSource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_data_source(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BigquerydatatransferV1::DataSource::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::DataSource
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists supported data sources and returns their settings.
        # @param [String] parent
        #   Required. The BigQuery project id for which data sources should be returned.
        #   Must be in the form: `projects/`project_id`` or `projects/`project_id`/
        #   locations/`location_id``
        # @param [Fixnum] page_size
        #   Page size. The default page size is the maximum value of 1000 results.
        # @param [String] page_token
        #   Pagination token, which can be used to request a specific page of `
        #   ListDataSourcesRequest` list results. For multiple-page results, `
        #   ListDataSourcesResponse` outputs a `next_page` token, which can be used as the
        #   `page_token` value to request the next page of list results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::ListDataSourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::ListDataSourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_data_sources(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dataSources', options)
          command.response_representation = Google::Apis::BigquerydatatransferV1::ListDataSourcesResponse::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::ListDataSourcesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enroll data sources in a user project. This allows users to create transfer
        # configurations for these data sources. They will also appear in the
        # ListDataSources RPC and as such, will appear in the [BigQuery UI](https://
        # console.cloud.google.com/bigquery), and the documents can be found in the
        # public guide for [BigQuery Web UI](https://cloud.google.com/bigquery/bigquery-
        # web-ui) and [Data Transfer Service](https://cloud.google.com/bigquery/docs/
        # working-with-transfers).
        # @param [String] name
        #   Required. The name of the project resource in the form: `projects/`project_id``
        # @param [Google::Apis::BigquerydatatransferV1::EnrollDataSourcesRequest] enroll_data_sources_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enroll_location_data_sources(name, enroll_data_sources_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:enrollDataSources', options)
          command.request_representation = Google::Apis::BigquerydatatransferV1::EnrollDataSourcesRequest::Representation
          command.request_object = enroll_data_sources_request_object
          command.response_representation = Google::Apis::BigquerydatatransferV1::Empty::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a location.
        # @param [String] name
        #   Resource name for the location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BigquerydatatransferV1::Location::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
        # @param [Array<String>, String] extra_location_types
        #   Optional. A list of extra location types that should be used as conditions for
        #   controlling the visibility of the locations.
        # @param [String] filter
        #   A filter to narrow down results to a preferred subset. The filtering language
        #   accepts strings like `"displayName=tokyo"`, and is documented in more detail
        #   in [AIP-160](https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of results to return. If not set, the service selects a
        #   default.
        # @param [String] page_token
        #   A page token received from the `next_page_token` field in the response. Send
        #   that page token to receive the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::BigquerydatatransferV1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Unenroll data sources in a user project. This allows users to remove transfer
        # configurations for these data sources. They will no longer appear in the
        # ListDataSources RPC and will also no longer appear in the [BigQuery UI](https:/
        # /console.cloud.google.com/bigquery). Data transfers configurations of
        # unenrolled data sources will not be scheduled.
        # @param [String] name
        #   Required. The name of the project resource in the form: `projects/`project_id``
        # @param [Google::Apis::BigquerydatatransferV1::UnenrollDataSourcesRequest] unenroll_data_sources_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def unenroll_location_data_sources(name, unenroll_data_sources_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:unenrollDataSources', options)
          command.request_representation = Google::Apis::BigquerydatatransferV1::UnenrollDataSourcesRequest::Representation
          command.request_object = unenroll_data_sources_request_object
          command.response_representation = Google::Apis::BigquerydatatransferV1::Empty::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns true if valid credentials exist for the given data source and
        # requesting user.
        # @param [String] name
        #   Required. The name of the data source. If you are using the regionless method,
        #   the location must be `US` and the name should be in the following form: * `
        #   projects/`project_id`/dataSources/`data_source_id`` If you are using the
        #   regionalized method, the name should be in the following form: * `projects/`
        #   project_id`/locations/`location_id`/dataSources/`data_source_id``
        # @param [Google::Apis::BigquerydatatransferV1::CheckValidCredsRequest] check_valid_creds_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::CheckValidCredsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::CheckValidCredsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def check_project_location_data_source_valid_creds(name, check_valid_creds_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:checkValidCreds', options)
          command.request_representation = Google::Apis::BigquerydatatransferV1::CheckValidCredsRequest::Representation
          command.request_object = check_valid_creds_request_object
          command.response_representation = Google::Apis::BigquerydatatransferV1::CheckValidCredsResponse::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::CheckValidCredsResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a supported data source and returns its settings.
        # @param [String] name
        #   Required. The name of the resource requested. If you are using the regionless
        #   method, the location must be `US` and the name should be in the following form:
        #   * `projects/`project_id`/dataSources/`data_source_id`` If you are using the
        #   regionalized method, the name should be in the following form: * `projects/`
        #   project_id`/locations/`location_id`/dataSources/`data_source_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::DataSource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::DataSource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_source(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BigquerydatatransferV1::DataSource::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::DataSource
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists supported data sources and returns their settings.
        # @param [String] parent
        #   Required. The BigQuery project id for which data sources should be returned.
        #   Must be in the form: `projects/`project_id`` or `projects/`project_id`/
        #   locations/`location_id``
        # @param [Fixnum] page_size
        #   Page size. The default page size is the maximum value of 1000 results.
        # @param [String] page_token
        #   Pagination token, which can be used to request a specific page of `
        #   ListDataSourcesRequest` list results. For multiple-page results, `
        #   ListDataSourcesResponse` outputs a `next_page` token, which can be used as the
        #   `page_token` value to request the next page of list results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::ListDataSourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::ListDataSourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_sources(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dataSources', options)
          command.response_representation = Google::Apis::BigquerydatatransferV1::ListDataSourcesResponse::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::ListDataSourcesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new data transfer configuration.
        # @param [String] parent
        #   Required. The BigQuery project id where the transfer configuration should be
        #   created. Must be in the format projects/`project_id`/locations/`location_id`
        #   or projects/`project_id`. If specified location and location of the
        #   destination bigquery dataset do not match - the request will fail.
        # @param [Google::Apis::BigquerydatatransferV1::TransferConfig] transfer_config_object
        # @param [String] authorization_code
        #   Deprecated: Authorization code was required when `transferConfig.dataSourceId`
        #   is 'youtube_channel' but it is no longer used in any data sources. Use `
        #   version_info` instead. Optional OAuth2 authorization code to use with this
        #   transfer configuration. This is required only if `transferConfig.dataSourceId`
        #   is 'youtube_channel' and new credentials are needed, as indicated by `
        #   CheckValidCreds`. In order to obtain authorization_code, make a request to the
        #   following URL: https://bigquery.cloud.google.com/datatransfer/oauthz/auth?
        #   redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=authorization_code&
        #   client_id=client_id&scope=data_source_scopes * The client_id is the OAuth
        #   client_id of the data source as returned by ListDataSources method. *
        #   data_source_scopes are the scopes returned by ListDataSources method. Note
        #   that this should not be set when `service_account_name` is used to create the
        #   transfer config.
        # @param [String] service_account_name
        #   Optional service account email. If this field is set, the transfer config will
        #   be created with this service account's credentials. It requires that the
        #   requesting user calling this API has permissions to act as this service
        #   account. Note that not all data sources support service account credentials
        #   when creating a transfer config. For the latest list of data sources, read
        #   about [using service accounts](https://cloud.google.com/bigquery-transfer/docs/
        #   use-service-accounts).
        # @param [String] version_info
        #   Optional version info. This parameter replaces `authorization_code` which is
        #   no longer used in any data sources. This is required only if `transferConfig.
        #   dataSourceId` is 'youtube_channel' *or* new credentials are needed, as
        #   indicated by `CheckValidCreds`. In order to obtain version info, make a
        #   request to the following URL: https://bigquery.cloud.google.com/datatransfer/
        #   oauthz/auth?redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=version_info&
        #   client_id=client_id&scope=data_source_scopes * The client_id is the OAuth
        #   client_id of the data source as returned by ListDataSources method. *
        #   data_source_scopes are the scopes returned by ListDataSources method. Note
        #   that this should not be set when `service_account_name` is used to create the
        #   transfer config.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::TransferConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::TransferConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_transfer_config(parent, transfer_config_object = nil, authorization_code: nil, service_account_name: nil, version_info: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/transferConfigs', options)
          command.request_representation = Google::Apis::BigquerydatatransferV1::TransferConfig::Representation
          command.request_object = transfer_config_object
          command.response_representation = Google::Apis::BigquerydatatransferV1::TransferConfig::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::TransferConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['authorizationCode'] = authorization_code unless authorization_code.nil?
          command.query['serviceAccountName'] = service_account_name unless service_account_name.nil?
          command.query['versionInfo'] = version_info unless version_info.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a data transfer configuration, including any associated transfer runs
        # and logs.
        # @param [String] name
        #   Required. The name of the resource to delete. If you are using the regionless
        #   method, the location must be `US` and the name should be in the following form:
        #   * `projects/`project_id`/transferConfigs/`config_id`` If you are using the
        #   regionalized method, the name should be in the following form: * `projects/`
        #   project_id`/locations/`location_id`/transferConfigs/`config_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_transfer_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BigquerydatatransferV1::Empty::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns information about a data transfer config.
        # @param [String] name
        #   Required. The name of the resource requested. If you are using the regionless
        #   method, the location must be `US` and the name should be in the following form:
        #   * `projects/`project_id`/transferConfigs/`config_id`` If you are using the
        #   regionalized method, the name should be in the following form: * `projects/`
        #   project_id`/locations/`location_id`/transferConfigs/`config_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::TransferConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::TransferConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_transfer_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BigquerydatatransferV1::TransferConfig::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::TransferConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns information about all transfer configs owned by a project in the
        # specified location.
        # @param [String] parent
        #   Required. The BigQuery project id for which transfer configs should be
        #   returned. If you are using the regionless method, the location must be `US`
        #   and `parent` should be in the following form: * `projects/`project_id` If you
        #   are using the regionalized method, `parent` should be in the following form: *
        #   `projects/`project_id`/locations/`location_id``
        # @param [Array<String>, String] data_source_ids
        #   When specified, only configurations of requested data sources are returned.
        # @param [Fixnum] page_size
        #   Page size. The default page size is the maximum value of 1000 results.
        # @param [String] page_token
        #   Pagination token, which can be used to request a specific page of `
        #   ListTransfersRequest` list results. For multiple-page results, `
        #   ListTransfersResponse` outputs a `next_page` token, which can be used as the `
        #   page_token` value to request the next page of list results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::ListTransferConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::ListTransferConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_transfer_configs(parent, data_source_ids: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/transferConfigs', options)
          command.response_representation = Google::Apis::BigquerydatatransferV1::ListTransferConfigsResponse::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::ListTransferConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['dataSourceIds'] = data_source_ids unless data_source_ids.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a data transfer configuration. All fields must be set, even if they
        # are not updated.
        # @param [String] name
        #   Identifier. The resource name of the transfer config. Transfer config names
        #   have the form either `projects/`project_id`/locations/`region`/transferConfigs/
        #   `config_id`` or `projects/`project_id`/transferConfigs/`config_id``, where `
        #   config_id` is usually a UUID, even though it is not guaranteed or required.
        #   The name is ignored when creating a transfer config.
        # @param [Google::Apis::BigquerydatatransferV1::TransferConfig] transfer_config_object
        # @param [String] authorization_code
        #   Deprecated: Authorization code was required when `transferConfig.dataSourceId`
        #   is 'youtube_channel' but it is no longer used in any data sources. Use `
        #   version_info` instead. Optional OAuth2 authorization code to use with this
        #   transfer configuration. This is required only if `transferConfig.dataSourceId`
        #   is 'youtube_channel' and new credentials are needed, as indicated by `
        #   CheckValidCreds`. In order to obtain authorization_code, make a request to the
        #   following URL: https://bigquery.cloud.google.com/datatransfer/oauthz/auth?
        #   redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=authorization_code&
        #   client_id=client_id&scope=data_source_scopes * The client_id is the OAuth
        #   client_id of the data source as returned by ListDataSources method. *
        #   data_source_scopes are the scopes returned by ListDataSources method. Note
        #   that this should not be set when `service_account_name` is used to update the
        #   transfer config.
        # @param [String] service_account_name
        #   Optional service account email. If this field is set, the transfer config will
        #   be created with this service account's credentials. It requires that the
        #   requesting user calling this API has permissions to act as this service
        #   account. Note that not all data sources support service account credentials
        #   when creating a transfer config. For the latest list of data sources, read
        #   about [using service accounts](https://cloud.google.com/bigquery-transfer/docs/
        #   use-service-accounts).
        # @param [String] update_mask
        #   Required. Required list of fields to be updated in this request.
        # @param [String] version_info
        #   Optional version info. This parameter replaces `authorization_code` which is
        #   no longer used in any data sources. This is required only if `transferConfig.
        #   dataSourceId` is 'youtube_channel' *or* new credentials are needed, as
        #   indicated by `CheckValidCreds`. In order to obtain version info, make a
        #   request to the following URL: https://bigquery.cloud.google.com/datatransfer/
        #   oauthz/auth?redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=version_info&
        #   client_id=client_id&scope=data_source_scopes * The client_id is the OAuth
        #   client_id of the data source as returned by ListDataSources method. *
        #   data_source_scopes are the scopes returned by ListDataSources method. Note
        #   that this should not be set when `service_account_name` is used to update the
        #   transfer config.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::TransferConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::TransferConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_transfer_config(name, transfer_config_object = nil, authorization_code: nil, service_account_name: nil, update_mask: nil, version_info: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::BigquerydatatransferV1::TransferConfig::Representation
          command.request_object = transfer_config_object
          command.response_representation = Google::Apis::BigquerydatatransferV1::TransferConfig::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::TransferConfig
          command.params['name'] = name unless name.nil?
          command.query['authorizationCode'] = authorization_code unless authorization_code.nil?
          command.query['serviceAccountName'] = service_account_name unless service_account_name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['versionInfo'] = version_info unless version_info.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates transfer runs for a time range [start_time, end_time]. For each date -
        # or whatever granularity the data source supports - in the range, one transfer
        # run is created. Note that runs are created per UTC time in the time range.
        # DEPRECATED: use StartManualTransferRuns instead.
        # @param [String] parent
        #   Required. Transfer configuration name. If you are using the regionless method,
        #   the location must be `US` and the name should be in the following form: * `
        #   projects/`project_id`/transferConfigs/`config_id`` If you are using the
        #   regionalized method, the name should be in the following form: * `projects/`
        #   project_id`/locations/`location_id`/transferConfigs/`config_id``
        # @param [Google::Apis::BigquerydatatransferV1::ScheduleTransferRunsRequest] schedule_transfer_runs_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::ScheduleTransferRunsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::ScheduleTransferRunsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def schedule_project_location_transfer_config_runs(parent, schedule_transfer_runs_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:scheduleRuns', options)
          command.request_representation = Google::Apis::BigquerydatatransferV1::ScheduleTransferRunsRequest::Representation
          command.request_object = schedule_transfer_runs_request_object
          command.response_representation = Google::Apis::BigquerydatatransferV1::ScheduleTransferRunsResponse::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::ScheduleTransferRunsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Manually initiates transfer runs. You can schedule these runs in two ways: 1.
        # For a specific point in time using the 'requested_run_time' parameter. 2. For
        # a period between 'start_time' (inclusive) and 'end_time' (exclusive). If
        # scheduling a single run, it is set to execute immediately (schedule_time
        # equals the current time). When scheduling multiple runs within a time range,
        # the first run starts now, and subsequent runs are delayed by 15 seconds each.
        # @param [String] parent
        #   Required. Transfer configuration name. If you are using the regionless method,
        #   the location must be `US` and the name should be in the following form: * `
        #   projects/`project_id`/transferConfigs/`config_id`` If you are using the
        #   regionalized method, the name should be in the following form: * `projects/`
        #   project_id`/locations/`location_id`/transferConfigs/`config_id``
        # @param [Google::Apis::BigquerydatatransferV1::StartManualTransferRunsRequest] start_manual_transfer_runs_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::StartManualTransferRunsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::StartManualTransferRunsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_project_location_transfer_config_manual_runs(parent, start_manual_transfer_runs_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:startManualRuns', options)
          command.request_representation = Google::Apis::BigquerydatatransferV1::StartManualTransferRunsRequest::Representation
          command.request_object = start_manual_transfer_runs_request_object
          command.response_representation = Google::Apis::BigquerydatatransferV1::StartManualTransferRunsResponse::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::StartManualTransferRunsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified transfer run.
        # @param [String] name
        #   Required. The name of the resource requested. If you are using the regionless
        #   method, the location must be `US` and the name should be in the following form:
        #   * `projects/`project_id`/transferConfigs/`config_id`/runs/`run_id`` If you
        #   are using the regionalized method, the name should be in the following form: *
        #   `projects/`project_id`/locations/`location_id`/transferConfigs/`config_id`/
        #   runs/`run_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_transfer_config_run(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BigquerydatatransferV1::Empty::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns information about the particular transfer run.
        # @param [String] name
        #   Required. The name of the resource requested. If you are using the regionless
        #   method, the location must be `US` and the name should be in the following form:
        #   * `projects/`project_id`/transferConfigs/`config_id`/runs/`run_id`` If you
        #   are using the regionalized method, the name should be in the following form: *
        #   `projects/`project_id`/locations/`location_id`/transferConfigs/`config_id`/
        #   runs/`run_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::TransferRun] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::TransferRun]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_transfer_config_run(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BigquerydatatransferV1::TransferRun::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::TransferRun
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns information about running and completed transfer runs.
        # @param [String] parent
        #   Required. Name of transfer configuration for which transfer runs should be
        #   retrieved. If you are using the regionless method, the location must be `US`
        #   and the name should be in the following form: * `projects/`project_id`/
        #   transferConfigs/`config_id`` If you are using the regionalized method, the
        #   name should be in the following form: * `projects/`project_id`/locations/`
        #   location_id`/transferConfigs/`config_id``
        # @param [Fixnum] page_size
        #   Page size. The default page size is the maximum value of 1000 results.
        # @param [String] page_token
        #   Pagination token, which can be used to request a specific page of `
        #   ListTransferRunsRequest` list results. For multiple-page results, `
        #   ListTransferRunsResponse` outputs a `next_page` token, which can be used as
        #   the `page_token` value to request the next page of list results.
        # @param [String] run_attempt
        #   Indicates how run attempts are to be pulled.
        # @param [Array<String>, String] states
        #   When specified, only transfer runs with requested states are returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::ListTransferRunsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::ListTransferRunsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_transfer_config_runs(parent, page_size: nil, page_token: nil, run_attempt: nil, states: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/runs', options)
          command.response_representation = Google::Apis::BigquerydatatransferV1::ListTransferRunsResponse::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::ListTransferRunsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['runAttempt'] = run_attempt unless run_attempt.nil?
          command.query['states'] = states unless states.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns log messages for the transfer run.
        # @param [String] parent
        #   Required. Transfer run name. If you are using the regionless method, the
        #   location must be `US` and the name should be in the following form: * `
        #   projects/`project_id`/transferConfigs/`config_id`/runs/`run_id`` If you are
        #   using the regionalized method, the name should be in the following form: * `
        #   projects/`project_id`/locations/`location_id`/transferConfigs/`config_id`/runs/
        #   `run_id``
        # @param [Array<String>, String] message_types
        #   Message types to return. If not populated - INFO, WARNING and ERROR messages
        #   are returned.
        # @param [Fixnum] page_size
        #   Page size. The default page size is the maximum value of 1000 results.
        # @param [String] page_token
        #   Pagination token, which can be used to request a specific page of `
        #   ListTransferLogsRequest` list results. For multiple-page results, `
        #   ListTransferLogsResponse` outputs a `next_page` token, which can be used as
        #   the `page_token` value to request the next page of list results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::ListTransferLogsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::ListTransferLogsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_transfer_config_run_transfer_logs(parent, message_types: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/transferLogs', options)
          command.response_representation = Google::Apis::BigquerydatatransferV1::ListTransferLogsResponse::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::ListTransferLogsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['messageTypes'] = message_types unless message_types.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new data transfer configuration.
        # @param [String] parent
        #   Required. The BigQuery project id where the transfer configuration should be
        #   created. Must be in the format projects/`project_id`/locations/`location_id`
        #   or projects/`project_id`. If specified location and location of the
        #   destination bigquery dataset do not match - the request will fail.
        # @param [Google::Apis::BigquerydatatransferV1::TransferConfig] transfer_config_object
        # @param [String] authorization_code
        #   Deprecated: Authorization code was required when `transferConfig.dataSourceId`
        #   is 'youtube_channel' but it is no longer used in any data sources. Use `
        #   version_info` instead. Optional OAuth2 authorization code to use with this
        #   transfer configuration. This is required only if `transferConfig.dataSourceId`
        #   is 'youtube_channel' and new credentials are needed, as indicated by `
        #   CheckValidCreds`. In order to obtain authorization_code, make a request to the
        #   following URL: https://bigquery.cloud.google.com/datatransfer/oauthz/auth?
        #   redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=authorization_code&
        #   client_id=client_id&scope=data_source_scopes * The client_id is the OAuth
        #   client_id of the data source as returned by ListDataSources method. *
        #   data_source_scopes are the scopes returned by ListDataSources method. Note
        #   that this should not be set when `service_account_name` is used to create the
        #   transfer config.
        # @param [String] service_account_name
        #   Optional service account email. If this field is set, the transfer config will
        #   be created with this service account's credentials. It requires that the
        #   requesting user calling this API has permissions to act as this service
        #   account. Note that not all data sources support service account credentials
        #   when creating a transfer config. For the latest list of data sources, read
        #   about [using service accounts](https://cloud.google.com/bigquery-transfer/docs/
        #   use-service-accounts).
        # @param [String] version_info
        #   Optional version info. This parameter replaces `authorization_code` which is
        #   no longer used in any data sources. This is required only if `transferConfig.
        #   dataSourceId` is 'youtube_channel' *or* new credentials are needed, as
        #   indicated by `CheckValidCreds`. In order to obtain version info, make a
        #   request to the following URL: https://bigquery.cloud.google.com/datatransfer/
        #   oauthz/auth?redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=version_info&
        #   client_id=client_id&scope=data_source_scopes * The client_id is the OAuth
        #   client_id of the data source as returned by ListDataSources method. *
        #   data_source_scopes are the scopes returned by ListDataSources method. Note
        #   that this should not be set when `service_account_name` is used to create the
        #   transfer config.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::TransferConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::TransferConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_transfer_config(parent, transfer_config_object = nil, authorization_code: nil, service_account_name: nil, version_info: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/transferConfigs', options)
          command.request_representation = Google::Apis::BigquerydatatransferV1::TransferConfig::Representation
          command.request_object = transfer_config_object
          command.response_representation = Google::Apis::BigquerydatatransferV1::TransferConfig::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::TransferConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['authorizationCode'] = authorization_code unless authorization_code.nil?
          command.query['serviceAccountName'] = service_account_name unless service_account_name.nil?
          command.query['versionInfo'] = version_info unless version_info.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a data transfer configuration, including any associated transfer runs
        # and logs.
        # @param [String] name
        #   Required. The name of the resource to delete. If you are using the regionless
        #   method, the location must be `US` and the name should be in the following form:
        #   * `projects/`project_id`/transferConfigs/`config_id`` If you are using the
        #   regionalized method, the name should be in the following form: * `projects/`
        #   project_id`/locations/`location_id`/transferConfigs/`config_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_transfer_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BigquerydatatransferV1::Empty::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns information about a data transfer config.
        # @param [String] name
        #   Required. The name of the resource requested. If you are using the regionless
        #   method, the location must be `US` and the name should be in the following form:
        #   * `projects/`project_id`/transferConfigs/`config_id`` If you are using the
        #   regionalized method, the name should be in the following form: * `projects/`
        #   project_id`/locations/`location_id`/transferConfigs/`config_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::TransferConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::TransferConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_transfer_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BigquerydatatransferV1::TransferConfig::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::TransferConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns information about all transfer configs owned by a project in the
        # specified location.
        # @param [String] parent
        #   Required. The BigQuery project id for which transfer configs should be
        #   returned. If you are using the regionless method, the location must be `US`
        #   and `parent` should be in the following form: * `projects/`project_id` If you
        #   are using the regionalized method, `parent` should be in the following form: *
        #   `projects/`project_id`/locations/`location_id``
        # @param [Array<String>, String] data_source_ids
        #   When specified, only configurations of requested data sources are returned.
        # @param [Fixnum] page_size
        #   Page size. The default page size is the maximum value of 1000 results.
        # @param [String] page_token
        #   Pagination token, which can be used to request a specific page of `
        #   ListTransfersRequest` list results. For multiple-page results, `
        #   ListTransfersResponse` outputs a `next_page` token, which can be used as the `
        #   page_token` value to request the next page of list results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::ListTransferConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::ListTransferConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_transfer_configs(parent, data_source_ids: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/transferConfigs', options)
          command.response_representation = Google::Apis::BigquerydatatransferV1::ListTransferConfigsResponse::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::ListTransferConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['dataSourceIds'] = data_source_ids unless data_source_ids.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a data transfer configuration. All fields must be set, even if they
        # are not updated.
        # @param [String] name
        #   Identifier. The resource name of the transfer config. Transfer config names
        #   have the form either `projects/`project_id`/locations/`region`/transferConfigs/
        #   `config_id`` or `projects/`project_id`/transferConfigs/`config_id``, where `
        #   config_id` is usually a UUID, even though it is not guaranteed or required.
        #   The name is ignored when creating a transfer config.
        # @param [Google::Apis::BigquerydatatransferV1::TransferConfig] transfer_config_object
        # @param [String] authorization_code
        #   Deprecated: Authorization code was required when `transferConfig.dataSourceId`
        #   is 'youtube_channel' but it is no longer used in any data sources. Use `
        #   version_info` instead. Optional OAuth2 authorization code to use with this
        #   transfer configuration. This is required only if `transferConfig.dataSourceId`
        #   is 'youtube_channel' and new credentials are needed, as indicated by `
        #   CheckValidCreds`. In order to obtain authorization_code, make a request to the
        #   following URL: https://bigquery.cloud.google.com/datatransfer/oauthz/auth?
        #   redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=authorization_code&
        #   client_id=client_id&scope=data_source_scopes * The client_id is the OAuth
        #   client_id of the data source as returned by ListDataSources method. *
        #   data_source_scopes are the scopes returned by ListDataSources method. Note
        #   that this should not be set when `service_account_name` is used to update the
        #   transfer config.
        # @param [String] service_account_name
        #   Optional service account email. If this field is set, the transfer config will
        #   be created with this service account's credentials. It requires that the
        #   requesting user calling this API has permissions to act as this service
        #   account. Note that not all data sources support service account credentials
        #   when creating a transfer config. For the latest list of data sources, read
        #   about [using service accounts](https://cloud.google.com/bigquery-transfer/docs/
        #   use-service-accounts).
        # @param [String] update_mask
        #   Required. Required list of fields to be updated in this request.
        # @param [String] version_info
        #   Optional version info. This parameter replaces `authorization_code` which is
        #   no longer used in any data sources. This is required only if `transferConfig.
        #   dataSourceId` is 'youtube_channel' *or* new credentials are needed, as
        #   indicated by `CheckValidCreds`. In order to obtain version info, make a
        #   request to the following URL: https://bigquery.cloud.google.com/datatransfer/
        #   oauthz/auth?redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=version_info&
        #   client_id=client_id&scope=data_source_scopes * The client_id is the OAuth
        #   client_id of the data source as returned by ListDataSources method. *
        #   data_source_scopes are the scopes returned by ListDataSources method. Note
        #   that this should not be set when `service_account_name` is used to update the
        #   transfer config.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::TransferConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::TransferConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_transfer_config(name, transfer_config_object = nil, authorization_code: nil, service_account_name: nil, update_mask: nil, version_info: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::BigquerydatatransferV1::TransferConfig::Representation
          command.request_object = transfer_config_object
          command.response_representation = Google::Apis::BigquerydatatransferV1::TransferConfig::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::TransferConfig
          command.params['name'] = name unless name.nil?
          command.query['authorizationCode'] = authorization_code unless authorization_code.nil?
          command.query['serviceAccountName'] = service_account_name unless service_account_name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['versionInfo'] = version_info unless version_info.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates transfer runs for a time range [start_time, end_time]. For each date -
        # or whatever granularity the data source supports - in the range, one transfer
        # run is created. Note that runs are created per UTC time in the time range.
        # DEPRECATED: use StartManualTransferRuns instead.
        # @param [String] parent
        #   Required. Transfer configuration name. If you are using the regionless method,
        #   the location must be `US` and the name should be in the following form: * `
        #   projects/`project_id`/transferConfigs/`config_id`` If you are using the
        #   regionalized method, the name should be in the following form: * `projects/`
        #   project_id`/locations/`location_id`/transferConfigs/`config_id``
        # @param [Google::Apis::BigquerydatatransferV1::ScheduleTransferRunsRequest] schedule_transfer_runs_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::ScheduleTransferRunsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::ScheduleTransferRunsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def schedule_project_transfer_config_runs(parent, schedule_transfer_runs_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:scheduleRuns', options)
          command.request_representation = Google::Apis::BigquerydatatransferV1::ScheduleTransferRunsRequest::Representation
          command.request_object = schedule_transfer_runs_request_object
          command.response_representation = Google::Apis::BigquerydatatransferV1::ScheduleTransferRunsResponse::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::ScheduleTransferRunsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Manually initiates transfer runs. You can schedule these runs in two ways: 1.
        # For a specific point in time using the 'requested_run_time' parameter. 2. For
        # a period between 'start_time' (inclusive) and 'end_time' (exclusive). If
        # scheduling a single run, it is set to execute immediately (schedule_time
        # equals the current time). When scheduling multiple runs within a time range,
        # the first run starts now, and subsequent runs are delayed by 15 seconds each.
        # @param [String] parent
        #   Required. Transfer configuration name. If you are using the regionless method,
        #   the location must be `US` and the name should be in the following form: * `
        #   projects/`project_id`/transferConfigs/`config_id`` If you are using the
        #   regionalized method, the name should be in the following form: * `projects/`
        #   project_id`/locations/`location_id`/transferConfigs/`config_id``
        # @param [Google::Apis::BigquerydatatransferV1::StartManualTransferRunsRequest] start_manual_transfer_runs_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::StartManualTransferRunsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::StartManualTransferRunsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_project_transfer_config_manual_runs(parent, start_manual_transfer_runs_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:startManualRuns', options)
          command.request_representation = Google::Apis::BigquerydatatransferV1::StartManualTransferRunsRequest::Representation
          command.request_object = start_manual_transfer_runs_request_object
          command.response_representation = Google::Apis::BigquerydatatransferV1::StartManualTransferRunsResponse::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::StartManualTransferRunsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified transfer run.
        # @param [String] name
        #   Required. The name of the resource requested. If you are using the regionless
        #   method, the location must be `US` and the name should be in the following form:
        #   * `projects/`project_id`/transferConfigs/`config_id`/runs/`run_id`` If you
        #   are using the regionalized method, the name should be in the following form: *
        #   `projects/`project_id`/locations/`location_id`/transferConfigs/`config_id`/
        #   runs/`run_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_transfer_config_run(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BigquerydatatransferV1::Empty::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns information about the particular transfer run.
        # @param [String] name
        #   Required. The name of the resource requested. If you are using the regionless
        #   method, the location must be `US` and the name should be in the following form:
        #   * `projects/`project_id`/transferConfigs/`config_id`/runs/`run_id`` If you
        #   are using the regionalized method, the name should be in the following form: *
        #   `projects/`project_id`/locations/`location_id`/transferConfigs/`config_id`/
        #   runs/`run_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::TransferRun] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::TransferRun]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_transfer_config_run(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BigquerydatatransferV1::TransferRun::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::TransferRun
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns information about running and completed transfer runs.
        # @param [String] parent
        #   Required. Name of transfer configuration for which transfer runs should be
        #   retrieved. If you are using the regionless method, the location must be `US`
        #   and the name should be in the following form: * `projects/`project_id`/
        #   transferConfigs/`config_id`` If you are using the regionalized method, the
        #   name should be in the following form: * `projects/`project_id`/locations/`
        #   location_id`/transferConfigs/`config_id``
        # @param [Fixnum] page_size
        #   Page size. The default page size is the maximum value of 1000 results.
        # @param [String] page_token
        #   Pagination token, which can be used to request a specific page of `
        #   ListTransferRunsRequest` list results. For multiple-page results, `
        #   ListTransferRunsResponse` outputs a `next_page` token, which can be used as
        #   the `page_token` value to request the next page of list results.
        # @param [String] run_attempt
        #   Indicates how run attempts are to be pulled.
        # @param [Array<String>, String] states
        #   When specified, only transfer runs with requested states are returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::ListTransferRunsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::ListTransferRunsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_transfer_config_runs(parent, page_size: nil, page_token: nil, run_attempt: nil, states: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/runs', options)
          command.response_representation = Google::Apis::BigquerydatatransferV1::ListTransferRunsResponse::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::ListTransferRunsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['runAttempt'] = run_attempt unless run_attempt.nil?
          command.query['states'] = states unless states.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns log messages for the transfer run.
        # @param [String] parent
        #   Required. Transfer run name. If you are using the regionless method, the
        #   location must be `US` and the name should be in the following form: * `
        #   projects/`project_id`/transferConfigs/`config_id`/runs/`run_id`` If you are
        #   using the regionalized method, the name should be in the following form: * `
        #   projects/`project_id`/locations/`location_id`/transferConfigs/`config_id`/runs/
        #   `run_id``
        # @param [Array<String>, String] message_types
        #   Message types to return. If not populated - INFO, WARNING and ERROR messages
        #   are returned.
        # @param [Fixnum] page_size
        #   Page size. The default page size is the maximum value of 1000 results.
        # @param [String] page_token
        #   Pagination token, which can be used to request a specific page of `
        #   ListTransferLogsRequest` list results. For multiple-page results, `
        #   ListTransferLogsResponse` outputs a `next_page` token, which can be used as
        #   the `page_token` value to request the next page of list results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigquerydatatransferV1::ListTransferLogsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigquerydatatransferV1::ListTransferLogsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_transfer_config_run_transfer_logs(parent, message_types: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/transferLogs', options)
          command.response_representation = Google::Apis::BigquerydatatransferV1::ListTransferLogsResponse::Representation
          command.response_class = Google::Apis::BigquerydatatransferV1::ListTransferLogsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['messageTypes'] = message_types unless message_types.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
