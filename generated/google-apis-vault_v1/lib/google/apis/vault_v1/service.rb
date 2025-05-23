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
    module VaultV1
      # Google Vault API
      #
      # Retention and eDiscovery for Google Workspace. To work with Vault resources,
      #  the account must have the [required Vault privileges](https://support.google.
      #  com/vault/answer/2799699) and access to the matter. To access a matter, the
      #  account must have created the matter, have the matter shared with them, or
      #  have the **View All Matters** privilege. For example, to download an export,
      #  an account needs the **Manage Exports** privilege and the matter shared with
      #  them.
      #
      # @example
      #    require 'google/apis/vault_v1'
      #
      #    Vault = Google::Apis::VaultV1 # Alias the module
      #    service = Vault::VaultService.new
      #
      # @see https://developers.google.com/workspace/vault
      class VaultService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://vault.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-vault_v1',
                client_version: Google::Apis::VaultV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Adds an account as a matter collaborator.
        # @param [String] matter_id
        #   The matter ID.
        # @param [Google::Apis::VaultV1::AddMatterPermissionsRequest] add_matter_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::MatterPermission] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::MatterPermission]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_matter_permissions(matter_id, add_matter_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/matters/{matterId}:addPermissions', options)
          command.request_representation = Google::Apis::VaultV1::AddMatterPermissionsRequest::Representation
          command.request_object = add_matter_permissions_request_object
          command.response_representation = Google::Apis::VaultV1::MatterPermission::Representation
          command.response_class = Google::Apis::VaultV1::MatterPermission
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Closes the specified matter. Returns the matter with updated state.
        # @param [String] matter_id
        #   The matter ID.
        # @param [Google::Apis::VaultV1::CloseMatterRequest] close_matter_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::CloseMatterResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::CloseMatterResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def close_matter(matter_id, close_matter_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/matters/{matterId}:close', options)
          command.request_representation = Google::Apis::VaultV1::CloseMatterRequest::Representation
          command.request_object = close_matter_request_object
          command.response_representation = Google::Apis::VaultV1::CloseMatterResponse::Representation
          command.response_class = Google::Apis::VaultV1::CloseMatterResponse
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Counts the accounts processed by the specified query.
        # @param [String] matter_id
        #   The matter ID.
        # @param [Google::Apis::VaultV1::CountArtifactsRequest] count_artifacts_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def count_matter_artifacts(matter_id, count_artifacts_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/matters/{matterId}:count', options)
          command.request_representation = Google::Apis::VaultV1::CountArtifactsRequest::Representation
          command.request_object = count_artifacts_request_object
          command.response_representation = Google::Apis::VaultV1::Operation::Representation
          command.response_class = Google::Apis::VaultV1::Operation
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a matter with the given name and description. The initial state is
        # open, and the owner is the method caller. Returns the created matter with
        # default view.
        # @param [Google::Apis::VaultV1::Matter] matter_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Matter] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Matter]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_matter(matter_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/matters', options)
          command.request_representation = Google::Apis::VaultV1::Matter::Representation
          command.request_object = matter_object
          command.response_representation = Google::Apis::VaultV1::Matter::Representation
          command.response_class = Google::Apis::VaultV1::Matter
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified matter. Returns the matter with updated state.
        # @param [String] matter_id
        #   The matter ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Matter] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Matter]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_matter(matter_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/matters/{matterId}', options)
          command.response_representation = Google::Apis::VaultV1::Matter::Representation
          command.response_class = Google::Apis::VaultV1::Matter
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified matter.
        # @param [String] matter_id
        #   The matter ID.
        # @param [String] view
        #   Specifies how much information about the matter to return in the response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Matter] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Matter]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_matter(matter_id, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/matters/{matterId}', options)
          command.response_representation = Google::Apis::VaultV1::Matter::Representation
          command.response_class = Google::Apis::VaultV1::Matter
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists matters the requestor has access to.
        # @param [Fixnum] page_size
        #   The number of matters to return in the response. Default and maximum are 100.
        # @param [String] page_token
        #   The pagination token as returned in the response.
        # @param [String] state
        #   If set, lists only matters with the specified state. The default lists matters
        #   of all states.
        # @param [String] view
        #   Specifies how much information about the matter to return in response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::ListMattersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::ListMattersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_matters(page_size: nil, page_token: nil, state: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/matters', options)
          command.response_representation = Google::Apis::VaultV1::ListMattersResponse::Representation
          command.response_class = Google::Apis::VaultV1::ListMattersResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['state'] = state unless state.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes an account as a matter collaborator.
        # @param [String] matter_id
        #   The matter ID.
        # @param [Google::Apis::VaultV1::RemoveMatterPermissionsRequest] remove_matter_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_matter_permissions(matter_id, remove_matter_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/matters/{matterId}:removePermissions', options)
          command.request_representation = Google::Apis::VaultV1::RemoveMatterPermissionsRequest::Representation
          command.request_object = remove_matter_permissions_request_object
          command.response_representation = Google::Apis::VaultV1::Empty::Representation
          command.response_class = Google::Apis::VaultV1::Empty
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reopens the specified matter. Returns the matter with updated state.
        # @param [String] matter_id
        #   The matter ID.
        # @param [Google::Apis::VaultV1::ReopenMatterRequest] reopen_matter_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::ReopenMatterResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::ReopenMatterResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reopen_matter(matter_id, reopen_matter_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/matters/{matterId}:reopen', options)
          command.request_representation = Google::Apis::VaultV1::ReopenMatterRequest::Representation
          command.request_object = reopen_matter_request_object
          command.response_representation = Google::Apis::VaultV1::ReopenMatterResponse::Representation
          command.response_class = Google::Apis::VaultV1::ReopenMatterResponse
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undeletes the specified matter. Returns the matter with updated state.
        # @param [String] matter_id
        #   The matter ID.
        # @param [Google::Apis::VaultV1::UndeleteMatterRequest] undelete_matter_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Matter] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Matter]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_matter(matter_id, undelete_matter_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/matters/{matterId}:undelete', options)
          command.request_representation = Google::Apis::VaultV1::UndeleteMatterRequest::Representation
          command.request_object = undelete_matter_request_object
          command.response_representation = Google::Apis::VaultV1::Matter::Representation
          command.response_class = Google::Apis::VaultV1::Matter
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified matter. This updates only the name and description of
        # the matter, identified by matter ID. Changes to any other fields are ignored.
        # Returns the default view of the matter.
        # @param [String] matter_id
        #   The matter ID.
        # @param [Google::Apis::VaultV1::Matter] matter_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Matter] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Matter]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_matter(matter_id, matter_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/matters/{matterId}', options)
          command.request_representation = Google::Apis::VaultV1::Matter::Representation
          command.request_object = matter_object
          command.response_representation = Google::Apis::VaultV1::Matter::Representation
          command.response_class = Google::Apis::VaultV1::Matter
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an export.
        # @param [String] matter_id
        #   The matter ID.
        # @param [Google::Apis::VaultV1::Export] export_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Export] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Export]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_matter_export(matter_id, export_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/matters/{matterId}/exports', options)
          command.request_representation = Google::Apis::VaultV1::Export::Representation
          command.request_object = export_object
          command.response_representation = Google::Apis::VaultV1::Export::Representation
          command.response_class = Google::Apis::VaultV1::Export
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an export.
        # @param [String] matter_id
        #   The matter ID.
        # @param [String] export_id
        #   The export ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_matter_export(matter_id, export_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/matters/{matterId}/exports/{exportId}', options)
          command.response_representation = Google::Apis::VaultV1::Empty::Representation
          command.response_class = Google::Apis::VaultV1::Empty
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.params['exportId'] = export_id unless export_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an export.
        # @param [String] matter_id
        #   The matter ID.
        # @param [String] export_id
        #   The export ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Export] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Export]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_matter_export(matter_id, export_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/matters/{matterId}/exports/{exportId}', options)
          command.response_representation = Google::Apis::VaultV1::Export::Representation
          command.response_class = Google::Apis::VaultV1::Export
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.params['exportId'] = export_id unless export_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists details about the exports in the specified matter.
        # @param [String] matter_id
        #   The matter ID.
        # @param [Fixnum] page_size
        #   The number of exports to return in the response.
        # @param [String] page_token
        #   The pagination token as returned in the response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::ListExportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::ListExportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_matter_exports(matter_id, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/matters/{matterId}/exports', options)
          command.response_representation = Google::Apis::VaultV1::ListExportsResponse::Representation
          command.response_class = Google::Apis::VaultV1::ListExportsResponse
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds accounts to a hold. Returns a list of accounts that have been
        # successfully added. Accounts can be added only to an existing account-based
        # hold.
        # @param [String] matter_id
        #   The matter ID.
        # @param [String] hold_id
        #   The hold ID.
        # @param [Google::Apis::VaultV1::AddHeldAccountsRequest] add_held_accounts_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::AddHeldAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::AddHeldAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_hold_held_accounts(matter_id, hold_id, add_held_accounts_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/matters/{matterId}/holds/{holdId}:addHeldAccounts', options)
          command.request_representation = Google::Apis::VaultV1::AddHeldAccountsRequest::Representation
          command.request_object = add_held_accounts_request_object
          command.response_representation = Google::Apis::VaultV1::AddHeldAccountsResponse::Representation
          command.response_class = Google::Apis::VaultV1::AddHeldAccountsResponse
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.params['holdId'] = hold_id unless hold_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a hold in the specified matter.
        # @param [String] matter_id
        #   The matter ID.
        # @param [Google::Apis::VaultV1::Hold] hold_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Hold] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Hold]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_matter_hold(matter_id, hold_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/matters/{matterId}/holds', options)
          command.request_representation = Google::Apis::VaultV1::Hold::Representation
          command.request_object = hold_object
          command.response_representation = Google::Apis::VaultV1::Hold::Representation
          command.response_class = Google::Apis::VaultV1::Hold
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes the specified hold and releases the accounts or organizational unit
        # covered by the hold. If the data is not preserved by another hold or retention
        # rule, it might be purged.
        # @param [String] matter_id
        #   The matter ID.
        # @param [String] hold_id
        #   The hold ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_matter_hold(matter_id, hold_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/matters/{matterId}/holds/{holdId}', options)
          command.response_representation = Google::Apis::VaultV1::Empty::Representation
          command.response_class = Google::Apis::VaultV1::Empty
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.params['holdId'] = hold_id unless hold_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified hold.
        # @param [String] matter_id
        #   The matter ID.
        # @param [String] hold_id
        #   The hold ID.
        # @param [String] view
        #   The amount of detail to return for a hold.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Hold] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Hold]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_matter_hold(matter_id, hold_id, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/matters/{matterId}/holds/{holdId}', options)
          command.response_representation = Google::Apis::VaultV1::Hold::Representation
          command.response_class = Google::Apis::VaultV1::Hold
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.params['holdId'] = hold_id unless hold_id.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the holds in a matter.
        # @param [String] matter_id
        #   The matter ID.
        # @param [Fixnum] page_size
        #   The number of holds to return in the response, between 0 and 100 inclusive.
        #   Leaving this empty, or as 0, is the same as **page_size** = 100.
        # @param [String] page_token
        #   The pagination token as returned in the response. An empty token means start
        #   from the beginning.
        # @param [String] view
        #   The amount of detail to return for a hold.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::ListHoldsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::ListHoldsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_matter_holds(matter_id, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/matters/{matterId}/holds', options)
          command.response_representation = Google::Apis::VaultV1::ListHoldsResponse::Representation
          command.response_class = Google::Apis::VaultV1::ListHoldsResponse
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes the specified accounts from a hold. Returns a list of statuses in the
        # same order as the request.
        # @param [String] matter_id
        #   The matter ID.
        # @param [String] hold_id
        #   The hold ID.
        # @param [Google::Apis::VaultV1::RemoveHeldAccountsRequest] remove_held_accounts_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::RemoveHeldAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::RemoveHeldAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_hold_held_accounts(matter_id, hold_id, remove_held_accounts_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/matters/{matterId}/holds/{holdId}:removeHeldAccounts', options)
          command.request_representation = Google::Apis::VaultV1::RemoveHeldAccountsRequest::Representation
          command.request_object = remove_held_accounts_request_object
          command.response_representation = Google::Apis::VaultV1::RemoveHeldAccountsResponse::Representation
          command.response_class = Google::Apis::VaultV1::RemoveHeldAccountsResponse
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.params['holdId'] = hold_id unless hold_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the scope (organizational unit or accounts) and query parameters of a
        # hold. You cannot add accounts to a hold that covers an organizational unit,
        # nor can you add organizational units to a hold that covers individual accounts.
        # If you try, the unsupported values are ignored.
        # @param [String] matter_id
        #   The matter ID.
        # @param [String] hold_id
        #   The ID of the hold.
        # @param [Google::Apis::VaultV1::Hold] hold_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Hold] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Hold]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_matter_hold(matter_id, hold_id, hold_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/matters/{matterId}/holds/{holdId}', options)
          command.request_representation = Google::Apis::VaultV1::Hold::Representation
          command.request_object = hold_object
          command.response_representation = Google::Apis::VaultV1::Hold::Representation
          command.response_class = Google::Apis::VaultV1::Hold
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.params['holdId'] = hold_id unless hold_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds an account to a hold. Accounts can be added only to a hold that does not
        # have an organizational unit set. If you try to add an account to an
        # organizational unit-based hold, an error is returned.
        # @param [String] matter_id
        #   The matter ID.
        # @param [String] hold_id
        #   The hold ID.
        # @param [Google::Apis::VaultV1::HeldAccount] held_account_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::HeldAccount] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::HeldAccount]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_matter_hold_account(matter_id, hold_id, held_account_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/matters/{matterId}/holds/{holdId}/accounts', options)
          command.request_representation = Google::Apis::VaultV1::HeldAccount::Representation
          command.request_object = held_account_object
          command.response_representation = Google::Apis::VaultV1::HeldAccount::Representation
          command.response_class = Google::Apis::VaultV1::HeldAccount
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.params['holdId'] = hold_id unless hold_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes an account from a hold.
        # @param [String] matter_id
        #   The matter ID.
        # @param [String] hold_id
        #   The hold ID.
        # @param [String] account_id
        #   The ID of the account to remove from the hold.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_matter_hold_account(matter_id, hold_id, account_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/matters/{matterId}/holds/{holdId}/accounts/{accountId}', options)
          command.response_representation = Google::Apis::VaultV1::Empty::Representation
          command.response_class = Google::Apis::VaultV1::Empty
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.params['holdId'] = hold_id unless hold_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the accounts covered by a hold. This can list only individually-
        # specified accounts covered by the hold. If the hold covers an organizational
        # unit, use the [Admin SDK](https://developers.google.com/admin-sdk/). to list
        # the members of the organizational unit on hold.
        # @param [String] matter_id
        #   The matter ID.
        # @param [String] hold_id
        #   The hold ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::ListHeldAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::ListHeldAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_matter_hold_accounts(matter_id, hold_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/matters/{matterId}/holds/{holdId}/accounts', options)
          command.response_representation = Google::Apis::VaultV1::ListHeldAccountsResponse::Representation
          command.response_class = Google::Apis::VaultV1::ListHeldAccountsResponse
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.params['holdId'] = hold_id unless hold_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a saved query.
        # @param [String] matter_id
        #   The ID of the matter to create the saved query in.
        # @param [Google::Apis::VaultV1::SavedQuery] saved_query_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::SavedQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::SavedQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_matter_saved_query(matter_id, saved_query_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/matters/{matterId}/savedQueries', options)
          command.request_representation = Google::Apis::VaultV1::SavedQuery::Representation
          command.request_object = saved_query_object
          command.response_representation = Google::Apis::VaultV1::SavedQuery::Representation
          command.response_class = Google::Apis::VaultV1::SavedQuery
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified saved query.
        # @param [String] matter_id
        #   The ID of the matter to delete the saved query from.
        # @param [String] saved_query_id
        #   ID of the saved query to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_matter_saved_query(matter_id, saved_query_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/matters/{matterId}/savedQueries/{savedQueryId}', options)
          command.response_representation = Google::Apis::VaultV1::Empty::Representation
          command.response_class = Google::Apis::VaultV1::Empty
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.params['savedQueryId'] = saved_query_id unless saved_query_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified saved query.
        # @param [String] matter_id
        #   The ID of the matter to get the saved query from.
        # @param [String] saved_query_id
        #   ID of the saved query to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::SavedQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::SavedQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_matter_saved_query(matter_id, saved_query_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/matters/{matterId}/savedQueries/{savedQueryId}', options)
          command.response_representation = Google::Apis::VaultV1::SavedQuery::Representation
          command.response_class = Google::Apis::VaultV1::SavedQuery
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.params['savedQueryId'] = saved_query_id unless saved_query_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the saved queries in a matter.
        # @param [String] matter_id
        #   The ID of the matter to get the saved queries for.
        # @param [Fixnum] page_size
        #   The maximum number of saved queries to return.
        # @param [String] page_token
        #   The pagination token as returned in the previous response. An empty token
        #   means start from the beginning.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::ListSavedQueriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::ListSavedQueriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_matter_saved_queries(matter_id, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/matters/{matterId}/savedQueries', options)
          command.response_representation = Google::Apis::VaultV1::ListSavedQueriesResponse::Representation
          command.response_class = Google::Apis::VaultV1::ListSavedQueriesResponse
          command.params['matterId'] = matter_id unless matter_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of `1`
        # , corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::VaultV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::VaultV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::VaultV1::Empty::Representation
          command.response_class = Google::Apis::VaultV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a long-running operation. This method indicates that the client is no
        # longer interested in the operation result. It does not cancel the operation.
        # If the server doesn't support this method, it returns `google.rpc.Code.
        # UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation resource to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VaultV1::Empty::Representation
          command.response_class = Google::Apis::VaultV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VaultV1::Operation::Representation
          command.response_class = Google::Apis::VaultV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VaultV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VaultV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VaultV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::VaultV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
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
