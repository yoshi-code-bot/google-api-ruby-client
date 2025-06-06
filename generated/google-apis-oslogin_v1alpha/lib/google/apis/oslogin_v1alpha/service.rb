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
    module OsloginV1alpha
      # Cloud OS Login API
      #
      # You can use OS Login to manage access to your VM instances using IAM roles.
      #
      # @example
      #    require 'google/apis/oslogin_v1alpha'
      #
      #    Oslogin = Google::Apis::OsloginV1alpha # Alias the module
      #    service = Oslogin::CloudOSLoginService.new
      #
      # @see https://cloud.google.com/compute/docs/oslogin/
      class CloudOSLoginService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://oslogin.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-oslogin_v1alpha',
                client_version: Google::Apis::OsloginV1alpha::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Signs an SSH public key for a user to authenticate to a virtual machine on
        # Google Compute Engine.
        # @param [String] parent
        #   Required. The parent for the signing request. Format: projects/`project`/
        #   locations/`location`
        # @param [Google::Apis::OsloginV1alpha::GoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyRequest] google_cloud_oslogin_controlplane_regional_v1alpha_sign_ssh_public_key_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsloginV1alpha::GoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsloginV1alpha::GoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def sign_project_location_ssh_public_key(parent, google_cloud_oslogin_controlplane_regional_v1alpha_sign_ssh_public_key_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}:signSshPublicKey', options)
          command.request_representation = Google::Apis::OsloginV1alpha::GoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyRequest::Representation
          command.request_object = google_cloud_oslogin_controlplane_regional_v1alpha_sign_ssh_public_key_request_object
          command.response_representation = Google::Apis::OsloginV1alpha::GoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyResponse::Representation
          command.response_class = Google::Apis::OsloginV1alpha::GoogleCloudOsloginControlplaneRegionalV1alphaSignSshPublicKeyResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the profile information used for logging in to a virtual machine on
        # Google Compute Engine.
        # @param [String] name
        #   Required. The unique ID for the user in format `users/`user``.
        # @param [String] operating_system_type
        #   Optional. The type of operating system associated with the account.
        # @param [String] project_id
        #   Required. The project ID of the Google Cloud Platform project.
        # @param [String] system_id
        #   Optional. A system ID for filtering the results of the request.
        # @param [String] view
        #   The view configures whether to retrieve security keys information.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsloginV1alpha::LoginProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsloginV1alpha::LoginProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_login_profile(name, operating_system_type: nil, project_id: nil, system_id: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/loginProfile', options)
          command.response_representation = Google::Apis::OsloginV1alpha::LoginProfile::Representation
          command.response_class = Google::Apis::OsloginV1alpha::LoginProfile
          command.params['name'] = name unless name.nil?
          command.query['operatingSystemType'] = operating_system_type unless operating_system_type.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['systemId'] = system_id unless system_id.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds an SSH public key and returns the profile information. Default POSIX
        # account information is set when no username and UID exist as part of the login
        # profile.
        # @param [String] parent
        #   The unique ID for the user in format `users/`user``.
        # @param [Google::Apis::OsloginV1alpha::SshPublicKey] ssh_public_key_object
        # @param [String] project_id
        #   The project ID of the Google Cloud Platform project.
        # @param [Array<String>, String] regions
        #   Optional. The regions to wait for a POSIX account to be written to before
        #   returning a response. If unspecified, defaults to all regions. Regions are
        #   listed at https://cloud.google.com/about/locations#region.
        # @param [String] view
        #   The view configures whether to retrieve security keys information.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsloginV1alpha::ImportSshPublicKeyResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsloginV1alpha::ImportSshPublicKeyResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_user_ssh_public_key(parent, ssh_public_key_object = nil, project_id: nil, regions: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}:importSshPublicKey', options)
          command.request_representation = Google::Apis::OsloginV1alpha::SshPublicKey::Representation
          command.request_object = ssh_public_key_object
          command.response_representation = Google::Apis::OsloginV1alpha::ImportSshPublicKeyResponse::Representation
          command.response_class = Google::Apis::OsloginV1alpha::ImportSshPublicKeyResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['regions'] = regions unless regions.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a POSIX account.
        # @param [String] name
        #   Required. A reference to the POSIX account to update. POSIX accounts are
        #   identified by the project ID they are associated with. A reference to the
        #   POSIX account is in format `users/`user`/projects/`project``.
        # @param [String] operating_system_type
        #   Optional. The type of operating system associated with the account.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsloginV1alpha::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsloginV1alpha::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_user_project(name, operating_system_type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::OsloginV1alpha::Empty::Representation
          command.response_class = Google::Apis::OsloginV1alpha::Empty
          command.params['name'] = name unless name.nil?
          command.query['operatingSystemType'] = operating_system_type unless operating_system_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a POSIX account if it doesn't exist.
        # @param [String] name
        #   Required. The unique ID for the user in format `users/`user`/projects/`project`
        #   `.
        # @param [Google::Apis::OsloginV1alpha::ProvisionPosixAccountRequest] provision_posix_account_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsloginV1alpha::PosixAccount] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsloginV1alpha::PosixAccount]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def provision_project_posix_account(name, provision_posix_account_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::OsloginV1alpha::ProvisionPosixAccountRequest::Representation
          command.request_object = provision_posix_account_request_object
          command.response_representation = Google::Apis::OsloginV1alpha::PosixAccount::Representation
          command.response_class = Google::Apis::OsloginV1alpha::PosixAccount
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Signs an SSH public key for a user to authenticate to a virtual machine on
        # Google Compute Engine.
        # @param [String] parent
        #   Required. The parent project and region for the signing request.
        # @param [Google::Apis::OsloginV1alpha::SignSshPublicKeyRequest] sign_ssh_public_key_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsloginV1alpha::SignSshPublicKeyResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsloginV1alpha::SignSshPublicKeyResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def sign_location_ssh_public_key(parent, sign_ssh_public_key_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}:signSshPublicKey', options)
          command.request_representation = Google::Apis::OsloginV1alpha::SignSshPublicKeyRequest::Representation
          command.request_object = sign_ssh_public_key_request_object
          command.response_representation = Google::Apis::OsloginV1alpha::SignSshPublicKeyResponse::Representation
          command.response_class = Google::Apis::OsloginV1alpha::SignSshPublicKeyResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Signs an SSH public key for a user to authenticate to a virtual machine on
        # Google Compute Engine.
        # @param [String] parent
        #   Required. The parent project and region for the signing request.
        # @param [Google::Apis::OsloginV1alpha::SignSshPublicKeyRequest] sign_ssh_public_key_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsloginV1alpha::SignSshPublicKeyResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsloginV1alpha::SignSshPublicKeyResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def sign_zone_ssh_public_key(parent, sign_ssh_public_key_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}:signSshPublicKey', options)
          command.request_representation = Google::Apis::OsloginV1alpha::SignSshPublicKeyRequest::Representation
          command.request_object = sign_ssh_public_key_request_object
          command.response_representation = Google::Apis::OsloginV1alpha::SignSshPublicKeyResponse::Representation
          command.response_class = Google::Apis::OsloginV1alpha::SignSshPublicKeyResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create an SSH public key
        # @param [String] parent
        #   Required. The unique ID for the user in format `users/`user``.
        # @param [Google::Apis::OsloginV1alpha::SshPublicKey] ssh_public_key_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsloginV1alpha::SshPublicKey] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsloginV1alpha::SshPublicKey]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_user_ssh_public_key(parent, ssh_public_key_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/sshPublicKeys', options)
          command.request_representation = Google::Apis::OsloginV1alpha::SshPublicKey::Representation
          command.request_object = ssh_public_key_object
          command.response_representation = Google::Apis::OsloginV1alpha::SshPublicKey::Representation
          command.response_class = Google::Apis::OsloginV1alpha::SshPublicKey
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an SSH public key.
        # @param [String] name
        #   Required. The fingerprint of the public key to update. Public keys are
        #   identified by their SHA-256 fingerprint. The fingerprint of the public key is
        #   in format `users/`user`/sshPublicKeys/`fingerprint``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsloginV1alpha::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsloginV1alpha::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_user_ssh_public_key(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::OsloginV1alpha::Empty::Representation
          command.response_class = Google::Apis::OsloginV1alpha::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an SSH public key.
        # @param [String] name
        #   Required. The fingerprint of the public key to retrieve. Public keys are
        #   identified by their SHA-256 fingerprint. The fingerprint of the public key is
        #   in format `users/`user`/sshPublicKeys/`fingerprint``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsloginV1alpha::SshPublicKey] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsloginV1alpha::SshPublicKey]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_ssh_public_key(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::OsloginV1alpha::SshPublicKey::Representation
          command.response_class = Google::Apis::OsloginV1alpha::SshPublicKey
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an SSH public key and returns the profile information. This method
        # supports patch semantics.
        # @param [String] name
        #   Required. The fingerprint of the public key to update. Public keys are
        #   identified by their SHA-256 fingerprint. The fingerprint of the public key is
        #   in format `users/`user`/sshPublicKeys/`fingerprint``.
        # @param [Google::Apis::OsloginV1alpha::SshPublicKey] ssh_public_key_object
        # @param [String] update_mask
        #   Optional. Mask to control which fields get updated. Updates all if not present.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsloginV1alpha::SshPublicKey] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsloginV1alpha::SshPublicKey]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_user_ssh_public_key(name, ssh_public_key_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::OsloginV1alpha::SshPublicKey::Representation
          command.request_object = ssh_public_key_object
          command.response_representation = Google::Apis::OsloginV1alpha::SshPublicKey::Representation
          command.response_class = Google::Apis::OsloginV1alpha::SshPublicKey
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
