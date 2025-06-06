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
    module LoggingV2
      # Cloud Logging API
      #
      # Writes log entries and manages your Cloud Logging configuration.
      #
      # @example
      #    require 'google/apis/logging_v2'
      #
      #    Logging = Google::Apis::LoggingV2 # Alias the module
      #    service = Logging::LoggingService.new
      #
      # @see https://cloud.google.com/logging/docs/
      class LoggingService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://logging.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-logging_v2',
                client_version: Google::Apis::LoggingV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log
        # Router can be configured for Google Cloud projects, folders, organizations,
        # and billing accounts. Once configured for an organization, it applies to all
        # projects and folders in the Google Cloud organization.See Enabling CMEK for
        # Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption)
        # for more information.
        # @param [String] name
        #   Required. The resource for which to retrieve CMEK settings. "projects/[
        #   PROJECT_ID]/cmekSettings" "organizations/[ORGANIZATION_ID]/cmekSettings" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/cmekSettings" "folders/[FOLDER_ID]/
        #   cmekSettings" For example:"organizations/12345/cmekSettings"Note: CMEK for the
        #   Log Router can be configured for Google Cloud projects, folders, organizations,
        #   and billing accounts. Once configured for an organization, it applies to all
        #   projects and folders in the Google Cloud organization.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::CmekSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::CmekSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_billing_account_cmek_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/cmekSettings', options)
          command.response_representation = Google::Apis::LoggingV2::CmekSettings::Representation
          command.response_class = Google::Apis::LoggingV2::CmekSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the settings for the given resource.Note: Settings can be retrieved for
        # Google Cloud projects, folders, organizations, and billing accounts.See View
        # default resource settings for Logging (https://cloud.google.com/logging/docs/
        # default-settings#view-org-settings) for more information.
        # @param [String] name
        #   Required. The resource for which to retrieve settings. "projects/[PROJECT_ID]/
        #   settings" "organizations/[ORGANIZATION_ID]/settings" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/settings" "folders/[FOLDER_ID]/settings" For example:"
        #   organizations/12345/settings"Note: Settings can be retrieved for Google Cloud
        #   projects, folders, organizations, and billing accounts.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Settings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Settings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_billing_account_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/settings', options)
          command.response_representation = Google::Apis::LoggingV2::Settings::Representation
          command.response_class = Google::Apis::LoggingV2::Settings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new exclusion in the _Default sink in a specified parent resource.
        # Only log entries belonging to that resource can be excluded. You can have up
        # to 10 exclusions in a resource.
        # @param [String] parent
        #   Required. The parent resource in which to create the exclusion: "projects/[
        #   PROJECT_ID]" "organizations/[ORGANIZATION_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]" For examples:"projects/my-logging-
        #   project" "organizations/123456789"
        # @param [Google::Apis::LoggingV2::LogExclusion] log_exclusion_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogExclusion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogExclusion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_billing_account_exclusion(parent, log_exclusion_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/exclusions', options)
          command.request_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.request_object = log_exclusion_object
          command.response_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.response_class = Google::Apis::LoggingV2::LogExclusion
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an exclusion in the _Default sink.
        # @param [String] name
        #   Required. The resource name of an existing exclusion to delete: "projects/[
        #   PROJECT_ID]/exclusions/[EXCLUSION_ID]" "organizations/[ORGANIZATION_ID]/
        #   exclusions/[EXCLUSION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[
        #   EXCLUSION_ID]" "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" For example:"
        #   projects/my-project/exclusions/my-exclusion"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_billing_account_exclusion(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the description of an exclusion in the _Default sink.
        # @param [String] name
        #   Required. The resource name of an existing exclusion: "projects/[PROJECT_ID]/
        #   exclusions/[EXCLUSION_ID]" "organizations/[ORGANIZATION_ID]/exclusions/[
        #   EXCLUSION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
        #   "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" For example:"projects/my-
        #   project/exclusions/my-exclusion"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogExclusion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogExclusion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_billing_account_exclusion(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.response_class = Google::Apis::LoggingV2::LogExclusion
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the exclusions on the _Default sink in a parent resource.
        # @param [String] parent
        #   Required. The parent resource whose exclusions are to be listed. "projects/[
        #   PROJECT_ID]" "organizations/[ORGANIZATION_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListExclusionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListExclusionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_billing_account_exclusions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/exclusions', options)
          command.response_representation = Google::Apis::LoggingV2::ListExclusionsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListExclusionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Changes one or more properties of an existing exclusion in the _Default sink.
        # @param [String] name
        #   Required. The resource name of the exclusion to update: "projects/[PROJECT_ID]/
        #   exclusions/[EXCLUSION_ID]" "organizations/[ORGANIZATION_ID]/exclusions/[
        #   EXCLUSION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
        #   "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" For example:"projects/my-
        #   project/exclusions/my-exclusion"
        # @param [Google::Apis::LoggingV2::LogExclusion] log_exclusion_object
        # @param [String] update_mask
        #   Required. A non-empty list of fields to change in the existing exclusion. New
        #   values for the fields are taken from the corresponding fields in the
        #   LogExclusion included in this request. Fields not mentioned in update_mask are
        #   not changed and are ignored in the request.For example, to change the filter
        #   and description of an exclusion, specify an update_mask of "filter,description"
        #   .
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogExclusion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogExclusion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_billing_account_exclusion(name, log_exclusion_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.request_object = log_exclusion_object
          command.response_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.response_class = Google::Apis::LoggingV2::LogExclusion
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # @yieldparam result [Google::Apis::LoggingV2::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_billing_account_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Location::Representation
          command.response_class = Google::Apis::LoggingV2::Location
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
        #   accepts strings like "displayName=tokyo", and is documented in more detail in
        #   AIP-160 (https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of results to return. If not set, the service selects a
        #   default.
        # @param [String] page_token
        #   A page token received from the next_page_token field in the response. Send
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
        # @yieldparam result [Google::Apis::LoggingV2::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_billing_account_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/locations', options)
          command.response_representation = Google::Apis::LoggingV2::ListLocationsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a log bucket that can be used to store log entries. After a bucket has
        # been created, the bucket's location cannot be changed.
        # @param [String] parent
        #   Required. The resource in which to create the log bucket: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" For example:"projects/my-project/
        #   locations/global"
        # @param [Google::Apis::LoggingV2::LogBucket] log_bucket_object
        # @param [String] bucket_id
        #   Required. A client-assigned identifier such as "my-bucket". Identifiers are
        #   limited to 100 characters and can include only letters, digits, underscores,
        #   hyphens, and periods. Bucket identifiers must start with an alphanumeric
        #   character.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogBucket] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogBucket]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_billing_account_location_bucket(parent, log_bucket_object = nil, bucket_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/buckets', options)
          command.request_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.request_object = log_bucket_object
          command.response_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.response_class = Google::Apis::LoggingV2::LogBucket
          command.params['parent'] = parent unless parent.nil?
          command.query['bucketId'] = bucket_id unless bucket_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a log bucket asynchronously that can be used to store log entries.
        # After a bucket has been created, the bucket's location cannot be changed.
        # @param [String] parent
        #   Required. The resource in which to create the log bucket: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" For example:"projects/my-project/
        #   locations/global"
        # @param [Google::Apis::LoggingV2::LogBucket] log_bucket_object
        # @param [String] bucket_id
        #   Required. A client-assigned identifier such as "my-bucket". Identifiers are
        #   limited to 100 characters and can include only letters, digits, underscores,
        #   hyphens, and periods. Bucket identifiers must start with an alphanumeric
        #   character.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_billing_account_location_bucket_async(parent, log_bucket_object = nil, bucket_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/buckets:createAsync', options)
          command.request_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.request_object = log_bucket_object
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['bucketId'] = bucket_id unless bucket_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a log bucket.Changes the bucket's lifecycle_state to the
        # DELETE_REQUESTED state. After 7 days, the bucket will be purged and all log
        # entries in the bucket will be permanently deleted.
        # @param [String] name
        #   Required. The full resource name of the bucket to delete. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/
        #   my-project/locations/global/buckets/my-bucket"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_billing_account_location_bucket(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a log bucket.
        # @param [String] name
        #   Required. The resource name of the bucket: "projects/[PROJECT_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[ORGANIZATION_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[FOLDER_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/my-project/locations/
        #   global/buckets/my-bucket"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogBucket] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogBucket]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_billing_account_location_bucket(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.response_class = Google::Apis::LoggingV2::LogBucket
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists log buckets.
        # @param [String] parent
        #   Required. The parent resource whose buckets are to be listed: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" "organizations/[ORGANIZATION_ID]/
        #   locations/[LOCATION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[
        #   LOCATION_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]" Note: The
        #   locations portion of the resource must be specified, but supplying the
        #   character - in place of LOCATION_ID will return all buckets.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListBucketsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListBucketsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_billing_account_location_buckets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/buckets', options)
          command.response_representation = Google::Apis::LoggingV2::ListBucketsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListBucketsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a log bucket.If the bucket has a lifecycle_state of DELETE_REQUESTED,
        # then FAILED_PRECONDITION will be returned.After a bucket has been created, the
        # bucket's location cannot be changed.
        # @param [String] name
        #   Required. The full resource name of the bucket to update. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/
        #   my-project/locations/global/buckets/my-bucket"
        # @param [Google::Apis::LoggingV2::LogBucket] log_bucket_object
        # @param [String] update_mask
        #   Required. Field mask that specifies the fields in bucket that need an update.
        #   A bucket field will be overwritten if, and only if, it is in the update mask.
        #   name and output only fields cannot be updated.For a detailed FieldMask
        #   definition, see: https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#google.protobuf.FieldMaskFor example: updateMask=
        #   retention_days
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogBucket] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogBucket]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_billing_account_location_bucket(name, log_bucket_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.request_object = log_bucket_object
          command.response_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.response_class = Google::Apis::LoggingV2::LogBucket
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undeletes a log bucket. A bucket that has been deleted can be undeleted within
        # the grace period of 7 days.
        # @param [String] name
        #   Required. The full resource name of the bucket to undelete. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/
        #   my-project/locations/global/buckets/my-bucket"
        # @param [Google::Apis::LoggingV2::UndeleteBucketRequest] undelete_bucket_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_billing_account_location_bucket(name, undelete_bucket_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:undelete', options)
          command.request_representation = Google::Apis::LoggingV2::UndeleteBucketRequest::Representation
          command.request_object = undelete_bucket_request_object
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a log bucket asynchronously.If the bucket has a lifecycle_state of
        # DELETE_REQUESTED, then FAILED_PRECONDITION will be returned.After a bucket has
        # been created, the bucket's location cannot be changed.
        # @param [String] name
        #   Required. The full resource name of the bucket to update. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/
        #   my-project/locations/global/buckets/my-bucket"
        # @param [Google::Apis::LoggingV2::LogBucket] log_bucket_object
        # @param [String] update_mask
        #   Required. Field mask that specifies the fields in bucket that need an update.
        #   A bucket field will be overwritten if, and only if, it is in the update mask.
        #   name and output only fields cannot be updated.For a detailed FieldMask
        #   definition, see: https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#google.protobuf.FieldMaskFor example: updateMask=
        #   retention_days
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_billing_account_location_bucket_async(name, log_bucket_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:updateAsync', options)
          command.request_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.request_object = log_bucket_object
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Asynchronously creates a linked dataset in BigQuery which makes it possible to
        # use BigQuery to read the logs stored in the log bucket. A log bucket may
        # currently only contain one link.
        # @param [String] parent
        #   Required. The full resource name of the bucket to create a link for. "projects/
        #   [PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
        # @param [Google::Apis::LoggingV2::Link] link_object
        # @param [String] link_id
        #   Required. The ID to use for the link. The link_id can have up to 100
        #   characters. A valid link_id must only have alphanumeric characters and
        #   underscores within it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_billing_account_location_bucket_link(parent, link_object = nil, link_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/links', options)
          command.request_representation = Google::Apis::LoggingV2::Link::Representation
          command.request_object = link_object
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['linkId'] = link_id unless link_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a link. This will also delete the corresponding BigQuery linked
        # dataset.
        # @param [String] name
        #   Required. The full resource name of the link to delete. "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[
        #   BUCKET_ID]/links/[LINK_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/
        #   buckets/[BUCKET_ID]/links/[LINK_ID]"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_billing_account_location_bucket_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a link.
        # @param [String] name
        #   Required. The resource name of the link: "projects/[PROJECT_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[
        #   BUCKET_ID]/links/[LINK_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/
        #   buckets/[BUCKET_ID]/links/[LINK_ID]"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Link] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Link]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_billing_account_location_bucket_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Link::Representation
          command.response_class = Google::Apis::LoggingV2::Link
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists links.
        # @param [String] parent
        #   Required. The parent resource whose links are to be listed: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_billing_account_location_bucket_links(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/links', options)
          command.response_representation = Google::Apis::LoggingV2::ListLinksResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a view over log entries in a log bucket. A bucket may contain a
        # maximum of 30 views.
        # @param [String] parent
        #   Required. The bucket in which to create the view `"projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]"` For example:"projects/my-project/
        #   locations/global/buckets/my-bucket"
        # @param [Google::Apis::LoggingV2::LogView] log_view_object
        # @param [String] view_id
        #   Required. A client-assigned identifier such as "my-view". Identifiers are
        #   limited to 100 characters and can include only letters, digits, underscores,
        #   and hyphens.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_billing_account_location_bucket_view(parent, log_view_object = nil, view_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/views', options)
          command.request_representation = Google::Apis::LoggingV2::LogView::Representation
          command.request_object = log_view_object
          command.response_representation = Google::Apis::LoggingV2::LogView::Representation
          command.response_class = Google::Apis::LoggingV2::LogView
          command.params['parent'] = parent unless parent.nil?
          command.query['viewId'] = view_id unless view_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a view on a log bucket. If an UNAVAILABLE error is returned, this
        # indicates that system is not in a state where it can delete the view. If this
        # occurs, please try again in a few minutes.
        # @param [String] name
        #   Required. The full resource name of the view to delete: "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]" For example:"
        #   projects/my-project/locations/global/buckets/my-bucket/views/my-view"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_billing_account_location_bucket_view(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a view on a log bucket.
        # @param [String] name
        #   Required. The resource name of the policy: "projects/[PROJECT_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]" For example:"projects/my-
        #   project/locations/global/buckets/my-bucket/views/my-view"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_billing_account_location_bucket_view(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::LogView::Representation
          command.response_class = Google::Apis::LoggingV2::LogView
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists views on a log bucket.
        # @param [String] parent
        #   Required. The bucket whose views are to be listed: "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request.Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListViewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListViewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_billing_account_location_bucket_views(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/views', options)
          command.response_representation = Google::Apis::LoggingV2::ListViewsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListViewsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a view on a log bucket. This method replaces the value of the filter
        # field from the existing view with the corresponding value from the new view.
        # If an UNAVAILABLE error is returned, this indicates that system is not in a
        # state where it can update the view. If this occurs, please try again in a few
        # minutes.
        # @param [String] name
        #   Required. The full resource name of the view to update "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]" For example:"
        #   projects/my-project/locations/global/buckets/my-bucket/views/my-view"
        # @param [Google::Apis::LoggingV2::LogView] log_view_object
        # @param [String] update_mask
        #   Optional. Field mask that specifies the fields in view that need an update. A
        #   field will be overwritten if, and only if, it is in the update mask. name and
        #   output only fields cannot be updated.For a detailed FieldMask definition, see
        #   https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   google.protobuf.FieldMaskFor example: updateMask=filter
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_billing_account_location_bucket_view(name, log_view_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::LoggingV2::LogView::Representation
          command.request_object = log_view_object
          command.response_representation = Google::Apis::LoggingV2::LogView::Representation
          command.response_class = Google::Apis::LoggingV2::LogView
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the logs in projects, organizations, folders, or billing accounts. Only
        # logs that have entries are listed.
        # @param [String] parent
        #   Required. The resource name to list logs for: projects/[PROJECT_ID]
        #   organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[
        #   FOLDER_ID]
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [Array<String>, String] resource_names
        #   Optional. List of resource names to list logs for: projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[
        #   BUCKET_ID]/views/[VIEW_ID] folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/
        #   [BUCKET_ID]/views/[VIEW_ID]To support legacy queries, it could also be:
        #   projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[
        #   BILLING_ACCOUNT_ID] folders/[FOLDER_ID]The resource name in the parent field
        #   is added to this list.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListLogsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLogsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_billing_account_location_bucket_view_logs(parent, page_size: nil, page_token: nil, resource_names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/logs', options)
          command.response_representation = Google::Apis::LoggingV2::ListLogsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLogsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['resourceNames'] = resource_names unless resource_names.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to Code.CANCELLED.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::LoggingV2::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_billing_account_location_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:cancel', options)
          command.request_representation = Google::Apis::LoggingV2::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
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
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_billing_account_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns UNIMPLEMENTED.
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
        # @yieldparam result [Google::Apis::LoggingV2::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_billing_account_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/operations', options)
          command.response_representation = Google::Apis::LoggingV2::ListOperationsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the RecentQueries that were created by the user making the request.
        # @param [String] parent
        #   Required. The resource to which the listed queries belong. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" "organizations/[ORGANIZATION_ID]/
        #   locations/[LOCATION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[
        #   LOCATION_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]" For example:
        #   projects/my-project/locations/us-central1Note: The location portion of the
        #   resource must be specified, but supplying the character - in place of
        #   LOCATION_ID will return all recent queries.
        # @param [String] filter
        #   Optional. Specifies the type ("Logging" or "OpsAnalytics") of the recent
        #   queries to list. The only valid value for this field is one of the two
        #   allowable type function calls, which are the following: type("Logging") type("
        #   OpsAnalytics")
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListRecentQueriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListRecentQueriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_billing_account_location_recent_queries(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/recentQueries', options)
          command.response_representation = Google::Apis::LoggingV2::ListRecentQueriesResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListRecentQueriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new SavedQuery for the user making the request.
        # @param [String] parent
        #   Required. The parent resource in which to create the saved query: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" "organizations/[ORGANIZATION_ID]/
        #   locations/[LOCATION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[
        #   LOCATION_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]" For example: "
        #   projects/my-project/locations/global" "organizations/123456789/locations/us-
        #   central1"
        # @param [Google::Apis::LoggingV2::SavedQuery] saved_query_object
        # @param [String] saved_query_id
        #   Optional. The ID to use for the saved query, which will become the final
        #   component of the saved query's resource name.If the saved_query_id is not
        #   provided, the system will generate an alphanumeric ID.The saved_query_id is
        #   limited to 100 characters and can include only the following characters: upper
        #   and lower-case alphanumeric characters, underscores, hyphens, periods.First
        #   character has to be alphanumeric.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::SavedQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::SavedQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_billing_account_location_saved_query(parent, saved_query_object = nil, saved_query_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/savedQueries', options)
          command.request_representation = Google::Apis::LoggingV2::SavedQuery::Representation
          command.request_object = saved_query_object
          command.response_representation = Google::Apis::LoggingV2::SavedQuery::Representation
          command.response_class = Google::Apis::LoggingV2::SavedQuery
          command.params['parent'] = parent unless parent.nil?
          command.query['savedQueryId'] = saved_query_id unless saved_query_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing SavedQuery that was created by the user making the request.
        # @param [String] name
        #   Required. The full resource name of the saved query to delete. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/savedQueries/[
        #   QUERY_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]
        #   " For example: "projects/my-project/locations/global/savedQueries/my-saved-
        #   query"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_billing_account_location_saved_query(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all data associated with the requested query.
        # @param [String] name
        #   Required. The resource name of the saved query. "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/savedQueries/[QUERY_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/savedQueries/[
        #   QUERY_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]
        #   " For example: "projects/my-project/locations/global/savedQueries/my-saved-
        #   query"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::SavedQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::SavedQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_billing_account_location_saved_query(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::SavedQuery::Representation
          command.response_class = Google::Apis::LoggingV2::SavedQuery
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the SavedQueries that were created by the user making the request.
        # @param [String] parent
        #   Required. The resource to which the listed queries belong. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" "organizations/[ORGANIZATION_ID]/
        #   locations/[LOCATION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[
        #   LOCATION_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]" For example: "
        #   projects/my-project/locations/us-central1" Note: The locations portion of the
        #   resource must be specified. To get a list of all saved queries, a wildcard
        #   character - can be used for LOCATION_ID, for example: "projects/my-project/
        #   locations/-"
        # @param [String] filter
        #   Optional. Specifies the type ("Logging" or "OpsAnalytics") and the visibility (
        #   PRIVATE or SHARED) of the saved queries to list. If provided, the filter must
        #   contain either the type function or a visibility token, or both. If both are
        #   chosen, they can be placed in any order, but they must be joined by the AND
        #   operator or the empty character.The two supported type function calls are:
        #   type("Logging") type("OpsAnalytics")The two supported visibility tokens are:
        #   visibility = PRIVATE visibility = SHAREDFor example:type("Logging") AND
        #   visibility = PRIVATE visibility=SHARED type("OpsAnalytics") type("OpsAnalytics)
        #   " visibility = PRIVATE visibility = SHARED
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request.Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListSavedQueriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListSavedQueriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_billing_account_location_saved_queries(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/savedQueries', options)
          command.response_representation = Google::Apis::LoggingV2::ListSavedQueriesResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListSavedQueriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing SavedQuery.
        # @param [String] name
        #   Output only. Resource name of the saved query.In the format: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]" For a list of
        #   supported locations, see Supported Regions (https://cloud.google.com/logging/
        #   docs/region-support#bucket-regions)After the saved query is created, the
        #   location cannot be changed.If the user doesn't provide a QUERY_ID, the system
        #   will generate an alphanumeric ID.
        # @param [Google::Apis::LoggingV2::SavedQuery] saved_query_object
        # @param [String] update_mask
        #   Required. A non-empty list of fields to change in the existing saved query.
        #   Fields are relative to the saved_query and new values for the fields are taken
        #   from the corresponding fields in the SavedQuery included in this request.
        #   Fields not mentioned in update_mask are not changed and are ignored in the
        #   request.To update all mutable fields, specify an update_mask of *.For example,
        #   to change the description and query filter text of a saved query, specify an
        #   update_mask of "description, query.filter".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::SavedQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::SavedQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_billing_account_location_saved_query(name, saved_query_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::LoggingV2::SavedQuery::Representation
          command.request_object = saved_query_object
          command.response_representation = Google::Apis::LoggingV2::SavedQuery::Representation
          command.response_class = Google::Apis::LoggingV2::SavedQuery
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes all the log entries in a log for the global _Default Log Bucket. The
        # log reappears if it receives new entries. Log entries written shortly before
        # the delete operation might not be deleted. Entries received after the delete
        # operation with a timestamp before the operation will be deleted.
        # @param [String] log_name
        #   Required. The resource name of the log to delete: projects/[PROJECT_ID]/logs/[
        #   LOG_ID] organizations/[ORGANIZATION_ID]/logs/[LOG_ID] billingAccounts/[
        #   BILLING_ACCOUNT_ID]/logs/[LOG_ID] folders/[FOLDER_ID]/logs/[LOG_ID][LOG_ID]
        #   must be URL-encoded. For example, "projects/my-project-id/logs/syslog", "
        #   organizations/123/logs/cloudaudit.googleapis.com%2Factivity".For more
        #   information about log names, see LogEntry.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_billing_account_log(log_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+logName}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['logName'] = log_name unless log_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the logs in projects, organizations, folders, or billing accounts. Only
        # logs that have entries are listed.
        # @param [String] parent
        #   Required. The resource name to list logs for: projects/[PROJECT_ID]
        #   organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[
        #   FOLDER_ID]
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [Array<String>, String] resource_names
        #   Optional. List of resource names to list logs for: projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[
        #   BUCKET_ID]/views/[VIEW_ID] folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/
        #   [BUCKET_ID]/views/[VIEW_ID]To support legacy queries, it could also be:
        #   projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[
        #   BILLING_ACCOUNT_ID] folders/[FOLDER_ID]The resource name in the parent field
        #   is added to this list.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListLogsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLogsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_billing_account_logs(parent, page_size: nil, page_token: nil, resource_names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/logs', options)
          command.response_representation = Google::Apis::LoggingV2::ListLogsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLogsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['resourceNames'] = resource_names unless resource_names.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a sink that exports specified log entries to a destination. The export
        # begins upon ingress, unless the sink's writer_identity is not permitted to
        # write to the destination. A sink can export log entries only from the resource
        # owning the sink.
        # @param [String] parent
        #   Required. The resource in which to create the sink: "projects/[PROJECT_ID]" "
        #   organizations/[ORGANIZATION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]" "
        #   folders/[FOLDER_ID]" For examples:"projects/my-project" "organizations/
        #   123456789"
        # @param [Google::Apis::LoggingV2::LogSink] log_sink_object
        # @param [String] custom_writer_identity
        #   Optional. The service account provided by the caller that will be used to
        #   write the log entries. The format must be serviceAccount:some@email. This
        #   field can only be specified when you are routing logs to a log bucket that is
        #   in a different project than the sink. When not specified, a Logging service
        #   account will automatically be generated.
        # @param [Boolean] unique_writer_identity
        #   Optional. Determines the kind of IAM identity returned as writer_identity in
        #   the new sink. If this value is omitted or set to false, and if the sink's
        #   parent is a project, then the value returned as writer_identity is the same
        #   group or service account used by Cloud Logging before the addition of writer
        #   identities to this API. The sink's destination must be in the same project as
        #   the sink itself.If this field is set to true, or if the sink is owned by a non-
        #   project resource such as an organization, then the value of writer_identity
        #   will be a service agent (https://cloud.google.com/iam/docs/service-account-
        #   types#service-agents) used by the sinks with the same parent. For more
        #   information, see writer_identity in LogSink.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_billing_account_sink(parent, log_sink_object = nil, custom_writer_identity: nil, unique_writer_identity: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/sinks', options)
          command.request_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.request_object = log_sink_object
          command.response_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.response_class = Google::Apis::LoggingV2::LogSink
          command.params['parent'] = parent unless parent.nil?
          command.query['customWriterIdentity'] = custom_writer_identity unless custom_writer_identity.nil?
          command.query['uniqueWriterIdentity'] = unique_writer_identity unless unique_writer_identity.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a sink. If the sink has a unique writer_identity, then that service
        # account is also deleted.
        # @param [String] sink_name
        #   Required. The full resource name of the sink to delete, including the parent
        #   resource and the sink identifier: "projects/[PROJECT_ID]/sinks/[SINK_ID]" "
        #   organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/sinks/[SINK_ID]" "folders/[FOLDER_ID]/sinks/[SINK_ID]" For
        #   example:"projects/my-project/sinks/my-sink"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_billing_account_sink(sink_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+sinkName}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['sinkName'] = sink_name unless sink_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a sink.
        # @param [String] sink_name
        #   Required. The resource name of the sink: "projects/[PROJECT_ID]/sinks/[SINK_ID]
        #   " "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/sinks/[SINK_ID]" "folders/[FOLDER_ID]/sinks/[SINK_ID]" For
        #   example:"projects/my-project/sinks/my-sink"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_billing_account_sink(sink_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+sinkName}', options)
          command.response_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.response_class = Google::Apis::LoggingV2::LogSink
          command.params['sinkName'] = sink_name unless sink_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists sinks.
        # @param [String] parent
        #   Required. The parent resource whose sinks are to be listed: "projects/[
        #   PROJECT_ID]" "organizations/[ORGANIZATION_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
        # @param [String] filter
        #   Optional. A filter expression to constrain the sinks returned. Today, this
        #   only supports the following strings: '' 'in_scope("ALL")', 'in_scope("ANCESTOR"
        #   )', 'in_scope("DEFAULT")'.Description of scopes below. ALL: Includes all of
        #   the sinks which can be returned in any other scope. ANCESTOR: Includes
        #   intercepting sinks owned by ancestor resources. DEFAULT: Includes sinks owned
        #   by parent.When the empty string is provided, then the filter 'in_scope("
        #   DEFAULT")' is applied.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListSinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListSinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_billing_account_sinks(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/sinks', options)
          command.response_representation = Google::Apis::LoggingV2::ListSinksResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListSinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a sink. This method replaces the values of the destination and filter
        # fields of the existing sink with the corresponding values from the new sink.
        # The updated sink might also have a new writer_identity; see the
        # unique_writer_identity field.
        # @param [String] sink_name
        #   Required. The full resource name of the sink to update, including the parent
        #   resource and the sink identifier: "projects/[PROJECT_ID]/sinks/[SINK_ID]" "
        #   organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/sinks/[SINK_ID]" "folders/[FOLDER_ID]/sinks/[SINK_ID]" For
        #   example:"projects/my-project/sinks/my-sink"
        # @param [Google::Apis::LoggingV2::LogSink] log_sink_object
        # @param [String] custom_writer_identity
        #   Optional. The service account provided by the caller that will be used to
        #   write the log entries. The format must be serviceAccount:some@email. This
        #   field can only be specified when you are routing logs to a log bucket that is
        #   in a different project than the sink. When not specified, a Logging service
        #   account will automatically be generated.
        # @param [Boolean] unique_writer_identity
        #   Optional. See sinks.create for a description of this field. When updating a
        #   sink, the effect of this field on the value of writer_identity in the updated
        #   sink depends on both the old and new values of this field: If the old and new
        #   values of this field are both false or both true, then there is no change to
        #   the sink's writer_identity. If the old value is false and the new value is
        #   true, then writer_identity is changed to a service agent (https://cloud.google.
        #   com/iam/docs/service-account-types#service-agents) owned by Cloud Logging. It
        #   is an error if the old value is true and the new value is set to false or
        #   defaulted to false.
        # @param [String] update_mask
        #   Optional. Field mask that specifies the fields in sink that need an update. A
        #   sink field will be overwritten if, and only if, it is in the update mask. name
        #   and output only fields cannot be updated.An empty updateMask is temporarily
        #   treated as using the following mask for backwards compatibility purposes:
        #   destination,filter,includeChildrenAt some point in the future, behavior will
        #   be removed and specifying an empty updateMask will be an error.For a detailed
        #   FieldMask definition, see https://developers.google.com/protocol-buffers/docs/
        #   reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=
        #   filter
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_billing_account_sink(sink_name, log_sink_object = nil, custom_writer_identity: nil, unique_writer_identity: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+sinkName}', options)
          command.request_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.request_object = log_sink_object
          command.response_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.response_class = Google::Apis::LoggingV2::LogSink
          command.params['sinkName'] = sink_name unless sink_name.nil?
          command.query['customWriterIdentity'] = custom_writer_identity unless custom_writer_identity.nil?
          command.query['uniqueWriterIdentity'] = unique_writer_identity unless unique_writer_identity.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a sink. This method replaces the values of the destination and filter
        # fields of the existing sink with the corresponding values from the new sink.
        # The updated sink might also have a new writer_identity; see the
        # unique_writer_identity field.
        # @param [String] sink_name
        #   Required. The full resource name of the sink to update, including the parent
        #   resource and the sink identifier: "projects/[PROJECT_ID]/sinks/[SINK_ID]" "
        #   organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/sinks/[SINK_ID]" "folders/[FOLDER_ID]/sinks/[SINK_ID]" For
        #   example:"projects/my-project/sinks/my-sink"
        # @param [Google::Apis::LoggingV2::LogSink] log_sink_object
        # @param [String] custom_writer_identity
        #   Optional. The service account provided by the caller that will be used to
        #   write the log entries. The format must be serviceAccount:some@email. This
        #   field can only be specified when you are routing logs to a log bucket that is
        #   in a different project than the sink. When not specified, a Logging service
        #   account will automatically be generated.
        # @param [Boolean] unique_writer_identity
        #   Optional. See sinks.create for a description of this field. When updating a
        #   sink, the effect of this field on the value of writer_identity in the updated
        #   sink depends on both the old and new values of this field: If the old and new
        #   values of this field are both false or both true, then there is no change to
        #   the sink's writer_identity. If the old value is false and the new value is
        #   true, then writer_identity is changed to a service agent (https://cloud.google.
        #   com/iam/docs/service-account-types#service-agents) owned by Cloud Logging. It
        #   is an error if the old value is true and the new value is set to false or
        #   defaulted to false.
        # @param [String] update_mask
        #   Optional. Field mask that specifies the fields in sink that need an update. A
        #   sink field will be overwritten if, and only if, it is in the update mask. name
        #   and output only fields cannot be updated.An empty updateMask is temporarily
        #   treated as using the following mask for backwards compatibility purposes:
        #   destination,filter,includeChildrenAt some point in the future, behavior will
        #   be removed and specifying an empty updateMask will be an error.For a detailed
        #   FieldMask definition, see https://developers.google.com/protocol-buffers/docs/
        #   reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=
        #   filter
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_billing_account_sink(sink_name, log_sink_object = nil, custom_writer_identity: nil, unique_writer_identity: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v2/{+sinkName}', options)
          command.request_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.request_object = log_sink_object
          command.response_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.response_class = Google::Apis::LoggingV2::LogSink
          command.params['sinkName'] = sink_name unless sink_name.nil?
          command.query['customWriterIdentity'] = custom_writer_identity unless custom_writer_identity.nil?
          command.query['uniqueWriterIdentity'] = unique_writer_identity unless unique_writer_identity.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Copies a set of log entries from a log bucket to a Cloud Storage bucket.
        # @param [Google::Apis::LoggingV2::CopyLogEntriesRequest] copy_log_entries_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def copy_entry_log_entries(copy_log_entries_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/entries:copy', options)
          command.request_representation = Google::Apis::LoggingV2::CopyLogEntriesRequest::Representation
          command.request_object = copy_log_entries_request_object
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists log entries. Use this method to retrieve log entries that originated
        # from a project/folder/organization/billing account. For ways to export log
        # entries, see Exporting Logs (https://cloud.google.com/logging/docs/export).
        # @param [Google::Apis::LoggingV2::ListLogEntriesRequest] list_log_entries_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListLogEntriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLogEntriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_entry_log_entries(list_log_entries_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/entries:list', options)
          command.request_representation = Google::Apis::LoggingV2::ListLogEntriesRequest::Representation
          command.request_object = list_log_entries_request_object
          command.response_representation = Google::Apis::LoggingV2::ListLogEntriesResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLogEntriesResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Streaming read of log entries as they are received. Until the stream is
        # terminated, it will continue reading logs.
        # @param [Google::Apis::LoggingV2::TailLogEntriesRequest] tail_log_entries_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::TailLogEntriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::TailLogEntriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def tail_entry_log_entries(tail_log_entries_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/entries:tail', options)
          command.request_representation = Google::Apis::LoggingV2::TailLogEntriesRequest::Representation
          command.request_object = tail_log_entries_request_object
          command.response_representation = Google::Apis::LoggingV2::TailLogEntriesResponse::Representation
          command.response_class = Google::Apis::LoggingV2::TailLogEntriesResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes log entries to Logging. This API method is the only way to send log
        # entries to Logging. This method is used, directly or indirectly, by the
        # Logging agent (fluentd) and all logging libraries configured to use Logging. A
        # single request may contain log entries for a maximum of 1000 different
        # resource names (projects, organizations, billing accounts or folders), where
        # the resource name for a log entry is determined from its logName field.
        # @param [Google::Apis::LoggingV2::WriteLogEntriesRequest] write_log_entries_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::WriteLogEntriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::WriteLogEntriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def write_entry_log_entries(write_log_entries_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/entries:write', options)
          command.request_representation = Google::Apis::LoggingV2::WriteLogEntriesRequest::Representation
          command.request_object = write_log_entries_request_object
          command.response_representation = Google::Apis::LoggingV2::WriteLogEntriesResponse::Representation
          command.response_class = Google::Apis::LoggingV2::WriteLogEntriesResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new exclusion in the _Default sink in a specified parent resource.
        # Only log entries belonging to that resource can be excluded. You can have up
        # to 10 exclusions in a resource.
        # @param [String] parent
        #   Required. The parent resource in which to create the exclusion: "projects/[
        #   PROJECT_ID]" "organizations/[ORGANIZATION_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]" For examples:"projects/my-logging-
        #   project" "organizations/123456789"
        # @param [Google::Apis::LoggingV2::LogExclusion] log_exclusion_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogExclusion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogExclusion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_exclusion(parent, log_exclusion_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/exclusions', options)
          command.request_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.request_object = log_exclusion_object
          command.response_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.response_class = Google::Apis::LoggingV2::LogExclusion
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an exclusion in the _Default sink.
        # @param [String] name
        #   Required. The resource name of an existing exclusion to delete: "projects/[
        #   PROJECT_ID]/exclusions/[EXCLUSION_ID]" "organizations/[ORGANIZATION_ID]/
        #   exclusions/[EXCLUSION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[
        #   EXCLUSION_ID]" "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" For example:"
        #   projects/my-project/exclusions/my-exclusion"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_exclusion(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the description of an exclusion in the _Default sink.
        # @param [String] name
        #   Required. The resource name of an existing exclusion: "projects/[PROJECT_ID]/
        #   exclusions/[EXCLUSION_ID]" "organizations/[ORGANIZATION_ID]/exclusions/[
        #   EXCLUSION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
        #   "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" For example:"projects/my-
        #   project/exclusions/my-exclusion"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogExclusion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogExclusion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_exclusion(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.response_class = Google::Apis::LoggingV2::LogExclusion
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the exclusions on the _Default sink in a parent resource.
        # @param [String] parent
        #   Required. The parent resource whose exclusions are to be listed. "projects/[
        #   PROJECT_ID]" "organizations/[ORGANIZATION_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListExclusionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListExclusionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_exclusions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/exclusions', options)
          command.response_representation = Google::Apis::LoggingV2::ListExclusionsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListExclusionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Changes one or more properties of an existing exclusion in the _Default sink.
        # @param [String] name
        #   Required. The resource name of the exclusion to update: "projects/[PROJECT_ID]/
        #   exclusions/[EXCLUSION_ID]" "organizations/[ORGANIZATION_ID]/exclusions/[
        #   EXCLUSION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
        #   "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" For example:"projects/my-
        #   project/exclusions/my-exclusion"
        # @param [Google::Apis::LoggingV2::LogExclusion] log_exclusion_object
        # @param [String] update_mask
        #   Required. A non-empty list of fields to change in the existing exclusion. New
        #   values for the fields are taken from the corresponding fields in the
        #   LogExclusion included in this request. Fields not mentioned in update_mask are
        #   not changed and are ignored in the request.For example, to change the filter
        #   and description of an exclusion, specify an update_mask of "filter,description"
        #   .
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogExclusion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogExclusion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_exclusion(name, log_exclusion_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.request_object = log_exclusion_object
          command.response_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.response_class = Google::Apis::LoggingV2::LogExclusion
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log
        # Router can be configured for Google Cloud projects, folders, organizations,
        # and billing accounts. Once configured for an organization, it applies to all
        # projects and folders in the Google Cloud organization.See Enabling CMEK for
        # Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption)
        # for more information.
        # @param [String] name
        #   Required. The resource for which to retrieve CMEK settings. "projects/[
        #   PROJECT_ID]/cmekSettings" "organizations/[ORGANIZATION_ID]/cmekSettings" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/cmekSettings" "folders/[FOLDER_ID]/
        #   cmekSettings" For example:"organizations/12345/cmekSettings"Note: CMEK for the
        #   Log Router can be configured for Google Cloud projects, folders, organizations,
        #   and billing accounts. Once configured for an organization, it applies to all
        #   projects and folders in the Google Cloud organization.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::CmekSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::CmekSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_cmek_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/cmekSettings', options)
          command.response_representation = Google::Apis::LoggingV2::CmekSettings::Representation
          command.response_class = Google::Apis::LoggingV2::CmekSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the settings for the given resource.Note: Settings can be retrieved for
        # Google Cloud projects, folders, organizations, and billing accounts.See View
        # default resource settings for Logging (https://cloud.google.com/logging/docs/
        # default-settings#view-org-settings) for more information.
        # @param [String] name
        #   Required. The resource for which to retrieve settings. "projects/[PROJECT_ID]/
        #   settings" "organizations/[ORGANIZATION_ID]/settings" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/settings" "folders/[FOLDER_ID]/settings" For example:"
        #   organizations/12345/settings"Note: Settings can be retrieved for Google Cloud
        #   projects, folders, organizations, and billing accounts.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Settings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Settings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/settings', options)
          command.response_representation = Google::Apis::LoggingV2::Settings::Representation
          command.response_class = Google::Apis::LoggingV2::Settings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the settings for the given resource. This method applies to all
        # feature configurations for organization and folders.UpdateSettings fails when
        # any of the following are true: The value of storage_location either isn't
        # supported by Logging or violates the location OrgPolicy. The
        # default_sink_config field is set, but it has an unspecified filter write mode.
        # The value of kms_key_name is invalid. The associated service account doesn't
        # have the required roles/cloudkms.cryptoKeyEncrypterDecrypter role assigned for
        # the key. Access to the key is disabled.See Configure default settings for
        # organizations and folders (https://cloud.google.com/logging/docs/default-
        # settings) for more information.
        # @param [String] name
        #   Required. The resource name for the settings to update. "organizations/[
        #   ORGANIZATION_ID]/settings" "folders/[FOLDER_ID]/settings" For example:"
        #   organizations/12345/settings"
        # @param [Google::Apis::LoggingV2::Settings] settings_object
        # @param [String] update_mask
        #   Optional. Field mask identifying which fields from settings should be updated.
        #   A field will be overwritten if and only if it is in the update mask. Output
        #   only fields cannot be updated.See FieldMask for more information.For example: "
        #   updateMask=kmsKeyName"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Settings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Settings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_folder_settings(name, settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}/settings', options)
          command.request_representation = Google::Apis::LoggingV2::Settings::Representation
          command.request_object = settings_object
          command.response_representation = Google::Apis::LoggingV2::Settings::Representation
          command.response_class = Google::Apis::LoggingV2::Settings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new exclusion in the _Default sink in a specified parent resource.
        # Only log entries belonging to that resource can be excluded. You can have up
        # to 10 exclusions in a resource.
        # @param [String] parent
        #   Required. The parent resource in which to create the exclusion: "projects/[
        #   PROJECT_ID]" "organizations/[ORGANIZATION_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]" For examples:"projects/my-logging-
        #   project" "organizations/123456789"
        # @param [Google::Apis::LoggingV2::LogExclusion] log_exclusion_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogExclusion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogExclusion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_folder_exclusion(parent, log_exclusion_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/exclusions', options)
          command.request_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.request_object = log_exclusion_object
          command.response_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.response_class = Google::Apis::LoggingV2::LogExclusion
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an exclusion in the _Default sink.
        # @param [String] name
        #   Required. The resource name of an existing exclusion to delete: "projects/[
        #   PROJECT_ID]/exclusions/[EXCLUSION_ID]" "organizations/[ORGANIZATION_ID]/
        #   exclusions/[EXCLUSION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[
        #   EXCLUSION_ID]" "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" For example:"
        #   projects/my-project/exclusions/my-exclusion"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_folder_exclusion(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the description of an exclusion in the _Default sink.
        # @param [String] name
        #   Required. The resource name of an existing exclusion: "projects/[PROJECT_ID]/
        #   exclusions/[EXCLUSION_ID]" "organizations/[ORGANIZATION_ID]/exclusions/[
        #   EXCLUSION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
        #   "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" For example:"projects/my-
        #   project/exclusions/my-exclusion"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogExclusion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogExclusion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_exclusion(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.response_class = Google::Apis::LoggingV2::LogExclusion
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the exclusions on the _Default sink in a parent resource.
        # @param [String] parent
        #   Required. The parent resource whose exclusions are to be listed. "projects/[
        #   PROJECT_ID]" "organizations/[ORGANIZATION_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListExclusionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListExclusionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_exclusions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/exclusions', options)
          command.response_representation = Google::Apis::LoggingV2::ListExclusionsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListExclusionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Changes one or more properties of an existing exclusion in the _Default sink.
        # @param [String] name
        #   Required. The resource name of the exclusion to update: "projects/[PROJECT_ID]/
        #   exclusions/[EXCLUSION_ID]" "organizations/[ORGANIZATION_ID]/exclusions/[
        #   EXCLUSION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
        #   "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" For example:"projects/my-
        #   project/exclusions/my-exclusion"
        # @param [Google::Apis::LoggingV2::LogExclusion] log_exclusion_object
        # @param [String] update_mask
        #   Required. A non-empty list of fields to change in the existing exclusion. New
        #   values for the fields are taken from the corresponding fields in the
        #   LogExclusion included in this request. Fields not mentioned in update_mask are
        #   not changed and are ignored in the request.For example, to change the filter
        #   and description of an exclusion, specify an update_mask of "filter,description"
        #   .
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogExclusion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogExclusion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_folder_exclusion(name, log_exclusion_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.request_object = log_exclusion_object
          command.response_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.response_class = Google::Apis::LoggingV2::LogExclusion
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # @yieldparam result [Google::Apis::LoggingV2::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Location::Representation
          command.response_class = Google::Apis::LoggingV2::Location
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
        #   accepts strings like "displayName=tokyo", and is documented in more detail in
        #   AIP-160 (https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of results to return. If not set, the service selects a
        #   default.
        # @param [String] page_token
        #   A page token received from the next_page_token field in the response. Send
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
        # @yieldparam result [Google::Apis::LoggingV2::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/locations', options)
          command.response_representation = Google::Apis::LoggingV2::ListLocationsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a log bucket that can be used to store log entries. After a bucket has
        # been created, the bucket's location cannot be changed.
        # @param [String] parent
        #   Required. The resource in which to create the log bucket: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" For example:"projects/my-project/
        #   locations/global"
        # @param [Google::Apis::LoggingV2::LogBucket] log_bucket_object
        # @param [String] bucket_id
        #   Required. A client-assigned identifier such as "my-bucket". Identifiers are
        #   limited to 100 characters and can include only letters, digits, underscores,
        #   hyphens, and periods. Bucket identifiers must start with an alphanumeric
        #   character.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogBucket] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogBucket]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_folder_location_bucket(parent, log_bucket_object = nil, bucket_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/buckets', options)
          command.request_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.request_object = log_bucket_object
          command.response_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.response_class = Google::Apis::LoggingV2::LogBucket
          command.params['parent'] = parent unless parent.nil?
          command.query['bucketId'] = bucket_id unless bucket_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a log bucket asynchronously that can be used to store log entries.
        # After a bucket has been created, the bucket's location cannot be changed.
        # @param [String] parent
        #   Required. The resource in which to create the log bucket: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" For example:"projects/my-project/
        #   locations/global"
        # @param [Google::Apis::LoggingV2::LogBucket] log_bucket_object
        # @param [String] bucket_id
        #   Required. A client-assigned identifier such as "my-bucket". Identifiers are
        #   limited to 100 characters and can include only letters, digits, underscores,
        #   hyphens, and periods. Bucket identifiers must start with an alphanumeric
        #   character.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_folder_location_bucket_async(parent, log_bucket_object = nil, bucket_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/buckets:createAsync', options)
          command.request_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.request_object = log_bucket_object
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['bucketId'] = bucket_id unless bucket_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a log bucket.Changes the bucket's lifecycle_state to the
        # DELETE_REQUESTED state. After 7 days, the bucket will be purged and all log
        # entries in the bucket will be permanently deleted.
        # @param [String] name
        #   Required. The full resource name of the bucket to delete. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/
        #   my-project/locations/global/buckets/my-bucket"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_folder_location_bucket(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a log bucket.
        # @param [String] name
        #   Required. The resource name of the bucket: "projects/[PROJECT_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[ORGANIZATION_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[FOLDER_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/my-project/locations/
        #   global/buckets/my-bucket"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogBucket] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogBucket]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_location_bucket(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.response_class = Google::Apis::LoggingV2::LogBucket
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists log buckets.
        # @param [String] parent
        #   Required. The parent resource whose buckets are to be listed: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" "organizations/[ORGANIZATION_ID]/
        #   locations/[LOCATION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[
        #   LOCATION_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]" Note: The
        #   locations portion of the resource must be specified, but supplying the
        #   character - in place of LOCATION_ID will return all buckets.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListBucketsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListBucketsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_location_buckets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/buckets', options)
          command.response_representation = Google::Apis::LoggingV2::ListBucketsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListBucketsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a log bucket.If the bucket has a lifecycle_state of DELETE_REQUESTED,
        # then FAILED_PRECONDITION will be returned.After a bucket has been created, the
        # bucket's location cannot be changed.
        # @param [String] name
        #   Required. The full resource name of the bucket to update. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/
        #   my-project/locations/global/buckets/my-bucket"
        # @param [Google::Apis::LoggingV2::LogBucket] log_bucket_object
        # @param [String] update_mask
        #   Required. Field mask that specifies the fields in bucket that need an update.
        #   A bucket field will be overwritten if, and only if, it is in the update mask.
        #   name and output only fields cannot be updated.For a detailed FieldMask
        #   definition, see: https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#google.protobuf.FieldMaskFor example: updateMask=
        #   retention_days
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogBucket] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogBucket]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_folder_location_bucket(name, log_bucket_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.request_object = log_bucket_object
          command.response_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.response_class = Google::Apis::LoggingV2::LogBucket
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undeletes a log bucket. A bucket that has been deleted can be undeleted within
        # the grace period of 7 days.
        # @param [String] name
        #   Required. The full resource name of the bucket to undelete. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/
        #   my-project/locations/global/buckets/my-bucket"
        # @param [Google::Apis::LoggingV2::UndeleteBucketRequest] undelete_bucket_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_folder_location_bucket(name, undelete_bucket_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:undelete', options)
          command.request_representation = Google::Apis::LoggingV2::UndeleteBucketRequest::Representation
          command.request_object = undelete_bucket_request_object
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a log bucket asynchronously.If the bucket has a lifecycle_state of
        # DELETE_REQUESTED, then FAILED_PRECONDITION will be returned.After a bucket has
        # been created, the bucket's location cannot be changed.
        # @param [String] name
        #   Required. The full resource name of the bucket to update. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/
        #   my-project/locations/global/buckets/my-bucket"
        # @param [Google::Apis::LoggingV2::LogBucket] log_bucket_object
        # @param [String] update_mask
        #   Required. Field mask that specifies the fields in bucket that need an update.
        #   A bucket field will be overwritten if, and only if, it is in the update mask.
        #   name and output only fields cannot be updated.For a detailed FieldMask
        #   definition, see: https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#google.protobuf.FieldMaskFor example: updateMask=
        #   retention_days
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_folder_location_bucket_async(name, log_bucket_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:updateAsync', options)
          command.request_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.request_object = log_bucket_object
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Asynchronously creates a linked dataset in BigQuery which makes it possible to
        # use BigQuery to read the logs stored in the log bucket. A log bucket may
        # currently only contain one link.
        # @param [String] parent
        #   Required. The full resource name of the bucket to create a link for. "projects/
        #   [PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
        # @param [Google::Apis::LoggingV2::Link] link_object
        # @param [String] link_id
        #   Required. The ID to use for the link. The link_id can have up to 100
        #   characters. A valid link_id must only have alphanumeric characters and
        #   underscores within it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_folder_location_bucket_link(parent, link_object = nil, link_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/links', options)
          command.request_representation = Google::Apis::LoggingV2::Link::Representation
          command.request_object = link_object
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['linkId'] = link_id unless link_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a link. This will also delete the corresponding BigQuery linked
        # dataset.
        # @param [String] name
        #   Required. The full resource name of the link to delete. "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[
        #   BUCKET_ID]/links/[LINK_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/
        #   buckets/[BUCKET_ID]/links/[LINK_ID]"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_folder_location_bucket_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a link.
        # @param [String] name
        #   Required. The resource name of the link: "projects/[PROJECT_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[
        #   BUCKET_ID]/links/[LINK_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/
        #   buckets/[BUCKET_ID]/links/[LINK_ID]"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Link] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Link]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_location_bucket_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Link::Representation
          command.response_class = Google::Apis::LoggingV2::Link
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists links.
        # @param [String] parent
        #   Required. The parent resource whose links are to be listed: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_location_bucket_links(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/links', options)
          command.response_representation = Google::Apis::LoggingV2::ListLinksResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a view over log entries in a log bucket. A bucket may contain a
        # maximum of 30 views.
        # @param [String] parent
        #   Required. The bucket in which to create the view `"projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]"` For example:"projects/my-project/
        #   locations/global/buckets/my-bucket"
        # @param [Google::Apis::LoggingV2::LogView] log_view_object
        # @param [String] view_id
        #   Required. A client-assigned identifier such as "my-view". Identifiers are
        #   limited to 100 characters and can include only letters, digits, underscores,
        #   and hyphens.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_folder_location_bucket_view(parent, log_view_object = nil, view_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/views', options)
          command.request_representation = Google::Apis::LoggingV2::LogView::Representation
          command.request_object = log_view_object
          command.response_representation = Google::Apis::LoggingV2::LogView::Representation
          command.response_class = Google::Apis::LoggingV2::LogView
          command.params['parent'] = parent unless parent.nil?
          command.query['viewId'] = view_id unless view_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a view on a log bucket. If an UNAVAILABLE error is returned, this
        # indicates that system is not in a state where it can delete the view. If this
        # occurs, please try again in a few minutes.
        # @param [String] name
        #   Required. The full resource name of the view to delete: "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]" For example:"
        #   projects/my-project/locations/global/buckets/my-bucket/views/my-view"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_folder_location_bucket_view(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a view on a log bucket.
        # @param [String] name
        #   Required. The resource name of the policy: "projects/[PROJECT_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]" For example:"projects/my-
        #   project/locations/global/buckets/my-bucket/views/my-view"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_location_bucket_view(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::LogView::Representation
          command.response_class = Google::Apis::LoggingV2::LogView
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::LoggingV2::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_location_bucket_view_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::LoggingV2::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::LoggingV2::Policy::Representation
          command.response_class = Google::Apis::LoggingV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists views on a log bucket.
        # @param [String] parent
        #   Required. The bucket whose views are to be listed: "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request.Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListViewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListViewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_location_bucket_views(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/views', options)
          command.response_representation = Google::Apis::LoggingV2::ListViewsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListViewsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a view on a log bucket. This method replaces the value of the filter
        # field from the existing view with the corresponding value from the new view.
        # If an UNAVAILABLE error is returned, this indicates that system is not in a
        # state where it can update the view. If this occurs, please try again in a few
        # minutes.
        # @param [String] name
        #   Required. The full resource name of the view to update "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]" For example:"
        #   projects/my-project/locations/global/buckets/my-bucket/views/my-view"
        # @param [Google::Apis::LoggingV2::LogView] log_view_object
        # @param [String] update_mask
        #   Optional. Field mask that specifies the fields in view that need an update. A
        #   field will be overwritten if, and only if, it is in the update mask. name and
        #   output only fields cannot be updated.For a detailed FieldMask definition, see
        #   https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   google.protobuf.FieldMaskFor example: updateMask=filter
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_folder_location_bucket_view(name, log_view_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::LoggingV2::LogView::Representation
          command.request_object = log_view_object
          command.response_representation = Google::Apis::LoggingV2::LogView::Representation
          command.response_class = Google::Apis::LoggingV2::LogView
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED
        # errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::LoggingV2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_folder_location_bucket_view_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::LoggingV2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::LoggingV2::Policy::Representation
          command.response_class = Google::Apis::LoggingV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a
        # NOT_FOUND error.Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See
        #   Resource names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::LoggingV2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_folder_location_bucket_view_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::LoggingV2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::LoggingV2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the logs in projects, organizations, folders, or billing accounts. Only
        # logs that have entries are listed.
        # @param [String] parent
        #   Required. The resource name to list logs for: projects/[PROJECT_ID]
        #   organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[
        #   FOLDER_ID]
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [Array<String>, String] resource_names
        #   Optional. List of resource names to list logs for: projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[
        #   BUCKET_ID]/views/[VIEW_ID] folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/
        #   [BUCKET_ID]/views/[VIEW_ID]To support legacy queries, it could also be:
        #   projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[
        #   BILLING_ACCOUNT_ID] folders/[FOLDER_ID]The resource name in the parent field
        #   is added to this list.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListLogsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLogsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_location_bucket_view_logs(parent, page_size: nil, page_token: nil, resource_names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/logs', options)
          command.response_representation = Google::Apis::LoggingV2::ListLogsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLogsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['resourceNames'] = resource_names unless resource_names.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a log scope.
        # @param [String] parent
        #   Required. The parent project in which to create the log scope "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" For example:"projects/my-project/
        #   locations/global"
        # @param [Google::Apis::LoggingV2::LogScope] log_scope_object
        # @param [String] log_scope_id
        #   Required. A client-assigned identifier such as "log-scope". Identifiers are
        #   limited to 100 characters and can include only letters, digits, underscores,
        #   hyphens, and periods. First character has to be alphanumeric.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogScope] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogScope]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_folder_location_log_scope(parent, log_scope_object = nil, log_scope_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/logScopes', options)
          command.request_representation = Google::Apis::LoggingV2::LogScope::Representation
          command.request_object = log_scope_object
          command.response_representation = Google::Apis::LoggingV2::LogScope::Representation
          command.response_class = Google::Apis::LoggingV2::LogScope
          command.params['parent'] = parent unless parent.nil?
          command.query['logScopeId'] = log_scope_id unless log_scope_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a log scope.
        # @param [String] name
        #   Required. The resource name of the log scope to delete: "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/logScopes/[LOG_SCOPE_ID]" For example:"projects/my-
        #   project/locations/global/logScopes/my-log-scope"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_folder_location_log_scope(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a log scope.
        # @param [String] name
        #   Required. The resource name of the log scope: "projects/[PROJECT_ID]/locations/
        #   [LOCATION_ID]/logScopes/[LOG_SCOPE_ID]" For example:"projects/my-project/
        #   locations/global/logScopes/my-log-scope"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogScope] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogScope]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_location_log_scope(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::LogScope::Representation
          command.response_class = Google::Apis::LoggingV2::LogScope
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists log scopes.
        # @param [String] parent
        #   Required. The parent resource whose log scopes are to be listed: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]"
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request.Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListLogScopesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLogScopesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_location_log_scopes(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/logScopes', options)
          command.response_representation = Google::Apis::LoggingV2::ListLogScopesResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLogScopesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a log scope.
        # @param [String] name
        #   Output only. The resource name of the log scope.Log scopes are only available
        #   in the global location. For example:projects/my-project/locations/global/
        #   logScopes/my-log-scope
        # @param [Google::Apis::LoggingV2::LogScope] log_scope_object
        # @param [String] update_mask
        #   Optional. Field mask that specifies the fields in log_scope that need an
        #   update. A field will be overwritten if, and only if, it is in the update mask.
        #   name and output only fields cannot be updated.For a detailed FieldMask
        #   definition, see https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#google.protobuf.FieldMaskFor example: updateMask=description
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogScope] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogScope]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_folder_location_log_scope(name, log_scope_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::LoggingV2::LogScope::Representation
          command.request_object = log_scope_object
          command.response_representation = Google::Apis::LoggingV2::LogScope::Representation
          command.response_class = Google::Apis::LoggingV2::LogScope
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to Code.CANCELLED.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::LoggingV2::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_folder_location_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:cancel', options)
          command.request_representation = Google::Apis::LoggingV2::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
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
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns UNIMPLEMENTED.
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
        # @yieldparam result [Google::Apis::LoggingV2::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/operations', options)
          command.response_representation = Google::Apis::LoggingV2::ListOperationsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the RecentQueries that were created by the user making the request.
        # @param [String] parent
        #   Required. The resource to which the listed queries belong. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" "organizations/[ORGANIZATION_ID]/
        #   locations/[LOCATION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[
        #   LOCATION_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]" For example:
        #   projects/my-project/locations/us-central1Note: The location portion of the
        #   resource must be specified, but supplying the character - in place of
        #   LOCATION_ID will return all recent queries.
        # @param [String] filter
        #   Optional. Specifies the type ("Logging" or "OpsAnalytics") of the recent
        #   queries to list. The only valid value for this field is one of the two
        #   allowable type function calls, which are the following: type("Logging") type("
        #   OpsAnalytics")
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListRecentQueriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListRecentQueriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_location_recent_queries(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/recentQueries', options)
          command.response_representation = Google::Apis::LoggingV2::ListRecentQueriesResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListRecentQueriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new SavedQuery for the user making the request.
        # @param [String] parent
        #   Required. The parent resource in which to create the saved query: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" "organizations/[ORGANIZATION_ID]/
        #   locations/[LOCATION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[
        #   LOCATION_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]" For example: "
        #   projects/my-project/locations/global" "organizations/123456789/locations/us-
        #   central1"
        # @param [Google::Apis::LoggingV2::SavedQuery] saved_query_object
        # @param [String] saved_query_id
        #   Optional. The ID to use for the saved query, which will become the final
        #   component of the saved query's resource name.If the saved_query_id is not
        #   provided, the system will generate an alphanumeric ID.The saved_query_id is
        #   limited to 100 characters and can include only the following characters: upper
        #   and lower-case alphanumeric characters, underscores, hyphens, periods.First
        #   character has to be alphanumeric.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::SavedQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::SavedQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_folder_location_saved_query(parent, saved_query_object = nil, saved_query_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/savedQueries', options)
          command.request_representation = Google::Apis::LoggingV2::SavedQuery::Representation
          command.request_object = saved_query_object
          command.response_representation = Google::Apis::LoggingV2::SavedQuery::Representation
          command.response_class = Google::Apis::LoggingV2::SavedQuery
          command.params['parent'] = parent unless parent.nil?
          command.query['savedQueryId'] = saved_query_id unless saved_query_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing SavedQuery that was created by the user making the request.
        # @param [String] name
        #   Required. The full resource name of the saved query to delete. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/savedQueries/[
        #   QUERY_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]
        #   " For example: "projects/my-project/locations/global/savedQueries/my-saved-
        #   query"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_folder_location_saved_query(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all data associated with the requested query.
        # @param [String] name
        #   Required. The resource name of the saved query. "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/savedQueries/[QUERY_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/savedQueries/[
        #   QUERY_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]
        #   " For example: "projects/my-project/locations/global/savedQueries/my-saved-
        #   query"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::SavedQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::SavedQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_location_saved_query(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::SavedQuery::Representation
          command.response_class = Google::Apis::LoggingV2::SavedQuery
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the SavedQueries that were created by the user making the request.
        # @param [String] parent
        #   Required. The resource to which the listed queries belong. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" "organizations/[ORGANIZATION_ID]/
        #   locations/[LOCATION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[
        #   LOCATION_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]" For example: "
        #   projects/my-project/locations/us-central1" Note: The locations portion of the
        #   resource must be specified. To get a list of all saved queries, a wildcard
        #   character - can be used for LOCATION_ID, for example: "projects/my-project/
        #   locations/-"
        # @param [String] filter
        #   Optional. Specifies the type ("Logging" or "OpsAnalytics") and the visibility (
        #   PRIVATE or SHARED) of the saved queries to list. If provided, the filter must
        #   contain either the type function or a visibility token, or both. If both are
        #   chosen, they can be placed in any order, but they must be joined by the AND
        #   operator or the empty character.The two supported type function calls are:
        #   type("Logging") type("OpsAnalytics")The two supported visibility tokens are:
        #   visibility = PRIVATE visibility = SHAREDFor example:type("Logging") AND
        #   visibility = PRIVATE visibility=SHARED type("OpsAnalytics") type("OpsAnalytics)
        #   " visibility = PRIVATE visibility = SHARED
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request.Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListSavedQueriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListSavedQueriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_location_saved_queries(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/savedQueries', options)
          command.response_representation = Google::Apis::LoggingV2::ListSavedQueriesResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListSavedQueriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing SavedQuery.
        # @param [String] name
        #   Output only. Resource name of the saved query.In the format: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]" For a list of
        #   supported locations, see Supported Regions (https://cloud.google.com/logging/
        #   docs/region-support#bucket-regions)After the saved query is created, the
        #   location cannot be changed.If the user doesn't provide a QUERY_ID, the system
        #   will generate an alphanumeric ID.
        # @param [Google::Apis::LoggingV2::SavedQuery] saved_query_object
        # @param [String] update_mask
        #   Required. A non-empty list of fields to change in the existing saved query.
        #   Fields are relative to the saved_query and new values for the fields are taken
        #   from the corresponding fields in the SavedQuery included in this request.
        #   Fields not mentioned in update_mask are not changed and are ignored in the
        #   request.To update all mutable fields, specify an update_mask of *.For example,
        #   to change the description and query filter text of a saved query, specify an
        #   update_mask of "description, query.filter".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::SavedQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::SavedQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_folder_location_saved_query(name, saved_query_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::LoggingV2::SavedQuery::Representation
          command.request_object = saved_query_object
          command.response_representation = Google::Apis::LoggingV2::SavedQuery::Representation
          command.response_class = Google::Apis::LoggingV2::SavedQuery
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes all the log entries in a log for the global _Default Log Bucket. The
        # log reappears if it receives new entries. Log entries written shortly before
        # the delete operation might not be deleted. Entries received after the delete
        # operation with a timestamp before the operation will be deleted.
        # @param [String] log_name
        #   Required. The resource name of the log to delete: projects/[PROJECT_ID]/logs/[
        #   LOG_ID] organizations/[ORGANIZATION_ID]/logs/[LOG_ID] billingAccounts/[
        #   BILLING_ACCOUNT_ID]/logs/[LOG_ID] folders/[FOLDER_ID]/logs/[LOG_ID][LOG_ID]
        #   must be URL-encoded. For example, "projects/my-project-id/logs/syslog", "
        #   organizations/123/logs/cloudaudit.googleapis.com%2Factivity".For more
        #   information about log names, see LogEntry.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_folder_log(log_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+logName}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['logName'] = log_name unless log_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the logs in projects, organizations, folders, or billing accounts. Only
        # logs that have entries are listed.
        # @param [String] parent
        #   Required. The resource name to list logs for: projects/[PROJECT_ID]
        #   organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[
        #   FOLDER_ID]
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [Array<String>, String] resource_names
        #   Optional. List of resource names to list logs for: projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[
        #   BUCKET_ID]/views/[VIEW_ID] folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/
        #   [BUCKET_ID]/views/[VIEW_ID]To support legacy queries, it could also be:
        #   projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[
        #   BILLING_ACCOUNT_ID] folders/[FOLDER_ID]The resource name in the parent field
        #   is added to this list.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListLogsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLogsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_logs(parent, page_size: nil, page_token: nil, resource_names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/logs', options)
          command.response_representation = Google::Apis::LoggingV2::ListLogsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLogsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['resourceNames'] = resource_names unless resource_names.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a sink that exports specified log entries to a destination. The export
        # begins upon ingress, unless the sink's writer_identity is not permitted to
        # write to the destination. A sink can export log entries only from the resource
        # owning the sink.
        # @param [String] parent
        #   Required. The resource in which to create the sink: "projects/[PROJECT_ID]" "
        #   organizations/[ORGANIZATION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]" "
        #   folders/[FOLDER_ID]" For examples:"projects/my-project" "organizations/
        #   123456789"
        # @param [Google::Apis::LoggingV2::LogSink] log_sink_object
        # @param [String] custom_writer_identity
        #   Optional. The service account provided by the caller that will be used to
        #   write the log entries. The format must be serviceAccount:some@email. This
        #   field can only be specified when you are routing logs to a log bucket that is
        #   in a different project than the sink. When not specified, a Logging service
        #   account will automatically be generated.
        # @param [Boolean] unique_writer_identity
        #   Optional. Determines the kind of IAM identity returned as writer_identity in
        #   the new sink. If this value is omitted or set to false, and if the sink's
        #   parent is a project, then the value returned as writer_identity is the same
        #   group or service account used by Cloud Logging before the addition of writer
        #   identities to this API. The sink's destination must be in the same project as
        #   the sink itself.If this field is set to true, or if the sink is owned by a non-
        #   project resource such as an organization, then the value of writer_identity
        #   will be a service agent (https://cloud.google.com/iam/docs/service-account-
        #   types#service-agents) used by the sinks with the same parent. For more
        #   information, see writer_identity in LogSink.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_folder_sink(parent, log_sink_object = nil, custom_writer_identity: nil, unique_writer_identity: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/sinks', options)
          command.request_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.request_object = log_sink_object
          command.response_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.response_class = Google::Apis::LoggingV2::LogSink
          command.params['parent'] = parent unless parent.nil?
          command.query['customWriterIdentity'] = custom_writer_identity unless custom_writer_identity.nil?
          command.query['uniqueWriterIdentity'] = unique_writer_identity unless unique_writer_identity.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a sink. If the sink has a unique writer_identity, then that service
        # account is also deleted.
        # @param [String] sink_name
        #   Required. The full resource name of the sink to delete, including the parent
        #   resource and the sink identifier: "projects/[PROJECT_ID]/sinks/[SINK_ID]" "
        #   organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/sinks/[SINK_ID]" "folders/[FOLDER_ID]/sinks/[SINK_ID]" For
        #   example:"projects/my-project/sinks/my-sink"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_folder_sink(sink_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+sinkName}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['sinkName'] = sink_name unless sink_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a sink.
        # @param [String] sink_name
        #   Required. The resource name of the sink: "projects/[PROJECT_ID]/sinks/[SINK_ID]
        #   " "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/sinks/[SINK_ID]" "folders/[FOLDER_ID]/sinks/[SINK_ID]" For
        #   example:"projects/my-project/sinks/my-sink"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_sink(sink_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+sinkName}', options)
          command.response_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.response_class = Google::Apis::LoggingV2::LogSink
          command.params['sinkName'] = sink_name unless sink_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists sinks.
        # @param [String] parent
        #   Required. The parent resource whose sinks are to be listed: "projects/[
        #   PROJECT_ID]" "organizations/[ORGANIZATION_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
        # @param [String] filter
        #   Optional. A filter expression to constrain the sinks returned. Today, this
        #   only supports the following strings: '' 'in_scope("ALL")', 'in_scope("ANCESTOR"
        #   )', 'in_scope("DEFAULT")'.Description of scopes below. ALL: Includes all of
        #   the sinks which can be returned in any other scope. ANCESTOR: Includes
        #   intercepting sinks owned by ancestor resources. DEFAULT: Includes sinks owned
        #   by parent.When the empty string is provided, then the filter 'in_scope("
        #   DEFAULT")' is applied.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListSinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListSinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_sinks(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/sinks', options)
          command.response_representation = Google::Apis::LoggingV2::ListSinksResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListSinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a sink. This method replaces the values of the destination and filter
        # fields of the existing sink with the corresponding values from the new sink.
        # The updated sink might also have a new writer_identity; see the
        # unique_writer_identity field.
        # @param [String] sink_name
        #   Required. The full resource name of the sink to update, including the parent
        #   resource and the sink identifier: "projects/[PROJECT_ID]/sinks/[SINK_ID]" "
        #   organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/sinks/[SINK_ID]" "folders/[FOLDER_ID]/sinks/[SINK_ID]" For
        #   example:"projects/my-project/sinks/my-sink"
        # @param [Google::Apis::LoggingV2::LogSink] log_sink_object
        # @param [String] custom_writer_identity
        #   Optional. The service account provided by the caller that will be used to
        #   write the log entries. The format must be serviceAccount:some@email. This
        #   field can only be specified when you are routing logs to a log bucket that is
        #   in a different project than the sink. When not specified, a Logging service
        #   account will automatically be generated.
        # @param [Boolean] unique_writer_identity
        #   Optional. See sinks.create for a description of this field. When updating a
        #   sink, the effect of this field on the value of writer_identity in the updated
        #   sink depends on both the old and new values of this field: If the old and new
        #   values of this field are both false or both true, then there is no change to
        #   the sink's writer_identity. If the old value is false and the new value is
        #   true, then writer_identity is changed to a service agent (https://cloud.google.
        #   com/iam/docs/service-account-types#service-agents) owned by Cloud Logging. It
        #   is an error if the old value is true and the new value is set to false or
        #   defaulted to false.
        # @param [String] update_mask
        #   Optional. Field mask that specifies the fields in sink that need an update. A
        #   sink field will be overwritten if, and only if, it is in the update mask. name
        #   and output only fields cannot be updated.An empty updateMask is temporarily
        #   treated as using the following mask for backwards compatibility purposes:
        #   destination,filter,includeChildrenAt some point in the future, behavior will
        #   be removed and specifying an empty updateMask will be an error.For a detailed
        #   FieldMask definition, see https://developers.google.com/protocol-buffers/docs/
        #   reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=
        #   filter
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_folder_sink(sink_name, log_sink_object = nil, custom_writer_identity: nil, unique_writer_identity: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+sinkName}', options)
          command.request_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.request_object = log_sink_object
          command.response_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.response_class = Google::Apis::LoggingV2::LogSink
          command.params['sinkName'] = sink_name unless sink_name.nil?
          command.query['customWriterIdentity'] = custom_writer_identity unless custom_writer_identity.nil?
          command.query['uniqueWriterIdentity'] = unique_writer_identity unless unique_writer_identity.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a sink. This method replaces the values of the destination and filter
        # fields of the existing sink with the corresponding values from the new sink.
        # The updated sink might also have a new writer_identity; see the
        # unique_writer_identity field.
        # @param [String] sink_name
        #   Required. The full resource name of the sink to update, including the parent
        #   resource and the sink identifier: "projects/[PROJECT_ID]/sinks/[SINK_ID]" "
        #   organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/sinks/[SINK_ID]" "folders/[FOLDER_ID]/sinks/[SINK_ID]" For
        #   example:"projects/my-project/sinks/my-sink"
        # @param [Google::Apis::LoggingV2::LogSink] log_sink_object
        # @param [String] custom_writer_identity
        #   Optional. The service account provided by the caller that will be used to
        #   write the log entries. The format must be serviceAccount:some@email. This
        #   field can only be specified when you are routing logs to a log bucket that is
        #   in a different project than the sink. When not specified, a Logging service
        #   account will automatically be generated.
        # @param [Boolean] unique_writer_identity
        #   Optional. See sinks.create for a description of this field. When updating a
        #   sink, the effect of this field on the value of writer_identity in the updated
        #   sink depends on both the old and new values of this field: If the old and new
        #   values of this field are both false or both true, then there is no change to
        #   the sink's writer_identity. If the old value is false and the new value is
        #   true, then writer_identity is changed to a service agent (https://cloud.google.
        #   com/iam/docs/service-account-types#service-agents) owned by Cloud Logging. It
        #   is an error if the old value is true and the new value is set to false or
        #   defaulted to false.
        # @param [String] update_mask
        #   Optional. Field mask that specifies the fields in sink that need an update. A
        #   sink field will be overwritten if, and only if, it is in the update mask. name
        #   and output only fields cannot be updated.An empty updateMask is temporarily
        #   treated as using the following mask for backwards compatibility purposes:
        #   destination,filter,includeChildrenAt some point in the future, behavior will
        #   be removed and specifying an empty updateMask will be an error.For a detailed
        #   FieldMask definition, see https://developers.google.com/protocol-buffers/docs/
        #   reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=
        #   filter
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_folder_sink(sink_name, log_sink_object = nil, custom_writer_identity: nil, unique_writer_identity: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v2/{+sinkName}', options)
          command.request_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.request_object = log_sink_object
          command.response_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.response_class = Google::Apis::LoggingV2::LogSink
          command.params['sinkName'] = sink_name unless sink_name.nil?
          command.query['customWriterIdentity'] = custom_writer_identity unless custom_writer_identity.nil?
          command.query['uniqueWriterIdentity'] = unique_writer_identity unless unique_writer_identity.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # @yieldparam result [Google::Apis::LoggingV2::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Location::Representation
          command.response_class = Google::Apis::LoggingV2::Location
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
        #   accepts strings like "displayName=tokyo", and is documented in more detail in
        #   AIP-160 (https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of results to return. If not set, the service selects a
        #   default.
        # @param [String] page_token
        #   A page token received from the next_page_token field in the response. Send
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
        # @yieldparam result [Google::Apis::LoggingV2::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/locations', options)
          command.response_representation = Google::Apis::LoggingV2::ListLocationsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a log bucket that can be used to store log entries. After a bucket has
        # been created, the bucket's location cannot be changed.
        # @param [String] parent
        #   Required. The resource in which to create the log bucket: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" For example:"projects/my-project/
        #   locations/global"
        # @param [Google::Apis::LoggingV2::LogBucket] log_bucket_object
        # @param [String] bucket_id
        #   Required. A client-assigned identifier such as "my-bucket". Identifiers are
        #   limited to 100 characters and can include only letters, digits, underscores,
        #   hyphens, and periods. Bucket identifiers must start with an alphanumeric
        #   character.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogBucket] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogBucket]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_location_bucket(parent, log_bucket_object = nil, bucket_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/buckets', options)
          command.request_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.request_object = log_bucket_object
          command.response_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.response_class = Google::Apis::LoggingV2::LogBucket
          command.params['parent'] = parent unless parent.nil?
          command.query['bucketId'] = bucket_id unless bucket_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a log bucket asynchronously that can be used to store log entries.
        # After a bucket has been created, the bucket's location cannot be changed.
        # @param [String] parent
        #   Required. The resource in which to create the log bucket: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" For example:"projects/my-project/
        #   locations/global"
        # @param [Google::Apis::LoggingV2::LogBucket] log_bucket_object
        # @param [String] bucket_id
        #   Required. A client-assigned identifier such as "my-bucket". Identifiers are
        #   limited to 100 characters and can include only letters, digits, underscores,
        #   hyphens, and periods. Bucket identifiers must start with an alphanumeric
        #   character.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_location_bucket_async(parent, log_bucket_object = nil, bucket_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/buckets:createAsync', options)
          command.request_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.request_object = log_bucket_object
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['bucketId'] = bucket_id unless bucket_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a log bucket.Changes the bucket's lifecycle_state to the
        # DELETE_REQUESTED state. After 7 days, the bucket will be purged and all log
        # entries in the bucket will be permanently deleted.
        # @param [String] name
        #   Required. The full resource name of the bucket to delete. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/
        #   my-project/locations/global/buckets/my-bucket"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_location_bucket(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a log bucket.
        # @param [String] name
        #   Required. The resource name of the bucket: "projects/[PROJECT_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[ORGANIZATION_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[FOLDER_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/my-project/locations/
        #   global/buckets/my-bucket"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogBucket] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogBucket]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_location_bucket(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.response_class = Google::Apis::LoggingV2::LogBucket
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists log buckets.
        # @param [String] parent
        #   Required. The parent resource whose buckets are to be listed: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" "organizations/[ORGANIZATION_ID]/
        #   locations/[LOCATION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[
        #   LOCATION_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]" Note: The
        #   locations portion of the resource must be specified, but supplying the
        #   character - in place of LOCATION_ID will return all buckets.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListBucketsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListBucketsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_location_buckets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/buckets', options)
          command.response_representation = Google::Apis::LoggingV2::ListBucketsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListBucketsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a log bucket.If the bucket has a lifecycle_state of DELETE_REQUESTED,
        # then FAILED_PRECONDITION will be returned.After a bucket has been created, the
        # bucket's location cannot be changed.
        # @param [String] name
        #   Required. The full resource name of the bucket to update. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/
        #   my-project/locations/global/buckets/my-bucket"
        # @param [Google::Apis::LoggingV2::LogBucket] log_bucket_object
        # @param [String] update_mask
        #   Required. Field mask that specifies the fields in bucket that need an update.
        #   A bucket field will be overwritten if, and only if, it is in the update mask.
        #   name and output only fields cannot be updated.For a detailed FieldMask
        #   definition, see: https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#google.protobuf.FieldMaskFor example: updateMask=
        #   retention_days
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogBucket] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogBucket]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_location_bucket(name, log_bucket_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.request_object = log_bucket_object
          command.response_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.response_class = Google::Apis::LoggingV2::LogBucket
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undeletes a log bucket. A bucket that has been deleted can be undeleted within
        # the grace period of 7 days.
        # @param [String] name
        #   Required. The full resource name of the bucket to undelete. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/
        #   my-project/locations/global/buckets/my-bucket"
        # @param [Google::Apis::LoggingV2::UndeleteBucketRequest] undelete_bucket_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_location_bucket(name, undelete_bucket_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:undelete', options)
          command.request_representation = Google::Apis::LoggingV2::UndeleteBucketRequest::Representation
          command.request_object = undelete_bucket_request_object
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a log bucket asynchronously.If the bucket has a lifecycle_state of
        # DELETE_REQUESTED, then FAILED_PRECONDITION will be returned.After a bucket has
        # been created, the bucket's location cannot be changed.
        # @param [String] name
        #   Required. The full resource name of the bucket to update. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/
        #   my-project/locations/global/buckets/my-bucket"
        # @param [Google::Apis::LoggingV2::LogBucket] log_bucket_object
        # @param [String] update_mask
        #   Required. Field mask that specifies the fields in bucket that need an update.
        #   A bucket field will be overwritten if, and only if, it is in the update mask.
        #   name and output only fields cannot be updated.For a detailed FieldMask
        #   definition, see: https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#google.protobuf.FieldMaskFor example: updateMask=
        #   retention_days
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_location_bucket_async(name, log_bucket_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:updateAsync', options)
          command.request_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.request_object = log_bucket_object
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Asynchronously creates a linked dataset in BigQuery which makes it possible to
        # use BigQuery to read the logs stored in the log bucket. A log bucket may
        # currently only contain one link.
        # @param [String] parent
        #   Required. The full resource name of the bucket to create a link for. "projects/
        #   [PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
        # @param [Google::Apis::LoggingV2::Link] link_object
        # @param [String] link_id
        #   Required. The ID to use for the link. The link_id can have up to 100
        #   characters. A valid link_id must only have alphanumeric characters and
        #   underscores within it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_location_bucket_link(parent, link_object = nil, link_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/links', options)
          command.request_representation = Google::Apis::LoggingV2::Link::Representation
          command.request_object = link_object
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['linkId'] = link_id unless link_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a link. This will also delete the corresponding BigQuery linked
        # dataset.
        # @param [String] name
        #   Required. The full resource name of the link to delete. "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[
        #   BUCKET_ID]/links/[LINK_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/
        #   buckets/[BUCKET_ID]/links/[LINK_ID]"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_location_bucket_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a link.
        # @param [String] name
        #   Required. The resource name of the link: "projects/[PROJECT_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[
        #   BUCKET_ID]/links/[LINK_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/
        #   buckets/[BUCKET_ID]/links/[LINK_ID]"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Link] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Link]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_location_bucket_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Link::Representation
          command.response_class = Google::Apis::LoggingV2::Link
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists links.
        # @param [String] parent
        #   Required. The parent resource whose links are to be listed: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_location_bucket_links(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/links', options)
          command.response_representation = Google::Apis::LoggingV2::ListLinksResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a view over log entries in a log bucket. A bucket may contain a
        # maximum of 30 views.
        # @param [String] parent
        #   Required. The bucket in which to create the view `"projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]"` For example:"projects/my-project/
        #   locations/global/buckets/my-bucket"
        # @param [Google::Apis::LoggingV2::LogView] log_view_object
        # @param [String] view_id
        #   Required. A client-assigned identifier such as "my-view". Identifiers are
        #   limited to 100 characters and can include only letters, digits, underscores,
        #   and hyphens.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_location_bucket_view(parent, log_view_object = nil, view_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/views', options)
          command.request_representation = Google::Apis::LoggingV2::LogView::Representation
          command.request_object = log_view_object
          command.response_representation = Google::Apis::LoggingV2::LogView::Representation
          command.response_class = Google::Apis::LoggingV2::LogView
          command.params['parent'] = parent unless parent.nil?
          command.query['viewId'] = view_id unless view_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a view on a log bucket. If an UNAVAILABLE error is returned, this
        # indicates that system is not in a state where it can delete the view. If this
        # occurs, please try again in a few minutes.
        # @param [String] name
        #   Required. The full resource name of the view to delete: "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]" For example:"
        #   projects/my-project/locations/global/buckets/my-bucket/views/my-view"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_location_bucket_view(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a view on a log bucket.
        # @param [String] name
        #   Required. The resource name of the policy: "projects/[PROJECT_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]" For example:"projects/my-
        #   project/locations/global/buckets/my-bucket/views/my-view"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_location_bucket_view(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::LogView::Representation
          command.response_class = Google::Apis::LoggingV2::LogView
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::LoggingV2::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_location_bucket_view_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::LoggingV2::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::LoggingV2::Policy::Representation
          command.response_class = Google::Apis::LoggingV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists views on a log bucket.
        # @param [String] parent
        #   Required. The bucket whose views are to be listed: "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request.Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListViewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListViewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_location_bucket_views(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/views', options)
          command.response_representation = Google::Apis::LoggingV2::ListViewsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListViewsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a view on a log bucket. This method replaces the value of the filter
        # field from the existing view with the corresponding value from the new view.
        # If an UNAVAILABLE error is returned, this indicates that system is not in a
        # state where it can update the view. If this occurs, please try again in a few
        # minutes.
        # @param [String] name
        #   Required. The full resource name of the view to update "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]" For example:"
        #   projects/my-project/locations/global/buckets/my-bucket/views/my-view"
        # @param [Google::Apis::LoggingV2::LogView] log_view_object
        # @param [String] update_mask
        #   Optional. Field mask that specifies the fields in view that need an update. A
        #   field will be overwritten if, and only if, it is in the update mask. name and
        #   output only fields cannot be updated.For a detailed FieldMask definition, see
        #   https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   google.protobuf.FieldMaskFor example: updateMask=filter
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_location_bucket_view(name, log_view_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::LoggingV2::LogView::Representation
          command.request_object = log_view_object
          command.response_representation = Google::Apis::LoggingV2::LogView::Representation
          command.response_class = Google::Apis::LoggingV2::LogView
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED
        # errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::LoggingV2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_location_bucket_view_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::LoggingV2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::LoggingV2::Policy::Representation
          command.response_class = Google::Apis::LoggingV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a
        # NOT_FOUND error.Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See
        #   Resource names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::LoggingV2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_location_bucket_view_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::LoggingV2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::LoggingV2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to Code.CANCELLED.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::LoggingV2::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_location_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:cancel', options)
          command.request_representation = Google::Apis::LoggingV2::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
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
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns UNIMPLEMENTED.
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
        # @yieldparam result [Google::Apis::LoggingV2::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/operations', options)
          command.response_representation = Google::Apis::LoggingV2::ListOperationsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes all the log entries in a log for the global _Default Log Bucket. The
        # log reappears if it receives new entries. Log entries written shortly before
        # the delete operation might not be deleted. Entries received after the delete
        # operation with a timestamp before the operation will be deleted.
        # @param [String] log_name
        #   Required. The resource name of the log to delete: projects/[PROJECT_ID]/logs/[
        #   LOG_ID] organizations/[ORGANIZATION_ID]/logs/[LOG_ID] billingAccounts/[
        #   BILLING_ACCOUNT_ID]/logs/[LOG_ID] folders/[FOLDER_ID]/logs/[LOG_ID][LOG_ID]
        #   must be URL-encoded. For example, "projects/my-project-id/logs/syslog", "
        #   organizations/123/logs/cloudaudit.googleapis.com%2Factivity".For more
        #   information about log names, see LogEntry.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_log(log_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+logName}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['logName'] = log_name unless log_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the logs in projects, organizations, folders, or billing accounts. Only
        # logs that have entries are listed.
        # @param [String] parent
        #   Required. The resource name to list logs for: projects/[PROJECT_ID]
        #   organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[
        #   FOLDER_ID]
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [Array<String>, String] resource_names
        #   Optional. List of resource names to list logs for: projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[
        #   BUCKET_ID]/views/[VIEW_ID] folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/
        #   [BUCKET_ID]/views/[VIEW_ID]To support legacy queries, it could also be:
        #   projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[
        #   BILLING_ACCOUNT_ID] folders/[FOLDER_ID]The resource name in the parent field
        #   is added to this list.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListLogsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLogsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_logs(parent, page_size: nil, page_token: nil, resource_names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/logs', options)
          command.response_representation = Google::Apis::LoggingV2::ListLogsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLogsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['resourceNames'] = resource_names unless resource_names.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the descriptors for monitored resource types used by Logging.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListMonitoredResourceDescriptorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListMonitoredResourceDescriptorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_monitored_resource_descriptors(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/monitoredResourceDescriptors', options)
          command.response_representation = Google::Apis::LoggingV2::ListMonitoredResourceDescriptorsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListMonitoredResourceDescriptorsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log
        # Router can be configured for Google Cloud projects, folders, organizations,
        # and billing accounts. Once configured for an organization, it applies to all
        # projects and folders in the Google Cloud organization.See Enabling CMEK for
        # Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption)
        # for more information.
        # @param [String] name
        #   Required. The resource for which to retrieve CMEK settings. "projects/[
        #   PROJECT_ID]/cmekSettings" "organizations/[ORGANIZATION_ID]/cmekSettings" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/cmekSettings" "folders/[FOLDER_ID]/
        #   cmekSettings" For example:"organizations/12345/cmekSettings"Note: CMEK for the
        #   Log Router can be configured for Google Cloud projects, folders, organizations,
        #   and billing accounts. Once configured for an organization, it applies to all
        #   projects and folders in the Google Cloud organization.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::CmekSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::CmekSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_cmek_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/cmekSettings', options)
          command.response_representation = Google::Apis::LoggingV2::CmekSettings::Representation
          command.response_class = Google::Apis::LoggingV2::CmekSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the settings for the given resource.Note: Settings can be retrieved for
        # Google Cloud projects, folders, organizations, and billing accounts.See View
        # default resource settings for Logging (https://cloud.google.com/logging/docs/
        # default-settings#view-org-settings) for more information.
        # @param [String] name
        #   Required. The resource for which to retrieve settings. "projects/[PROJECT_ID]/
        #   settings" "organizations/[ORGANIZATION_ID]/settings" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/settings" "folders/[FOLDER_ID]/settings" For example:"
        #   organizations/12345/settings"Note: Settings can be retrieved for Google Cloud
        #   projects, folders, organizations, and billing accounts.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Settings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Settings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/settings', options)
          command.response_representation = Google::Apis::LoggingV2::Settings::Representation
          command.response_class = Google::Apis::LoggingV2::Settings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the Log Router CMEK settings for the given resource.Note: CMEK for the
        # Log Router can currently only be configured for Google Cloud organizations.
        # Once configured, it applies to all projects and folders in the Google Cloud
        # organization.UpdateCmekSettings fails when any of the following are true: The
        # value of kms_key_name is invalid. The associated service account doesn't have
        # the required roles/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the
        # key. Access to the key is disabled.See Enabling CMEK for Log Router (https://
        # cloud.google.com/logging/docs/routing/managed-encryption) for more information.
        # @param [String] name
        #   Required. The resource name for the CMEK settings to update. "projects/[
        #   PROJECT_ID]/cmekSettings" "organizations/[ORGANIZATION_ID]/cmekSettings" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/cmekSettings" "folders/[FOLDER_ID]/
        #   cmekSettings" For example:"organizations/12345/cmekSettings"Note: CMEK for the
        #   Log Router can currently only be configured for Google Cloud organizations.
        #   Once configured, it applies to all projects and folders in the Google Cloud
        #   organization.
        # @param [Google::Apis::LoggingV2::CmekSettings] cmek_settings_object
        # @param [String] update_mask
        #   Optional. Field mask identifying which fields from cmek_settings should be
        #   updated. A field will be overwritten if and only if it is in the update mask.
        #   Output only fields cannot be updated.See FieldMask for more information.For
        #   example: "updateMask=kmsKeyName"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::CmekSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::CmekSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_cmek_settings(name, cmek_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}/cmekSettings', options)
          command.request_representation = Google::Apis::LoggingV2::CmekSettings::Representation
          command.request_object = cmek_settings_object
          command.response_representation = Google::Apis::LoggingV2::CmekSettings::Representation
          command.response_class = Google::Apis::LoggingV2::CmekSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the settings for the given resource. This method applies to all
        # feature configurations for organization and folders.UpdateSettings fails when
        # any of the following are true: The value of storage_location either isn't
        # supported by Logging or violates the location OrgPolicy. The
        # default_sink_config field is set, but it has an unspecified filter write mode.
        # The value of kms_key_name is invalid. The associated service account doesn't
        # have the required roles/cloudkms.cryptoKeyEncrypterDecrypter role assigned for
        # the key. Access to the key is disabled.See Configure default settings for
        # organizations and folders (https://cloud.google.com/logging/docs/default-
        # settings) for more information.
        # @param [String] name
        #   Required. The resource name for the settings to update. "organizations/[
        #   ORGANIZATION_ID]/settings" "folders/[FOLDER_ID]/settings" For example:"
        #   organizations/12345/settings"
        # @param [Google::Apis::LoggingV2::Settings] settings_object
        # @param [String] update_mask
        #   Optional. Field mask identifying which fields from settings should be updated.
        #   A field will be overwritten if and only if it is in the update mask. Output
        #   only fields cannot be updated.See FieldMask for more information.For example: "
        #   updateMask=kmsKeyName"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Settings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Settings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_settings(name, settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}/settings', options)
          command.request_representation = Google::Apis::LoggingV2::Settings::Representation
          command.request_object = settings_object
          command.response_representation = Google::Apis::LoggingV2::Settings::Representation
          command.response_class = Google::Apis::LoggingV2::Settings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new exclusion in the _Default sink in a specified parent resource.
        # Only log entries belonging to that resource can be excluded. You can have up
        # to 10 exclusions in a resource.
        # @param [String] parent
        #   Required. The parent resource in which to create the exclusion: "projects/[
        #   PROJECT_ID]" "organizations/[ORGANIZATION_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]" For examples:"projects/my-logging-
        #   project" "organizations/123456789"
        # @param [Google::Apis::LoggingV2::LogExclusion] log_exclusion_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogExclusion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogExclusion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_exclusion(parent, log_exclusion_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/exclusions', options)
          command.request_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.request_object = log_exclusion_object
          command.response_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.response_class = Google::Apis::LoggingV2::LogExclusion
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an exclusion in the _Default sink.
        # @param [String] name
        #   Required. The resource name of an existing exclusion to delete: "projects/[
        #   PROJECT_ID]/exclusions/[EXCLUSION_ID]" "organizations/[ORGANIZATION_ID]/
        #   exclusions/[EXCLUSION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[
        #   EXCLUSION_ID]" "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" For example:"
        #   projects/my-project/exclusions/my-exclusion"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_exclusion(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the description of an exclusion in the _Default sink.
        # @param [String] name
        #   Required. The resource name of an existing exclusion: "projects/[PROJECT_ID]/
        #   exclusions/[EXCLUSION_ID]" "organizations/[ORGANIZATION_ID]/exclusions/[
        #   EXCLUSION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
        #   "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" For example:"projects/my-
        #   project/exclusions/my-exclusion"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogExclusion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogExclusion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_exclusion(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.response_class = Google::Apis::LoggingV2::LogExclusion
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the exclusions on the _Default sink in a parent resource.
        # @param [String] parent
        #   Required. The parent resource whose exclusions are to be listed. "projects/[
        #   PROJECT_ID]" "organizations/[ORGANIZATION_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListExclusionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListExclusionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_exclusions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/exclusions', options)
          command.response_representation = Google::Apis::LoggingV2::ListExclusionsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListExclusionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Changes one or more properties of an existing exclusion in the _Default sink.
        # @param [String] name
        #   Required. The resource name of the exclusion to update: "projects/[PROJECT_ID]/
        #   exclusions/[EXCLUSION_ID]" "organizations/[ORGANIZATION_ID]/exclusions/[
        #   EXCLUSION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
        #   "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" For example:"projects/my-
        #   project/exclusions/my-exclusion"
        # @param [Google::Apis::LoggingV2::LogExclusion] log_exclusion_object
        # @param [String] update_mask
        #   Required. A non-empty list of fields to change in the existing exclusion. New
        #   values for the fields are taken from the corresponding fields in the
        #   LogExclusion included in this request. Fields not mentioned in update_mask are
        #   not changed and are ignored in the request.For example, to change the filter
        #   and description of an exclusion, specify an update_mask of "filter,description"
        #   .
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogExclusion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogExclusion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_exclusion(name, log_exclusion_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.request_object = log_exclusion_object
          command.response_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.response_class = Google::Apis::LoggingV2::LogExclusion
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # @yieldparam result [Google::Apis::LoggingV2::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Location::Representation
          command.response_class = Google::Apis::LoggingV2::Location
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
        #   accepts strings like "displayName=tokyo", and is documented in more detail in
        #   AIP-160 (https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of results to return. If not set, the service selects a
        #   default.
        # @param [String] page_token
        #   A page token received from the next_page_token field in the response. Send
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
        # @yieldparam result [Google::Apis::LoggingV2::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/locations', options)
          command.response_representation = Google::Apis::LoggingV2::ListLocationsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a log bucket that can be used to store log entries. After a bucket has
        # been created, the bucket's location cannot be changed.
        # @param [String] parent
        #   Required. The resource in which to create the log bucket: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" For example:"projects/my-project/
        #   locations/global"
        # @param [Google::Apis::LoggingV2::LogBucket] log_bucket_object
        # @param [String] bucket_id
        #   Required. A client-assigned identifier such as "my-bucket". Identifiers are
        #   limited to 100 characters and can include only letters, digits, underscores,
        #   hyphens, and periods. Bucket identifiers must start with an alphanumeric
        #   character.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogBucket] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogBucket]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_bucket(parent, log_bucket_object = nil, bucket_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/buckets', options)
          command.request_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.request_object = log_bucket_object
          command.response_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.response_class = Google::Apis::LoggingV2::LogBucket
          command.params['parent'] = parent unless parent.nil?
          command.query['bucketId'] = bucket_id unless bucket_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a log bucket asynchronously that can be used to store log entries.
        # After a bucket has been created, the bucket's location cannot be changed.
        # @param [String] parent
        #   Required. The resource in which to create the log bucket: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" For example:"projects/my-project/
        #   locations/global"
        # @param [Google::Apis::LoggingV2::LogBucket] log_bucket_object
        # @param [String] bucket_id
        #   Required. A client-assigned identifier such as "my-bucket". Identifiers are
        #   limited to 100 characters and can include only letters, digits, underscores,
        #   hyphens, and periods. Bucket identifiers must start with an alphanumeric
        #   character.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_bucket_async(parent, log_bucket_object = nil, bucket_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/buckets:createAsync', options)
          command.request_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.request_object = log_bucket_object
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['bucketId'] = bucket_id unless bucket_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a log bucket.Changes the bucket's lifecycle_state to the
        # DELETE_REQUESTED state. After 7 days, the bucket will be purged and all log
        # entries in the bucket will be permanently deleted.
        # @param [String] name
        #   Required. The full resource name of the bucket to delete. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/
        #   my-project/locations/global/buckets/my-bucket"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_bucket(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a log bucket.
        # @param [String] name
        #   Required. The resource name of the bucket: "projects/[PROJECT_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[ORGANIZATION_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[FOLDER_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/my-project/locations/
        #   global/buckets/my-bucket"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogBucket] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogBucket]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_bucket(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.response_class = Google::Apis::LoggingV2::LogBucket
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists log buckets.
        # @param [String] parent
        #   Required. The parent resource whose buckets are to be listed: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" "organizations/[ORGANIZATION_ID]/
        #   locations/[LOCATION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[
        #   LOCATION_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]" Note: The
        #   locations portion of the resource must be specified, but supplying the
        #   character - in place of LOCATION_ID will return all buckets.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListBucketsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListBucketsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_buckets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/buckets', options)
          command.response_representation = Google::Apis::LoggingV2::ListBucketsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListBucketsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a log bucket.If the bucket has a lifecycle_state of DELETE_REQUESTED,
        # then FAILED_PRECONDITION will be returned.After a bucket has been created, the
        # bucket's location cannot be changed.
        # @param [String] name
        #   Required. The full resource name of the bucket to update. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/
        #   my-project/locations/global/buckets/my-bucket"
        # @param [Google::Apis::LoggingV2::LogBucket] log_bucket_object
        # @param [String] update_mask
        #   Required. Field mask that specifies the fields in bucket that need an update.
        #   A bucket field will be overwritten if, and only if, it is in the update mask.
        #   name and output only fields cannot be updated.For a detailed FieldMask
        #   definition, see: https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#google.protobuf.FieldMaskFor example: updateMask=
        #   retention_days
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogBucket] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogBucket]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_location_bucket(name, log_bucket_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.request_object = log_bucket_object
          command.response_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.response_class = Google::Apis::LoggingV2::LogBucket
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undeletes a log bucket. A bucket that has been deleted can be undeleted within
        # the grace period of 7 days.
        # @param [String] name
        #   Required. The full resource name of the bucket to undelete. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/
        #   my-project/locations/global/buckets/my-bucket"
        # @param [Google::Apis::LoggingV2::UndeleteBucketRequest] undelete_bucket_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_organization_location_bucket(name, undelete_bucket_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:undelete', options)
          command.request_representation = Google::Apis::LoggingV2::UndeleteBucketRequest::Representation
          command.request_object = undelete_bucket_request_object
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a log bucket asynchronously.If the bucket has a lifecycle_state of
        # DELETE_REQUESTED, then FAILED_PRECONDITION will be returned.After a bucket has
        # been created, the bucket's location cannot be changed.
        # @param [String] name
        #   Required. The full resource name of the bucket to update. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/
        #   my-project/locations/global/buckets/my-bucket"
        # @param [Google::Apis::LoggingV2::LogBucket] log_bucket_object
        # @param [String] update_mask
        #   Required. Field mask that specifies the fields in bucket that need an update.
        #   A bucket field will be overwritten if, and only if, it is in the update mask.
        #   name and output only fields cannot be updated.For a detailed FieldMask
        #   definition, see: https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#google.protobuf.FieldMaskFor example: updateMask=
        #   retention_days
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_location_bucket_async(name, log_bucket_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:updateAsync', options)
          command.request_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.request_object = log_bucket_object
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Asynchronously creates a linked dataset in BigQuery which makes it possible to
        # use BigQuery to read the logs stored in the log bucket. A log bucket may
        # currently only contain one link.
        # @param [String] parent
        #   Required. The full resource name of the bucket to create a link for. "projects/
        #   [PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
        # @param [Google::Apis::LoggingV2::Link] link_object
        # @param [String] link_id
        #   Required. The ID to use for the link. The link_id can have up to 100
        #   characters. A valid link_id must only have alphanumeric characters and
        #   underscores within it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_bucket_link(parent, link_object = nil, link_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/links', options)
          command.request_representation = Google::Apis::LoggingV2::Link::Representation
          command.request_object = link_object
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['linkId'] = link_id unless link_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a link. This will also delete the corresponding BigQuery linked
        # dataset.
        # @param [String] name
        #   Required. The full resource name of the link to delete. "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[
        #   BUCKET_ID]/links/[LINK_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/
        #   buckets/[BUCKET_ID]/links/[LINK_ID]"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_bucket_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a link.
        # @param [String] name
        #   Required. The resource name of the link: "projects/[PROJECT_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[
        #   BUCKET_ID]/links/[LINK_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/
        #   buckets/[BUCKET_ID]/links/[LINK_ID]"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Link] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Link]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_bucket_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Link::Representation
          command.response_class = Google::Apis::LoggingV2::Link
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists links.
        # @param [String] parent
        #   Required. The parent resource whose links are to be listed: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_bucket_links(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/links', options)
          command.response_representation = Google::Apis::LoggingV2::ListLinksResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a view over log entries in a log bucket. A bucket may contain a
        # maximum of 30 views.
        # @param [String] parent
        #   Required. The bucket in which to create the view `"projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]"` For example:"projects/my-project/
        #   locations/global/buckets/my-bucket"
        # @param [Google::Apis::LoggingV2::LogView] log_view_object
        # @param [String] view_id
        #   Required. A client-assigned identifier such as "my-view". Identifiers are
        #   limited to 100 characters and can include only letters, digits, underscores,
        #   and hyphens.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_bucket_view(parent, log_view_object = nil, view_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/views', options)
          command.request_representation = Google::Apis::LoggingV2::LogView::Representation
          command.request_object = log_view_object
          command.response_representation = Google::Apis::LoggingV2::LogView::Representation
          command.response_class = Google::Apis::LoggingV2::LogView
          command.params['parent'] = parent unless parent.nil?
          command.query['viewId'] = view_id unless view_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a view on a log bucket. If an UNAVAILABLE error is returned, this
        # indicates that system is not in a state where it can delete the view. If this
        # occurs, please try again in a few minutes.
        # @param [String] name
        #   Required. The full resource name of the view to delete: "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]" For example:"
        #   projects/my-project/locations/global/buckets/my-bucket/views/my-view"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_bucket_view(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a view on a log bucket.
        # @param [String] name
        #   Required. The resource name of the policy: "projects/[PROJECT_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]" For example:"projects/my-
        #   project/locations/global/buckets/my-bucket/views/my-view"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_bucket_view(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::LogView::Representation
          command.response_class = Google::Apis::LoggingV2::LogView
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::LoggingV2::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_bucket_view_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::LoggingV2::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::LoggingV2::Policy::Representation
          command.response_class = Google::Apis::LoggingV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists views on a log bucket.
        # @param [String] parent
        #   Required. The bucket whose views are to be listed: "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request.Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListViewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListViewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_bucket_views(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/views', options)
          command.response_representation = Google::Apis::LoggingV2::ListViewsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListViewsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a view on a log bucket. This method replaces the value of the filter
        # field from the existing view with the corresponding value from the new view.
        # If an UNAVAILABLE error is returned, this indicates that system is not in a
        # state where it can update the view. If this occurs, please try again in a few
        # minutes.
        # @param [String] name
        #   Required. The full resource name of the view to update "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]" For example:"
        #   projects/my-project/locations/global/buckets/my-bucket/views/my-view"
        # @param [Google::Apis::LoggingV2::LogView] log_view_object
        # @param [String] update_mask
        #   Optional. Field mask that specifies the fields in view that need an update. A
        #   field will be overwritten if, and only if, it is in the update mask. name and
        #   output only fields cannot be updated.For a detailed FieldMask definition, see
        #   https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   google.protobuf.FieldMaskFor example: updateMask=filter
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_location_bucket_view(name, log_view_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::LoggingV2::LogView::Representation
          command.request_object = log_view_object
          command.response_representation = Google::Apis::LoggingV2::LogView::Representation
          command.response_class = Google::Apis::LoggingV2::LogView
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED
        # errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::LoggingV2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_organization_location_bucket_view_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::LoggingV2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::LoggingV2::Policy::Representation
          command.response_class = Google::Apis::LoggingV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a
        # NOT_FOUND error.Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See
        #   Resource names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::LoggingV2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_organization_location_bucket_view_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::LoggingV2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::LoggingV2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the logs in projects, organizations, folders, or billing accounts. Only
        # logs that have entries are listed.
        # @param [String] parent
        #   Required. The resource name to list logs for: projects/[PROJECT_ID]
        #   organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[
        #   FOLDER_ID]
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [Array<String>, String] resource_names
        #   Optional. List of resource names to list logs for: projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[
        #   BUCKET_ID]/views/[VIEW_ID] folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/
        #   [BUCKET_ID]/views/[VIEW_ID]To support legacy queries, it could also be:
        #   projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[
        #   BILLING_ACCOUNT_ID] folders/[FOLDER_ID]The resource name in the parent field
        #   is added to this list.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListLogsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLogsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_bucket_view_logs(parent, page_size: nil, page_token: nil, resource_names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/logs', options)
          command.response_representation = Google::Apis::LoggingV2::ListLogsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLogsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['resourceNames'] = resource_names unless resource_names.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a log scope.
        # @param [String] parent
        #   Required. The parent project in which to create the log scope "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" For example:"projects/my-project/
        #   locations/global"
        # @param [Google::Apis::LoggingV2::LogScope] log_scope_object
        # @param [String] log_scope_id
        #   Required. A client-assigned identifier such as "log-scope". Identifiers are
        #   limited to 100 characters and can include only letters, digits, underscores,
        #   hyphens, and periods. First character has to be alphanumeric.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogScope] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogScope]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_log_scope(parent, log_scope_object = nil, log_scope_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/logScopes', options)
          command.request_representation = Google::Apis::LoggingV2::LogScope::Representation
          command.request_object = log_scope_object
          command.response_representation = Google::Apis::LoggingV2::LogScope::Representation
          command.response_class = Google::Apis::LoggingV2::LogScope
          command.params['parent'] = parent unless parent.nil?
          command.query['logScopeId'] = log_scope_id unless log_scope_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a log scope.
        # @param [String] name
        #   Required. The resource name of the log scope to delete: "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/logScopes/[LOG_SCOPE_ID]" For example:"projects/my-
        #   project/locations/global/logScopes/my-log-scope"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_log_scope(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a log scope.
        # @param [String] name
        #   Required. The resource name of the log scope: "projects/[PROJECT_ID]/locations/
        #   [LOCATION_ID]/logScopes/[LOG_SCOPE_ID]" For example:"projects/my-project/
        #   locations/global/logScopes/my-log-scope"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogScope] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogScope]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_log_scope(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::LogScope::Representation
          command.response_class = Google::Apis::LoggingV2::LogScope
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists log scopes.
        # @param [String] parent
        #   Required. The parent resource whose log scopes are to be listed: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]"
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request.Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListLogScopesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLogScopesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_log_scopes(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/logScopes', options)
          command.response_representation = Google::Apis::LoggingV2::ListLogScopesResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLogScopesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a log scope.
        # @param [String] name
        #   Output only. The resource name of the log scope.Log scopes are only available
        #   in the global location. For example:projects/my-project/locations/global/
        #   logScopes/my-log-scope
        # @param [Google::Apis::LoggingV2::LogScope] log_scope_object
        # @param [String] update_mask
        #   Optional. Field mask that specifies the fields in log_scope that need an
        #   update. A field will be overwritten if, and only if, it is in the update mask.
        #   name and output only fields cannot be updated.For a detailed FieldMask
        #   definition, see https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#google.protobuf.FieldMaskFor example: updateMask=description
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogScope] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogScope]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_location_log_scope(name, log_scope_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::LoggingV2::LogScope::Representation
          command.request_object = log_scope_object
          command.response_representation = Google::Apis::LoggingV2::LogScope::Representation
          command.response_class = Google::Apis::LoggingV2::LogScope
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to Code.CANCELLED.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::LoggingV2::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_organization_location_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:cancel', options)
          command.request_representation = Google::Apis::LoggingV2::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
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
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns UNIMPLEMENTED.
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
        # @yieldparam result [Google::Apis::LoggingV2::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/operations', options)
          command.response_representation = Google::Apis::LoggingV2::ListOperationsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the RecentQueries that were created by the user making the request.
        # @param [String] parent
        #   Required. The resource to which the listed queries belong. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" "organizations/[ORGANIZATION_ID]/
        #   locations/[LOCATION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[
        #   LOCATION_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]" For example:
        #   projects/my-project/locations/us-central1Note: The location portion of the
        #   resource must be specified, but supplying the character - in place of
        #   LOCATION_ID will return all recent queries.
        # @param [String] filter
        #   Optional. Specifies the type ("Logging" or "OpsAnalytics") of the recent
        #   queries to list. The only valid value for this field is one of the two
        #   allowable type function calls, which are the following: type("Logging") type("
        #   OpsAnalytics")
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListRecentQueriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListRecentQueriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_recent_queries(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/recentQueries', options)
          command.response_representation = Google::Apis::LoggingV2::ListRecentQueriesResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListRecentQueriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new SavedQuery for the user making the request.
        # @param [String] parent
        #   Required. The parent resource in which to create the saved query: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" "organizations/[ORGANIZATION_ID]/
        #   locations/[LOCATION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[
        #   LOCATION_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]" For example: "
        #   projects/my-project/locations/global" "organizations/123456789/locations/us-
        #   central1"
        # @param [Google::Apis::LoggingV2::SavedQuery] saved_query_object
        # @param [String] saved_query_id
        #   Optional. The ID to use for the saved query, which will become the final
        #   component of the saved query's resource name.If the saved_query_id is not
        #   provided, the system will generate an alphanumeric ID.The saved_query_id is
        #   limited to 100 characters and can include only the following characters: upper
        #   and lower-case alphanumeric characters, underscores, hyphens, periods.First
        #   character has to be alphanumeric.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::SavedQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::SavedQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_saved_query(parent, saved_query_object = nil, saved_query_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/savedQueries', options)
          command.request_representation = Google::Apis::LoggingV2::SavedQuery::Representation
          command.request_object = saved_query_object
          command.response_representation = Google::Apis::LoggingV2::SavedQuery::Representation
          command.response_class = Google::Apis::LoggingV2::SavedQuery
          command.params['parent'] = parent unless parent.nil?
          command.query['savedQueryId'] = saved_query_id unless saved_query_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing SavedQuery that was created by the user making the request.
        # @param [String] name
        #   Required. The full resource name of the saved query to delete. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/savedQueries/[
        #   QUERY_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]
        #   " For example: "projects/my-project/locations/global/savedQueries/my-saved-
        #   query"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_saved_query(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all data associated with the requested query.
        # @param [String] name
        #   Required. The resource name of the saved query. "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/savedQueries/[QUERY_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/savedQueries/[
        #   QUERY_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]
        #   " For example: "projects/my-project/locations/global/savedQueries/my-saved-
        #   query"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::SavedQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::SavedQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_saved_query(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::SavedQuery::Representation
          command.response_class = Google::Apis::LoggingV2::SavedQuery
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the SavedQueries that were created by the user making the request.
        # @param [String] parent
        #   Required. The resource to which the listed queries belong. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" "organizations/[ORGANIZATION_ID]/
        #   locations/[LOCATION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[
        #   LOCATION_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]" For example: "
        #   projects/my-project/locations/us-central1" Note: The locations portion of the
        #   resource must be specified. To get a list of all saved queries, a wildcard
        #   character - can be used for LOCATION_ID, for example: "projects/my-project/
        #   locations/-"
        # @param [String] filter
        #   Optional. Specifies the type ("Logging" or "OpsAnalytics") and the visibility (
        #   PRIVATE or SHARED) of the saved queries to list. If provided, the filter must
        #   contain either the type function or a visibility token, or both. If both are
        #   chosen, they can be placed in any order, but they must be joined by the AND
        #   operator or the empty character.The two supported type function calls are:
        #   type("Logging") type("OpsAnalytics")The two supported visibility tokens are:
        #   visibility = PRIVATE visibility = SHAREDFor example:type("Logging") AND
        #   visibility = PRIVATE visibility=SHARED type("OpsAnalytics") type("OpsAnalytics)
        #   " visibility = PRIVATE visibility = SHARED
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request.Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListSavedQueriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListSavedQueriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_saved_queries(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/savedQueries', options)
          command.response_representation = Google::Apis::LoggingV2::ListSavedQueriesResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListSavedQueriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing SavedQuery.
        # @param [String] name
        #   Output only. Resource name of the saved query.In the format: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]" For a list of
        #   supported locations, see Supported Regions (https://cloud.google.com/logging/
        #   docs/region-support#bucket-regions)After the saved query is created, the
        #   location cannot be changed.If the user doesn't provide a QUERY_ID, the system
        #   will generate an alphanumeric ID.
        # @param [Google::Apis::LoggingV2::SavedQuery] saved_query_object
        # @param [String] update_mask
        #   Required. A non-empty list of fields to change in the existing saved query.
        #   Fields are relative to the saved_query and new values for the fields are taken
        #   from the corresponding fields in the SavedQuery included in this request.
        #   Fields not mentioned in update_mask are not changed and are ignored in the
        #   request.To update all mutable fields, specify an update_mask of *.For example,
        #   to change the description and query filter text of a saved query, specify an
        #   update_mask of "description, query.filter".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::SavedQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::SavedQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_location_saved_query(name, saved_query_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::LoggingV2::SavedQuery::Representation
          command.request_object = saved_query_object
          command.response_representation = Google::Apis::LoggingV2::SavedQuery::Representation
          command.response_class = Google::Apis::LoggingV2::SavedQuery
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes all the log entries in a log for the global _Default Log Bucket. The
        # log reappears if it receives new entries. Log entries written shortly before
        # the delete operation might not be deleted. Entries received after the delete
        # operation with a timestamp before the operation will be deleted.
        # @param [String] log_name
        #   Required. The resource name of the log to delete: projects/[PROJECT_ID]/logs/[
        #   LOG_ID] organizations/[ORGANIZATION_ID]/logs/[LOG_ID] billingAccounts/[
        #   BILLING_ACCOUNT_ID]/logs/[LOG_ID] folders/[FOLDER_ID]/logs/[LOG_ID][LOG_ID]
        #   must be URL-encoded. For example, "projects/my-project-id/logs/syslog", "
        #   organizations/123/logs/cloudaudit.googleapis.com%2Factivity".For more
        #   information about log names, see LogEntry.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_log(log_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+logName}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['logName'] = log_name unless log_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the logs in projects, organizations, folders, or billing accounts. Only
        # logs that have entries are listed.
        # @param [String] parent
        #   Required. The resource name to list logs for: projects/[PROJECT_ID]
        #   organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[
        #   FOLDER_ID]
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [Array<String>, String] resource_names
        #   Optional. List of resource names to list logs for: projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[
        #   BUCKET_ID]/views/[VIEW_ID] folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/
        #   [BUCKET_ID]/views/[VIEW_ID]To support legacy queries, it could also be:
        #   projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[
        #   BILLING_ACCOUNT_ID] folders/[FOLDER_ID]The resource name in the parent field
        #   is added to this list.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListLogsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLogsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_logs(parent, page_size: nil, page_token: nil, resource_names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/logs', options)
          command.response_representation = Google::Apis::LoggingV2::ListLogsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLogsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['resourceNames'] = resource_names unless resource_names.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a sink that exports specified log entries to a destination. The export
        # begins upon ingress, unless the sink's writer_identity is not permitted to
        # write to the destination. A sink can export log entries only from the resource
        # owning the sink.
        # @param [String] parent
        #   Required. The resource in which to create the sink: "projects/[PROJECT_ID]" "
        #   organizations/[ORGANIZATION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]" "
        #   folders/[FOLDER_ID]" For examples:"projects/my-project" "organizations/
        #   123456789"
        # @param [Google::Apis::LoggingV2::LogSink] log_sink_object
        # @param [String] custom_writer_identity
        #   Optional. The service account provided by the caller that will be used to
        #   write the log entries. The format must be serviceAccount:some@email. This
        #   field can only be specified when you are routing logs to a log bucket that is
        #   in a different project than the sink. When not specified, a Logging service
        #   account will automatically be generated.
        # @param [Boolean] unique_writer_identity
        #   Optional. Determines the kind of IAM identity returned as writer_identity in
        #   the new sink. If this value is omitted or set to false, and if the sink's
        #   parent is a project, then the value returned as writer_identity is the same
        #   group or service account used by Cloud Logging before the addition of writer
        #   identities to this API. The sink's destination must be in the same project as
        #   the sink itself.If this field is set to true, or if the sink is owned by a non-
        #   project resource such as an organization, then the value of writer_identity
        #   will be a service agent (https://cloud.google.com/iam/docs/service-account-
        #   types#service-agents) used by the sinks with the same parent. For more
        #   information, see writer_identity in LogSink.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_sink(parent, log_sink_object = nil, custom_writer_identity: nil, unique_writer_identity: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/sinks', options)
          command.request_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.request_object = log_sink_object
          command.response_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.response_class = Google::Apis::LoggingV2::LogSink
          command.params['parent'] = parent unless parent.nil?
          command.query['customWriterIdentity'] = custom_writer_identity unless custom_writer_identity.nil?
          command.query['uniqueWriterIdentity'] = unique_writer_identity unless unique_writer_identity.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a sink. If the sink has a unique writer_identity, then that service
        # account is also deleted.
        # @param [String] sink_name
        #   Required. The full resource name of the sink to delete, including the parent
        #   resource and the sink identifier: "projects/[PROJECT_ID]/sinks/[SINK_ID]" "
        #   organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/sinks/[SINK_ID]" "folders/[FOLDER_ID]/sinks/[SINK_ID]" For
        #   example:"projects/my-project/sinks/my-sink"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_sink(sink_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+sinkName}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['sinkName'] = sink_name unless sink_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a sink.
        # @param [String] sink_name
        #   Required. The resource name of the sink: "projects/[PROJECT_ID]/sinks/[SINK_ID]
        #   " "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/sinks/[SINK_ID]" "folders/[FOLDER_ID]/sinks/[SINK_ID]" For
        #   example:"projects/my-project/sinks/my-sink"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_sink(sink_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+sinkName}', options)
          command.response_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.response_class = Google::Apis::LoggingV2::LogSink
          command.params['sinkName'] = sink_name unless sink_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists sinks.
        # @param [String] parent
        #   Required. The parent resource whose sinks are to be listed: "projects/[
        #   PROJECT_ID]" "organizations/[ORGANIZATION_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
        # @param [String] filter
        #   Optional. A filter expression to constrain the sinks returned. Today, this
        #   only supports the following strings: '' 'in_scope("ALL")', 'in_scope("ANCESTOR"
        #   )', 'in_scope("DEFAULT")'.Description of scopes below. ALL: Includes all of
        #   the sinks which can be returned in any other scope. ANCESTOR: Includes
        #   intercepting sinks owned by ancestor resources. DEFAULT: Includes sinks owned
        #   by parent.When the empty string is provided, then the filter 'in_scope("
        #   DEFAULT")' is applied.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListSinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListSinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_sinks(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/sinks', options)
          command.response_representation = Google::Apis::LoggingV2::ListSinksResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListSinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a sink. This method replaces the values of the destination and filter
        # fields of the existing sink with the corresponding values from the new sink.
        # The updated sink might also have a new writer_identity; see the
        # unique_writer_identity field.
        # @param [String] sink_name
        #   Required. The full resource name of the sink to update, including the parent
        #   resource and the sink identifier: "projects/[PROJECT_ID]/sinks/[SINK_ID]" "
        #   organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/sinks/[SINK_ID]" "folders/[FOLDER_ID]/sinks/[SINK_ID]" For
        #   example:"projects/my-project/sinks/my-sink"
        # @param [Google::Apis::LoggingV2::LogSink] log_sink_object
        # @param [String] custom_writer_identity
        #   Optional. The service account provided by the caller that will be used to
        #   write the log entries. The format must be serviceAccount:some@email. This
        #   field can only be specified when you are routing logs to a log bucket that is
        #   in a different project than the sink. When not specified, a Logging service
        #   account will automatically be generated.
        # @param [Boolean] unique_writer_identity
        #   Optional. See sinks.create for a description of this field. When updating a
        #   sink, the effect of this field on the value of writer_identity in the updated
        #   sink depends on both the old and new values of this field: If the old and new
        #   values of this field are both false or both true, then there is no change to
        #   the sink's writer_identity. If the old value is false and the new value is
        #   true, then writer_identity is changed to a service agent (https://cloud.google.
        #   com/iam/docs/service-account-types#service-agents) owned by Cloud Logging. It
        #   is an error if the old value is true and the new value is set to false or
        #   defaulted to false.
        # @param [String] update_mask
        #   Optional. Field mask that specifies the fields in sink that need an update. A
        #   sink field will be overwritten if, and only if, it is in the update mask. name
        #   and output only fields cannot be updated.An empty updateMask is temporarily
        #   treated as using the following mask for backwards compatibility purposes:
        #   destination,filter,includeChildrenAt some point in the future, behavior will
        #   be removed and specifying an empty updateMask will be an error.For a detailed
        #   FieldMask definition, see https://developers.google.com/protocol-buffers/docs/
        #   reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=
        #   filter
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_sink(sink_name, log_sink_object = nil, custom_writer_identity: nil, unique_writer_identity: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+sinkName}', options)
          command.request_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.request_object = log_sink_object
          command.response_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.response_class = Google::Apis::LoggingV2::LogSink
          command.params['sinkName'] = sink_name unless sink_name.nil?
          command.query['customWriterIdentity'] = custom_writer_identity unless custom_writer_identity.nil?
          command.query['uniqueWriterIdentity'] = unique_writer_identity unless unique_writer_identity.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a sink. This method replaces the values of the destination and filter
        # fields of the existing sink with the corresponding values from the new sink.
        # The updated sink might also have a new writer_identity; see the
        # unique_writer_identity field.
        # @param [String] sink_name
        #   Required. The full resource name of the sink to update, including the parent
        #   resource and the sink identifier: "projects/[PROJECT_ID]/sinks/[SINK_ID]" "
        #   organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/sinks/[SINK_ID]" "folders/[FOLDER_ID]/sinks/[SINK_ID]" For
        #   example:"projects/my-project/sinks/my-sink"
        # @param [Google::Apis::LoggingV2::LogSink] log_sink_object
        # @param [String] custom_writer_identity
        #   Optional. The service account provided by the caller that will be used to
        #   write the log entries. The format must be serviceAccount:some@email. This
        #   field can only be specified when you are routing logs to a log bucket that is
        #   in a different project than the sink. When not specified, a Logging service
        #   account will automatically be generated.
        # @param [Boolean] unique_writer_identity
        #   Optional. See sinks.create for a description of this field. When updating a
        #   sink, the effect of this field on the value of writer_identity in the updated
        #   sink depends on both the old and new values of this field: If the old and new
        #   values of this field are both false or both true, then there is no change to
        #   the sink's writer_identity. If the old value is false and the new value is
        #   true, then writer_identity is changed to a service agent (https://cloud.google.
        #   com/iam/docs/service-account-types#service-agents) owned by Cloud Logging. It
        #   is an error if the old value is true and the new value is set to false or
        #   defaulted to false.
        # @param [String] update_mask
        #   Optional. Field mask that specifies the fields in sink that need an update. A
        #   sink field will be overwritten if, and only if, it is in the update mask. name
        #   and output only fields cannot be updated.An empty updateMask is temporarily
        #   treated as using the following mask for backwards compatibility purposes:
        #   destination,filter,includeChildrenAt some point in the future, behavior will
        #   be removed and specifying an empty updateMask will be an error.For a detailed
        #   FieldMask definition, see https://developers.google.com/protocol-buffers/docs/
        #   reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=
        #   filter
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_sink(sink_name, log_sink_object = nil, custom_writer_identity: nil, unique_writer_identity: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v2/{+sinkName}', options)
          command.request_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.request_object = log_sink_object
          command.response_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.response_class = Google::Apis::LoggingV2::LogSink
          command.params['sinkName'] = sink_name unless sink_name.nil?
          command.query['customWriterIdentity'] = custom_writer_identity unless custom_writer_identity.nil?
          command.query['uniqueWriterIdentity'] = unique_writer_identity unless unique_writer_identity.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log
        # Router can be configured for Google Cloud projects, folders, organizations,
        # and billing accounts. Once configured for an organization, it applies to all
        # projects and folders in the Google Cloud organization.See Enabling CMEK for
        # Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption)
        # for more information.
        # @param [String] name
        #   Required. The resource for which to retrieve CMEK settings. "projects/[
        #   PROJECT_ID]/cmekSettings" "organizations/[ORGANIZATION_ID]/cmekSettings" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/cmekSettings" "folders/[FOLDER_ID]/
        #   cmekSettings" For example:"organizations/12345/cmekSettings"Note: CMEK for the
        #   Log Router can be configured for Google Cloud projects, folders, organizations,
        #   and billing accounts. Once configured for an organization, it applies to all
        #   projects and folders in the Google Cloud organization.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::CmekSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::CmekSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_cmek_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/cmekSettings', options)
          command.response_representation = Google::Apis::LoggingV2::CmekSettings::Representation
          command.response_class = Google::Apis::LoggingV2::CmekSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the settings for the given resource.Note: Settings can be retrieved for
        # Google Cloud projects, folders, organizations, and billing accounts.See View
        # default resource settings for Logging (https://cloud.google.com/logging/docs/
        # default-settings#view-org-settings) for more information.
        # @param [String] name
        #   Required. The resource for which to retrieve settings. "projects/[PROJECT_ID]/
        #   settings" "organizations/[ORGANIZATION_ID]/settings" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/settings" "folders/[FOLDER_ID]/settings" For example:"
        #   organizations/12345/settings"Note: Settings can be retrieved for Google Cloud
        #   projects, folders, organizations, and billing accounts.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Settings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Settings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/settings', options)
          command.response_representation = Google::Apis::LoggingV2::Settings::Representation
          command.response_class = Google::Apis::LoggingV2::Settings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new exclusion in the _Default sink in a specified parent resource.
        # Only log entries belonging to that resource can be excluded. You can have up
        # to 10 exclusions in a resource.
        # @param [String] parent
        #   Required. The parent resource in which to create the exclusion: "projects/[
        #   PROJECT_ID]" "organizations/[ORGANIZATION_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]" For examples:"projects/my-logging-
        #   project" "organizations/123456789"
        # @param [Google::Apis::LoggingV2::LogExclusion] log_exclusion_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogExclusion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogExclusion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_exclusion(parent, log_exclusion_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/exclusions', options)
          command.request_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.request_object = log_exclusion_object
          command.response_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.response_class = Google::Apis::LoggingV2::LogExclusion
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an exclusion in the _Default sink.
        # @param [String] name
        #   Required. The resource name of an existing exclusion to delete: "projects/[
        #   PROJECT_ID]/exclusions/[EXCLUSION_ID]" "organizations/[ORGANIZATION_ID]/
        #   exclusions/[EXCLUSION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[
        #   EXCLUSION_ID]" "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" For example:"
        #   projects/my-project/exclusions/my-exclusion"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_exclusion(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the description of an exclusion in the _Default sink.
        # @param [String] name
        #   Required. The resource name of an existing exclusion: "projects/[PROJECT_ID]/
        #   exclusions/[EXCLUSION_ID]" "organizations/[ORGANIZATION_ID]/exclusions/[
        #   EXCLUSION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
        #   "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" For example:"projects/my-
        #   project/exclusions/my-exclusion"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogExclusion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogExclusion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_exclusion(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.response_class = Google::Apis::LoggingV2::LogExclusion
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the exclusions on the _Default sink in a parent resource.
        # @param [String] parent
        #   Required. The parent resource whose exclusions are to be listed. "projects/[
        #   PROJECT_ID]" "organizations/[ORGANIZATION_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListExclusionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListExclusionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_exclusions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/exclusions', options)
          command.response_representation = Google::Apis::LoggingV2::ListExclusionsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListExclusionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Changes one or more properties of an existing exclusion in the _Default sink.
        # @param [String] name
        #   Required. The resource name of the exclusion to update: "projects/[PROJECT_ID]/
        #   exclusions/[EXCLUSION_ID]" "organizations/[ORGANIZATION_ID]/exclusions/[
        #   EXCLUSION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/exclusions/[EXCLUSION_ID]"
        #   "folders/[FOLDER_ID]/exclusions/[EXCLUSION_ID]" For example:"projects/my-
        #   project/exclusions/my-exclusion"
        # @param [Google::Apis::LoggingV2::LogExclusion] log_exclusion_object
        # @param [String] update_mask
        #   Required. A non-empty list of fields to change in the existing exclusion. New
        #   values for the fields are taken from the corresponding fields in the
        #   LogExclusion included in this request. Fields not mentioned in update_mask are
        #   not changed and are ignored in the request.For example, to change the filter
        #   and description of an exclusion, specify an update_mask of "filter,description"
        #   .
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogExclusion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogExclusion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_exclusion(name, log_exclusion_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.request_object = log_exclusion_object
          command.response_representation = Google::Apis::LoggingV2::LogExclusion::Representation
          command.response_class = Google::Apis::LoggingV2::LogExclusion
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # @yieldparam result [Google::Apis::LoggingV2::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Location::Representation
          command.response_class = Google::Apis::LoggingV2::Location
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
        #   accepts strings like "displayName=tokyo", and is documented in more detail in
        #   AIP-160 (https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of results to return. If not set, the service selects a
        #   default.
        # @param [String] page_token
        #   A page token received from the next_page_token field in the response. Send
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
        # @yieldparam result [Google::Apis::LoggingV2::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/locations', options)
          command.response_representation = Google::Apis::LoggingV2::ListLocationsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a log bucket that can be used to store log entries. After a bucket has
        # been created, the bucket's location cannot be changed.
        # @param [String] parent
        #   Required. The resource in which to create the log bucket: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" For example:"projects/my-project/
        #   locations/global"
        # @param [Google::Apis::LoggingV2::LogBucket] log_bucket_object
        # @param [String] bucket_id
        #   Required. A client-assigned identifier such as "my-bucket". Identifiers are
        #   limited to 100 characters and can include only letters, digits, underscores,
        #   hyphens, and periods. Bucket identifiers must start with an alphanumeric
        #   character.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogBucket] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogBucket]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_bucket(parent, log_bucket_object = nil, bucket_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/buckets', options)
          command.request_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.request_object = log_bucket_object
          command.response_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.response_class = Google::Apis::LoggingV2::LogBucket
          command.params['parent'] = parent unless parent.nil?
          command.query['bucketId'] = bucket_id unless bucket_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a log bucket asynchronously that can be used to store log entries.
        # After a bucket has been created, the bucket's location cannot be changed.
        # @param [String] parent
        #   Required. The resource in which to create the log bucket: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" For example:"projects/my-project/
        #   locations/global"
        # @param [Google::Apis::LoggingV2::LogBucket] log_bucket_object
        # @param [String] bucket_id
        #   Required. A client-assigned identifier such as "my-bucket". Identifiers are
        #   limited to 100 characters and can include only letters, digits, underscores,
        #   hyphens, and periods. Bucket identifiers must start with an alphanumeric
        #   character.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_bucket_async(parent, log_bucket_object = nil, bucket_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/buckets:createAsync', options)
          command.request_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.request_object = log_bucket_object
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['bucketId'] = bucket_id unless bucket_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a log bucket.Changes the bucket's lifecycle_state to the
        # DELETE_REQUESTED state. After 7 days, the bucket will be purged and all log
        # entries in the bucket will be permanently deleted.
        # @param [String] name
        #   Required. The full resource name of the bucket to delete. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/
        #   my-project/locations/global/buckets/my-bucket"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_bucket(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a log bucket.
        # @param [String] name
        #   Required. The resource name of the bucket: "projects/[PROJECT_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[ORGANIZATION_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[FOLDER_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/my-project/locations/
        #   global/buckets/my-bucket"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogBucket] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogBucket]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_bucket(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.response_class = Google::Apis::LoggingV2::LogBucket
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists log buckets.
        # @param [String] parent
        #   Required. The parent resource whose buckets are to be listed: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" "organizations/[ORGANIZATION_ID]/
        #   locations/[LOCATION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[
        #   LOCATION_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]" Note: The
        #   locations portion of the resource must be specified, but supplying the
        #   character - in place of LOCATION_ID will return all buckets.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListBucketsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListBucketsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_buckets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/buckets', options)
          command.response_representation = Google::Apis::LoggingV2::ListBucketsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListBucketsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a log bucket.If the bucket has a lifecycle_state of DELETE_REQUESTED,
        # then FAILED_PRECONDITION will be returned.After a bucket has been created, the
        # bucket's location cannot be changed.
        # @param [String] name
        #   Required. The full resource name of the bucket to update. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/
        #   my-project/locations/global/buckets/my-bucket"
        # @param [Google::Apis::LoggingV2::LogBucket] log_bucket_object
        # @param [String] update_mask
        #   Required. Field mask that specifies the fields in bucket that need an update.
        #   A bucket field will be overwritten if, and only if, it is in the update mask.
        #   name and output only fields cannot be updated.For a detailed FieldMask
        #   definition, see: https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#google.protobuf.FieldMaskFor example: updateMask=
        #   retention_days
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogBucket] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogBucket]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_bucket(name, log_bucket_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.request_object = log_bucket_object
          command.response_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.response_class = Google::Apis::LoggingV2::LogBucket
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undeletes a log bucket. A bucket that has been deleted can be undeleted within
        # the grace period of 7 days.
        # @param [String] name
        #   Required. The full resource name of the bucket to undelete. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/
        #   my-project/locations/global/buckets/my-bucket"
        # @param [Google::Apis::LoggingV2::UndeleteBucketRequest] undelete_bucket_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_project_location_bucket(name, undelete_bucket_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:undelete', options)
          command.request_representation = Google::Apis::LoggingV2::UndeleteBucketRequest::Representation
          command.request_object = undelete_bucket_request_object
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a log bucket asynchronously.If the bucket has a lifecycle_state of
        # DELETE_REQUESTED, then FAILED_PRECONDITION will be returned.After a bucket has
        # been created, the bucket's location cannot be changed.
        # @param [String] name
        #   Required. The full resource name of the bucket to update. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/
        #   my-project/locations/global/buckets/my-bucket"
        # @param [Google::Apis::LoggingV2::LogBucket] log_bucket_object
        # @param [String] update_mask
        #   Required. Field mask that specifies the fields in bucket that need an update.
        #   A bucket field will be overwritten if, and only if, it is in the update mask.
        #   name and output only fields cannot be updated.For a detailed FieldMask
        #   definition, see: https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#google.protobuf.FieldMaskFor example: updateMask=
        #   retention_days
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_bucket_async(name, log_bucket_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:updateAsync', options)
          command.request_representation = Google::Apis::LoggingV2::LogBucket::Representation
          command.request_object = log_bucket_object
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Asynchronously creates a linked dataset in BigQuery which makes it possible to
        # use BigQuery to read the logs stored in the log bucket. A log bucket may
        # currently only contain one link.
        # @param [String] parent
        #   Required. The full resource name of the bucket to create a link for. "projects/
        #   [PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
        # @param [Google::Apis::LoggingV2::Link] link_object
        # @param [String] link_id
        #   Required. The ID to use for the link. The link_id can have up to 100
        #   characters. A valid link_id must only have alphanumeric characters and
        #   underscores within it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_bucket_link(parent, link_object = nil, link_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/links', options)
          command.request_representation = Google::Apis::LoggingV2::Link::Representation
          command.request_object = link_object
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['linkId'] = link_id unless link_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a link. This will also delete the corresponding BigQuery linked
        # dataset.
        # @param [String] name
        #   Required. The full resource name of the link to delete. "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[
        #   BUCKET_ID]/links/[LINK_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/
        #   buckets/[BUCKET_ID]/links/[LINK_ID]"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_bucket_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a link.
        # @param [String] name
        #   Required. The resource name of the link: "projects/[PROJECT_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[
        #   BUCKET_ID]/links/[LINK_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/
        #   buckets/[BUCKET_ID]/links/[LINK_ID]"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Link] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Link]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_bucket_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Link::Representation
          command.response_class = Google::Apis::LoggingV2::Link
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists links.
        # @param [String] parent
        #   Required. The parent resource whose links are to be listed: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        #   [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        #   FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_bucket_links(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/links', options)
          command.response_representation = Google::Apis::LoggingV2::ListLinksResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a view over log entries in a log bucket. A bucket may contain a
        # maximum of 30 views.
        # @param [String] parent
        #   Required. The bucket in which to create the view `"projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]"` For example:"projects/my-project/
        #   locations/global/buckets/my-bucket"
        # @param [Google::Apis::LoggingV2::LogView] log_view_object
        # @param [String] view_id
        #   Required. A client-assigned identifier such as "my-view". Identifiers are
        #   limited to 100 characters and can include only letters, digits, underscores,
        #   and hyphens.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_bucket_view(parent, log_view_object = nil, view_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/views', options)
          command.request_representation = Google::Apis::LoggingV2::LogView::Representation
          command.request_object = log_view_object
          command.response_representation = Google::Apis::LoggingV2::LogView::Representation
          command.response_class = Google::Apis::LoggingV2::LogView
          command.params['parent'] = parent unless parent.nil?
          command.query['viewId'] = view_id unless view_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a view on a log bucket. If an UNAVAILABLE error is returned, this
        # indicates that system is not in a state where it can delete the view. If this
        # occurs, please try again in a few minutes.
        # @param [String] name
        #   Required. The full resource name of the view to delete: "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]" For example:"
        #   projects/my-project/locations/global/buckets/my-bucket/views/my-view"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_bucket_view(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a view on a log bucket.
        # @param [String] name
        #   Required. The resource name of the policy: "projects/[PROJECT_ID]/locations/[
        #   LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]" For example:"projects/my-
        #   project/locations/global/buckets/my-bucket/views/my-view"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_bucket_view(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::LogView::Representation
          command.response_class = Google::Apis::LoggingV2::LogView
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::LoggingV2::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_bucket_view_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::LoggingV2::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::LoggingV2::Policy::Representation
          command.response_class = Google::Apis::LoggingV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists views on a log bucket.
        # @param [String] parent
        #   Required. The bucket whose views are to be listed: "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request.Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListViewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListViewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_bucket_views(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/views', options)
          command.response_representation = Google::Apis::LoggingV2::ListViewsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListViewsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a view on a log bucket. This method replaces the value of the filter
        # field from the existing view with the corresponding value from the new view.
        # If an UNAVAILABLE error is returned, this indicates that system is not in a
        # state where it can update the view. If this occurs, please try again in a few
        # minutes.
        # @param [String] name
        #   Required. The full resource name of the view to update "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]" For example:"
        #   projects/my-project/locations/global/buckets/my-bucket/views/my-view"
        # @param [Google::Apis::LoggingV2::LogView] log_view_object
        # @param [String] update_mask
        #   Optional. Field mask that specifies the fields in view that need an update. A
        #   field will be overwritten if, and only if, it is in the update mask. name and
        #   output only fields cannot be updated.For a detailed FieldMask definition, see
        #   https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   google.protobuf.FieldMaskFor example: updateMask=filter
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_bucket_view(name, log_view_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::LoggingV2::LogView::Representation
          command.request_object = log_view_object
          command.response_representation = Google::Apis::LoggingV2::LogView::Representation
          command.response_class = Google::Apis::LoggingV2::LogView
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED
        # errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See Resource
        #   names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::LoggingV2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_bucket_view_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::LoggingV2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::LoggingV2::Policy::Representation
          command.response_class = Google::Apis::LoggingV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a
        # NOT_FOUND error.Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See
        #   Resource names (https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::LoggingV2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_location_bucket_view_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::LoggingV2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::LoggingV2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the logs in projects, organizations, folders, or billing accounts. Only
        # logs that have entries are listed.
        # @param [String] parent
        #   Required. The resource name to list logs for: projects/[PROJECT_ID]
        #   organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[
        #   FOLDER_ID]
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [Array<String>, String] resource_names
        #   Optional. List of resource names to list logs for: projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[
        #   BUCKET_ID]/views/[VIEW_ID] folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/
        #   [BUCKET_ID]/views/[VIEW_ID]To support legacy queries, it could also be:
        #   projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[
        #   BILLING_ACCOUNT_ID] folders/[FOLDER_ID]The resource name in the parent field
        #   is added to this list.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListLogsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLogsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_bucket_view_logs(parent, page_size: nil, page_token: nil, resource_names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/logs', options)
          command.response_representation = Google::Apis::LoggingV2::ListLogsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLogsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['resourceNames'] = resource_names unless resource_names.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a log scope.
        # @param [String] parent
        #   Required. The parent project in which to create the log scope "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" For example:"projects/my-project/
        #   locations/global"
        # @param [Google::Apis::LoggingV2::LogScope] log_scope_object
        # @param [String] log_scope_id
        #   Required. A client-assigned identifier such as "log-scope". Identifiers are
        #   limited to 100 characters and can include only letters, digits, underscores,
        #   hyphens, and periods. First character has to be alphanumeric.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogScope] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogScope]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_log_scope(parent, log_scope_object = nil, log_scope_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/logScopes', options)
          command.request_representation = Google::Apis::LoggingV2::LogScope::Representation
          command.request_object = log_scope_object
          command.response_representation = Google::Apis::LoggingV2::LogScope::Representation
          command.response_class = Google::Apis::LoggingV2::LogScope
          command.params['parent'] = parent unless parent.nil?
          command.query['logScopeId'] = log_scope_id unless log_scope_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a log scope.
        # @param [String] name
        #   Required. The resource name of the log scope to delete: "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/logScopes/[LOG_SCOPE_ID]" For example:"projects/my-
        #   project/locations/global/logScopes/my-log-scope"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_log_scope(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a log scope.
        # @param [String] name
        #   Required. The resource name of the log scope: "projects/[PROJECT_ID]/locations/
        #   [LOCATION_ID]/logScopes/[LOG_SCOPE_ID]" For example:"projects/my-project/
        #   locations/global/logScopes/my-log-scope"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogScope] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogScope]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_log_scope(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::LogScope::Representation
          command.response_class = Google::Apis::LoggingV2::LogScope
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists log scopes.
        # @param [String] parent
        #   Required. The parent resource whose log scopes are to be listed: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]"
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request.Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListLogScopesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLogScopesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_log_scopes(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/logScopes', options)
          command.response_representation = Google::Apis::LoggingV2::ListLogScopesResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLogScopesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a log scope.
        # @param [String] name
        #   Output only. The resource name of the log scope.Log scopes are only available
        #   in the global location. For example:projects/my-project/locations/global/
        #   logScopes/my-log-scope
        # @param [Google::Apis::LoggingV2::LogScope] log_scope_object
        # @param [String] update_mask
        #   Optional. Field mask that specifies the fields in log_scope that need an
        #   update. A field will be overwritten if, and only if, it is in the update mask.
        #   name and output only fields cannot be updated.For a detailed FieldMask
        #   definition, see https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#google.protobuf.FieldMaskFor example: updateMask=description
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogScope] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogScope]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_log_scope(name, log_scope_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::LoggingV2::LogScope::Representation
          command.request_object = log_scope_object
          command.response_representation = Google::Apis::LoggingV2::LogScope::Representation
          command.response_class = Google::Apis::LoggingV2::LogScope
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to Code.CANCELLED.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::LoggingV2::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:cancel', options)
          command.request_representation = Google::Apis::LoggingV2::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
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
        # @yieldparam result [Google::Apis::LoggingV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Operation::Representation
          command.response_class = Google::Apis::LoggingV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns UNIMPLEMENTED.
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
        # @yieldparam result [Google::Apis::LoggingV2::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/operations', options)
          command.response_representation = Google::Apis::LoggingV2::ListOperationsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the RecentQueries that were created by the user making the request.
        # @param [String] parent
        #   Required. The resource to which the listed queries belong. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" "organizations/[ORGANIZATION_ID]/
        #   locations/[LOCATION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[
        #   LOCATION_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]" For example:
        #   projects/my-project/locations/us-central1Note: The location portion of the
        #   resource must be specified, but supplying the character - in place of
        #   LOCATION_ID will return all recent queries.
        # @param [String] filter
        #   Optional. Specifies the type ("Logging" or "OpsAnalytics") of the recent
        #   queries to list. The only valid value for this field is one of the two
        #   allowable type function calls, which are the following: type("Logging") type("
        #   OpsAnalytics")
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListRecentQueriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListRecentQueriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_recent_queries(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/recentQueries', options)
          command.response_representation = Google::Apis::LoggingV2::ListRecentQueriesResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListRecentQueriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new SavedQuery for the user making the request.
        # @param [String] parent
        #   Required. The parent resource in which to create the saved query: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" "organizations/[ORGANIZATION_ID]/
        #   locations/[LOCATION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[
        #   LOCATION_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]" For example: "
        #   projects/my-project/locations/global" "organizations/123456789/locations/us-
        #   central1"
        # @param [Google::Apis::LoggingV2::SavedQuery] saved_query_object
        # @param [String] saved_query_id
        #   Optional. The ID to use for the saved query, which will become the final
        #   component of the saved query's resource name.If the saved_query_id is not
        #   provided, the system will generate an alphanumeric ID.The saved_query_id is
        #   limited to 100 characters and can include only the following characters: upper
        #   and lower-case alphanumeric characters, underscores, hyphens, periods.First
        #   character has to be alphanumeric.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::SavedQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::SavedQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_saved_query(parent, saved_query_object = nil, saved_query_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/savedQueries', options)
          command.request_representation = Google::Apis::LoggingV2::SavedQuery::Representation
          command.request_object = saved_query_object
          command.response_representation = Google::Apis::LoggingV2::SavedQuery::Representation
          command.response_class = Google::Apis::LoggingV2::SavedQuery
          command.params['parent'] = parent unless parent.nil?
          command.query['savedQueryId'] = saved_query_id unless saved_query_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing SavedQuery that was created by the user making the request.
        # @param [String] name
        #   Required. The full resource name of the saved query to delete. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/savedQueries/[
        #   QUERY_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]
        #   " For example: "projects/my-project/locations/global/savedQueries/my-saved-
        #   query"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_saved_query(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all data associated with the requested query.
        # @param [String] name
        #   Required. The resource name of the saved query. "projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/savedQueries/[QUERY_ID]" "organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/savedQueries/[
        #   QUERY_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]
        #   " For example: "projects/my-project/locations/global/savedQueries/my-saved-
        #   query"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::SavedQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::SavedQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_saved_query(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::LoggingV2::SavedQuery::Representation
          command.response_class = Google::Apis::LoggingV2::SavedQuery
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the SavedQueries that were created by the user making the request.
        # @param [String] parent
        #   Required. The resource to which the listed queries belong. "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]" "organizations/[ORGANIZATION_ID]/
        #   locations/[LOCATION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/locations/[
        #   LOCATION_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]" For example: "
        #   projects/my-project/locations/us-central1" Note: The locations portion of the
        #   resource must be specified. To get a list of all saved queries, a wildcard
        #   character - can be used for LOCATION_ID, for example: "projects/my-project/
        #   locations/-"
        # @param [String] filter
        #   Optional. Specifies the type ("Logging" or "OpsAnalytics") and the visibility (
        #   PRIVATE or SHARED) of the saved queries to list. If provided, the filter must
        #   contain either the type function or a visibility token, or both. If both are
        #   chosen, they can be placed in any order, but they must be joined by the AND
        #   operator or the empty character.The two supported type function calls are:
        #   type("Logging") type("OpsAnalytics")The two supported visibility tokens are:
        #   visibility = PRIVATE visibility = SHAREDFor example:type("Logging") AND
        #   visibility = PRIVATE visibility=SHARED type("OpsAnalytics") type("OpsAnalytics)
        #   " visibility = PRIVATE visibility = SHARED
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request.Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListSavedQueriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListSavedQueriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_saved_queries(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/savedQueries', options)
          command.response_representation = Google::Apis::LoggingV2::ListSavedQueriesResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListSavedQueriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing SavedQuery.
        # @param [String] name
        #   Output only. Resource name of the saved query.In the format: "projects/[
        #   PROJECT_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]" For a list of
        #   supported locations, see Supported Regions (https://cloud.google.com/logging/
        #   docs/region-support#bucket-regions)After the saved query is created, the
        #   location cannot be changed.If the user doesn't provide a QUERY_ID, the system
        #   will generate an alphanumeric ID.
        # @param [Google::Apis::LoggingV2::SavedQuery] saved_query_object
        # @param [String] update_mask
        #   Required. A non-empty list of fields to change in the existing saved query.
        #   Fields are relative to the saved_query and new values for the fields are taken
        #   from the corresponding fields in the SavedQuery included in this request.
        #   Fields not mentioned in update_mask are not changed and are ignored in the
        #   request.To update all mutable fields, specify an update_mask of *.For example,
        #   to change the description and query filter text of a saved query, specify an
        #   update_mask of "description, query.filter".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::SavedQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::SavedQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_saved_query(name, saved_query_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::LoggingV2::SavedQuery::Representation
          command.request_object = saved_query_object
          command.response_representation = Google::Apis::LoggingV2::SavedQuery::Representation
          command.response_class = Google::Apis::LoggingV2::SavedQuery
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes all the log entries in a log for the global _Default Log Bucket. The
        # log reappears if it receives new entries. Log entries written shortly before
        # the delete operation might not be deleted. Entries received after the delete
        # operation with a timestamp before the operation will be deleted.
        # @param [String] log_name
        #   Required. The resource name of the log to delete: projects/[PROJECT_ID]/logs/[
        #   LOG_ID] organizations/[ORGANIZATION_ID]/logs/[LOG_ID] billingAccounts/[
        #   BILLING_ACCOUNT_ID]/logs/[LOG_ID] folders/[FOLDER_ID]/logs/[LOG_ID][LOG_ID]
        #   must be URL-encoded. For example, "projects/my-project-id/logs/syslog", "
        #   organizations/123/logs/cloudaudit.googleapis.com%2Factivity".For more
        #   information about log names, see LogEntry.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_log(log_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+logName}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['logName'] = log_name unless log_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the logs in projects, organizations, folders, or billing accounts. Only
        # logs that have entries are listed.
        # @param [String] parent
        #   Required. The resource name to list logs for: projects/[PROJECT_ID]
        #   organizations/[ORGANIZATION_ID] billingAccounts/[BILLING_ACCOUNT_ID] folders/[
        #   FOLDER_ID]
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [Array<String>, String] resource_names
        #   Optional. List of resource names to list logs for: projects/[PROJECT_ID]/
        #   locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] organizations/[
        #   ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]
        #   billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[
        #   BUCKET_ID]/views/[VIEW_ID] folders/[FOLDER_ID]/locations/[LOCATION_ID]/buckets/
        #   [BUCKET_ID]/views/[VIEW_ID]To support legacy queries, it could also be:
        #   projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[
        #   BILLING_ACCOUNT_ID] folders/[FOLDER_ID]The resource name in the parent field
        #   is added to this list.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListLogsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLogsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_logs(parent, page_size: nil, page_token: nil, resource_names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/logs', options)
          command.response_representation = Google::Apis::LoggingV2::ListLogsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLogsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['resourceNames'] = resource_names unless resource_names.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a logs-based metric.
        # @param [String] parent
        #   Required. The resource name of the project in which to create the metric: "
        #   projects/[PROJECT_ID]" The new metric must be provided in the request.
        # @param [Google::Apis::LoggingV2::LogMetric] log_metric_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_metric(parent, log_metric_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/metrics', options)
          command.request_representation = Google::Apis::LoggingV2::LogMetric::Representation
          command.request_object = log_metric_object
          command.response_representation = Google::Apis::LoggingV2::LogMetric::Representation
          command.response_class = Google::Apis::LoggingV2::LogMetric
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a logs-based metric.
        # @param [String] metric_name
        #   Required. The resource name of the metric to delete: "projects/[PROJECT_ID]/
        #   metrics/[METRIC_ID]"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_metric(metric_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+metricName}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['metricName'] = metric_name unless metric_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a logs-based metric.
        # @param [String] metric_name
        #   Required. The resource name of the desired metric: "projects/[PROJECT_ID]/
        #   metrics/[METRIC_ID]"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_metric(metric_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+metricName}', options)
          command.response_representation = Google::Apis::LoggingV2::LogMetric::Representation
          command.response_class = Google::Apis::LoggingV2::LogMetric
          command.params['metricName'] = metric_name unless metric_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists logs-based metrics.
        # @param [String] parent
        #   Required. The name of the project containing the metrics: "projects/[
        #   PROJECT_ID]"
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListLogMetricsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListLogMetricsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_metrics(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/metrics', options)
          command.response_representation = Google::Apis::LoggingV2::ListLogMetricsResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListLogMetricsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or updates a logs-based metric.
        # @param [String] metric_name
        #   Required. The resource name of the metric to update: "projects/[PROJECT_ID]/
        #   metrics/[METRIC_ID]" The updated metric must be provided in the request and it'
        #   s name field must be the same as [METRIC_ID] If the metric does not exist in [
        #   PROJECT_ID], then a new metric is created.
        # @param [Google::Apis::LoggingV2::LogMetric] log_metric_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_metric(metric_name, log_metric_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v2/{+metricName}', options)
          command.request_representation = Google::Apis::LoggingV2::LogMetric::Representation
          command.request_object = log_metric_object
          command.response_representation = Google::Apis::LoggingV2::LogMetric::Representation
          command.response_class = Google::Apis::LoggingV2::LogMetric
          command.params['metricName'] = metric_name unless metric_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a sink that exports specified log entries to a destination. The export
        # begins upon ingress, unless the sink's writer_identity is not permitted to
        # write to the destination. A sink can export log entries only from the resource
        # owning the sink.
        # @param [String] parent
        #   Required. The resource in which to create the sink: "projects/[PROJECT_ID]" "
        #   organizations/[ORGANIZATION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]" "
        #   folders/[FOLDER_ID]" For examples:"projects/my-project" "organizations/
        #   123456789"
        # @param [Google::Apis::LoggingV2::LogSink] log_sink_object
        # @param [String] custom_writer_identity
        #   Optional. The service account provided by the caller that will be used to
        #   write the log entries. The format must be serviceAccount:some@email. This
        #   field can only be specified when you are routing logs to a log bucket that is
        #   in a different project than the sink. When not specified, a Logging service
        #   account will automatically be generated.
        # @param [Boolean] unique_writer_identity
        #   Optional. Determines the kind of IAM identity returned as writer_identity in
        #   the new sink. If this value is omitted or set to false, and if the sink's
        #   parent is a project, then the value returned as writer_identity is the same
        #   group or service account used by Cloud Logging before the addition of writer
        #   identities to this API. The sink's destination must be in the same project as
        #   the sink itself.If this field is set to true, or if the sink is owned by a non-
        #   project resource such as an organization, then the value of writer_identity
        #   will be a service agent (https://cloud.google.com/iam/docs/service-account-
        #   types#service-agents) used by the sinks with the same parent. For more
        #   information, see writer_identity in LogSink.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_sink(parent, log_sink_object = nil, custom_writer_identity: nil, unique_writer_identity: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/sinks', options)
          command.request_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.request_object = log_sink_object
          command.response_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.response_class = Google::Apis::LoggingV2::LogSink
          command.params['parent'] = parent unless parent.nil?
          command.query['customWriterIdentity'] = custom_writer_identity unless custom_writer_identity.nil?
          command.query['uniqueWriterIdentity'] = unique_writer_identity unless unique_writer_identity.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a sink. If the sink has a unique writer_identity, then that service
        # account is also deleted.
        # @param [String] sink_name
        #   Required. The full resource name of the sink to delete, including the parent
        #   resource and the sink identifier: "projects/[PROJECT_ID]/sinks/[SINK_ID]" "
        #   organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/sinks/[SINK_ID]" "folders/[FOLDER_ID]/sinks/[SINK_ID]" For
        #   example:"projects/my-project/sinks/my-sink"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_sink(sink_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+sinkName}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['sinkName'] = sink_name unless sink_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a sink.
        # @param [String] sink_name
        #   Required. The resource name of the sink: "projects/[PROJECT_ID]/sinks/[SINK_ID]
        #   " "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/sinks/[SINK_ID]" "folders/[FOLDER_ID]/sinks/[SINK_ID]" For
        #   example:"projects/my-project/sinks/my-sink"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_sink(sink_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+sinkName}', options)
          command.response_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.response_class = Google::Apis::LoggingV2::LogSink
          command.params['sinkName'] = sink_name unless sink_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists sinks.
        # @param [String] parent
        #   Required. The parent resource whose sinks are to be listed: "projects/[
        #   PROJECT_ID]" "organizations/[ORGANIZATION_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
        # @param [String] filter
        #   Optional. A filter expression to constrain the sinks returned. Today, this
        #   only supports the following strings: '' 'in_scope("ALL")', 'in_scope("ANCESTOR"
        #   )', 'in_scope("DEFAULT")'.Description of scopes below. ALL: Includes all of
        #   the sinks which can be returned in any other scope. ANCESTOR: Includes
        #   intercepting sinks owned by ancestor resources. DEFAULT: Includes sinks owned
        #   by parent.When the empty string is provided, then the filter 'in_scope("
        #   DEFAULT")' is applied.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListSinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListSinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_sinks(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/sinks', options)
          command.response_representation = Google::Apis::LoggingV2::ListSinksResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListSinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a sink. This method replaces the values of the destination and filter
        # fields of the existing sink with the corresponding values from the new sink.
        # The updated sink might also have a new writer_identity; see the
        # unique_writer_identity field.
        # @param [String] sink_name
        #   Required. The full resource name of the sink to update, including the parent
        #   resource and the sink identifier: "projects/[PROJECT_ID]/sinks/[SINK_ID]" "
        #   organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/sinks/[SINK_ID]" "folders/[FOLDER_ID]/sinks/[SINK_ID]" For
        #   example:"projects/my-project/sinks/my-sink"
        # @param [Google::Apis::LoggingV2::LogSink] log_sink_object
        # @param [String] custom_writer_identity
        #   Optional. The service account provided by the caller that will be used to
        #   write the log entries. The format must be serviceAccount:some@email. This
        #   field can only be specified when you are routing logs to a log bucket that is
        #   in a different project than the sink. When not specified, a Logging service
        #   account will automatically be generated.
        # @param [Boolean] unique_writer_identity
        #   Optional. See sinks.create for a description of this field. When updating a
        #   sink, the effect of this field on the value of writer_identity in the updated
        #   sink depends on both the old and new values of this field: If the old and new
        #   values of this field are both false or both true, then there is no change to
        #   the sink's writer_identity. If the old value is false and the new value is
        #   true, then writer_identity is changed to a service agent (https://cloud.google.
        #   com/iam/docs/service-account-types#service-agents) owned by Cloud Logging. It
        #   is an error if the old value is true and the new value is set to false or
        #   defaulted to false.
        # @param [String] update_mask
        #   Optional. Field mask that specifies the fields in sink that need an update. A
        #   sink field will be overwritten if, and only if, it is in the update mask. name
        #   and output only fields cannot be updated.An empty updateMask is temporarily
        #   treated as using the following mask for backwards compatibility purposes:
        #   destination,filter,includeChildrenAt some point in the future, behavior will
        #   be removed and specifying an empty updateMask will be an error.For a detailed
        #   FieldMask definition, see https://developers.google.com/protocol-buffers/docs/
        #   reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=
        #   filter
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_sink(sink_name, log_sink_object = nil, custom_writer_identity: nil, unique_writer_identity: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+sinkName}', options)
          command.request_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.request_object = log_sink_object
          command.response_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.response_class = Google::Apis::LoggingV2::LogSink
          command.params['sinkName'] = sink_name unless sink_name.nil?
          command.query['customWriterIdentity'] = custom_writer_identity unless custom_writer_identity.nil?
          command.query['uniqueWriterIdentity'] = unique_writer_identity unless unique_writer_identity.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a sink. This method replaces the values of the destination and filter
        # fields of the existing sink with the corresponding values from the new sink.
        # The updated sink might also have a new writer_identity; see the
        # unique_writer_identity field.
        # @param [String] sink_name
        #   Required. The full resource name of the sink to update, including the parent
        #   resource and the sink identifier: "projects/[PROJECT_ID]/sinks/[SINK_ID]" "
        #   organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/sinks/[SINK_ID]" "folders/[FOLDER_ID]/sinks/[SINK_ID]" For
        #   example:"projects/my-project/sinks/my-sink"
        # @param [Google::Apis::LoggingV2::LogSink] log_sink_object
        # @param [String] custom_writer_identity
        #   Optional. The service account provided by the caller that will be used to
        #   write the log entries. The format must be serviceAccount:some@email. This
        #   field can only be specified when you are routing logs to a log bucket that is
        #   in a different project than the sink. When not specified, a Logging service
        #   account will automatically be generated.
        # @param [Boolean] unique_writer_identity
        #   Optional. See sinks.create for a description of this field. When updating a
        #   sink, the effect of this field on the value of writer_identity in the updated
        #   sink depends on both the old and new values of this field: If the old and new
        #   values of this field are both false or both true, then there is no change to
        #   the sink's writer_identity. If the old value is false and the new value is
        #   true, then writer_identity is changed to a service agent (https://cloud.google.
        #   com/iam/docs/service-account-types#service-agents) owned by Cloud Logging. It
        #   is an error if the old value is true and the new value is set to false or
        #   defaulted to false.
        # @param [String] update_mask
        #   Optional. Field mask that specifies the fields in sink that need an update. A
        #   sink field will be overwritten if, and only if, it is in the update mask. name
        #   and output only fields cannot be updated.An empty updateMask is temporarily
        #   treated as using the following mask for backwards compatibility purposes:
        #   destination,filter,includeChildrenAt some point in the future, behavior will
        #   be removed and specifying an empty updateMask will be an error.For a detailed
        #   FieldMask definition, see https://developers.google.com/protocol-buffers/docs/
        #   reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=
        #   filter
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_sink(sink_name, log_sink_object = nil, custom_writer_identity: nil, unique_writer_identity: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v2/{+sinkName}', options)
          command.request_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.request_object = log_sink_object
          command.response_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.response_class = Google::Apis::LoggingV2::LogSink
          command.params['sinkName'] = sink_name unless sink_name.nil?
          command.query['customWriterIdentity'] = custom_writer_identity unless custom_writer_identity.nil?
          command.query['uniqueWriterIdentity'] = unique_writer_identity unless unique_writer_identity.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a sink that exports specified log entries to a destination. The export
        # begins upon ingress, unless the sink's writer_identity is not permitted to
        # write to the destination. A sink can export log entries only from the resource
        # owning the sink.
        # @param [String] parent
        #   Required. The resource in which to create the sink: "projects/[PROJECT_ID]" "
        #   organizations/[ORGANIZATION_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]" "
        #   folders/[FOLDER_ID]" For examples:"projects/my-project" "organizations/
        #   123456789"
        # @param [Google::Apis::LoggingV2::LogSink] log_sink_object
        # @param [String] custom_writer_identity
        #   Optional. The service account provided by the caller that will be used to
        #   write the log entries. The format must be serviceAccount:some@email. This
        #   field can only be specified when you are routing logs to a log bucket that is
        #   in a different project than the sink. When not specified, a Logging service
        #   account will automatically be generated.
        # @param [Boolean] unique_writer_identity
        #   Optional. Determines the kind of IAM identity returned as writer_identity in
        #   the new sink. If this value is omitted or set to false, and if the sink's
        #   parent is a project, then the value returned as writer_identity is the same
        #   group or service account used by Cloud Logging before the addition of writer
        #   identities to this API. The sink's destination must be in the same project as
        #   the sink itself.If this field is set to true, or if the sink is owned by a non-
        #   project resource such as an organization, then the value of writer_identity
        #   will be a service agent (https://cloud.google.com/iam/docs/service-account-
        #   types#service-agents) used by the sinks with the same parent. For more
        #   information, see writer_identity in LogSink.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_sink(parent, log_sink_object = nil, custom_writer_identity: nil, unique_writer_identity: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/sinks', options)
          command.request_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.request_object = log_sink_object
          command.response_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.response_class = Google::Apis::LoggingV2::LogSink
          command.params['parent'] = parent unless parent.nil?
          command.query['customWriterIdentity'] = custom_writer_identity unless custom_writer_identity.nil?
          command.query['uniqueWriterIdentity'] = unique_writer_identity unless unique_writer_identity.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a sink. If the sink has a unique writer_identity, then that service
        # account is also deleted.
        # @param [String] sink_name
        #   Required. The full resource name of the sink to delete, including the parent
        #   resource and the sink identifier: "projects/[PROJECT_ID]/sinks/[SINK_ID]" "
        #   organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/sinks/[SINK_ID]" "folders/[FOLDER_ID]/sinks/[SINK_ID]" For
        #   example:"projects/my-project/sinks/my-sink"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_sink(sink_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+sinkName}', options)
          command.response_representation = Google::Apis::LoggingV2::Empty::Representation
          command.response_class = Google::Apis::LoggingV2::Empty
          command.params['sinkName'] = sink_name unless sink_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a sink.
        # @param [String] sink_name
        #   Required. The resource name of the sink: "projects/[PROJECT_ID]/sinks/[SINK_ID]
        #   " "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/sinks/[SINK_ID]" "folders/[FOLDER_ID]/sinks/[SINK_ID]" For
        #   example:"projects/my-project/sinks/my-sink"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_sink(sink_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+sinkName}', options)
          command.response_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.response_class = Google::Apis::LoggingV2::LogSink
          command.params['sinkName'] = sink_name unless sink_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists sinks.
        # @param [String] parent
        #   Required. The parent resource whose sinks are to be listed: "projects/[
        #   PROJECT_ID]" "organizations/[ORGANIZATION_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]" "folders/[FOLDER_ID]"
        # @param [String] filter
        #   Optional. A filter expression to constrain the sinks returned. Today, this
        #   only supports the following strings: '' 'in_scope("ALL")', 'in_scope("ANCESTOR"
        #   )', 'in_scope("DEFAULT")'.Description of scopes below. ALL: Includes all of
        #   the sinks which can be returned in any other scope. ANCESTOR: Includes
        #   intercepting sinks owned by ancestor resources. DEFAULT: Includes sinks owned
        #   by parent.When the empty string is provided, then the filter 'in_scope("
        #   DEFAULT")' is applied.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of nextPageToken in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. pageToken must be the value of nextPageToken
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::ListSinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::ListSinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_sinks(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/sinks', options)
          command.response_representation = Google::Apis::LoggingV2::ListSinksResponse::Representation
          command.response_class = Google::Apis::LoggingV2::ListSinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a sink. This method replaces the values of the destination and filter
        # fields of the existing sink with the corresponding values from the new sink.
        # The updated sink might also have a new writer_identity; see the
        # unique_writer_identity field.
        # @param [String] sink_name
        #   Required. The full resource name of the sink to update, including the parent
        #   resource and the sink identifier: "projects/[PROJECT_ID]/sinks/[SINK_ID]" "
        #   organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/sinks/[SINK_ID]" "folders/[FOLDER_ID]/sinks/[SINK_ID]" For
        #   example:"projects/my-project/sinks/my-sink"
        # @param [Google::Apis::LoggingV2::LogSink] log_sink_object
        # @param [String] custom_writer_identity
        #   Optional. The service account provided by the caller that will be used to
        #   write the log entries. The format must be serviceAccount:some@email. This
        #   field can only be specified when you are routing logs to a log bucket that is
        #   in a different project than the sink. When not specified, a Logging service
        #   account will automatically be generated.
        # @param [Boolean] unique_writer_identity
        #   Optional. See sinks.create for a description of this field. When updating a
        #   sink, the effect of this field on the value of writer_identity in the updated
        #   sink depends on both the old and new values of this field: If the old and new
        #   values of this field are both false or both true, then there is no change to
        #   the sink's writer_identity. If the old value is false and the new value is
        #   true, then writer_identity is changed to a service agent (https://cloud.google.
        #   com/iam/docs/service-account-types#service-agents) owned by Cloud Logging. It
        #   is an error if the old value is true and the new value is set to false or
        #   defaulted to false.
        # @param [String] update_mask
        #   Optional. Field mask that specifies the fields in sink that need an update. A
        #   sink field will be overwritten if, and only if, it is in the update mask. name
        #   and output only fields cannot be updated.An empty updateMask is temporarily
        #   treated as using the following mask for backwards compatibility purposes:
        #   destination,filter,includeChildrenAt some point in the future, behavior will
        #   be removed and specifying an empty updateMask will be an error.For a detailed
        #   FieldMask definition, see https://developers.google.com/protocol-buffers/docs/
        #   reference/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=
        #   filter
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_sink(sink_name, log_sink_object = nil, custom_writer_identity: nil, unique_writer_identity: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v2/{+sinkName}', options)
          command.request_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.request_object = log_sink_object
          command.response_representation = Google::Apis::LoggingV2::LogSink::Representation
          command.response_class = Google::Apis::LoggingV2::LogSink
          command.params['sinkName'] = sink_name unless sink_name.nil?
          command.query['customWriterIdentity'] = custom_writer_identity unless custom_writer_identity.nil?
          command.query['uniqueWriterIdentity'] = unique_writer_identity unless unique_writer_identity.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log
        # Router can be configured for Google Cloud projects, folders, organizations,
        # and billing accounts. Once configured for an organization, it applies to all
        # projects and folders in the Google Cloud organization.See Enabling CMEK for
        # Log Router (https://cloud.google.com/logging/docs/routing/managed-encryption)
        # for more information.
        # @param [String] name
        #   Required. The resource for which to retrieve CMEK settings. "projects/[
        #   PROJECT_ID]/cmekSettings" "organizations/[ORGANIZATION_ID]/cmekSettings" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/cmekSettings" "folders/[FOLDER_ID]/
        #   cmekSettings" For example:"organizations/12345/cmekSettings"Note: CMEK for the
        #   Log Router can be configured for Google Cloud projects, folders, organizations,
        #   and billing accounts. Once configured for an organization, it applies to all
        #   projects and folders in the Google Cloud organization.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::CmekSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::CmekSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_cmek_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/cmekSettings', options)
          command.response_representation = Google::Apis::LoggingV2::CmekSettings::Representation
          command.response_class = Google::Apis::LoggingV2::CmekSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the settings for the given resource.Note: Settings can be retrieved for
        # Google Cloud projects, folders, organizations, and billing accounts.See View
        # default resource settings for Logging (https://cloud.google.com/logging/docs/
        # default-settings#view-org-settings) for more information.
        # @param [String] name
        #   Required. The resource for which to retrieve settings. "projects/[PROJECT_ID]/
        #   settings" "organizations/[ORGANIZATION_ID]/settings" "billingAccounts/[
        #   BILLING_ACCOUNT_ID]/settings" "folders/[FOLDER_ID]/settings" For example:"
        #   organizations/12345/settings"Note: Settings can be retrieved for Google Cloud
        #   projects, folders, organizations, and billing accounts.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Settings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Settings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/settings', options)
          command.response_representation = Google::Apis::LoggingV2::Settings::Representation
          command.response_class = Google::Apis::LoggingV2::Settings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the Log Router CMEK settings for the given resource.Note: CMEK for the
        # Log Router can currently only be configured for Google Cloud organizations.
        # Once configured, it applies to all projects and folders in the Google Cloud
        # organization.UpdateCmekSettings fails when any of the following are true: The
        # value of kms_key_name is invalid. The associated service account doesn't have
        # the required roles/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the
        # key. Access to the key is disabled.See Enabling CMEK for Log Router (https://
        # cloud.google.com/logging/docs/routing/managed-encryption) for more information.
        # @param [String] name
        #   Required. The resource name for the CMEK settings to update. "projects/[
        #   PROJECT_ID]/cmekSettings" "organizations/[ORGANIZATION_ID]/cmekSettings" "
        #   billingAccounts/[BILLING_ACCOUNT_ID]/cmekSettings" "folders/[FOLDER_ID]/
        #   cmekSettings" For example:"organizations/12345/cmekSettings"Note: CMEK for the
        #   Log Router can currently only be configured for Google Cloud organizations.
        #   Once configured, it applies to all projects and folders in the Google Cloud
        #   organization.
        # @param [Google::Apis::LoggingV2::CmekSettings] cmek_settings_object
        # @param [String] update_mask
        #   Optional. Field mask identifying which fields from cmek_settings should be
        #   updated. A field will be overwritten if and only if it is in the update mask.
        #   Output only fields cannot be updated.See FieldMask for more information.For
        #   example: "updateMask=kmsKeyName"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::CmekSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::CmekSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_cmek_settings(name, cmek_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}/cmekSettings', options)
          command.request_representation = Google::Apis::LoggingV2::CmekSettings::Representation
          command.request_object = cmek_settings_object
          command.response_representation = Google::Apis::LoggingV2::CmekSettings::Representation
          command.response_class = Google::Apis::LoggingV2::CmekSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the settings for the given resource. This method applies to all
        # feature configurations for organization and folders.UpdateSettings fails when
        # any of the following are true: The value of storage_location either isn't
        # supported by Logging or violates the location OrgPolicy. The
        # default_sink_config field is set, but it has an unspecified filter write mode.
        # The value of kms_key_name is invalid. The associated service account doesn't
        # have the required roles/cloudkms.cryptoKeyEncrypterDecrypter role assigned for
        # the key. Access to the key is disabled.See Configure default settings for
        # organizations and folders (https://cloud.google.com/logging/docs/default-
        # settings) for more information.
        # @param [String] name
        #   Required. The resource name for the settings to update. "organizations/[
        #   ORGANIZATION_ID]/settings" "folders/[FOLDER_ID]/settings" For example:"
        #   organizations/12345/settings"
        # @param [Google::Apis::LoggingV2::Settings] settings_object
        # @param [String] update_mask
        #   Optional. Field mask identifying which fields from settings should be updated.
        #   A field will be overwritten if and only if it is in the update mask. Output
        #   only fields cannot be updated.See FieldMask for more information.For example: "
        #   updateMask=kmsKeyName"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2::Settings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2::Settings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_settings(name, settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}/settings', options)
          command.request_representation = Google::Apis::LoggingV2::Settings::Representation
          command.request_object = settings_object
          command.response_representation = Google::Apis::LoggingV2::Settings::Representation
          command.response_class = Google::Apis::LoggingV2::Settings
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
