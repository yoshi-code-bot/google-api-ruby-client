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
    module HealthcareV1beta1
      # Cloud Healthcare API
      #
      # Manage, store, and access healthcare data in Google Cloud Platform.
      #
      # @example
      #    require 'google/apis/healthcare_v1beta1'
      #
      #    Healthcare = Google::Apis::HealthcareV1beta1 # Alias the module
      #    service = Healthcare::CloudHealthcareService.new
      #
      # @see https://cloud.google.com/healthcare
      class CloudHealthcareService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://healthcare.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-healthcare_v1beta1',
                client_version: Google::Apis::HealthcareV1beta1::GEM_VERSION)
          @batch_path = 'batch'
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
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Location::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Location
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
        # @yieldparam result [Google::Apis::HealthcareV1beta1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/locations', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new health dataset. Results are returned through the Operation
        # interface which returns either an `Operation.response` which contains a
        # Dataset or `Operation.error`. The metadata field type is OperationMetadata.
        # @param [String] parent
        #   Required. The name of the project where the server creates the dataset. For
        #   example, `projects/`project_id`/locations/`location_id``.
        # @param [Google::Apis::HealthcareV1beta1::Dataset] dataset_object
        # @param [String] dataset_id
        #   Required. The ID of the dataset that is being created. The string must match
        #   the following regex: `[\p`L`\p`N`_\-\.]`1,256``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_dataset(parent, dataset_object = nil, dataset_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/datasets', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::Dataset::Representation
          command.request_object = dataset_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new dataset containing de-identified data from the source dataset.
        # The metadata field type is OperationMetadata. If the request is successful,
        # the response field type is DeidentifySummary. The LRO result may still be
        # successful if de-identification fails for some resources. The new de-
        # identified dataset will not contain these failed resources. The number of
        # resources processed are tracked in Operation.metadata. Error details are
        # logged to Cloud Logging. For more information, see [Viewing error logs in
        # Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging).
        # @param [String] source_dataset
        #   Required. Source dataset resource name. For example, `projects/`project_id`/
        #   locations/`location_id`/datasets/`dataset_id``. R5 FHIR stores are not
        #   supported and will be skipped.
        # @param [Google::Apis::HealthcareV1beta1::DeidentifyDatasetRequest] deidentify_dataset_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deidentify_dataset(source_dataset, deidentify_dataset_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+sourceDataset}:deidentify', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::DeidentifyDatasetRequest::Representation
          command.request_object = deidentify_dataset_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Operation
          command.params['sourceDataset'] = source_dataset unless source_dataset.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified health dataset and all data contained in the dataset.
        # Deleting a dataset does not affect the sources from which the dataset was
        # imported (if any).
        # @param [String] name
        #   Required. The name of the dataset to delete. For example, `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Empty::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets any metadata associated with a dataset.
        # @param [String] name
        #   Required. The name of the dataset to read. For example, `projects/`project_id`/
        #   locations/`location_id`/datasets/`dataset_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Dataset::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Dataset
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Policy::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the health datasets in the current project.
        # @param [String] parent
        #   Required. The name of the project whose datasets should be listed. For example,
        #   `projects/`project_id`/locations/`location_id``.
        # @param [Fixnum] page_size
        #   The maximum number of items to return. If not specified, 100 is used. May not
        #   be larger than 1000.
        # @param [String] page_token
        #   The next_page_token value returned from a previous List request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::ListDatasetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::ListDatasetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_datasets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/datasets', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::ListDatasetsResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::ListDatasetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates dataset metadata.
        # @param [String] name
        #   Identifier. Resource name of the dataset, of the form `projects/`project_id`/
        #   locations/`location_id`/datasets/`dataset_id``.
        # @param [Google::Apis::HealthcareV1beta1::Dataset] dataset_object
        # @param [String] update_mask
        #   Required. The update mask applies to the resource. For the `FieldMask`
        #   definition, see https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_dataset(name, dataset_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::Dataset::Representation
          command.request_object = dataset_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Dataset::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Dataset
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::HealthcareV1beta1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_dataset_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Policy::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::HealthcareV1beta1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_dataset_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_annotation_store_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Policy::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::HealthcareV1beta1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_annotation_store_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Policy::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::HealthcareV1beta1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_annotation_store_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Checks if a particular data_id of a User data mapping in the specified consent
        # store is consented for the specified use.
        # @param [String] consent_store
        #   Required. Name of the consent store where the requested data_id is stored, of
        #   the form `projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   consentStores/`consent_store_id``.
        # @param [Google::Apis::HealthcareV1beta1::CheckDataAccessRequest] check_data_access_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::CheckDataAccessResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::CheckDataAccessResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def check_consent_store_data_access(consent_store, check_data_access_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+consentStore}:checkDataAccess', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::CheckDataAccessRequest::Representation
          command.request_object = check_data_access_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::CheckDataAccessResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::CheckDataAccessResponse
          command.params['consentStore'] = consent_store unless consent_store.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new consent store in the parent dataset. Attempting to create a
        # consent store with the same ID as an existing store fails with an
        # ALREADY_EXISTS error.
        # @param [String] parent
        #   Required. The name of the dataset this consent store belongs to.
        # @param [Google::Apis::HealthcareV1beta1::ConsentStore] consent_store_object
        # @param [String] consent_store_id
        #   Required. The ID of the consent store to create. The string must match the
        #   following regex: `[\p`L`\p`N`_\-\.]`1,256``. Cannot be changed after creation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::ConsentStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::ConsentStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_dataset_consent_store(parent, consent_store_object = nil, consent_store_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/consentStores', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::ConsentStore::Representation
          command.request_object = consent_store_object
          command.response_representation = Google::Apis::HealthcareV1beta1::ConsentStore::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::ConsentStore
          command.params['parent'] = parent unless parent.nil?
          command.query['consentStoreId'] = consent_store_id unless consent_store_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified consent store and removes all the consent store's data.
        # @param [String] name
        #   Required. The resource name of the consent store to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_consent_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Empty::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Evaluates the user's Consents for all matching User data mappings. Note: User
        # data mappings are indexed asynchronously, which can cause a slight delay
        # between the time mappings are created or updated and when they are included in
        # EvaluateUserConsents results.
        # @param [String] consent_store
        #   Required. Name of the consent store to retrieve User data mappings from.
        # @param [Google::Apis::HealthcareV1beta1::EvaluateUserConsentsRequest] evaluate_user_consents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::EvaluateUserConsentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::EvaluateUserConsentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def evaluate_consent_store_user_consents(consent_store, evaluate_user_consents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+consentStore}:evaluateUserConsents', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::EvaluateUserConsentsRequest::Representation
          command.request_object = evaluate_user_consents_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::EvaluateUserConsentsResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::EvaluateUserConsentsResponse
          command.params['consentStore'] = consent_store unless consent_store.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified consent store.
        # @param [String] name
        #   Required. The resource name of the consent store to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::ConsentStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::ConsentStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_consent_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::ConsentStore::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::ConsentStore
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_consent_store_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Policy::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the consent stores in the specified dataset.
        # @param [String] parent
        #   Required. Name of the dataset.
        # @param [String] filter
        #   Optional. Restricts the stores returned to those matching a filter. The
        #   following syntax is available: * A string field value can be written as text
        #   inside quotation marks, for example `"query text"`. The only valid relational
        #   operation for text fields is equality (`=`), where text is searched within the
        #   field, rather than having the field be equal to the text. For example, `"
        #   Comment = great"` returns messages with `great` in the comment field. * A
        #   number field value can be written as an integer, a decimal, or an exponential.
        #   The valid relational operators for number fields are the equality operator (`=`
        #   ), along with the less than/greater than operators (`<`, `<=`, `>`, `>=`).
        #   Note that there is no inequality (`!=`) operator. You can prepend the `NOT`
        #   operator to an expression to negate it. * A date field value must be written
        #   in `yyyy-mm-dd` form. Fields with date and time use the RFC3339 time format.
        #   Leading zeros are required for one-digit months and days. The valid relational
        #   operators for date fields are the equality operator (`=`) , along with the
        #   less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no
        #   inequality (`!=`) operator. You can prepend the `NOT` operator to an
        #   expression to negate it. * Multiple field query expressions can be combined in
        #   one query by adding `AND` or `OR` operators between the expressions. If a
        #   boolean operator appears within a quoted string, it is not treated as special,
        #   it's just another part of the character string to be matched. You can prepend
        #   the `NOT` operator to an expression to negate it. Only filtering on labels is
        #   supported. For example, `filter=labels.key=value`.
        # @param [Fixnum] page_size
        #   Optional. Limit on the number of consent stores to return in a single response.
        #   If not specified, 100 is used. May not be larger than 1000.
        # @param [String] page_token
        #   Optional. Token to retrieve the next page of results, or empty to get the
        #   first page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::ListConsentStoresResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::ListConsentStoresResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dataset_consent_stores(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/consentStores', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::ListConsentStoresResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::ListConsentStoresResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified consent store.
        # @param [String] name
        #   Resource name of the consent store, of the form `projects/`project_id`/
        #   locations/`location_id`/datasets/`dataset_id`/consentStores/`consent_store_id``
        #   . Cannot be changed after creation.
        # @param [Google::Apis::HealthcareV1beta1::ConsentStore] consent_store_object
        # @param [String] update_mask
        #   Required. The update mask that applies to the resource. For the `FieldMask`
        #   definition, see https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#fieldmask. Only the `labels`, `default_consent_ttl`, and `
        #   enable_consent_create_on_update` fields are allowed to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::ConsentStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::ConsentStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_dataset_consent_store(name, consent_store_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::ConsentStore::Representation
          command.request_object = consent_store_object
          command.response_representation = Google::Apis::HealthcareV1beta1::ConsentStore::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::ConsentStore
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Queries all data_ids that are consented for a specified use in the given
        # consent store and writes them to a specified destination. The returned
        # Operation includes a progress counter for the number of User data mappings
        # processed. If the request is successful, a detailed response is returned of
        # type QueryAccessibleDataResponse, contained in the response field when the
        # operation finishes. The metadata field type is OperationMetadata. Errors are
        # logged to Cloud Logging (see [Viewing error logs in Cloud Logging](https://
        # cloud.google.com/healthcare/docs/how-tos/logging)). For example, the following
        # sample log entry shows a `failed to evaluate consent policy` error that
        # occurred during a QueryAccessibleData call to consent store `projects/`
        # project_id`/locations/`location_id`/datasets/`dataset_id`/consentStores/`
        # consent_store_id``. ```json jsonPayload: ` @type: "type.googleapis.com/google.
        # cloud.healthcare.logging.QueryAccessibleDataLogEntry" error: ` code: 9 message:
        # "failed to evaluate consent policy" ` resourceName: "projects/`project_id`/
        # locations/`location_id`/datasets/`dataset_id`/consentStores/`consent_store_id`/
        # consents/`consent_id`" ` logName: "projects/`project_id`/logs/healthcare.
        # googleapis.com%2Fquery_accessible_data" operation: ` id: "projects/`project_id`
        # /locations/`location_id`/datasets/`dataset_id`/operations/`operation_id`"
        # producer: "healthcare.googleapis.com/QueryAccessibleData" ` receiveTimestamp: "
        # TIMESTAMP" resource: ` labels: ` consent_store_id: "`consent_store_id`"
        # dataset_id: "`dataset_id`" location: "`location_id`" project_id: "`project_id`"
        # ` type: "healthcare_consent_store" ` severity: "ERROR" timestamp: "TIMESTAMP"
        # ```
        # @param [String] consent_store
        #   Required. Name of the consent store to retrieve User data mappings from.
        # @param [Google::Apis::HealthcareV1beta1::QueryAccessibleDataRequest] query_accessible_data_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_consent_store_accessible_data(consent_store, query_accessible_data_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+consentStore}:queryAccessibleData', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::QueryAccessibleDataRequest::Representation
          command.request_object = query_accessible_data_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Operation
          command.params['consentStore'] = consent_store unless consent_store.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::HealthcareV1beta1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_consent_store_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Policy::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::HealthcareV1beta1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_consent_store_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Attribute definition in the parent consent store.
        # @param [String] parent
        #   Required. The name of the consent store that this Attribute definition belongs
        #   to.
        # @param [Google::Apis::HealthcareV1beta1::AttributeDefinition] attribute_definition_object
        # @param [String] attribute_definition_id
        #   Required. The ID of the Attribute definition to create. The string must match
        #   the following regex: `_a-zA-Z`0,255`` and must not be a reserved keyword
        #   within the Common Expression Language as listed on https://github.com/google/
        #   cel-spec/blob/master/doc/langdef.md.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::AttributeDefinition] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::AttributeDefinition]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_dataset_consent_store_attribute_definition(parent, attribute_definition_object = nil, attribute_definition_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/attributeDefinitions', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::AttributeDefinition::Representation
          command.request_object = attribute_definition_object
          command.response_representation = Google::Apis::HealthcareV1beta1::AttributeDefinition::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::AttributeDefinition
          command.params['parent'] = parent unless parent.nil?
          command.query['attributeDefinitionId'] = attribute_definition_id unless attribute_definition_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified Attribute definition. Fails if the Attribute definition
        # is referenced by any User data mapping, or the latest revision of any Consent.
        # @param [String] name
        #   Required. The resource name of the Attribute definition to delete. To preserve
        #   referential integrity, Attribute definitions referenced by a User data mapping
        #   or the latest revision of a Consent cannot be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_consent_store_attribute_definition(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Empty::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified Attribute definition.
        # @param [String] name
        #   Required. The resource name of the Attribute definition to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::AttributeDefinition] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::AttributeDefinition]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_consent_store_attribute_definition(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::AttributeDefinition::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::AttributeDefinition
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the Attribute definitions in the specified consent store.
        # @param [String] parent
        #   Required. Name of the consent store to retrieve Attribute definitions from.
        # @param [String] filter
        #   Optional. Restricts the attributes returned to those matching a filter. The
        #   following syntax is available: * A string field value can be written as text
        #   inside quotation marks, for example `"query text"`. The only valid relational
        #   operation for text fields is equality (`=`), where text is searched within the
        #   field, rather than having the field be equal to the text. For example, `"
        #   Comment = great"` returns messages with `great` in the comment field. * A
        #   number field value can be written as an integer, a decimal, or an exponential.
        #   The valid relational operators for number fields are the equality operator (`=`
        #   ), along with the less than/greater than operators (`<`, `<=`, `>`, `>=`).
        #   Note that there is no inequality (`!=`) operator. You can prepend the `NOT`
        #   operator to an expression to negate it. * A date field value must be written
        #   in `yyyy-mm-dd` form. Fields with date and time use the RFC3339 time format.
        #   Leading zeros are required for one-digit months and days. The valid relational
        #   operators for date fields are the equality operator (`=`) , along with the
        #   less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no
        #   inequality (`!=`) operator. You can prepend the `NOT` operator to an
        #   expression to negate it. * Multiple field query expressions can be combined in
        #   one query by adding `AND` or `OR` operators between the expressions. If a
        #   boolean operator appears within a quoted string, it is not treated as special,
        #   it's just another part of the character string to be matched. You can prepend
        #   the `NOT` operator to an expression to negate it. The only field available for
        #   filtering is `category`. For example, `filter=category=\"REQUEST\"`.
        # @param [Fixnum] page_size
        #   Optional. Limit on the number of Attribute definitions to return in a single
        #   response. If not specified, 100 is used. May not be larger than 1000.
        # @param [String] page_token
        #   Optional. Token to retrieve the next page of results or empty to get the first
        #   page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::ListAttributeDefinitionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::ListAttributeDefinitionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dataset_consent_store_attribute_definitions(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/attributeDefinitions', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::ListAttributeDefinitionsResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::ListAttributeDefinitionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified Attribute definition.
        # @param [String] name
        #   Identifier. Resource name of the Attribute definition, of the form `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/consentStores/`
        #   consent_store_id`/attributeDefinitions/`attribute_definition_id``. Cannot be
        #   changed after creation.
        # @param [Google::Apis::HealthcareV1beta1::AttributeDefinition] attribute_definition_object
        # @param [String] update_mask
        #   Required. The update mask that applies to the resource. For the `FieldMask`
        #   definition, see https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#fieldmask. Only the `description`, `allowed_values`, `
        #   consent_default_values` and `data_mapping_default_value` fields can be updated.
        #   The updated `allowed_values` must contain all values from the previous `
        #   allowed_values`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::AttributeDefinition] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::AttributeDefinition]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_dataset_consent_store_attribute_definition(name, attribute_definition_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::AttributeDefinition::Representation
          command.request_object = attribute_definition_object
          command.response_representation = Google::Apis::HealthcareV1beta1::AttributeDefinition::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::AttributeDefinition
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Consent artifact in the parent consent store.
        # @param [String] parent
        #   Required. The name of the consent store this Consent artifact belongs to.
        # @param [Google::Apis::HealthcareV1beta1::ConsentArtifact] consent_artifact_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::ConsentArtifact] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::ConsentArtifact]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_dataset_consent_store_consent_artifact(parent, consent_artifact_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/consentArtifacts', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::ConsentArtifact::Representation
          command.request_object = consent_artifact_object
          command.response_representation = Google::Apis::HealthcareV1beta1::ConsentArtifact::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::ConsentArtifact
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified Consent artifact. Fails if the artifact is referenced by
        # the latest revision of any Consent.
        # @param [String] name
        #   Required. The resource name of the Consent artifact to delete. To preserve
        #   referential integrity, Consent artifacts referenced by the latest revision of
        #   a Consent cannot be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_consent_store_consent_artifact(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Empty::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified Consent artifact.
        # @param [String] name
        #   Required. The resource name of the Consent artifact to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::ConsentArtifact] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::ConsentArtifact]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_consent_store_consent_artifact(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::ConsentArtifact::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::ConsentArtifact
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the Consent artifacts in the specified consent store.
        # @param [String] parent
        #   Required. Name of the consent store to retrieve consent artifacts from.
        # @param [String] filter
        #   Optional. Restricts the artifacts returned to those matching a filter. The
        #   following syntax is available: * A string field value can be written as text
        #   inside quotation marks, for example `"query text"`. The only valid relational
        #   operation for text fields is equality (`=`), where text is searched within the
        #   field, rather than having the field be equal to the text. For example, `"
        #   Comment = great"` returns messages with `great` in the comment field. * A
        #   number field value can be written as an integer, a decimal, or an exponential.
        #   The valid relational operators for number fields are the equality operator (`=`
        #   ), along with the less than/greater than operators (`<`, `<=`, `>`, `>=`).
        #   Note that there is no inequality (`!=`) operator. You can prepend the `NOT`
        #   operator to an expression to negate it. * A date field value must be written
        #   in `yyyy-mm-dd` form. Fields with date and time use the RFC3339 time format.
        #   Leading zeros are required for one-digit months and days. The valid relational
        #   operators for date fields are the equality operator (`=`) , along with the
        #   less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no
        #   inequality (`!=`) operator. You can prepend the `NOT` operator to an
        #   expression to negate it. * Multiple field query expressions can be combined in
        #   one query by adding `AND` or `OR` operators between the expressions. If a
        #   boolean operator appears within a quoted string, it is not treated as special,
        #   it's just another part of the character string to be matched. You can prepend
        #   the `NOT` operator to an expression to negate it. The fields available for
        #   filtering are: - user_id. For example, `filter=user_id=\"user123\"`. -
        #   consent_content_version - metadata. For example, `filter=Metadata(\"testkey\")=
        #   \"value\"` or `filter=HasMetadata(\"testkey\")`.
        # @param [Fixnum] page_size
        #   Optional. Limit on the number of consent artifacts to return in a single
        #   response. If not specified, 100 is used. May not be larger than 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from the previous List request,
        #   if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::ListConsentArtifactsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::ListConsentArtifactsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dataset_consent_store_consent_artifacts(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/consentArtifacts', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::ListConsentArtifactsResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::ListConsentArtifactsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Activates the latest revision of the specified Consent by committing a new
        # revision with `state` updated to `ACTIVE`. If the latest revision of the
        # specified Consent is in the `ACTIVE` state, no new revision is committed. A
        # FAILED_PRECONDITION error occurs if the latest revision of the specified
        # consent is in the `REJECTED` or `REVOKED` state.
        # @param [String] name
        #   Required. The resource name of the Consent to activate, of the form `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/consentStores/`
        #   consent_store_id`/consents/`consent_id``. An INVALID_ARGUMENT error occurs if `
        #   revision_id` is specified in the name.
        # @param [Google::Apis::HealthcareV1beta1::ActivateConsentRequest] activate_consent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Consent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Consent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def activate_consent(name, activate_consent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:activate', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::ActivateConsentRequest::Representation
          command.request_object = activate_consent_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Consent::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Consent
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Consent in the parent consent store.
        # @param [String] parent
        #   Required. Name of the consent store.
        # @param [Google::Apis::HealthcareV1beta1::Consent] consent_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Consent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Consent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_dataset_consent_store_consent(parent, consent_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/consents', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::Consent::Representation
          command.request_object = consent_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Consent::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Consent
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the Consent and its revisions. To keep a record of the Consent but
        # mark it inactive, see [RevokeConsent]. To delete a revision of a Consent, see [
        # DeleteConsentRevision]. This operation does not delete the related Consent
        # artifact.
        # @param [String] name
        #   Required. The resource name of the Consent to delete, of the form `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/consentStores/`
        #   consent_store_id`/consents/`consent_id``. An INVALID_ARGUMENT error occurs if `
        #   revision_id` is specified in the name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_consent_store_consent(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Empty::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified revision of a Consent. An INVALID_ARGUMENT error occurs
        # if the specified revision is the latest revision.
        # @param [String] name
        #   Required. The resource name of the Consent revision to delete, of the form `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   consentStores/`consent_store_id`/consents/`consent_id`@`revision_id``. An
        #   INVALID_ARGUMENT error occurs if `revision_id` is not specified in the name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_consent_store_consent_revision(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}:deleteRevision', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Empty::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified revision of a Consent, or the latest revision if `
        # revision_id` is not specified in the resource name.
        # @param [String] name
        #   Required. The resource name of the Consent to retrieve, of the form `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/consentStores/`
        #   consent_store_id`/consents/`consent_id``. In order to retrieve a previous
        #   revision of the Consent, also provide the revision ID: `projects/`project_id`/
        #   locations/`location_id`/datasets/`dataset_id`/consentStores/`consent_store_id`/
        #   consents/`consent_id`@`revision_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Consent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Consent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_consent_store_consent(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Consent::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Consent
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the Consent in the given consent store, returning each Consent's latest
        # revision.
        # @param [String] parent
        #   Required. Name of the consent store to retrieve Consents from.
        # @param [String] filter
        #   Optional. Restricts the consents returned to those matching a filter. The
        #   following syntax is available: * A string field value can be written as text
        #   inside quotation marks, for example `"query text"`. The only valid relational
        #   operation for text fields is equality (`=`), where text is searched within the
        #   field, rather than having the field be equal to the text. For example, `"
        #   Comment = great"` returns messages with `great` in the comment field. * A
        #   number field value can be written as an integer, a decimal, or an exponential.
        #   The valid relational operators for number fields are the equality operator (`=`
        #   ), along with the less than/greater than operators (`<`, `<=`, `>`, `>=`).
        #   Note that there is no inequality (`!=`) operator. You can prepend the `NOT`
        #   operator to an expression to negate it. * A date field value must be written
        #   in `yyyy-mm-dd` form. Fields with date and time use the RFC3339 time format.
        #   Leading zeros are required for one-digit months and days. The valid relational
        #   operators for date fields are the equality operator (`=`) , along with the
        #   less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no
        #   inequality (`!=`) operator. You can prepend the `NOT` operator to an
        #   expression to negate it. * Multiple field query expressions can be combined in
        #   one query by adding `AND` or `OR` operators between the expressions. If a
        #   boolean operator appears within a quoted string, it is not treated as special,
        #   it's just another part of the character string to be matched. You can prepend
        #   the `NOT` operator to an expression to negate it. The fields available for
        #   filtering are: - user_id. For example, `filter='user_id="user123"'`. -
        #   consent_artifact - state - revision_create_time - metadata. For example, `
        #   filter=Metadata(\"testkey\")=\"value\"` or `filter=HasMetadata(\"testkey\")`.
        # @param [Fixnum] page_size
        #   Optional. Limit on the number of Consents to return in a single response. If
        #   not specified, 100 is used. May not be larger than 1000.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from the previous List request,
        #   if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::ListConsentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::ListConsentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dataset_consent_store_consents(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/consents', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::ListConsentsResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::ListConsentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the revisions of the specified Consent in reverse chronological order.
        # @param [String] name
        #   Required. The resource name of the Consent to retrieve revisions for.
        # @param [String] filter
        #   Optional. Restricts the revisions returned to those matching a filter. The
        #   following syntax is available: * A string field value can be written as text
        #   inside quotation marks, for example `"query text"`. The only valid relational
        #   operation for text fields is equality (`=`), where text is searched within the
        #   field, rather than having the field be equal to the text. For example, `"
        #   Comment = great"` returns messages with `great` in the comment field. * A
        #   number field value can be written as an integer, a decimal, or an exponential.
        #   The valid relational operators for number fields are the equality operator (`=`
        #   ), along with the less than/greater than operators (`<`, `<=`, `>`, `>=`).
        #   Note that there is no inequality (`!=`) operator. You can prepend the `NOT`
        #   operator to an expression to negate it. * A date field value must be written
        #   in `yyyy-mm-dd` form. Fields with date and time use the RFC3339 time format.
        #   Leading zeros are required for one-digit months and days. The valid relational
        #   operators for date fields are the equality operator (`=`) , along with the
        #   less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no
        #   inequality (`!=`) operator. You can prepend the `NOT` operator to an
        #   expression to negate it. * Multiple field query expressions can be combined in
        #   one query by adding `AND` or `OR` operators between the expressions. If a
        #   boolean operator appears within a quoted string, it is not treated as special,
        #   it's just another part of the character string to be matched. You can prepend
        #   the `NOT` operator to an expression to negate it. Fields/functions available
        #   for filtering are: - user_id. For example, `filter='user_id="user123"'`. -
        #   consent_artifact - state - revision_create_time - metadata. For example, `
        #   filter=Metadata(\"testkey\")=\"value\"` or `filter=HasMetadata(\"testkey\")`.
        # @param [Fixnum] page_size
        #   Optional. Limit on the number of revisions to return in a single response. If
        #   not specified, 100 is used. May not be larger than 1000.
        # @param [String] page_token
        #   Optional. Token to retrieve the next page of results or empty if there are no
        #   more results in the list.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::ListConsentRevisionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::ListConsentRevisionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dataset_consent_store_consent_revisions(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}:listRevisions', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::ListConsentRevisionsResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::ListConsentRevisionsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the latest revision of the specified Consent by committing a new
        # revision with the changes. A FAILED_PRECONDITION error occurs if the latest
        # revision of the specified Consent is in the `REJECTED` or `REVOKED` state.
        # @param [String] name
        #   Identifier. Resource name of the Consent, of the form `projects/`project_id`/
        #   locations/`location_id`/datasets/`dataset_id`/consentStores/`consent_store_id`/
        #   consents/`consent_id``. Cannot be changed after creation.
        # @param [Google::Apis::HealthcareV1beta1::Consent] consent_object
        # @param [String] update_mask
        #   Required. The update mask to apply to the resource. For the `FieldMask`
        #   definition, see https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#fieldmask. Only the `user_id`, `policies`, `consent_artifact`,
        #   and `metadata` fields can be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Consent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Consent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_dataset_consent_store_consent(name, consent_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::Consent::Representation
          command.request_object = consent_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Consent::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Consent
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Rejects the latest revision of the specified Consent by committing a new
        # revision with `state` updated to `REJECTED`. If the latest revision of the
        # specified Consent is in the `REJECTED` state, no new revision is committed. A
        # FAILED_PRECONDITION error occurs if the latest revision of the specified
        # Consent is in the `ACTIVE` or `REVOKED` state.
        # @param [String] name
        #   Required. The resource name of the Consent to reject, of the form `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/consentStores/`
        #   consent_store_id`/consents/`consent_id``. An INVALID_ARGUMENT error occurs if `
        #   revision_id` is specified in the name.
        # @param [Google::Apis::HealthcareV1beta1::RejectConsentRequest] reject_consent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Consent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Consent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reject_consent(name, reject_consent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:reject', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::RejectConsentRequest::Representation
          command.request_object = reject_consent_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Consent::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Consent
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Revokes the latest revision of the specified Consent by committing a new
        # revision with `state` updated to `REVOKED`. If the latest revision of the
        # specified Consent is in the `REVOKED` state, no new revision is committed. A
        # FAILED_PRECONDITION error occurs if the latest revision of the given consent
        # is in `DRAFT` or `REJECTED` state.
        # @param [String] name
        #   Required. The resource name of the Consent to revoke, of the form `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/consentStores/`
        #   consent_store_id`/consents/`consent_id``. An INVALID_ARGUMENT error occurs if `
        #   revision_id` is specified in the name.
        # @param [Google::Apis::HealthcareV1beta1::RevokeConsentRequest] revoke_consent_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Consent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Consent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def revoke_consent(name, revoke_consent_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:revoke', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::RevokeConsentRequest::Representation
          command.request_object = revoke_consent_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Consent::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Consent
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Archives the specified User data mapping.
        # @param [String] name
        #   Required. The resource name of the User data mapping to archive.
        # @param [Google::Apis::HealthcareV1beta1::ArchiveUserDataMappingRequest] archive_user_data_mapping_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::ArchiveUserDataMappingResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::ArchiveUserDataMappingResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def archive_user_data_mapping(name, archive_user_data_mapping_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:archive', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::ArchiveUserDataMappingRequest::Representation
          command.request_object = archive_user_data_mapping_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::ArchiveUserDataMappingResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::ArchiveUserDataMappingResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new User data mapping in the parent consent store.
        # @param [String] parent
        #   Required. Name of the consent store.
        # @param [Google::Apis::HealthcareV1beta1::UserDataMapping] user_data_mapping_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::UserDataMapping] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::UserDataMapping]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_dataset_consent_store_user_data_mapping(parent, user_data_mapping_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/userDataMappings', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::UserDataMapping::Representation
          command.request_object = user_data_mapping_object
          command.response_representation = Google::Apis::HealthcareV1beta1::UserDataMapping::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::UserDataMapping
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified User data mapping.
        # @param [String] name
        #   Required. The resource name of the User data mapping to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_consent_store_user_data_mapping(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Empty::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified User data mapping.
        # @param [String] name
        #   Required. The resource name of the User data mapping to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::UserDataMapping] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::UserDataMapping]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_consent_store_user_data_mapping(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::UserDataMapping::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::UserDataMapping
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the User data mappings in the specified consent store.
        # @param [String] parent
        #   Required. Name of the consent store to retrieve User data mappings from.
        # @param [String] filter
        #   Optional. Restricts the user data mappings returned to those matching a filter.
        #   The following syntax is available: * A string field value can be written as
        #   text inside quotation marks, for example `"query text"`. The only valid
        #   relational operation for text fields is equality (`=`), where text is searched
        #   within the field, rather than having the field be equal to the text. For
        #   example, `"Comment = great"` returns messages with `great` in the comment
        #   field. * A number field value can be written as an integer, a decimal, or an
        #   exponential. The valid relational operators for number fields are the equality
        #   operator (`=`), along with the less than/greater than operators (`<`, `<=`, `>`
        #   , `>=`). Note that there is no inequality (`!=`) operator. You can prepend the
        #   `NOT` operator to an expression to negate it. * A date field value must be
        #   written in `yyyy-mm-dd` form. Fields with date and time use the RFC3339 time
        #   format. Leading zeros are required for one-digit months and days. The valid
        #   relational operators for date fields are the equality operator (`=`) , along
        #   with the less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that
        #   there is no inequality (`!=`) operator. You can prepend the `NOT` operator to
        #   an expression to negate it. * Multiple field query expressions can be combined
        #   in one query by adding `AND` or `OR` operators between the expressions. If a
        #   boolean operator appears within a quoted string, it is not treated as special,
        #   it's just another part of the character string to be matched. You can prepend
        #   the `NOT` operator to an expression to negate it. The fields available for
        #   filtering are: - data_id - user_id. For example, `filter=user_id=\"user123\"`.
        #   - archived - archive_time
        # @param [Fixnum] page_size
        #   Optional. Limit on the number of User data mappings to return in a single
        #   response. If not specified, 100 is used. May not be larger than 1000.
        # @param [String] page_token
        #   Optional. Token to retrieve the next page of results, or empty to get the
        #   first page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::ListUserDataMappingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::ListUserDataMappingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dataset_consent_store_user_data_mappings(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/userDataMappings', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::ListUserDataMappingsResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::ListUserDataMappingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified User data mapping.
        # @param [String] name
        #   Resource name of the User data mapping, of the form `projects/`project_id`/
        #   locations/`location_id`/datasets/`dataset_id`/consentStores/`consent_store_id`/
        #   userDataMappings/`user_data_mapping_id``.
        # @param [Google::Apis::HealthcareV1beta1::UserDataMapping] user_data_mapping_object
        # @param [String] update_mask
        #   Required. The update mask that applies to the resource. For the `FieldMask`
        #   definition, see https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#fieldmask. Only the `data_id`, `user_id` and `
        #   resource_attributes` fields can be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::UserDataMapping] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::UserDataMapping]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_dataset_consent_store_user_data_mapping(name, user_data_mapping_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::UserDataMapping::Representation
          command.request_object = user_data_mapping_object
          command.response_representation = Google::Apis::HealthcareV1beta1::UserDataMapping::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::UserDataMapping
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_data_mapper_workspace_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Policy::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::HealthcareV1beta1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_data_mapper_workspace_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Policy::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::HealthcareV1beta1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_data_mapper_workspace_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new DICOM store within the parent dataset.
        # @param [String] parent
        #   Required. The name of the dataset this DICOM store belongs to.
        # @param [Google::Apis::HealthcareV1beta1::DicomStore] dicom_store_object
        # @param [String] dicom_store_id
        #   Required. The ID of the DICOM store that is being created. Any string value up
        #   to 256 characters in length.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::DicomStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::DicomStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_dataset_dicom_store(parent, dicom_store_object = nil, dicom_store_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/dicomStores', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::DicomStore::Representation
          command.request_object = dicom_store_object
          command.response_representation = Google::Apis::HealthcareV1beta1::DicomStore::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::DicomStore
          command.params['parent'] = parent unless parent.nil?
          command.query['dicomStoreId'] = dicom_store_id unless dicom_store_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # De-identifies data from the source store and writes it to the destination
        # store. The metadata field type is OperationMetadata. If the request is
        # successful, the response field type is DeidentifyDicomStoreSummary. The LRO
        # result may still be successful if de-identification fails for some DICOM
        # instances. The output DICOM store will not contain these failed resources. The
        # number of resources processed are tracked in Operation.metadata. Error details
        # are logged to Cloud Logging. For more information, see [Viewing error logs in
        # Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging).
        # @param [String] source_store
        #   Required. Source DICOM store resource name. For example, `projects/`project_id`
        #   /locations/`location_id`/datasets/`dataset_id`/dicomStores/`dicom_store_id``.
        # @param [Google::Apis::HealthcareV1beta1::DeidentifyDicomStoreRequest] deidentify_dicom_store_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deidentify_dicom_store(source_store, deidentify_dicom_store_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+sourceStore}:deidentify', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::DeidentifyDicomStoreRequest::Representation
          command.request_object = deidentify_dicom_store_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Operation
          command.params['sourceStore'] = source_store unless source_store.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified DICOM store and removes all images that are contained
        # within it.
        # @param [String] name
        #   Required. The resource name of the DICOM store to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_dicom_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Empty::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports data to the specified destination by copying it from the DICOM store.
        # Errors are also logged to Cloud Logging. For more information, see [Viewing
        # errors in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/
        # logging). The metadata field type is OperationMetadata.
        # @param [String] name
        #   Required. The DICOM store resource name from which to export the data. For
        #   example, `projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   dicomStores/`dicom_store_id``.
        # @param [Google::Apis::HealthcareV1beta1::ExportDicomDataRequest] export_dicom_data_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_dicom_store_dicom_data(name, export_dicom_data_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:export', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::ExportDicomDataRequest::Representation
          command.request_object = export_dicom_data_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified DICOM store.
        # @param [String] name
        #   Required. The resource name of the DICOM store to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::DicomStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::DicomStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_dicom_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::DicomStore::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::DicomStore
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets metrics associated with the DICOM store.
        # @param [String] name
        #   Required. The resource name of the DICOM store to get metrics for.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::DicomStoreMetrics] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::DicomStoreMetrics]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_dicom_store_dicom_store_metrics(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}:getDICOMStoreMetrics', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::DicomStoreMetrics::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::DicomStoreMetrics
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_dicom_store_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Policy::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports data into the DICOM store by copying it from the specified source.
        # Errors are logged to Cloud Logging. For more information, see [Viewing error
        # logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/
        # logging). The metadata field type is OperationMetadata.
        # @param [String] name
        #   Required. The name of the DICOM store resource into which the data is imported.
        #   For example, `projects/`project_id`/locations/`location_id`/datasets/`
        #   dataset_id`/dicomStores/`dicom_store_id``.
        # @param [Google::Apis::HealthcareV1beta1::ImportDicomDataRequest] import_dicom_data_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_dicom_store_dicom_data(name, import_dicom_data_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:import', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::ImportDicomDataRequest::Representation
          command.request_object = import_dicom_data_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the DICOM stores in the given dataset.
        # @param [String] parent
        #   Required. Name of the dataset.
        # @param [String] filter
        #   Restricts stores returned to those matching a filter. The following syntax is
        #   available: * A string field value can be written as text inside quotation
        #   marks, for example `"query text"`. The only valid relational operation for
        #   text fields is equality (`=`), where text is searched within the field, rather
        #   than having the field be equal to the text. For example, `"Comment = great"`
        #   returns messages with `great` in the comment field. * A number field value can
        #   be written as an integer, a decimal, or an exponential. The valid relational
        #   operators for number fields are the equality operator (`=`), along with the
        #   less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no
        #   inequality (`!=`) operator. You can prepend the `NOT` operator to an
        #   expression to negate it. * A date field value must be written in `yyyy-mm-dd`
        #   form. Fields with date and time use the RFC3339 time format. Leading zeros are
        #   required for one-digit months and days. The valid relational operators for
        #   date fields are the equality operator (`=`) , along with the less than/greater
        #   than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality (`!=`)
        #   operator. You can prepend the `NOT` operator to an expression to negate it. *
        #   Multiple field query expressions can be combined in one query by adding `AND`
        #   or `OR` operators between the expressions. If a boolean operator appears
        #   within a quoted string, it is not treated as special, it's just another part
        #   of the character string to be matched. You can prepend the `NOT` operator to
        #   an expression to negate it. Only filtering on labels is supported. For example,
        #   `labels.key=value`.
        # @param [Fixnum] page_size
        #   Limit on the number of DICOM stores to return in a single response. If not
        #   specified, 100 is used. May not be larger than 1000.
        # @param [String] page_token
        #   The next_page_token value returned from the previous List request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::ListDicomStoresResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::ListDicomStoresResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dataset_dicom_stores(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/dicomStores', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::ListDicomStoresResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::ListDicomStoresResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified DICOM store.
        # @param [String] name
        #   Identifier. Resource name of the DICOM store, of the form `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/dicomStores/`
        #   dicom_store_id``.
        # @param [Google::Apis::HealthcareV1beta1::DicomStore] dicom_store_object
        # @param [String] update_mask
        #   The update mask applies to the resource. For the `FieldMask` definition, see
        #   https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::DicomStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::DicomStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_dataset_dicom_store(name, dicom_store_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::DicomStore::Representation
          command.request_object = dicom_store_object
          command.response_representation = Google::Apis::HealthcareV1beta1::DicomStore::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::DicomStore
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # SearchForInstances returns a list of matching instances. See [
        # RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/html/
        # part18.html#sect_10.4). For details on the implementation of
        # SearchForInstances, see [Search transaction](https://cloud.google.com/
        # healthcare/docs/dicom#search_transaction) in the Cloud Healthcare API
        # conformance statement. For samples that show how to call SearchForInstances,
        # see [Search for DICOM data](https://cloud.google.com/healthcare/docs/how-tos/
        # dicomweb#search-dicom).
        # @param [String] parent
        #   Required. The name of the DICOM store that is being accessed. For example, `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   dicomStores/`dicom_store_id``.
        # @param [String] dicom_web_path
        #   Required. The path of the SearchForInstancesRequest DICOMweb request. For
        #   example, `instances`, `series/`series_uid`/instances`, or `studies/`study_uid`/
        #   instances`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_dataset_dicom_store_for_instances(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # SearchForSeries returns a list of matching series. See [RetrieveTransaction](
        # http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4).
        # For details on the implementation of SearchForSeries, see [Search transaction]
        # (https://cloud.google.com/healthcare/docs/dicom#search_transaction) in the
        # Cloud Healthcare API conformance statement. For samples that show how to call
        # SearchForSeries, see [Search for DICOM data](https://cloud.google.com/
        # healthcare/docs/how-tos/dicomweb#search-dicom).
        # @param [String] parent
        #   Required. The name of the DICOM store that is being accessed. For example, `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   dicomStores/`dicom_store_id``.
        # @param [String] dicom_web_path
        #   Required. The path of the SearchForSeries DICOMweb request. For example, `
        #   series` or `studies/`study_uid`/series`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_dataset_dicom_store_for_series(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # SearchForStudies returns a list of matching studies. See [RetrieveTransaction](
        # http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4).
        # For details on the implementation of SearchForStudies, see [Search
        # transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction)
        # in the Cloud Healthcare API conformance statement. For samples that show how
        # to call SearchForStudies, see [Search for DICOM data](https://cloud.google.com/
        # healthcare/docs/how-tos/dicomweb#search-dicom).
        # @param [String] parent
        #   Required. The name of the DICOM store that is being accessed. For example, `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   dicomStores/`dicom_store_id``.
        # @param [String] dicom_web_path
        #   Required. The path of the SearchForStudies DICOMweb request. For example, `
        #   studies`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_dataset_dicom_store_for_studies(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # SetBlobStorageSettings sets the blob storage settings of the specified
        # resources.
        # @param [String] resource
        #   Required. The path of the resource to update the blob storage settings in the
        #   format of `projects/`projectID`/locations/`locationID`/datasets/`datasetID`/
        #   dicomStores/`dicomStoreID`/dicomWeb/studies/`studyUID``, `projects/`projectID`/
        #   locations/`locationID`/datasets/`datasetID`/dicomStores/`dicomStoreID`/
        #   dicomWeb/studies/`studyUID`/series/`seriesUID`/`, or `projects/`projectID`/
        #   locations/`locationID`/datasets/`datasetID`/dicomStores/`dicomStoreID`/
        #   dicomWeb/studies/`studyUID`/series/`seriesUID`/instances/`instanceUID``. If `
        #   filter_config` is specified, set the value of `resource` to the resource name
        #   of a DICOM store in the format `projects/`projectID`/locations/`locationID`/
        #   datasets/`datasetID`/dicomStores/`dicomStoreID``.
        # @param [Google::Apis::HealthcareV1beta1::SetBlobStorageSettingsRequest] set_blob_storage_settings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_dicom_store_blob_storage_settings(resource, set_blob_storage_settings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setBlobStorageSettings', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::SetBlobStorageSettingsRequest::Representation
          command.request_object = set_blob_storage_settings_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Operation
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::HealthcareV1beta1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_dicom_store_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Policy::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # StoreInstances stores DICOM instances associated with study instance unique
        # identifiers (SUID). See [Store Transaction](http://dicom.nema.org/medical/
        # dicom/current/output/html/part18.html#sect_10.5). For details on the
        # implementation of StoreInstances, see [Store transaction](https://cloud.google.
        # com/healthcare/docs/dicom#store_transaction) in the Cloud Healthcare API
        # conformance statement. For samples that show how to call StoreInstances, see [
        # Store DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#
        # store-dicom).
        # @param [String] parent
        #   Required. The name of the DICOM store that is being accessed. For example, `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   dicomStores/`dicom_store_id``.
        # @param [String] dicom_web_path
        #   Required. The path of the StoreInstances DICOMweb request. For example, `
        #   studies/[`study_uid`]`. Note that the `study_uid` is optional.
        # @param [Google::Apis::HealthcareV1beta1::HttpBody] http_body_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def store_project_location_dataset_dicom_store_instances(parent, dicom_web_path, http_body_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.request_object = http_body_object
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::HealthcareV1beta1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_dicom_store_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # GetStudyMetrics returns metrics for a study.
        # @param [String] study
        #   Required. The study resource path. For example, `projects/`project_id`/
        #   locations/`location_id`/datasets/`dataset_id`/dicomStores/`dicom_store_id`/
        #   dicomWeb/studies/`study_uid``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::StudyMetrics] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::StudyMetrics]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_dicom_store_dicom_web_study_study_metrics(study, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+study}:getStudyMetrics', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::StudyMetrics::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::StudyMetrics
          command.params['study'] = study unless study.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # SetBlobStorageSettings sets the blob storage settings of the specified
        # resources.
        # @param [String] resource
        #   Required. The path of the resource to update the blob storage settings in the
        #   format of `projects/`projectID`/locations/`locationID`/datasets/`datasetID`/
        #   dicomStores/`dicomStoreID`/dicomWeb/studies/`studyUID``, `projects/`projectID`/
        #   locations/`locationID`/datasets/`datasetID`/dicomStores/`dicomStoreID`/
        #   dicomWeb/studies/`studyUID`/series/`seriesUID`/`, or `projects/`projectID`/
        #   locations/`locationID`/datasets/`datasetID`/dicomStores/`dicomStoreID`/
        #   dicomWeb/studies/`studyUID`/series/`seriesUID`/instances/`instanceUID``. If `
        #   filter_config` is specified, set the value of `resource` to the resource name
        #   of a DICOM store in the format `projects/`projectID`/locations/`locationID`/
        #   datasets/`datasetID`/dicomStores/`dicomStoreID``.
        # @param [Google::Apis::HealthcareV1beta1::SetBlobStorageSettingsRequest] set_blob_storage_settings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_study_blob_storage_settings(resource, set_blob_storage_settings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setBlobStorageSettings', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::SetBlobStorageSettingsRequest::Representation
          command.request_object = set_blob_storage_settings_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Operation
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # GetSeriesMetrics returns metrics for a series.
        # @param [String] series
        #   Required. The series resource path. For example, `projects/`project_id`/
        #   locations/`location_id`/datasets/`dataset_id`/dicomStores/`dicom_store_id`/
        #   dicomWeb/studies/`study_uid`/series/`series_uid``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::SeriesMetrics] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::SeriesMetrics]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_dicom_store_dicom_web_study_series_series_metrics(series, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+series}:getSeriesMetrics', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::SeriesMetrics::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::SeriesMetrics
          command.params['series'] = series unless series.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # GetStorageInfo returns the storage info of the specified resource.
        # @param [String] resource
        #   Required. The path of the instance to return storage info for, in the form: `
        #   projects/`projectID`/locations/`locationID`/datasets/`datasetID`/dicomStores/`
        #   dicomStoreID`/dicomWeb/studies/`studyUID`/series/`seriesUID`/instances/`
        #   instanceUID``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::StorageInfo] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::StorageInfo]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_dicom_store_dicom_web_study_series_instance_storage_info(resource, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+resource}:getStorageInfo', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::StorageInfo::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::StorageInfo
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # DeleteStudy deletes all instances within the given study using a long running
        # operation. The method returns an Operation which will be marked successful
        # when the deletion is complete. Warning: Instances cannot be inserted into a
        # study that is being deleted by an operation until the operation completes. For
        # samples that show how to call DeleteStudy, see [Delete a study, series, or
        # instance](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#delete-
        # dicom).
        # @param [String] parent
        # @param [String] dicom_web_path
        #   Required. The path of the DeleteStudy request. For example, `studies/`
        #   study_uid``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_dicom_store_study(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RetrieveStudyMetadata returns instance associated with the given study
        # presented as metadata with the bulk data removed. See [RetrieveTransaction](
        # http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4).
        # For details on the implementation of RetrieveStudyMetadata, see [Metadata
        # resources](https://cloud.google.com/healthcare/docs/dicom#metadata_resources)
        # in the Cloud Healthcare API conformance statement. For samples that show how
        # to call RetrieveStudyMetadata, see [Retrieve metadata](https://cloud.google.
        # com/healthcare/docs/how-tos/dicomweb#retrieve-metadata).
        # @param [String] parent
        #   Required. The name of the DICOM store that is being accessed. For example, `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   dicomStores/`dicom_store_id``.
        # @param [String] dicom_web_path
        #   Required. The path of the RetrieveStudyMetadata DICOMweb request. For example,
        #   `studies/`study_uid`/metadata`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_project_location_dataset_dicom_store_study_metadata(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RetrieveStudy returns all instances within the given study. See [
        # RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/html/
        # part18.html#sect_10.4). For details on the implementation of RetrieveStudy,
        # see [DICOM study/series/instances](https://cloud.google.com/healthcare/docs/
        # dicom#dicom_studyseriesinstances) in the Cloud Healthcare API conformance
        # statement. For samples that show how to call RetrieveStudy, see [Retrieve
        # DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-
        # dicom).
        # @param [String] parent
        #   Required. The name of the DICOM store that is being accessed. For example, `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   dicomStores/`dicom_store_id``.
        # @param [String] dicom_web_path
        #   Required. The path of the RetrieveStudy DICOMweb request. For example, `
        #   studies/`study_uid``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_project_location_dataset_dicom_store_study_study(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # SearchForInstances returns a list of matching instances. See [
        # RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/html/
        # part18.html#sect_10.4). For details on the implementation of
        # SearchForInstances, see [Search transaction](https://cloud.google.com/
        # healthcare/docs/dicom#search_transaction) in the Cloud Healthcare API
        # conformance statement. For samples that show how to call SearchForInstances,
        # see [Search for DICOM data](https://cloud.google.com/healthcare/docs/how-tos/
        # dicomweb#search-dicom).
        # @param [String] parent
        #   Required. The name of the DICOM store that is being accessed. For example, `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   dicomStores/`dicom_store_id``.
        # @param [String] dicom_web_path
        #   Required. The path of the SearchForInstancesRequest DICOMweb request. For
        #   example, `instances`, `series/`series_uid`/instances`, or `studies/`study_uid`/
        #   instances`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_dataset_dicom_store_study_for_instances(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # SearchForSeries returns a list of matching series. See [RetrieveTransaction](
        # http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4).
        # For details on the implementation of SearchForSeries, see [Search transaction]
        # (https://cloud.google.com/healthcare/docs/dicom#search_transaction) in the
        # Cloud Healthcare API conformance statement. For samples that show how to call
        # SearchForSeries, see [Search for DICOM data](https://cloud.google.com/
        # healthcare/docs/how-tos/dicomweb#search-dicom).
        # @param [String] parent
        #   Required. The name of the DICOM store that is being accessed. For example, `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   dicomStores/`dicom_store_id``.
        # @param [String] dicom_web_path
        #   Required. The path of the SearchForSeries DICOMweb request. For example, `
        #   series` or `studies/`study_uid`/series`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_dataset_dicom_store_study_for_series(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # StoreInstances stores DICOM instances associated with study instance unique
        # identifiers (SUID). See [Store Transaction](http://dicom.nema.org/medical/
        # dicom/current/output/html/part18.html#sect_10.5). For details on the
        # implementation of StoreInstances, see [Store transaction](https://cloud.google.
        # com/healthcare/docs/dicom#store_transaction) in the Cloud Healthcare API
        # conformance statement. For samples that show how to call StoreInstances, see [
        # Store DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#
        # store-dicom).
        # @param [String] parent
        #   Required. The name of the DICOM store that is being accessed. For example, `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   dicomStores/`dicom_store_id``.
        # @param [String] dicom_web_path
        #   Required. The path of the StoreInstances DICOMweb request. For example, `
        #   studies/[`study_uid`]`. Note that the `study_uid` is optional.
        # @param [Google::Apis::HealthcareV1beta1::HttpBody] http_body_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def store_project_location_dataset_dicom_store_study_instances(parent, dicom_web_path, http_body_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.request_object = http_body_object
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # DeleteSeries deletes all instances within the given study and series using a
        # long running operation. The method returns an Operation which will be marked
        # successful when the deletion is complete. Warning: Instances cannot be
        # inserted into a series that is being deleted by an operation until the
        # operation completes. For samples that show how to call DeleteSeries, see [
        # Delete a study, series, or instance](https://cloud.google.com/healthcare/docs/
        # how-tos/dicomweb#delete-dicom).
        # @param [String] parent
        #   Required. The name of the DICOM store that is being accessed. For example, `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   dicomStores/`dicom_store_id``.
        # @param [String] dicom_web_path
        #   Required. The path of the DeleteSeries request. For example, `studies/`
        #   study_uid`/series/`series_uid``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_dicom_store_study_series(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RetrieveSeriesMetadata returns instance associated with the given study and
        # series, presented as metadata with the bulk data removed. See [
        # RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/html/
        # part18.html#sect_10.4). For details on the implementation of
        # RetrieveSeriesMetadata, see [Metadata resources](https://cloud.google.com/
        # healthcare/docs/dicom#metadata_resources) in the Cloud Healthcare API
        # conformance statement. For samples that show how to call
        # RetrieveSeriesMetadata, see [Retrieve metadata](https://cloud.google.com/
        # healthcare/docs/how-tos/dicomweb#retrieve-metadata).
        # @param [String] parent
        #   Required. The name of the DICOM store that is being accessed. For example, `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   dicomStores/`dicom_store_id``.
        # @param [String] dicom_web_path
        #   Required. The path of the RetrieveSeriesMetadata DICOMweb request. For example,
        #   `studies/`study_uid`/series/`series_uid`/metadata`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_project_location_dataset_dicom_store_study_series_metadata(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RetrieveSeries returns all instances within the given study and series. See [
        # RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/html/
        # part18.html#sect_10.4). For details on the implementation of RetrieveSeries,
        # see [DICOM study/series/instances](https://cloud.google.com/healthcare/docs/
        # dicom#dicom_studyseriesinstances) in the Cloud Healthcare API conformance
        # statement. For samples that show how to call RetrieveSeries, see [Retrieve
        # DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-
        # dicom).
        # @param [String] parent
        #   Required. The name of the DICOM store that is being accessed. For example, `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   dicomStores/`dicom_store_id``.
        # @param [String] dicom_web_path
        #   Required. The path of the RetrieveSeries DICOMweb request. For example, `
        #   studies/`study_uid`/series/`series_uid``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_project_location_dataset_dicom_store_study_series_series(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # SearchForInstances returns a list of matching instances. See [
        # RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/html/
        # part18.html#sect_10.4). For details on the implementation of
        # SearchForInstances, see [Search transaction](https://cloud.google.com/
        # healthcare/docs/dicom#search_transaction) in the Cloud Healthcare API
        # conformance statement. For samples that show how to call SearchForInstances,
        # see [Search for DICOM data](https://cloud.google.com/healthcare/docs/how-tos/
        # dicomweb#search-dicom).
        # @param [String] parent
        #   Required. The name of the DICOM store that is being accessed. For example, `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   dicomStores/`dicom_store_id``.
        # @param [String] dicom_web_path
        #   Required. The path of the SearchForInstancesRequest DICOMweb request. For
        #   example, `instances`, `series/`series_uid`/instances`, or `studies/`study_uid`/
        #   instances`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_dataset_dicom_store_study_series_for_instances(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # DeleteInstance deletes an instance associated with the given study, series,
        # and SOP Instance UID. Delete requests are equivalent to the GET requests
        # specified in the Retrieve transaction. Study and series search results can
        # take a few seconds to be updated after an instance is deleted using
        # DeleteInstance. For samples that show how to call DeleteInstance, see [Delete
        # a study, series, or instance](https://cloud.google.com/healthcare/docs/how-tos/
        # dicomweb#delete-dicom).
        # @param [String] parent
        #   Required. The name of the DICOM store that is being accessed. For example, `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   dicomStores/`dicom_store_id``.
        # @param [String] dicom_web_path
        #   Required. The path of the DeleteInstance request. For example, `studies/`
        #   study_uid`/series/`series_uid`/instances/`instance_uid``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_dicom_store_study_series_instance(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Empty::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Empty
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RetrieveInstance returns instance associated with the given study, series, and
        # SOP Instance UID. See [RetrieveTransaction](http://dicom.nema.org/medical/
        # dicom/current/output/html/part18.html#sect_10.4). For details on the
        # implementation of RetrieveInstance, see [DICOM study/series/instances](https://
        # cloud.google.com/healthcare/docs/dicom#dicom_studyseriesinstances) and [DICOM
        # instances](https://cloud.google.com/healthcare/docs/dicom#dicom_instances) in
        # the Cloud Healthcare API conformance statement. For samples that show how to
        # call RetrieveInstance, see [Retrieve an instance](https://cloud.google.com/
        # healthcare/docs/how-tos/dicomweb#retrieve-instance).
        # @param [String] parent
        #   Required. The name of the DICOM store that is being accessed. For example, `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   dicomStores/`dicom_store_id``.
        # @param [String] dicom_web_path
        #   Required. The path of the RetrieveInstance DICOMweb request. For example, `
        #   studies/`study_uid`/series/`series_uid`/instances/`instance_uid``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_project_location_dataset_dicom_store_study_series_instance_instance(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RetrieveInstanceMetadata returns instance associated with the given study,
        # series, and SOP Instance UID presented as metadata with the bulk data removed.
        # See [RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/
        # html/part18.html#sect_10.4). For details on the implementation of
        # RetrieveInstanceMetadata, see [Metadata resources](https://cloud.google.com/
        # healthcare/docs/dicom#metadata_resources) in the Cloud Healthcare API
        # conformance statement. For samples that show how to call
        # RetrieveInstanceMetadata, see [Retrieve metadata](https://cloud.google.com/
        # healthcare/docs/how-tos/dicomweb#retrieve-metadata).
        # @param [String] parent
        #   Required. The name of the DICOM store that is being accessed. For example, `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   dicomStores/`dicom_store_id``.
        # @param [String] dicom_web_path
        #   Required. The path of the RetrieveInstanceMetadata DICOMweb request. For
        #   example, `studies/`study_uid`/series/`series_uid`/instances/`instance_uid`/
        #   metadata`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_project_location_dataset_dicom_store_study_series_instance_metadata(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RetrieveRenderedInstance returns instance associated with the given study,
        # series, and SOP Instance UID in an acceptable Rendered Media Type. See [
        # RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/html/
        # part18.html#sect_10.4). For details on the implementation of
        # RetrieveRenderedInstance, see [Rendered resources](https://cloud.google.com/
        # healthcare/docs/dicom#rendered_resources) in the Cloud Healthcare API
        # conformance statement. For samples that show how to call
        # RetrieveRenderedInstance, see [Retrieve consumer image formats](https://cloud.
        # google.com/healthcare/docs/how-tos/dicomweb#retrieve-consumer).
        # @param [String] parent
        #   Required. The name of the DICOM store that is being accessed. For example, `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   dicomStores/`dicom_store_id``.
        # @param [String] dicom_web_path
        #   Required. The path of the RetrieveRenderedInstance DICOMweb request. For
        #   example, `studies/`study_uid`/series/`series_uid`/instances/`instance_uid`/
        #   rendered`.
        # @param [String] viewport
        #   Optional. The viewport setting to use as specified in https://dicom.nema.org/
        #   medical/dicom/current/output/chtml/part18/sect_8.3.5.html#sect_8.3.5.1.3
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_project_location_dataset_dicom_store_study_series_instance_rendered(parent, dicom_web_path, viewport: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['viewport'] = viewport unless viewport.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns uncompressed, unencoded bytes representing the referenced bulkdata tag
        # from an instance. See [Retrieve Transaction] (http://dicom.nema.org/medical/
        # dicom/current/output/html/part18.html#sect_10.4)`: .external`. For details on
        # the implementation of RetrieveBulkdata, see [Bulkdata resources](https://cloud.
        # google.com/healthcare/docs/dicom#bulkdata-resources) in the Cloud Healthcare
        # API conformance statement. For samples that show how to call RetrieveBulkdata,
        # see [Retrieve bulkdata](https://cloud.google.com/healthcare/docs/how-tos/
        # dicomweb#retrieve-bulkdata).
        # @param [String] parent
        #   Required. The name of the DICOM store that is being accessed. For example, `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   dicomStores/`dicom_store_id``.
        # @param [String] dicom_web_path
        #   Required. The path for the `RetrieveBulkdata` DICOMweb request. For example, `
        #   studies/`study_uid`/series/`series_uid`/instances/`instance_uid`/bukdata/`
        #   bulkdata_uri``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_project_location_dataset_dicom_store_study_series_instance_bulkdatum_bulkdata(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RetrieveFrames returns instances associated with the given study, series, SOP
        # Instance UID and frame numbers. See [RetrieveTransaction](http://dicom.nema.
        # org/medical/dicom/current/output/html/part18.html#sect_10.4). For details on
        # the implementation of RetrieveFrames, see [DICOM frames](https://cloud.google.
        # com/healthcare/docs/dicom#dicom_frames) in the Cloud Healthcare API
        # conformance statement. For samples that show how to call RetrieveFrames, see [
        # Retrieve DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#
        # retrieve-dicom).
        # @param [String] parent
        #   Required. The name of the DICOM store that is being accessed. For example, `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   dicomStores/`dicom_store_id``.
        # @param [String] dicom_web_path
        #   Required. The path of the RetrieveFrames DICOMweb request. For example, `
        #   studies/`study_uid`/series/`series_uid`/instances/`instance_uid`/frames/`
        #   frame_list``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_project_location_dataset_dicom_store_study_series_instance_frame_frames(parent, dicom_web_path, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RetrieveRenderedFrames returns instances associated with the given study,
        # series, SOP Instance UID and frame numbers in an acceptable Rendered Media
        # Type. See [RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/
        # output/html/part18.html#sect_10.4). For details on the implementation of
        # RetrieveRenderedFrames, see [Rendered resources](https://cloud.google.com/
        # healthcare/docs/dicom#rendered_resources) in the Cloud Healthcare API
        # conformance statement. For samples that show how to call
        # RetrieveRenderedFrames, see [Retrieve consumer image formats](https://cloud.
        # google.com/healthcare/docs/how-tos/dicomweb#retrieve-consumer).
        # @param [String] parent
        #   Required. The name of the DICOM store that is being accessed. For example, `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   dicomStores/`dicom_store_id``.
        # @param [String] dicom_web_path
        #   Required. The path of the RetrieveRenderedFrames DICOMweb request. For example,
        #   `studies/`study_uid`/series/`series_uid`/instances/`instance_uid`/frames/`
        #   frame_list`/rendered`.
        # @param [String] viewport
        #   Optional. The viewport setting to use as specified in https://dicom.nema.org/
        #   medical/dicom/current/output/chtml/part18/sect_8.3.5.html#sect_8.3.5.1.3
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_project_location_dataset_dicom_store_study_series_instance_frame_rendered(parent, dicom_web_path, viewport: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/dicomWeb/{+dicomWebPath}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['dicomWebPath'] = dicom_web_path unless dicom_web_path.nil?
          command.query['viewport'] = viewport unless viewport.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Applies the admin Consent resources for the FHIR store and reindexes the
        # underlying resources in the FHIR store according to the aggregate consents.
        # This method also updates the `consent_config.enforced_admin_consents` field of
        # the FhirStore unless `validate_only=true` in ApplyAdminConsentsRequest. Any
        # admin Consent resource change after this operation execution (including
        # deletion) requires you to call ApplyAdminConsents again for the change to take
        # effect. This method returns an Operation that can be used to track the
        # progress of the resources that were reindexed, by calling GetOperation. Upon
        # completion, the ApplyAdminConsentsResponse additionally contains the number of
        # resources that were reindexed. If at least one Consent resource contains an
        # error or fails be be enforced for any reason, the method returns an error
        # instead of an Operation. No resources will be reindexed and the `
        # consent_config.enforced_admin_consents` field will be unchanged. To enforce a
        # consent check for data access, `consent_config.access_enforced` must be set to
        # true for the FhirStore. FHIR Consent is not supported in DSTU2 or R5.
        # @param [String] name
        #   Required. The name of the FHIR store to enforce, in the format `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/fhirStores/`
        #   fhir_store_id``.
        # @param [Google::Apis::HealthcareV1beta1::ApplyAdminConsentsRequest] apply_admin_consents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def apply_fhir_store_admin_consents(name, apply_admin_consents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:applyAdminConsents', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::ApplyAdminConsentsRequest::Representation
          command.request_object = apply_admin_consents_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Apply the Consent resources for the FHIR store and reindex the underlying
        # resources in the FHIR store according to the aggregate consent. The aggregate
        # consent of the patient in scope in this request replaces any previous call of
        # this method. Any Consent resource change after this operation execution (
        # including deletion) requires you to call ApplyConsents again to have effect.
        # This method returns an Operation that can be used to track the progress of the
        # consent resources that were processed by calling GetOperation. Upon completion,
        # the ApplyConsentsResponse additionally contains the number of resources that
        # was reindexed. Errors are logged to Cloud Logging (see [Viewing error logs in
        # Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)). To
        # enforce consent check for data access, `consent_config.access_enforced` must
        # be set to true for the FhirStore. FHIR Consent is not supported in DSTU2 or R5.
        # @param [String] name
        #   Required. The name of the FHIR store to enforce, in the format `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/fhirStores/`
        #   fhir_store_id``.
        # @param [Google::Apis::HealthcareV1beta1::ApplyConsentsRequest] apply_consents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def apply_fhir_store_consents(name, apply_consents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:applyConsents', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::ApplyConsentsRequest::Representation
          command.request_object = apply_consents_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk exports a Group resource and resources in the member field, including
        # related resources for each Patient member. The export for each Patient is
        # identical to a GetPatientEverything request. Implements the FHIR
        # implementation guide [$export group of patients](https://build.fhir.org/ig/HL7/
        # bulk-data/export.html#endpoint---group-of-patients). The following headers
        # must be set in the request: * `Accept`: specifies the format of the `
        # OperationOutcome` response. Only `application/fhir+json` is supported. * `
        # Prefer`: specifies whether the response is immediate or asynchronous. Must be
        # to `respond-async` because only asynchronous responses are supported. Specify
        # the destination for the server to write result files by setting the Cloud
        # Storage location bulk_export_gcs_destination on the FHIR store. URI of an
        # existing Cloud Storage directory where the server writes result files, in the
        # format gs://`bucket-id`/`path/to/destination/dir`. If there is no trailing
        # slash, the service appends one when composing the object path. The user is
        # responsible for creating the Cloud Storage bucket referenced. Supports the
        # following query parameters: * `_type`: string of comma-delimited FHIR resource
        # types. If provided, only resources of the specified type(s) are exported. * `
        # _since`: if provided, only resources updated after the specified time are
        # exported. * `_outputFormat`: optional, specify ndjson to export data in NDJSON
        # format. Exported file names use the format: `export_id`_`resource_type`.ndjson.
        # * `organizeOutputBy`: resource type to organize the output by. Required and
        # must be set to `Patient`. When specified, output files are organized by
        # instances of the specified resource type, including the resource, referenced
        # resources, and resources that contain references to that resource. On success,
        # the `Content-Location` header of response is set to a URL that you can use to
        # query the status of the export. The URL is in the format `projects/`project_id`
        # /locations/`location_id`/datasets/`dataset_id`/fhirStores/`fhir_store_id`/
        # operations/`export_id``. See get-fhir-operation-status for more information.
        # Errors generated by the FHIR store contain a JSON-encoded `OperationOutcome`
        # resource describing the reason for the error.
        # @param [String] name
        #   Required. Name of the `Group` resource that is exported, in format `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/fhirStores/`
        #   fhir_store_id`/fhir/Group/`group_id``.
        # @param [String] _since
        #   Optional. If provided, only resources updated after this time are exported.
        #   The time uses the format YYYY-MM-DDThh:mm:ss.sss+zz:zz. For example, `2015-02-
        #   07T13:28:17.239+02:00` or `2017-01-01T00:00:00Z`. The time must be specified
        #   to the second and include a time zone.
        # @param [String] _type
        #   Optional. String of comma-delimited FHIR resource types. If provided, only
        #   resources of the specified resource type(s) are exported.
        # @param [String] organize_output_by
        #   Optional. Required. The FHIR resource type used to organize exported resources.
        #   Only supports "Patient". When organized by Patient resource, output files are
        #   grouped as follows: * Patient file(s) containing the Patient resources. Each
        #   Patient is sequentially followed by all resources the Patient references, and
        #   all resources that reference the Patient (equivalent to a GetPatientEverything
        #   request). * Individual files grouped by resource type for resources in the
        #   Group's member field and the Group resource itself. Resources may be
        #   duplicated across multiple Patients. For example, if two Patient resources
        #   reference the same Organization resource, it will appear twice, once after
        #   each Patient. The Group resource from the request does not appear in the
        #   Patient files.
        # @param [String] output_format
        #   Optional. Output format of the export. This field is optional and only `
        #   application/fhir+ndjson` is supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_project_location_dataset_fhir_store_export_group(name, _since: nil, _type: nil, organize_output_by: nil, output_format: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/$export', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['_since'] = _since unless _since.nil?
          command.query['_type'] = _type unless _type.nil?
          command.query['organizeOutputBy'] = organize_output_by unless organize_output_by.nil?
          command.query['outputFormat'] = output_format unless output_format.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Configure the search parameters for the FHIR store and reindex resources in
        # the FHIR store according to the defined search parameters. The search
        # parameters provided in this request will replace any previous search
        # configuration. The target SearchParameter resources need to exist in the store
        # before calling ConfigureSearch, otherwise an error will occur. This method
        # returns an Operation that can be used to track the progress of the reindexing
        # by calling GetOperation.
        # @param [String] name
        #   Required. The name of the FHIR store to configure, in the format `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/fhirStores/`
        #   fhir_store_id``.
        # @param [Google::Apis::HealthcareV1beta1::ConfigureSearchRequest] configure_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def configure_fhir_store_search(name, configure_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:configureSearch', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::ConfigureSearchRequest::Representation
          command.request_object = configure_search_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new FHIR store within the parent dataset.
        # @param [String] parent
        #   Required. The name of the dataset this FHIR store belongs to.
        # @param [Google::Apis::HealthcareV1beta1::FhirStore] fhir_store_object
        # @param [String] fhir_store_id
        #   Required. The ID of the FHIR store that is being created. The string must
        #   match the following regex: `[\p`L`\p`N`_\-\.]`1,256``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::FhirStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::FhirStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_dataset_fhir_store(parent, fhir_store_object = nil, fhir_store_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/fhirStores', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::FhirStore::Representation
          command.request_object = fhir_store_object
          command.response_representation = Google::Apis::HealthcareV1beta1::FhirStore::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::FhirStore
          command.params['parent'] = parent unless parent.nil?
          command.query['fhirStoreId'] = fhir_store_id unless fhir_store_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # De-identifies data from the source store and writes it to the destination
        # store. The metadata field type is OperationMetadata. If the request is
        # successful, the response field type is DeidentifyFhirStoreSummary. The number
        # of resources processed are tracked in Operation.metadata. Error details are
        # logged to Cloud Logging. For more information, see [Viewing error logs in
        # Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging).
        # @param [String] source_store
        #   Required. Source FHIR store resource name. For example, `projects/`project_id`/
        #   locations/`location_id`/datasets/`dataset_id`/fhirStores/`fhir_store_id``. R5
        #   stores are not supported.
        # @param [Google::Apis::HealthcareV1beta1::DeidentifyFhirStoreRequest] deidentify_fhir_store_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deidentify_fhir_store(source_store, deidentify_fhir_store_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+sourceStore}:deidentify', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::DeidentifyFhirStoreRequest::Representation
          command.request_object = deidentify_fhir_store_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Operation
          command.params['sourceStore'] = source_store unless source_store.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified FHIR store and removes all resources within it.
        # @param [String] name
        #   Required. The resource name of the FHIR store to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_fhir_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Empty::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Explains all the permitted/denied actor, purpose and environment for a given
        # resource. FHIR Consent is not supported in DSTU2 or R5.
        # @param [String] name
        #   Required. The name of the FHIR store to enforce, in the format `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/fhirStores/`
        #   fhir_store_id``.
        # @param [String] resource_id
        #   Required. The ID (``resourceType`/`id``) of the resource to explain data
        #   access on.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::ExplainDataAccessResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::ExplainDataAccessResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def explain_project_location_dataset_fhir_store_data_access(name, resource_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}:explainDataAccess', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::ExplainDataAccessResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::ExplainDataAccessResponse
          command.params['name'] = name unless name.nil?
          command.query['resourceId'] = resource_id unless resource_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Export resources from the FHIR store to the specified destination. This method
        # returns an Operation that can be used to track the status of the export by
        # calling GetOperation. Immediate fatal errors appear in the error field, errors
        # are also logged to Cloud Logging (see [Viewing error logs in Cloud Logging](
        # https://cloud.google.com/healthcare/docs/how-tos/logging)). Otherwise, when
        # the operation finishes, a detailed response of type ExportResourcesResponse is
        # returned in the response field. The metadata field type for this operation is
        # OperationMetadata.
        # @param [String] name
        #   Required. The name of the FHIR store to export resource from, in the format of
        #   `projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   fhirStores/`fhir_store_id``.
        # @param [Google::Apis::HealthcareV1beta1::ExportResourcesRequest] export_resources_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_fhir_store_resources(name, export_resources_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:export', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::ExportResourcesRequest::Representation
          command.request_object = export_resources_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Export resources including historical versions from the FHIR store to the
        # specified destination. The exported resource, along with previous versions,
        # will be exported in one or more FHIR history bundles. This method returns an
        # Operation that can be used to track the status of the export by calling
        # GetOperation. Immediate fatal errors appear in the error field, errors are
        # also logged to Cloud Logging (see [Viewing error logs in Cloud Logging](https:/
        # /cloud.google.com/healthcare/docs/how-tos/logging)). Otherwise, when the
        # operation finishes, a detailed response of type ExportResourcesResponse is
        # returned in the response field. The metadata field type for this operation is
        # OperationMetadata.
        # @param [String] name
        #   Required. The name of the FHIR store to export resource from, in the format `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/fhirStores/
        #   `fhir_store_id``.
        # @param [Google::Apis::HealthcareV1beta1::ExportResourcesHistoryRequest] export_resources_history_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_dataset_fhir_store_history(name, export_resources_history_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:exportHistory', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::ExportResourcesHistoryRequest::Representation
          command.request_object = export_resources_history_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the configuration of the specified FHIR store.
        # @param [String] name
        #   Required. The resource name of the FHIR store to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::FhirStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::FhirStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_fhir_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::FhirStore::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::FhirStore
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets metrics associated with the FHIR store.
        # @param [String] name
        #   Required. The resource name of the FHIR store to get metrics for.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::FhirStoreMetrics] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::FhirStoreMetrics]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_fhir_store_fhir_store_metrics(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}:getFHIRStoreMetrics', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::FhirStoreMetrics::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::FhirStoreMetrics
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_fhir_store_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Policy::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Import resources to the FHIR store by loading data from the specified sources.
        # This method is optimized to load large quantities of data using import
        # semantics that ignore some FHIR store configuration options and are not
        # suitable for all use cases. It is primarily intended to load data into an
        # empty FHIR store that is not being used by other clients. In cases where this
        # method is not appropriate, consider using ExecuteBundle to load data. Every
        # resource in the input must contain a client-supplied ID. Each resource is
        # stored using the supplied ID regardless of the enable_update_create setting on
        # the FHIR store. It is strongly advised not to include or encode any sensitive
        # data such as patient identifiers in client-specified resource IDs. Those IDs
        # are part of the FHIR resource path recorded in Cloud Audit Logs and Cloud Pub/
        # Sub notifications. Those IDs can also be contained in reference fields within
        # other resources. The import process does not enforce referential integrity,
        # regardless of the disable_referential_integrity setting on the FHIR store.
        # This allows the import of resources with arbitrary interdependencies without
        # considering grouping or ordering, but if the input data contains invalid
        # references or if some resources fail to be imported, the FHIR store might be
        # left in a state that violates referential integrity. The import process does
        # not trigger Pub/Sub notification or BigQuery streaming update, regardless of
        # how those are configured on the FHIR store. If a resource with the specified
        # ID already exists, the most recent version of the resource is overwritten
        # without creating a new historical version, regardless of the
        # disable_resource_versioning setting on the FHIR store. If transient failures
        # occur during the import, it is possible that successfully imported resources
        # will be overwritten more than once. The import operation is idempotent unless
        # the input data contains multiple valid resources with the same ID but
        # different contents. In that case, after the import completes, the store
        # contains exactly one resource with that ID but there is no ordering guarantee
        # on which version of the contents it will have. The operation result counters
        # do not count duplicate IDs as an error and count one success for each resource
        # in the input, which might result in a success count larger than the number of
        # resources in the FHIR store. This often occurs when importing data organized
        # in bundles produced by Patient-everything where each bundle contains its own
        # copy of a resource such as Practitioner that might be referred to by many
        # patients. If some resources fail to import, for example due to parsing errors,
        # successfully imported resources are not rolled back. The location and format
        # of the input data are specified by the parameters in ImportResourcesRequest.
        # Note that if no format is specified, this method assumes the `BUNDLE` format.
        # When using the `BUNDLE` format this method ignores the `Bundle.type` field,
        # except that `history` bundles are rejected, and does not apply any of the
        # bundle processing semantics for batch or transaction bundles. Unlike in
        # ExecuteBundle, transaction bundles are not executed as a single transaction
        # and bundle-internal references are not rewritten. The bundle is treated as a
        # collection of resources to be written as provided in `Bundle.entry.resource`,
        # ignoring `Bundle.entry.request`. As an example, this allows the import of `
        # searchset` bundles produced by a FHIR search or Patient-everything operation.
        # This method returns an Operation that can be used to track the status of the
        # import by calling GetOperation. Immediate fatal errors appear in the error
        # field, errors are also logged to Cloud Logging (see [Viewing error logs in
        # Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)).
        # Otherwise, when the operation finishes, a detailed response of type
        # ImportResourcesResponse is returned in the response field. The metadata field
        # type for this operation is OperationMetadata.
        # @param [String] name
        #   Required. The name of the FHIR store to import FHIR resources to, in the
        #   format of `projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   fhirStores/`fhir_store_id``.
        # @param [Google::Apis::HealthcareV1beta1::ImportResourcesRequest] import_resources_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_fhir_store_resources(name, import_resources_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:import', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::ImportResourcesRequest::Representation
          command.request_object = import_resources_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Import resource historical versions from Cloud Storage source to destination
        # fhir store. The exported resource, along with previous versions, will be
        # exported in one or more FHIR history bundles. This method returns an Operation
        # that can be used to track the status of the export by calling GetOperation.
        # Immediate fatal errors appear in the error field, errors are also logged to
        # Cloud Logging (see [Viewing error logs in Cloud Logging](https://cloud.google.
        # com/healthcare/docs/how-tos/logging)). Otherwise, when the operation finishes,
        # a detailed response of type ImportResourcesResponse is returned in the
        # response field. The metadata field type for this operation is
        # OperationMetadata.
        # @param [String] name
        #   Required. The name of the FHIR store to import FHIR resources to, in the
        #   format of `projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   fhirStores/`fhir_store_id``.
        # @param [Google::Apis::HealthcareV1beta1::ImportResourcesHistoryRequest] import_resources_history_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_dataset_fhir_store_history(name, import_resources_history_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:importHistory', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::ImportResourcesHistoryRequest::Representation
          command.request_object = import_resources_history_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the FHIR stores in the given dataset.
        # @param [String] parent
        #   Required. Name of the dataset.
        # @param [String] filter
        #   Restricts stores returned to those matching a filter. The following syntax is
        #   available: * A string field value can be written as text inside quotation
        #   marks, for example `"query text"`. The only valid relational operation for
        #   text fields is equality (`=`), where text is searched within the field, rather
        #   than having the field be equal to the text. For example, `"Comment = great"`
        #   returns messages with `great` in the comment field. * A number field value can
        #   be written as an integer, a decimal, or an exponential. The valid relational
        #   operators for number fields are the equality operator (`=`), along with the
        #   less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no
        #   inequality (`!=`) operator. You can prepend the `NOT` operator to an
        #   expression to negate it. * A date field value must be written in `yyyy-mm-dd`
        #   form. Fields with date and time use the RFC3339 time format. Leading zeros are
        #   required for one-digit months and days. The valid relational operators for
        #   date fields are the equality operator (`=`) , along with the less than/greater
        #   than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality (`!=`)
        #   operator. You can prepend the `NOT` operator to an expression to negate it. *
        #   Multiple field query expressions can be combined in one query by adding `AND`
        #   or `OR` operators between the expressions. If a boolean operator appears
        #   within a quoted string, it is not treated as special, it's just another part
        #   of the character string to be matched. You can prepend the `NOT` operator to
        #   an expression to negate it. Only filtering on labels is supported, for example
        #   `labels.key=value`.
        # @param [Fixnum] page_size
        #   Limit on the number of FHIR stores to return in a single response. If not
        #   specified, 100 is used. May not be larger than 1000.
        # @param [String] page_token
        #   The next_page_token value returned from the previous List request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::ListFhirStoresResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::ListFhirStoresResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dataset_fhir_stores(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/fhirStores', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::ListFhirStoresResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::ListFhirStoresResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the configuration of the specified FHIR store.
        # @param [String] name
        #   Output only. Identifier. Resource name of the FHIR store, of the form `
        #   projects/`project_id`/locations/`location`/datasets/`dataset_id`/fhirStores/`
        #   fhir_store_id``.
        # @param [Google::Apis::HealthcareV1beta1::FhirStore] fhir_store_object
        # @param [String] update_mask
        #   Required. The update mask applies to the resource. For the `FieldMask`
        #   definition, see https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::FhirStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::FhirStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_dataset_fhir_store(name, fhir_store_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::FhirStore::Representation
          command.request_object = fhir_store_object
          command.response_representation = Google::Apis::HealthcareV1beta1::FhirStore::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::FhirStore
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Rolls back resources from the FHIR store to the specified time. This method
        # returns an Operation that can be used to track the status of the rollback by
        # calling GetOperation. Immediate fatal errors appear in the error field, errors
        # are also logged to Cloud Logging (see [Viewing error logs in Cloud Logging](
        # https://cloud.google.com/healthcare/docs/how-tos/logging)). Otherwise, when
        # the operation finishes, a detailed response of type
        # RollbackFhirResourcesResponse is returned in the response field. The metadata
        # field type for this operation is OperationMetadata.
        # @param [String] name
        #   Required. The name of the FHIR store to rollback, in the format of "projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id` /fhirStores/`
        #   fhir_store_id`".
        # @param [Google::Apis::HealthcareV1beta1::RollbackFhirResourcesRequest] rollback_fhir_resources_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rollback_fhir_store_fhir_resources(name, rollback_fhir_resources_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:rollback', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::RollbackFhirResourcesRequest::Representation
          command.request_object = rollback_fhir_resources_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::HealthcareV1beta1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_fhir_store_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Policy::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::HealthcareV1beta1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_fhir_store_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a FHIR Binary resource. This method can be used to create a Binary
        # resource either by using one of the accepted FHIR JSON content types, or as a
        # raw data stream. If a resource is created with this method using the FHIR
        # content type this method's behavior is the same as [`fhir.create`](https://
        # cloud.google.com/healthcare-api/docs/reference/rest/v1/projects.locations.
        # datasets.fhirStores.fhir/create). If a resource type other than Binary is used
        # in the request it's treated in the same way as non-FHIR data (e.g., images,
        # zip archives, pdf files, documents). When a non-FHIR content type is used in
        # the request, a Binary resource will be generated, and the uploaded data will
        # be stored in the `content` field (`DSTU2` and `STU3`), or the `data` field (`
        # R4` and `R5`). The Binary resource's `contentType` will be filled in using the
        # value of the `Content-Type` header, and the `securityContext` field (not
        # present in `DSTU2`) will be populated from the `X-Security-Context` header if
        # it exists. At this time `securityContext` has no special behavior in the Cloud
        # Healthcare API. Note: the limit on data ingested through this method is 1 GB.
        # For best performance, use a non-FHIR data type instead of wrapping the data in
        # a Binary resource. Some of the Healthcare API features, such as [exporting to
        # BigQuery](https://cloud.google.com/healthcare-api/docs/how-tos/fhir-export-
        # bigquery) or [Pub/Sub notifications](https://cloud.google.com/healthcare-api/
        # docs/fhir-pubsub#behavior_when_a_fhir_resource_is_too_large_or_traffic_is_high)
        # with full resource content, do not support Binary resources that are larger
        # than 10 MB. In these cases the resource's `data` field will be omitted.
        # Instead, the "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
        # extension will be present to indicate that including the data is `unsupported`.
        # On success, an empty `201 Created` response is returned. The newly created
        # resource's ID and version are returned in the Location header. Using `Prefer:
        # representation=resource` is not allowed for this method. The definition of the
        # Binary REST API can be found at https://hl7.org/fhir/binary.html#rest.
        # @param [String] parent
        #   Required. The name of the FHIR store this resource belongs to.
        # @param [Google::Apis::HealthcareV1beta1::HttpBody] http_body_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def binary_project_location_dataset_fhir_store_fhir_create(parent, http_body_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/fhir/Binary', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.request_object = http_body_object
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the contents of a FHIR Binary resource. This method can be used to
        # retrieve a Binary resource either by using the FHIR JSON mimetype as the value
        # for the Accept header, or as a raw data stream. If the FHIR Accept type is
        # used this method will return a Binary resource with the data base64-encoded,
        # regardless of how the resource was created. The resource data can be retrieved
        # in base64-decoded form if the Accept type of the request matches the value of
        # the resource's `contentType` field. The definition of the Binary REST API can
        # be found at https://hl7.org/fhir/binary.html#rest.
        # @param [String] name
        #   Required. The name of the Binary resource to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def binary_project_location_dataset_fhir_store_fhir_read(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the entire contents of a Binary resource. If the specified resource
        # does not exist and the FHIR store has enable_update_create set, creates the
        # resource with the client-specified ID. It is strongly advised not to include
        # or encode any sensitive data such as patient identifiers in client-specified
        # resource IDs. Those IDs are part of the FHIR resource path recorded in Cloud
        # Audit Logs and Pub/Sub notifications. Those IDs can also be contained in
        # reference fields within other resources. This method can be used to update a
        # Binary resource either by using one of the accepted FHIR JSON content types,
        # or as a raw data stream. If a resource is updated with this method using the
        # FHIR content type this method's behavior is the same as `update`. If a
        # resource type other than Binary is used in the request it will be treated in
        # the same way as non-FHIR data. When a non-FHIR content type is used in the
        # request, a Binary resource will be generated using the ID from the resource
        # path, and the uploaded data will be stored in the `content` field (`DSTU2` and
        # `STU3`), or the `data` field (`R4` and `R5`). The Binary resource's `
        # contentType` will be filled in using the value of the `Content-Type` header,
        # and the `securityContext` field (not present in `DSTU2`) will be populated
        # from the `X-Security-Context` header if it exists. At this time `
        # securityContext` has no special behavior in the Cloud Healthcare API. Note:
        # the limit on data ingested through this method is 2 GB. For best performance,
        # use a non-FHIR data type instead of wrapping the data in a Binary resource.
        # Some of the Healthcare API features, such as [exporting to BigQuery](https://
        # cloud.google.com/healthcare-api/docs/how-tos/fhir-export-bigquery) or [Pub/Sub
        # notifications](https://cloud.google.com/healthcare-api/docs/fhir-pubsub#
        # behavior_when_a_fhir_resource_is_too_large_or_traffic_is_high) with full
        # resource content, do not support Binary resources that are larger than 10 MB.
        # In these cases the resource's `data` field will be omitted. Instead, the "http:
        # //hl7.org/fhir/StructureDefinition/data-absent-reason" extension will be
        # present to indicate that including the data is `unsupported`. On success, an
        # empty 200 OK response will be returned, or a 201 Created if the resource did
        # not exit. The resource's ID and version are returned in the Location header.
        # Using `Prefer: representation=resource` is not allowed for this method. The
        # definition of the Binary REST API can be found at https://hl7.org/fhir/binary.
        # html#rest.
        # @param [String] name
        #   Required. The name of the resource to update.
        # @param [Google::Apis::HealthcareV1beta1::HttpBody] http_body_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def binary_project_location_dataset_fhir_store_fhir_update(name, http_body_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.request_object = http_body_object
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the contents of a version (current or historical) of a FHIR Binary
        # resource by version ID. This method can be used to retrieve a Binary resource
        # version either by using the FHIR JSON mimetype as the value for the Accept
        # header, or as a raw data stream. If the FHIR Accept type is used this method
        # will return a Binary resource with the data base64-encoded, regardless of how
        # the resource version was created. The resource data can be retrieved in base64-
        # decoded form if the Accept type of the request matches the value of the
        # resource version's `contentType` field. The definition of the Binary REST API
        # can be found at https://hl7.org/fhir/binary.html#rest.
        # @param [String] name
        #   Required. The name of the Binary resource version to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def binary_project_location_dataset_fhir_store_fhir_vread(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Translates a code from one value set to another by searching for appropriate
        # concept maps. Implements the FHIR standard $translate operation ([DSTU2](https:
        # //www.hl7.org/fhir/DSTU2/operation-conceptmap-translate.html), [STU3](https://
        # www.hl7.org/fhir/STU3/operation-conceptmap-translate.html), [R4](https://www.
        # hl7.org/fhir/R4/operation-conceptmap-translate.html), [R5](https://www.hl7.org/
        # fhir/R5/operation-conceptmap-translate.html)). On success, the response body
        # contains a JSON-encoded representation of a FHIR Parameters resource, which
        # includes the translation result. Errors generated by the FHIR store contain a
        # JSON-encoded `OperationOutcome` resource describing the reason for the error.
        # If the request cannot be mapped to a valid API method on a FHIR store, a
        # generic GCP error might be returned instead.
        # @param [String] parent
        #   Required. The name for the FHIR store containing the concept map(s) to use for
        #   the translation.
        # @param [String] code
        #   Required. The code to translate.
        # @param [String] concept_map_version
        #   The version of the concept map to use. If unset, the most current version is
        #   used.
        # @param [String] source
        #   The source value set of the concept map to be used. If unset, target is used
        #   to search for concept maps.
        # @param [String] system
        #   Required. The system for the code to be translated.
        # @param [String] target
        #   The target value set of the concept map to be used. If unset, source is used
        #   to search for concept maps.
        # @param [String] url
        #   The canonical url of the concept map to use. If unset, the source and target
        #   is used to search for concept maps.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def concept_project_location_dataset_fhir_store_fhir_map_search_translate(parent, code: nil, concept_map_version: nil, source: nil, system: nil, target: nil, url: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/fhir/ConceptMap/$translate', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['code'] = code unless code.nil?
          command.query['conceptMapVersion'] = concept_map_version unless concept_map_version.nil?
          command.query['source'] = source unless source.nil?
          command.query['system'] = system unless system.nil?
          command.query['target'] = target unless target.nil?
          command.query['url'] = url unless url.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Translates a code from one value set to another using a concept map. You can
        # provide your own concept maps to translate any code system to another code
        # system. Implements the FHIR standard $translate operation ([DSTU2](https://www.
        # hl7.org/fhir/DSTU2/operation-conceptmap-translate.html), [STU3](https://www.
        # hl7.org/fhir/STU3/operation-conceptmap-translate.html), [R4](https://www.hl7.
        # org/fhir/R4/operation-conceptmap-translate.html)), [R5](https://www.hl7.org/
        # fhir/R5/operation-conceptmap-translate.html)). On success, the response body
        # contains a JSON-encoded representation of a FHIR Parameters resource, which
        # includes the translation result. Errors generated by the FHIR store contain a
        # JSON-encoded `OperationOutcome` resource describing the reason for the error.
        # If the request cannot be mapped to a valid API method on a FHIR store, a
        # generic GCP error might be returned instead.
        # @param [String] name
        #   Required. The URL for the concept map to use for the translation.
        # @param [String] code
        #   Required. The code to translate.
        # @param [String] concept_map_version
        #   The version of the concept map to use. If unset, the most current version is
        #   used.
        # @param [String] system
        #   Required. The system for the code to be translated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def concept_project_location_dataset_fhir_store_fhir_map_translate(name, code: nil, concept_map_version: nil, system: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/$translate', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['code'] = code unless code.nil?
          command.query['conceptMapVersion'] = concept_map_version unless concept_map_version.nil?
          command.query['system'] = system unless system.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the consent enforcement status of a single consent resource. On
        # success, the response body contains a JSON-encoded representation of a `
        # Parameters` (http://hl7.org/fhir/parameters.html) FHIR resource, containing
        # the current enforcement status. Does not support DSTU2.
        # @param [String] name
        #   Required. The name of the consent resource to find enforcement status, in the
        #   format `projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   fhirStores/`fhir_store_id`/fhir/Consent/`consent_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def consent_project_location_dataset_fhir_store_fhir_enforcement_status(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/$consent-enforcement-status', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an Encounter resource and resources related to that Encounter.
        # Implements the FHIR extended operation Encounter-everything ([DSTU2](https://
        # hl7.org/fhir/DSTU2/encounter-operations.html#everything), [STU3](https://hl7.
        # org/fhir/STU3/encounter-operations.html#everything), [R4](https://hl7.org/fhir/
        # R4/encounter-operation-everything.html), or [R5](https://hl7.org/fhir/R5/
        # encounter-operation-everything.html)). On success, the response body contains
        # a JSON-encoded representation of a `Bundle` resource of type `searchset`,
        # containing the results of the operation. Errors generated by the FHIR store
        # contain a JSON-encoded `OperationOutcome` resource describing the reason for
        # the error. If the request cannot be mapped to a valid API method on a FHIR
        # store, a generic GCP error might be returned instead. The resources in scope
        # for the response are: * The Encounter resource itself. * All the resources
        # directly referenced by the Encounter resource, including attachments and
        # binaries. * Resources directly referencing the Encounter resource that meet
        # the inclusion criteria. The inclusion criteria are based on the membership
        # rules in the Encounter Compartment definition ([DSTU2](http://hl7.org/fhir/
        # DSTU2/compartment-encounter.html), [STU3](http://www.hl7.org/fhir/stu3/
        # compartmentdefinition-encounter.html), [R4](http://hl7.org/fhir/R4/
        # compartmentdefinition-encounter.html), [R5](http://hl7.org/fhir/R5/
        # compartmentdefinition-encounter.html)), which details the eligible resource
        # types and referencing search parameters. * Resources referencing to the
        # Encounter resource through the "http://hl7.org/fhir/StructureDefinition/
        # encounter-associatedEncounter" extension.
        # @param [String] name
        #   Required. Name of the Encounter resource for which the information is required.
        # @param [Fixnum] _count
        #   Optional. Maximum number of resources in a page. If not specified, 100 is used.
        #   May not be larger than 1000.
        # @param [String] _page_token
        #   Optional. Used to retrieve the next or previous page of results when using
        #   pagination. Set `_page_token` to the value of _page_token set in next or
        #   previous page links' url. Next and previous page are returned in the response
        #   bundle's links field, where `link.relation` is "previous" or "next". Omit `
        #   _page_token` if no previous request has been made.
        # @param [String] _since
        #   Optional. If provided, only resources updated after this time are returned.
        #   The time uses the format YYYY-MM-DDThh:mm:ss.sss+zz:zz. For example, `2015-02-
        #   07T13:28:17.239+02:00` or `2017-01-01T00:00:00Z`. The time must be specified
        #   to the second and include a time zone.
        # @param [String] _type
        #   Optional. String of comma-delimited FHIR resource types. If provided, only
        #   resources of the specified resource type(s) are returned. Specifying multiple `
        #   _type` parameters isn't supported. For example, the result of `_type=
        #   Observation&_type=Encounter` is undefined. Use `_type=Observation,Encounter`
        #   instead.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def encounter_project_location_dataset_fhir_store_fhir_everything(name, _count: nil, _page_token: nil, _since: nil, _type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/$everything', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['_count'] = _count unless _count.nil?
          command.query['_page_token'] = _page_token unless _page_token.nil?
          command.query['_since'] = _since unless _since.nil?
          command.query['_type'] = _type unless _type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the N most recent `Observation` resources for a subject matching
        # search criteria specified as query parameters, grouped by `Observation.code`,
        # sorted from most recent to oldest. Implements the FHIR extended operation
        # Observation-lastn ([STU3](https://hl7.org/fhir/STU3/observation-operations.
        # html#lastn), [R4](https://hl7.org/fhir/R4/observation-operation-lastn.html), [
        # R5](https://hl7.org/fhir/R5/observation-operation-lastn.html)). DSTU2 doesn't
        # define the Observation-lastn method, but the server supports it the same way
        # it supports STU3. Search terms are provided as query parameters following the
        # same pattern as the search method. The following search parameters must be
        # provided: - `subject` or `patient` to specify a subject for the Observation. -
        # `code`, `category` or any of the composite parameters that include `code`. Any
        # other valid Observation search parameters can also be provided. This operation
        # accepts an additional query parameter `max`, which specifies N, the maximum
        # number of Observations to return from each group, with a default of 1.
        # Searches with over 1000 results are rejected. Results are counted before
        # grouping and limiting the results with `max`. To stay within the limit,
        # constrain these searches using Observation search parameters such as `
        # _lastUpdated` or `date`. On success, the response body contains a JSON-encoded
        # representation of a `Bundle` resource of type `searchset`, containing the
        # results of the operation. Errors generated by the FHIR store contain a JSON-
        # encoded `OperationOutcome` resource describing the reason for the error. If
        # the request cannot be mapped to a valid API method on a FHIR store, a generic
        # GCP error might be returned instead.
        # @param [String] parent
        #   Required. Name of the FHIR store to retrieve resources from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def observation_project_location_dataset_fhir_store_fhir_lastn(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/fhir/Observation/$lastn', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the consent enforcement status of all consent resources for a patient.
        # On success, the response body contains a JSON-encoded representation of a
        # bundle of `Parameters` (http://hl7.org/fhir/parameters.html) FHIR resources,
        # containing the current enforcement status for each consent resource of the
        # patient. Does not support DSTU2.
        # @param [String] name
        #   Required. The name of the patient to find enforcement statuses, in the format `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/fhirStores/
        #   `fhir_store_id`/fhir/Patient/`patient_id``
        # @param [Fixnum] _count
        #   Optional. The maximum number of results on a page. If not specified, 100 is
        #   used. May not be larger than 1000.
        # @param [String] _page_token
        #   Optional. Used to retrieve the first, previous, next, or last page of consent
        #   enforcement statuses when using pagination. Value should be set to the value
        #   of `_page_token` set in next or previous page links' URLs. Next and previous
        #   page are returned in the response bundle's links field, where `link.relation`
        #   is "previous" or "next". Omit `_page_token` if no previous request has been
        #   made.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patient_project_location_dataset_fhir_store_fhir_consent_enforcement_status(name, _count: nil, _page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/$consent-enforcement-status', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['_count'] = _count unless _count.nil?
          command.query['_page_token'] = _page_token unless _page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a Patient resource and resources related to that patient. Implements
        # the FHIR extended operation Patient-everything ([DSTU2](https://hl7.org/fhir/
        # DSTU2/patient-operations.html#everything), [STU3](https://hl7.org/fhir/STU3/
        # patient-operations.html#everything), [R4](https://hl7.org/fhir/R4/patient-
        # operation-everything.html), [R5](https://hl7.org/fhir/R5/patient-operation-
        # everything.html)). On success, the response body contains a JSON-encoded
        # representation of a `Bundle` resource of type `searchset`, containing the
        # results of the operation. Errors generated by the FHIR store contain a JSON-
        # encoded `OperationOutcome` resource describing the reason for the error. If
        # the request cannot be mapped to a valid API method on a FHIR store, a generic
        # GCP error might be returned instead. The resources in scope for the response
        # are: * The patient resource itself. * All the resources directly referenced by
        # the patient resource. * Resources directly referencing the patient resource
        # that meet the inclusion criteria. The inclusion criteria are based on the
        # membership rules in the patient compartment definition ([DSTU2](https://hl7.
        # org/fhir/DSTU2/compartment-patient.html), [STU3](http://www.hl7.org/fhir/stu3/
        # compartmentdefinition-patient.html), [R4](https://hl7.org/fhir/R4/
        # compartmentdefinition-patient.html), [R5](http://hl7.org/fhir/R5/
        # compartmentdefinition-patient.html)), which details the eligible resource
        # types and referencing search parameters. For samples that show how to call `
        # Patient-everything`, see [Getting all patient compartment resources](https://
        # cloud.google.com/healthcare/docs/how-tos/fhir-resources#
        # getting_all_patient_compartment_resources).
        # @param [String] name
        #   Required. Name of the `Patient` resource for which the information is required.
        # @param [Fixnum] _count
        #   Maximum number of resources in a page. If not specified, 100 is used. May not
        #   be larger than 1000.
        # @param [String] _page_token
        #   Used to retrieve the next or previous page of results when using pagination.
        #   Set `_page_token` to the value of _page_token set in next or previous page
        #   links' url. Next and previous page are returned in the response bundle's links
        #   field, where `link.relation` is "previous" or "next". Omit `_page_token` if no
        #   previous request has been made.
        # @param [String] _since
        #   If provided, only resources updated after this time are returned. The time
        #   uses the format YYYY-MM-DDThh:mm:ss.sss+zz:zz. For example, `2015-02-07T13:28:
        #   17.239+02:00` or `2017-01-01T00:00:00Z`. The time must be specified to the
        #   second and include a time zone.
        # @param [String] _type
        #   String of comma-delimited FHIR resource types. If provided, only resources of
        #   the specified resource type(s) are returned. Specifying multiple `_type`
        #   parameters isn't supported. For example, the result of `_type=Observation&
        #   _type=Encounter` is undefined. Use `_type=Observation,Encounter` instead.
        # @param [String] end_
        #   The response includes records prior to the end date. The date uses the format
        #   YYYY-MM-DD. If no end date is provided, all records subsequent to the start
        #   date are in scope.
        # @param [String] start
        #   The response includes records subsequent to the start date. The date uses the
        #   format YYYY-MM-DD. If no start date is provided, all records prior to the end
        #   date are in scope.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patient_project_location_dataset_fhir_store_fhir_everything(name, _count: nil, _page_token: nil, _since: nil, _type: nil, end_: nil, start: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/$everything', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['_count'] = _count unless _count.nil?
          command.query['_page_token'] = _page_token unless _page_token.nil?
          command.query['_since'] = _since unless _since.nil?
          command.query['_type'] = _type unless _type.nil?
          command.query['end'] = end_ unless end_.nil?
          command.query['start'] = start unless start.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the resources that directly refer to the given target FHIR resource.
        # Can also support the case when the target resource doesn't exist, for example,
        # if the target has been deleted. On success, the response body contains a
        # Bundle with type `searchset`, where each entry in the Bundle contains the full
        # content of the resource. If the operation fails, an `OperationOutcome` is
        # returned describing the failure. If the request cannot be mapped to a valid
        # API method on a FHIR store, a generic Google Cloud error might be returned
        # instead.
        # @param [String] parent
        #   Required. The name of the FHIR store that holds the target resource.
        # @param [Fixnum] _count
        #   Maximum number of resources in a page. If not specified, 100 is used. May not
        #   be larger than 1000.
        # @param [String] _page_token
        #   Used to retrieve the next page of results when using pagination. Set `
        #   _page_token` to the value of _page_token set in next page links' url. Next
        #   page are returned in the response bundle's links field, where `link.relation`
        #   is "next". Omit `_page_token` if no previous request has been made.
        # @param [String] _summary
        #   Used to simplify the representation of the returned resources. `_summary=text`
        #   returns only the `text`, `id`, and `meta` top-level fields. `_summary=data`
        #   removes the `text` field and returns all other fields. `_summary=false`
        #   returns all parts of the resource(s). Either not providing this parameter or
        #   providing an empty value to this parameter also returns all parts of the
        #   resource(s).
        # @param [String] _type
        #   String of comma-delimited FHIR resource types. If provided, only resources of
        #   the specified resource type(s) are returned. If not provided or an empty value
        #   is provided, no filter on the returned resource type(s) is applied.
        # @param [String] target
        #   Required. The target whose incoming references are requested. This param is
        #   required and must not be empty. It uses the format "ResourceType/ResourceID",
        #   for example, target=ResourceType/ResourceID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resource_project_location_dataset_fhir_store_fhir_incoming_references(parent, _count: nil, _page_token: nil, _summary: nil, _type: nil, target: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/fhir/$references', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['_count'] = _count unless _count.nil?
          command.query['_page_token'] = _page_token unless _page_token.nil?
          command.query['_summary'] = _summary unless _summary.nil?
          command.query['_type'] = _type unless _type.nil?
          command.query['target'] = target unless target.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes all the historical versions of a resource (excluding the current
        # version) from the FHIR store. To remove all versions of a resource, first
        # delete the current version and then call this method. This is not a FHIR
        # standard operation. For samples that show how to call `Resource-purge`, see [
        # Deleting historical versions of a FHIR resource](https://cloud.google.com/
        # healthcare/docs/how-tos/fhir-resources#
        # deleting_historical_versions_of_a_fhir_resource).
        # @param [String] name
        #   Required. The name of the resource to purge.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resource_project_location_dataset_fhir_store_fhir_purge(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}/$purge', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Empty::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Validates an input FHIR resource's conformance to its profiles and the
        # profiles configured on the FHIR store. Implements the FHIR extended operation $
        # validate ([DSTU2](https://hl7.org/fhir/DSTU2/resource-operations.html#validate)
        # , [STU3](https://hl7.org/fhir/STU3/resource-operations.html#validate), [R4](
        # https://hl7.org/fhir/R4/resource-operation-validate.html), or [R5](https://hl7.
        # org/fhir/R5/resource-operation-validate.html)). The request body must contain
        # a JSON-encoded FHIR resource, and the request headers must contain `Content-
        # Type: application/fhir+json`. The `Parameters` input syntax is not supported.
        # The `profile` query parameter can be used to request that the resource only be
        # validated against a specific profile. If a profile with the given URL cannot
        # be found in the FHIR store then an error is returned. Errors generated by
        # validation contain a JSON-encoded `OperationOutcome` resource describing the
        # reason for the error. If the request cannot be mapped to a valid API method on
        # a FHIR store, a generic GCP error might be returned instead.
        # @param [String] parent
        #   Required. The name of the FHIR store that holds the profiles being used for
        #   validation.
        # @param [String] type
        #   Required. The FHIR resource type of the resource being validated. For a
        #   complete list, see the FHIR Resource Index ([DSTU2](https://hl7.org/fhir/DSTU2/
        #   resourcelist.html), [STU3](https://hl7.org/fhir/STU3/resourcelist.html), [R4](
        #   https://hl7.org/fhir/R4/resourcelist.html), or [R5](https://hl7.org/fhir/R5/
        #   resourcelist.html)). Must match the resource type in the provided content.
        # @param [Google::Apis::HealthcareV1beta1::HttpBody] http_body_object
        # @param [String] profile
        #   Optional. The canonical URL of a profile that this resource should be
        #   validated against. For example, to validate a Patient resource against the US
        #   Core Patient profile this parameter would be `http://hl7.org/fhir/us/core/
        #   StructureDefinition/us-core-patient`. A StructureDefinition with this
        #   canonical URL must exist in the FHIR store.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resource_project_location_dataset_fhir_store_fhir_validate(parent, type, http_body_object = nil, profile: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/fhir/{+type}/$validate', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.request_object = http_body_object
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['type'] = type unless type.nil?
          command.query['profile'] = profile unless profile.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk exports all resources from the FHIR store to the specified destination.
        # Implements the FHIR implementation guide [system level $export](https://build.
        # fhir.org/ig/HL7/bulk-data/export.html#endpoint---system-level-export. The
        # following headers must be set in the request: * `Accept`: specifies the format
        # of the `OperationOutcome` response. Only `application/fhir+json` is supported.
        # * `Prefer`: specifies whether the response is immediate or asynchronous. Must
        # be to `respond-async` because only asynchronous responses are supported.
        # Specify the destination for the server to write result files by setting the
        # Cloud Storage location bulk_export_gcs_destination on the FHIR store. URI of
        # an existing Cloud Storage directory where the server writes result files, in
        # the format gs://`bucket-id`/`path/to/destination/dir`. If there is no trailing
        # slash, the service appends one when composing the object path. The user is
        # responsible for creating the Cloud Storage bucket referenced. Supports the
        # following query parameters: * `_type`: string of comma-delimited FHIR resource
        # types. If provided, only the resources of the specified type(s) are exported. *
        # `_since`: if provided, only the resources that are updated after the
        # specified time are exported. * `_outputFormat`: optional, specify ndjson to
        # export data in NDJSON format. Exported file names use the format: `export_id`_`
        # resource_type`.ndjson. On success, the `Content-Location` header of the
        # response is set to a URL that the user can use to query the status of the
        # export. The URL is in the format: `projects/`project_id`/locations/`
        # location_id`/datasets/`dataset_id`/fhirStores/`fhir_store_id`/operations/`
        # export_id``. See get-fhir-operation-status for more information. Errors
        # generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource
        # describing the reason for the error.
        # @param [String] name
        #   Required. The name of the FHIR store to export resources from, in the format `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/fhirStores/
        #   `fhir_store_id``.
        # @param [String] _since
        #   Optional. If provided, only resources updated after this time are exported.
        #   The time uses the format YYYY-MM-DDThh:mm:ss.sss+zz:zz. For example, `2015-02-
        #   07T13:28:17.239+02:00` or `2017-01-01T00:00:00Z`. The time must be specified
        #   to the second and include a time zone.
        # @param [String] _type
        #   Optional. String of comma-delimited FHIR resource types. If provided, only
        #   resources of the specified resource type(s) are exported.
        # @param [String] output_format
        #   Optional. Output format of the export. This field is optional and only `
        #   application/fhir+ndjson` is supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_project_location_dataset_fhir_store_fhir_export(name, _since: nil, _type: nil, output_format: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/fhir/$export', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['_since'] = _since unless _since.nil?
          command.query['_type'] = _type unless _type.nil?
          command.query['outputFormat'] = output_format unless output_format.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the FHIR capability statement ([STU3](https://hl7.org/fhir/STU3/
        # capabilitystatement.html), [R4](https://hl7.org/fhir/R4/capabilitystatement.
        # html), [R5](https://hl7.org/fhir/R5/capabilitystatement.html)), or the [
        # conformance statement](https://hl7.org/fhir/DSTU2/conformance.html) in the
        # DSTU2 case for the store, which contains a description of functionality
        # supported by the server. Implements the FHIR standard capabilities interaction
        # ([STU3](https://hl7.org/fhir/STU3/http.html#capabilities), [R4](https://hl7.
        # org/fhir/R4/http.html#capabilities), [R5](https://hl7.org/fhir/R5/http.html#
        # capabilities)), or the [conformance interaction](https://hl7.org/fhir/DSTU2/
        # http.html#conformance) in the DSTU2 case. On success, the response body
        # contains a JSON-encoded representation of a `CapabilityStatement` resource.
        # @param [String] name
        #   Required. Name of the FHIR store to retrieve the capabilities for.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def capabilities_project_location_dataset_fhir_store_fhir(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/fhir/metadata', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes FHIR resources that match a search query. Implements the FHIR standard
        # conditional delete interaction ([DSTU2](https://hl7.org/fhir/DSTU2/http.html#2.
        # 1.0.12.1), [STU3](https://hl7.org/fhir/STU3/http.html#2.21.0.13.1), [R4](https:
        # //hl7.org/fhir/R4/http.html#3.1.0.7.1), [R5](https://hl7.org/fhir/R5/http.html#
        # 3.1.0.7.1)). If multiple resources match, all matching resources are deleted.
        # Search terms are provided as query parameters following the same pattern as
        # the search method. Not all FHIR resources that match the search query might be
        # deleted because, by default, a maximum of 100 FHIR resources can be deleted.
        # The number of FHIR resources that can be deleted depends on the page size of
        # the returned resources, which you can control using the `_count` query
        # parameter. Even when using `_count`, you can delete a maximum 1,000 FHIR
        # resources per each call of `conditionalDelete`. Note: Unless resource
        # versioning is disabled by setting the disable_resource_versioning flag on the
        # FHIR store, the deleted resources are moved to a history repository that can
        # still be retrieved through vread and related methods, unless they are removed
        # by the purge method. This method requires the`healthcare.fhirStores.
        # searchResources` and `healthcare.fhirResources.delete` permissions on the
        # parent FHIR store. For samples that show how to call `conditionalDelete`, see [
        # Conditionally deleting a FHIR resource](https://cloud.google.com/healthcare/
        # docs/how-tos/fhir-resources#conditionally_deleting_a_fhir_resource).
        # @param [String] parent
        #   Required. The name of the FHIR store this resource belongs to.
        # @param [String] type
        #   Required. The FHIR resource type to delete, such as Patient or Observation.
        #   For a complete list, see the FHIR Resource Index ([DSTU2](https://hl7.org/fhir/
        #   DSTU2/resourcelist.html), [STU3](https://hl7.org/fhir/STU3/resourcelist.html),
        #   [R4](https://hl7.org/fhir/R4/resourcelist.html), [R5](https://hl7.org/fhir/R5/
        #   resourcelist.html)).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def conditional_project_location_dataset_fhir_store_fhir_delete(parent, type, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+parent}/fhir/{+type}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Empty::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Empty
          command.params['parent'] = parent unless parent.nil?
          command.params['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # If a resource is found based on the search criteria specified in the query
        # parameters, updates part of that resource by applying the operations specified
        # in a [JSON Patch](http://jsonpatch.com/) document. Implements the FHIR
        # standard conditional patch interaction ([STU3](https://hl7.org/fhir/STU3/http.
        # html#patch), [R4](https://hl7.org/fhir/R4/http.html#patch), [R5](https://hl7.
        # org/fhir/R5/http.html#patch)). DSTU2 doesn't define a conditional patch method,
        # but the server supports it in the same way it supports STU3. Search terms are
        # provided as query parameters following the same pattern as the search method.
        # If the search criteria identify more than one match, the request returns a `
        # 412 Precondition Failed` error. The request body must contain a JSON Patch
        # document, and the request headers must contain `Content-Type: application/json-
        # patch+json`. On success, the response body contains a JSON-encoded
        # representation of the updated resource, including the server-assigned version
        # ID. Errors generated by the FHIR store contain a JSON-encoded `
        # OperationOutcome` resource describing the reason for the error. If the request
        # cannot be mapped to a valid API method on a FHIR store, a generic GCP error
        # might be returned instead. This method requires the`healthcare.fhirStores.
        # searchResources` permission on the parent FHIR store and the `healthcare.
        # fhirResources.patch` permission on the requested FHIR store resource. For
        # samples that show how to call `conditionalPatch`, see [Conditionally patching
        # a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-
        # resources#conditionally_patching_a_fhir_resource).
        # @param [String] parent
        #   Required. The name of the FHIR store this resource belongs to.
        # @param [String] type
        #   Required. The FHIR resource type to update, such as Patient or Observation.
        #   For a complete list, see the FHIR Resource Index ([DSTU2](https://hl7.org/fhir/
        #   DSTU2/resourcelist.html), [STU3](https://hl7.org/fhir/STU3/resourcelist.html),
        #   [R4](https://hl7.org/fhir/R4/resourcelist.html), [R5](https://hl7.org/fhir/R5/
        #   resourcelist.html)).
        # @param [Google::Apis::HealthcareV1beta1::HttpBody] http_body_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def conditional_project_location_dataset_fhir_store_fhir_patch(parent, type, http_body_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+parent}/fhir/{+type}', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.request_object = http_body_object
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # If a resource is found based on the search criteria specified in the query
        # parameters, updates the entire contents of that resource. Implements the FHIR
        # standard conditional update interaction ([DSTU2](https://hl7.org/fhir/DSTU2/
        # http.html#2.1.0.10.2), [STU3](https://hl7.org/fhir/STU3/http.html#cond-update),
        # [R4](https://hl7.org/fhir/R4/http.html#cond-update), [R5](https://hl7.org/
        # fhir/R5/http.html#cond-update)). Search terms are provided as query parameters
        # following the same pattern as the search method. If the search criteria
        # identify more than one match, the request returns a `412 Precondition Failed`
        # error. If the search criteria identify zero matches, and the supplied resource
        # body contains an `id`, and the FHIR store has enable_update_create set,
        # creates the resource with the client-specified ID. It is strongly advised not
        # to include or encode any sensitive data such as patient identifiers in client-
        # specified resource IDs. Those IDs are part of the FHIR resource path recorded
        # in Cloud Audit Logs and Pub/Sub notifications. Those IDs can also be contained
        # in reference fields within other resources. If the search criteria identify
        # zero matches, and the supplied resource body does not contain an `id`, the
        # resource is created with a server-assigned ID as per the create method. The
        # request body must contain a JSON-encoded FHIR resource, and the request
        # headers must contain `Content-Type: application/fhir+json`. On success, the
        # response body contains a JSON-encoded representation of the updated resource,
        # including the server-assigned version ID. Errors generated by the FHIR store
        # contain a JSON-encoded `OperationOutcome` resource describing the reason for
        # the error. If the request cannot be mapped to a valid API method on a FHIR
        # store, a generic GCP error might be returned instead. This method requires the`
        # healthcare.fhirStores.searchResources` and `healthcare.fhirResources.update`
        # permissions on the parent FHIR store. For samples that show how to call `
        # conditionalUpdate`, see [Conditionally updating a FHIR resource](https://cloud.
        # google.com/healthcare/docs/how-tos/fhir-resources#
        # conditionally_updating_a_fhir_resource).
        # @param [String] parent
        #   Required. The name of the FHIR store this resource belongs to.
        # @param [String] type
        #   Required. The FHIR resource type to update, such as Patient or Observation.
        #   For a complete list, see the FHIR Resource Index ([DSTU2](https://hl7.org/fhir/
        #   DSTU2/resourcelist.html), [STU3](https://hl7.org/fhir/STU3/resourcelist.html),
        #   [R4](https://hl7.org/fhir/R4/resourcelist.html), [R5](https://hl7.org/fhir/R5/
        #   resourcelist.html)). Must match the resource type in the provided content.
        # @param [Google::Apis::HealthcareV1beta1::HttpBody] http_body_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def conditional_project_location_dataset_fhir_store_fhir_update(parent, type, http_body_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1beta1/{+parent}/fhir/{+type}', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.request_object = http_body_object
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a FHIR resource. Implements the FHIR standard create interaction ([
        # DSTU2](https://hl7.org/fhir/DSTU2/http.html#create), [STU3](https://hl7.org/
        # fhir/STU3/http.html#create), [R4](https://hl7.org/fhir/R4/http.html#create)), [
        # R5](https://hl7.org/fhir/R5/http.html#create)), which creates a new resource
        # with a server-assigned resource ID. Also supports the FHIR standard
        # conditional create interaction ([DSTU2](https://hl7.org/fhir/DSTU2/http.html#
        # ccreate), [STU3](https://hl7.org/fhir/STU3/http.html#ccreate), [R4](https://
        # hl7.org/fhir/R4/http.html#ccreate)), [R5](https://hl7.org/fhir/R5/http.html#
        # ccreate)), specified by supplying an `If-None-Exist` header containing a FHIR
        # search query. If no resources match this search query, the server processes
        # the create operation as normal. The request body must contain a JSON-encoded
        # FHIR resource, and the request headers must contain `Content-Type: application/
        # fhir+json`. On success, the response body contains a JSON-encoded
        # representation of the resource as it was created on the server, including the
        # server-assigned resource ID and version ID. Errors generated by the FHIR store
        # contain a JSON-encoded `OperationOutcome` resource describing the reason for
        # the error. If the request cannot be mapped to a valid API method on a FHIR
        # store, a generic GCP error might be returned instead. For samples that show
        # how to call `create`, see [Creating a FHIR resource](https://cloud.google.com/
        # healthcare/docs/how-tos/fhir-resources#creating_a_fhir_resource).
        # @param [String] parent
        #   Required. The name of the FHIR store this resource belongs to.
        # @param [String] type
        #   Required. The FHIR resource type to create, such as Patient or Observation.
        #   For a complete list, see the FHIR Resource Index ([DSTU2](https://hl7.org/fhir/
        #   DSTU2/resourcelist.html), [STU3](https://hl7.org/fhir/STU3/resourcelist.html),
        #   [R4](https://hl7.org/fhir/R4/resourcelist.html), [R5](https://hl7.org/fhir/R5/
        #   resourcelist.html)). Must match the resource type in the provided content.
        # @param [Google::Apis::HealthcareV1beta1::HttpBody] http_body_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_dataset_fhir_store_fhir(parent, type, http_body_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/fhir/{+type}', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.request_object = http_body_object
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a FHIR resource. Implements the FHIR standard delete interaction ([
        # DSTU2](https://hl7.org/fhir/DSTU2/http.html#delete), [STU3](https://hl7.org/
        # fhir/STU3/http.html#delete), [R4](https://hl7.org/fhir/R4/http.html#delete), [
        # R5](https://hl7.org/fhir/R5/http.html#delete)). Note: Unless resource
        # versioning is disabled by setting the disable_resource_versioning flag on the
        # FHIR store, the deleted resources are moved to a history repository that can
        # still be retrieved through vread and related methods, unless they are removed
        # by the purge method. For samples that show how to call `delete`, see [Deleting
        # a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-
        # resources#deleting_a_fhir_resource).
        # @param [String] name
        #   Required. The name of the resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_fhir_store_fhir(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Executes all the requests in the given Bundle. Implements the FHIR standard
        # batch/transaction interaction and history operations. ([DSTU2](https://hl7.org/
        # fhir/DSTU2/http.html#transaction), [STU3](https://hl7.org/fhir/STU3/http.html#
        # transaction), [R4](https://hl7.org/fhir/R4/http.html#transaction), [R5](https:/
        # /hl7.org/fhir/R5/http.html#transaction)). Supports all interactions within a
        # bundle, except search. This method accepts Bundles of type `batch`, `
        # transaction` and `history`, processing `batch` and `transaction` bundles
        # according to the batch processing rules ([DSTU2](https://hl7.org/fhir/DSTU2/
        # http.html#2.1.0.16.1), [STU3](https://hl7.org/fhir/STU3/http.html#2.21.0.17.1),
        # [R4](https://hl7.org/fhir/R4/http.html#brules), [R5](https://hl7.org/fhir/R5/
        # http.html#brules)) and transaction processing rules ([DSTU2](https://hl7.org/
        # fhir/DSTU2/http.html#2.1.0.16.2), [STU3](https://hl7.org/fhir/STU3/http.html#2.
        # 21.0.17.2), [R4](https://hl7.org/fhir/R4/http.html#trules), [R5](https://hl7.
        # org/fhir/R5/http.html#trules)). The request body must contain a JSON-encoded
        # FHIR `Bundle` resource, and the request headers must contain `Content-Type:
        # application/fhir+json`. For a batch bundle or a successful transaction, the
        # response body contains a JSON-encoded representation of a `Bundle` resource of
        # type `batch-response` or `transaction-response` containing one entry for each
        # entry in the request, with the outcome of processing the entry. In the case of
        # an error for a `transaction` or `history` bundle, the response body contains a
        # JSON-encoded `OperationOutcome` resource describing the reason for the error.
        # If the request cannot be mapped to a valid API method on a FHIR store, a
        # generic GCP error might be returned instead. This method checks permissions
        # for each request in the bundle. The `executeBundle` permission is required to
        # call this method, but you must also grant sufficient permissions to execute
        # the individual requests in the bundle. For example, if the bundle contains a
        # request to create a FHIR resource, the caller must also have been granted the `
        # healthcare.fhirResources.create` permission. `history` bundles also check the `
        # import` permission. You can use audit logs to view the permissions for `
        # executeBundle` and each request in the bundle. For more information, see [
        # Viewing Cloud Audit logs](https://cloud.google.com/healthcare-api/docs/how-tos/
        # audit-logging). For samples that show how to call `executeBundle`, see [
        # Managing FHIR resources using FHIR bundles](https://cloud.google.com/
        # healthcare/docs/how-tos/fhir-bundles).
        # @param [String] parent
        #   Required. Name of the FHIR store in which this bundle will be executed.
        # @param [Google::Apis::HealthcareV1beta1::HttpBody] http_body_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def execute_project_location_dataset_fhir_store_fhir_bundle(parent, http_body_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/fhir', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.request_object = http_body_object
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the versions of a resource (including the current version and
        # deleted versions) from the FHIR store. Implements the per-resource form of the
        # FHIR standard history interaction ([DSTU2](https://hl7.org/fhir/DSTU2/http.
        # html#history), [STU3](https://hl7.org/fhir/STU3/http.html#history), [R4](https:
        # //hl7.org/fhir/R4/http.html#history), [R5](https://hl7.org/fhir/R5/http.html#
        # history)). On success, the response body contains a JSON-encoded
        # representation of a `Bundle` resource of type `history`, containing the
        # version history sorted from most recent to oldest versions. Errors generated
        # by the FHIR store contain a JSON-encoded `OperationOutcome` resource
        # describing the reason for the error. If the request cannot be mapped to a
        # valid API method on a FHIR store, a generic GCP error might be returned
        # instead. For samples that show how to call `history`, see [Listing FHIR
        # resource versions](https://cloud.google.com/healthcare/docs/how-tos/fhir-
        # resources#listing_fhir_resource_versions).
        # @param [String] name
        #   Required. The name of the resource to retrieve.
        # @param [String] _at
        #   Only include resource versions that were current at some point during the time
        #   period specified in the date time value. The date parameter format is yyyy-mm-
        #   ddThh:mm:ss[Z|(+|-)hh:mm] Clients may specify any of the following: * An
        #   entire year: `_at=2019` * An entire month: `_at=2019-01` * A specific day: `
        #   _at=2019-01-20` * A specific second: `_at=2018-12-31T23:59:58Z`
        # @param [Fixnum] _count
        #   The maximum number of search results on a page. If not specified, 100 is used.
        #   May not be larger than 1000.
        # @param [String] _page_token
        #   Used to retrieve the first, previous, next, or last page of resource versions
        #   when using pagination. Value should be set to the value of `_page_token` set
        #   in next or previous page links' URLs. Next and previous page are returned in
        #   the response bundle's links field, where `link.relation` is "previous" or "
        #   next". Omit `_page_token` if no previous request has been made.
        # @param [String] _since
        #   Only include resource versions that were created at or after the given instant
        #   in time. The instant in time uses the format YYYY-MM-DDThh:mm:ss.sss+zz:zz (
        #   for example 2015-02-07T13:28:17.239+02:00 or 2017-01-01T00:00:00Z). The time
        #   must be specified to the second and include a time zone.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def history_project_location_dataset_fhir_store_fhir(name, _at: nil, _count: nil, _page_token: nil, _since: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/_history', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['_at'] = _at unless _at.nil?
          command.query['_count'] = _count unless _count.nil?
          command.query['_page_token'] = _page_token unless _page_token.nil?
          command.query['_since'] = _since unless _since.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates part of an existing resource by applying the operations specified in a
        # [JSON Patch](http://jsonpatch.com/) document. Implements the FHIR standard
        # patch interaction ([STU3](https://hl7.org/fhir/STU3/http.html#patch), [R4](
        # https://hl7.org/fhir/R4/http.html#patch), [R5](https://hl7.org/fhir/R5/http.
        # html#patch)). DSTU2 doesn't define a patch method, but the server supports it
        # in the same way it supports STU3. The request body must contain a JSON Patch
        # document, and the request headers must contain `Content-Type: application/json-
        # patch+json`. On success, the response body contains a JSON-encoded
        # representation of the updated resource, including the server-assigned version
        # ID. Errors generated by the FHIR store contain a JSON-encoded `
        # OperationOutcome` resource describing the reason for the error. If the request
        # cannot be mapped to a valid API method on a FHIR store, a generic GCP error
        # might be returned instead. For samples that show how to call `patch`, see [
        # Patching a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/
        # fhir-resources#patching_a_fhir_resource).
        # @param [String] name
        #   Required. The name of the resource to update.
        # @param [Google::Apis::HealthcareV1beta1::HttpBody] http_body_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_dataset_fhir_store_fhir(name, http_body_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.request_object = http_body_object
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the contents of a FHIR resource. Implements the FHIR standard read
        # interaction ([DSTU2](https://hl7.org/fhir/DSTU2/http.html#read), [STU3](https:/
        # /hl7.org/fhir/STU3/http.html#read), [R4](https://hl7.org/fhir/R4/http.html#
        # read)), [R5](https://hl7.org/fhir/R5/http.html#read)). Also supports the FHIR
        # standard conditional read interaction ([DSTU2](https://hl7.org/fhir/DSTU2/http.
        # html#cread), [STU3](https://hl7.org/fhir/STU3/http.html#cread), [R4](https://
        # hl7.org/fhir/R4/http.html#cread)), [R5](https://hl7.org/fhir/R5/http.html#
        # cread)) specified by supplying an `If-Modified-Since` header with a date/time
        # value or an `If-None-Match` header with an ETag value. On success, the
        # response body contains a JSON-encoded representation of the resource. Errors
        # generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource
        # describing the reason for the error. If the request cannot be mapped to a
        # valid API method on a FHIR store, a generic GCP error might be returned
        # instead. For samples that show how to call `read`, see [Getting a FHIR
        # resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#
        # getting_a_fhir_resource).
        # @param [String] name
        #   Required. The name of the resource to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def read_project_location_dataset_fhir_store_fhir(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for resources in the given FHIR store according to criteria specified
        # as query parameters. Implements the FHIR standard search interaction ([DSTU2](
        # https://hl7.org/fhir/DSTU2/http.html#search), [STU3](https://hl7.org/fhir/STU3/
        # http.html#search), [R4](https://hl7.org/fhir/R4/http.html#search), [R5](https:/
        # /hl7.org/fhir/R5/http.html#search)) using the search semantics described in
        # the FHIR Search specification ([DSTU2](https://hl7.org/fhir/DSTU2/search.html),
        # [STU3](https://hl7.org/fhir/STU3/search.html), [R4](https://hl7.org/fhir/R4/
        # search.html), [R5](https://hl7.org/fhir/R5/search.html)). Supports four
        # methods of search defined by the specification: * `GET [base]?[parameters]` to
        # search across all resources. * `GET [base]/[type]?[parameters]` to search
        # resources of a specified type. * `POST [base]/_search?[parameters]` as an
        # alternate form having the same semantics as the `GET` method across all
        # resources. * `POST [base]/[type]/_search?[parameters]` as an alternate form
        # having the same semantics as the `GET` method for the specified type. The `GET`
        # and `POST` methods do not support compartment searches. The `POST` method
        # does not support `application/x-www-form-urlencoded` search parameters. On
        # success, the response body contains a JSON-encoded representation of a `Bundle`
        # resource of type `searchset`, containing the results of the search. Errors
        # generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource
        # describing the reason for the error. If the request cannot be mapped to a
        # valid API method on a FHIR store, a generic GCP error might be returned
        # instead. The server's capability statement, retrieved through capabilities,
        # indicates what search parameters are supported on each FHIR resource. A list
        # of all search parameters defined by the specification can be found in the FHIR
        # Search Parameter Registry ([STU3](https://hl7.org/fhir/STU3/searchparameter-
        # registry.html), [R4](https://hl7.org/fhir/R4/searchparameter-registry.html), [
        # R5](https://hl7.org/fhir/R5/searchparameter-registry.html)). FHIR search
        # parameters for DSTU2 can be found on each resource's definition page.
        # Supported search modifiers: `:missing`, `:exact`, `:contains`, `:text`, `:in`,
        # `:not-in`, `:above`, `:below`, `:[type]`, `:not`, and `recurse` (DSTU2 and
        # STU3) or `:iterate` (R4 and R5). Supported search result parameters: `_sort`, `
        # _count`, `_include`, `_revinclude`, `_summary=text`, `_summary=data`, and `
        # _elements`. The maximum number of search results returned defaults to 100,
        # which can be overridden by the `_count` parameter up to a maximum limit of
        # 1000. The server might return fewer resources than requested to prevent
        # excessively large responses. If there are additional results, the returned `
        # Bundle` contains a link of `relation` "next", which has a `_page_token`
        # parameter for an opaque pagination token that can be used to retrieve the next
        # page. Resources with a total size larger than 5MB or a field count larger than
        # 50,000 might not be fully searchable as the server might trim its generated
        # search index in those cases. Note: FHIR resources are indexed asynchronously,
        # so there might be a slight delay between the time a resource is created or
        # changed, and the time when the change reflects in search results. The only
        # exception is resource identifier data, which is indexed synchronously as a
        # special index. As a result, searching using resource identifier is not subject
        # to indexing delay. To use the special synchronous index, the search term for
        # identifier should be in the pattern `identifier=[system]|[value]` or `
        # identifier=[value]`, and any of the following search result parameters can be
        # used: * `_count` * `_include` * `_revinclude` * `_summary` * `_elements` If
        # your query contains any other search parameters, the standard asynchronous
        # index will be used instead. Note that searching against the special index is
        # optimized for resolving a small number of matches. The search isn't optimized
        # if your identifier search criteria matches a large number (i.e. more than 2,
        # 000) of resources. For a search query that will match a large number of
        # resources, you can avoiding using the special synchronous index by including
        # an additional `_sort` parameter in your query. Use `_sort=-_lastUpdated` if
        # you want to keep the default sorting order. Note: The special synchronous
        # identifier index are currently disabled for DocumentReference and
        # DocumentManifest searches. For samples and detailed information, see [
        # Searching for FHIR resources](https://cloud.google.com/healthcare/docs/how-tos/
        # fhir-search) and [Advanced FHIR search features](https://cloud.google.com/
        # healthcare/docs/how-tos/fhir-advanced-search).
        # @param [String] parent
        #   Required. Name of the FHIR store to retrieve resources from.
        # @param [Google::Apis::HealthcareV1beta1::SearchResourcesRequest] search_resources_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_fhir_resources(parent, search_resources_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/fhir/_search', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::SearchResourcesRequest::Representation
          command.request_object = search_resources_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for resources in the given FHIR store according to criteria specified
        # as query parameters. Implements the FHIR standard search interaction ([DSTU2](
        # https://hl7.org/fhir/DSTU2/http.html#search), [STU3](https://hl7.org/fhir/STU3/
        # http.html#search), [R4](https://hl7.org/fhir/R4/http.html#search), [R5](https:/
        # /hl7.org/fhir/R5/http.html#search)) using the search semantics described in
        # the FHIR Search specification ([DSTU2](https://hl7.org/fhir/DSTU2/search.html),
        # [STU3](https://hl7.org/fhir/STU3/search.html), [R4](https://hl7.org/fhir/R4/
        # search.html), [R5](https://hl7.org/fhir/R5/search.html)). Supports four
        # methods of search defined by the specification: * `GET [base]?[parameters]` to
        # search across all resources. * `GET [base]/[type]?[parameters]` to search
        # resources of a specified type. * `POST [base]/_search?[parameters]` as an
        # alternate form having the same semantics as the `GET` method across all
        # resources. * `POST [base]/[type]/_search?[parameters]` as an alternate form
        # having the same semantics as the `GET` method for the specified type. The `GET`
        # and `POST` methods do not support compartment searches. The `POST` method
        # does not support `application/x-www-form-urlencoded` search parameters. On
        # success, the response body contains a JSON-encoded representation of a `Bundle`
        # resource of type `searchset`, containing the results of the search. Errors
        # generated by the FHIR store contain a JSON-encoded `OperationOutcome` resource
        # describing the reason for the error. If the request cannot be mapped to a
        # valid API method on a FHIR store, a generic GCP error might be returned
        # instead. The server's capability statement, retrieved through capabilities,
        # indicates what search parameters are supported on each FHIR resource. A list
        # of all search parameters defined by the specification can be found in the FHIR
        # Search Parameter Registry ([STU3](https://hl7.org/fhir/STU3/searchparameter-
        # registry.html), [R4](https://hl7.org/fhir/R4/searchparameter-registry.html), [
        # R5](https://hl7.org/fhir/R5/searchparameter-registry.html)). FHIR search
        # parameters for DSTU2 can be found on each resource's definition page.
        # Supported search modifiers: `:missing`, `:exact`, `:contains`, `:text`, `:in`,
        # `:not-in`, `:above`, `:below`, `:[type]`, `:not`, and `recurse` (DSTU2 and
        # STU3) or `:iterate` (R4 and R5). Supported search result parameters: `_sort`, `
        # _count`, `_include`, `_revinclude`, `_summary=text`, `_summary=data`, and `
        # _elements`. The maximum number of search results returned defaults to 100,
        # which can be overridden by the `_count` parameter up to a maximum limit of
        # 1000. The server might return fewer resources than requested to prevent
        # excessively large responses. If there are additional results, the returned `
        # Bundle` contains a link of `relation` "next", which has a `_page_token`
        # parameter for an opaque pagination token that can be used to retrieve the next
        # page. Resources with a total size larger than 5MB or a field count larger than
        # 50,000 might not be fully searchable as the server might trim its generated
        # search index in those cases. Note: FHIR resources are indexed asynchronously,
        # so there might be a slight delay between the time a resource is created or
        # changed, and the time when the change reflects in search results. The only
        # exception is resource identifier data, which is indexed synchronously as a
        # special index. As a result, searching using resource identifier is not subject
        # to indexing delay. To use the special synchronous index, the search term for
        # identifier should be in the pattern `identifier=[system]|[value]` or `
        # identifier=[value]`, and any of the following search result parameters can be
        # used: * `_count` * `_include` * `_revinclude` * `_summary` * `_elements` If
        # your query contains any other search parameters, the standard asynchronous
        # index will be used instead. Note that searching against the special index is
        # optimized for resolving a small number of matches. The search isn't optimized
        # if your identifier search criteria matches a large number (i.e. more than 2,
        # 000) of resources. For a search query that will match a large number of
        # resources, you can avoiding using the special synchronous index by including
        # an additional `_sort` parameter in your query. Use `_sort=-_lastUpdated` if
        # you want to keep the default sorting order. Note: The special synchronous
        # identifier index are currently disabled for DocumentReference and
        # DocumentManifest searches. For samples and detailed information, see [
        # Searching for FHIR resources](https://cloud.google.com/healthcare/docs/how-tos/
        # fhir-search) and [Advanced FHIR search features](https://cloud.google.com/
        # healthcare/docs/how-tos/fhir-advanced-search).
        # @param [String] parent
        #   Required. Name of the FHIR store to retrieve resources from.
        # @param [String] resource_type
        #   Optional. The FHIR resource type to search, such as Patient or Observation.
        #   For a complete list, see the FHIR Resource Index ([DSTU2](https://hl7.org/fhir/
        #   DSTU2/resourcelist.html), [STU3](https://hl7.org/fhir/STU3/resourcelist.html),
        #   [R4](https://hl7.org/fhir/R4/resourcelist.html), [R5](https://hl7.org/fhir/R5/
        #   resourcelist.html)).
        # @param [Google::Apis::HealthcareV1beta1::SearchResourcesRequest] search_resources_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_dataset_fhir_store_fhir_type(parent, resource_type, search_resources_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/fhir/{resourceType}/_search', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::SearchResourcesRequest::Representation
          command.request_object = search_resources_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['resourceType'] = resource_type unless resource_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the entire contents of a resource. Implements the FHIR standard update
        # interaction ([DSTU2](https://hl7.org/fhir/DSTU2/http.html#update), [STU3](
        # https://hl7.org/fhir/STU3/http.html#update), [R4](https://hl7.org/fhir/R4/http.
        # html#update), [R5](https://hl7.org/fhir/R5/http.html#update)). If the
        # specified resource does not exist and the FHIR store has enable_update_create
        # set, creates the resource with the client-specified ID. It is strongly advised
        # not to include or encode any sensitive data such as patient identifiers in
        # client-specified resource IDs. Those IDs are part of the FHIR resource path
        # recorded in Cloud Audit Logs and Pub/Sub notifications. Those IDs can also be
        # contained in reference fields within other resources. The request body must
        # contain a JSON-encoded FHIR resource, and the request headers must contain `
        # Content-Type: application/fhir+json`. The resource must contain an `id`
        # element having an identical value to the ID in the REST path of the request.
        # On success, the response body contains a JSON-encoded representation of the
        # updated resource, including the server-assigned version ID. Errors generated
        # by the FHIR store contain a JSON-encoded `OperationOutcome` resource
        # describing the reason for the error. If the request cannot be mapped to a
        # valid API method on a FHIR store, a generic GCP error might be returned
        # instead. In R5, the conditional update interaction If-None-Match is supported,
        # including the wildcard behaviour. For samples that show how to call `update`,
        # see [Updating a FHIR resource](https://cloud.google.com/healthcare/docs/how-
        # tos/fhir-resources#updating_a_fhir_resource).
        # @param [String] name
        #   Required. The name of the resource to update.
        # @param [Google::Apis::HealthcareV1beta1::HttpBody] http_body_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_dataset_fhir_store_fhir(name, http_body_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.request_object = http_body_object
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the contents of a version (current or historical) of a FHIR resource by
        # version ID. Implements the FHIR standard vread interaction ([DSTU2](https://
        # hl7.org/fhir/DSTU2/http.html#vread), [STU3](https://hl7.org/fhir/STU3/http.
        # html#vread), [R4](https://hl7.org/fhir/R4/http.html#vread), [R5](https://hl7.
        # org/fhir/R5/http.html#vread)). On success, the response body contains a JSON-
        # encoded representation of the resource. Errors generated by the FHIR store
        # contain a JSON-encoded `OperationOutcome` resource describing the reason for
        # the error. If the request cannot be mapped to a valid API method on a FHIR
        # store, a generic GCP error might be returned instead. For samples that show
        # how to call `vread`, see [Retrieving a FHIR resource version](https://cloud.
        # google.com/healthcare/docs/how-tos/fhir-resources#
        # retrieving_a_fhir_resource_version).
        # @param [String] name
        #   Required. The name of the resource version to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def vread_project_location_dataset_fhir_store_fhir(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes operations as defined in the FHIR specification. Implements the FHIR
        # implementation guide [bulk data delete request](https://build.fhir.org/ig/HL7/
        # bulk-data/export.html#bulk-data-delete-request). Returns success if the
        # operation was successfully cancelled. If the operation is complete, or has
        # already been cancelled, returns an error response.
        # @param [String] name
        #   Required. Name of the operation to be deleted, in the format `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/fhirStores/`
        #   fhir_store_id`/operations/`operation_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_fhir_store_operation_fhir_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the status of operations as defined in the FHIR specification. Implements
        # the FHIR implementation guide [bulk data status request](https://build.fhir.
        # org/ig/HL7/bulk-data/export.html#bulk-data-status-request). Operations can
        # have one of these states: * in-progress: response status code is `202` and `X-
        # Progress` header is set to `in progress`. * complete: response status code is `
        # 200` and the body is a JSON-encoded operation response as defined by the spec.
        # For a bulk export, this response is defined in https://build.fhir.org/ig/HL7/
        # bulk-data/export.html#response---complete-status. * error: response status
        # code is `5XX`, and the body is a JSON-encoded `OperationOutcome` resource
        # describing the reason for the error.
        # @param [String] name
        #   Required. Name of the operation to query, in the format `projects/`project_id`/
        #   locations/`location_id`/datasets/`dataset_id`/fhirStores/`fhir_store_id`/
        #   operations/`operation_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_fhir_store_operation_fhir_operation_status(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::HttpBody::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new HL7v2 store within the parent dataset.
        # @param [String] parent
        #   Required. The name of the dataset this HL7v2 store belongs to.
        # @param [Google::Apis::HealthcareV1beta1::Hl7V2Store] hl7_v2_store_object
        # @param [String] hl7_v2_store_id
        #   Required. The ID of the HL7v2 store that is being created. The string must
        #   match the following regex: `[\p`L`\p`N`_\-\.]`1,256``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Hl7V2Store] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Hl7V2Store]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_dataset_hl7_v2_store(parent, hl7_v2_store_object = nil, hl7_v2_store_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/hl7V2Stores', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::Hl7V2Store::Representation
          command.request_object = hl7_v2_store_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Hl7V2Store::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Hl7V2Store
          command.params['parent'] = parent unless parent.nil?
          command.query['hl7V2StoreId'] = hl7_v2_store_id unless hl7_v2_store_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified HL7v2 store and removes all messages that it contains.
        # @param [String] name
        #   Required. The resource name of the HL7v2 store to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_hl7_v2_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Empty::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports the messages to a destination. To filter messages to be exported,
        # define a filter using the start and end time, relative to the message
        # generation time (MSH.7). This API returns an Operation that can be used to
        # track the status of the job by calling GetOperation. Immediate fatal errors
        # appear in the error field. Otherwise, when the operation finishes, a detailed
        # response of type ExportMessagesResponse is returned in the response field. The
        # metadata field type for this operation is OperationMetadata.
        # @param [String] name
        #   Required. The name of the source HL7v2 store, in the format `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/hl7v2Stores/`
        #   hl7v2_store_id``
        # @param [Google::Apis::HealthcareV1beta1::ExportMessagesRequest] export_messages_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_hl7_v2_store_messages(name, export_messages_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:export', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::ExportMessagesRequest::Representation
          command.request_object = export_messages_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified HL7v2 store.
        # @param [String] name
        #   Required. The resource name of the HL7v2 store to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Hl7V2Store] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Hl7V2Store]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_hl7_v2_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Hl7V2Store::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Hl7V2Store
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets metrics associated with the HL7v2 store.
        # @param [String] name
        #   Required. The resource name of the HL7v2 store to get metrics for, in the
        #   format `projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   hl7V2Stores/`hl7v2_store_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Hl7V2StoreMetrics] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Hl7V2StoreMetrics]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_hl7_v2_store_hl7v2_store_metrics(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}:getHL7v2StoreMetrics', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Hl7V2StoreMetrics::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Hl7V2StoreMetrics
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_hl7_v2_store_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Policy::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Import messages to the HL7v2 store by loading data from the specified sources.
        # This method is optimized to load large quantities of data using import
        # semantics that ignore some HL7v2 store configuration options and are not
        # suitable for all use cases. It is primarily intended to load data into an
        # empty HL7v2 store that is not being used by other clients. An existing message
        # will be overwritten if a duplicate message is imported. A duplicate message is
        # a message with the same raw bytes as a message that already exists in this
        # HL7v2 store. When a message is overwritten, its labels will also be
        # overwritten. The import operation is idempotent unless the input data contains
        # multiple valid messages with the same raw bytes but different labels. In that
        # case, after the import completes, the store contains exactly one message with
        # those raw bytes but there is no ordering guarantee on which version of the
        # labels it has. The operation result counters do not count duplicated raw bytes
        # as an error and count one success for each message in the input, which might
        # result in a success count larger than the number of messages in the HL7v2
        # store. If some messages fail to import, for example due to parsing errors,
        # successfully imported messages are not rolled back. This method returns an
        # Operation that can be used to track the status of the import by calling
        # GetOperation. Immediate fatal errors appear in the error field, errors are
        # also logged to Cloud Logging (see [Viewing error logs in Cloud Logging](https:/
        # /cloud.google.com/healthcare/docs/how-tos/logging)). Otherwise, when the
        # operation finishes, a response of type ImportMessagesResponse is returned in
        # the response field. The metadata field type for this operation is
        # OperationMetadata.
        # @param [String] name
        #   Required. The name of the target HL7v2 store, in the format `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/hl7v2Stores/`
        #   hl7v2_store_id``
        # @param [Google::Apis::HealthcareV1beta1::ImportMessagesRequest] import_messages_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_hl7_v2_store_messages(name, import_messages_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:import', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::ImportMessagesRequest::Representation
          command.request_object = import_messages_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the HL7v2 stores in the given dataset.
        # @param [String] parent
        #   Required. Name of the dataset.
        # @param [String] filter
        #   Restricts stores returned to those matching a filter. The following syntax is
        #   available: * A string field value can be written as text inside quotation
        #   marks, for example `"query text"`. The only valid relational operation for
        #   text fields is equality (`=`), where text is searched within the field, rather
        #   than having the field be equal to the text. For example, `"Comment = great"`
        #   returns messages with `great` in the comment field. * A number field value can
        #   be written as an integer, a decimal, or an exponential. The valid relational
        #   operators for number fields are the equality operator (`=`), along with the
        #   less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no
        #   inequality (`!=`) operator. You can prepend the `NOT` operator to an
        #   expression to negate it. * A date field value must be written in `yyyy-mm-dd`
        #   form. Fields with date and time use the RFC3339 time format. Leading zeros are
        #   required for one-digit months and days. The valid relational operators for
        #   date fields are the equality operator (`=`) , along with the less than/greater
        #   than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality (`!=`)
        #   operator. You can prepend the `NOT` operator to an expression to negate it. *
        #   Multiple field query expressions can be combined in one query by adding `AND`
        #   or `OR` operators between the expressions. If a boolean operator appears
        #   within a quoted string, it is not treated as special, it's just another part
        #   of the character string to be matched. You can prepend the `NOT` operator to
        #   an expression to negate it. Only filtering on labels is supported. For example,
        #   `labels.key=value`.
        # @param [Fixnum] page_size
        #   Limit on the number of HL7v2 stores to return in a single response. If not
        #   specified, 100 is used. May not be larger than 1000.
        # @param [String] page_token
        #   The next_page_token value returned from the previous List request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::ListHl7V2StoresResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::ListHl7V2StoresResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dataset_hl7_v2_stores(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/hl7V2Stores', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::ListHl7V2StoresResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::ListHl7V2StoresResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the HL7v2 store.
        # @param [String] name
        #   Identifier. Resource name of the HL7v2 store, of the form `projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id`/hl7V2Stores/`
        #   hl7v2_store_id``.
        # @param [Google::Apis::HealthcareV1beta1::Hl7V2Store] hl7_v2_store_object
        # @param [String] update_mask
        #   Required. The update mask applies to the resource. For the `FieldMask`
        #   definition, see https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Hl7V2Store] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Hl7V2Store]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_dataset_hl7_v2_store(name, hl7_v2_store_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::Hl7V2Store::Representation
          command.request_object = hl7_v2_store_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Hl7V2Store::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Hl7V2Store
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Rolls back messages from the HL7v2 store to the specified time. This method
        # returns an Operation that can be used to track the status of the rollback by
        # calling GetOperation. Immediate fatal errors appear in the error field, errors
        # are also logged to Cloud Logging (see [Viewing error logs in Cloud Logging](
        # https://cloud.google.com/healthcare/docs/how-tos/logging)). Otherwise, when
        # the operation finishes, a detailed response of type
        # RollbackHl7V2MessagesResponse is returned in the response field. The metadata
        # field type for this operation is OperationMetadata.
        # @param [String] name
        #   Required. The name of the HL7v2 store to rollback, in the format of "projects/`
        #   project_id`/locations/`location_id`/datasets/`dataset_id` /hl7V2Stores/`
        #   hl7v2_store_id`".
        # @param [Google::Apis::HealthcareV1beta1::RollbackHl7V2MessagesRequest] rollback_hl7_v2_messages_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rollback_hl7_v2_store_hl7_v2_messages(name, rollback_hl7_v2_messages_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:rollback', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::RollbackHl7V2MessagesRequest::Representation
          command.request_object = rollback_hl7_v2_messages_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::HealthcareV1beta1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_hl7_v2_store_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Policy::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::HealthcareV1beta1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_hl7_v2_store_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets multiple messages in the given HL7v2 store.
        # @param [String] parent
        #   Required. Name of the HL7v2 store to retrieve messages from, in the format: `
        #   projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        #   hl7v2Stores/`hl7v2_store_id``.
        # @param [Array<String>, String] ids
        #   The resource id of the HL7v2 messages to retrieve in the format: ``message_id``
        #   , where the full resource name is ``parent`/messages/`message_id`` A maximum
        #   of 100 messages can be retrieved in a batch. All 'ids' have to be under parent.
        # @param [String] view
        #   Specifies the parts of the Messages resource to return in the response. When
        #   unspecified, equivalent to BASIC.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::BatchGetMessagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::BatchGetMessagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_dataset_hl7_v2_store_message_get(parent, ids: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/messages:batchGet', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::BatchGetMessagesResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::BatchGetMessagesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['ids'] = ids unless ids.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Parses and stores an HL7v2 message. This method triggers an asynchronous
        # notification to any Pub/Sub topic configured in Hl7V2Store.
        # Hl7V2NotificationConfig, if the filtering matches the message. If an MLLP
        # adapter is configured to listen to a Pub/Sub topic, the adapter transmits the
        # message when a notification is received.
        # @param [String] parent
        #   Required. The name of the HL7v2 store this message belongs to.
        # @param [Google::Apis::HealthcareV1beta1::CreateMessageRequest] create_message_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Message] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Message]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_message(parent, create_message_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/messages', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::CreateMessageRequest::Representation
          command.request_object = create_message_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Message::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Message
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an HL7v2 message.
        # @param [String] name
        #   Required. The resource name of the HL7v2 message to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset_hl7_v2_store_message(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Empty::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an HL7v2 message.
        # @param [String] name
        #   Required. The resource name of the HL7v2 message to retrieve.
        # @param [String] view
        #   Specifies which parts of the Message resource to return in the response. When
        #   unspecified, equivalent to FULL.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Message] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Message]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_hl7_v2_store_message(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Message::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Message
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Parses and stores an HL7v2 message. This method triggers an asynchronous
        # notification to any Pub/Sub topic configured in Hl7V2Store.
        # Hl7V2NotificationConfig, if the filtering matches the message. If an MLLP
        # adapter is configured to listen to a Pub/Sub topic, the adapter transmits the
        # message when a notification is received. If the method is successful, it
        # generates a response containing an HL7v2 acknowledgment (`ACK`) message. If
        # the method encounters an error, it returns a negative acknowledgment (`NACK`)
        # message. This behavior is suitable for replying to HL7v2 interface systems
        # that expect these acknowledgments.
        # @param [String] parent
        #   Required. The name of the HL7v2 store this message belongs to.
        # @param [Google::Apis::HealthcareV1beta1::IngestMessageRequest] ingest_message_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::IngestMessageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::IngestMessageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def ingest_message(parent, ingest_message_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/messages:ingest', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::IngestMessageRequest::Representation
          command.request_object = ingest_message_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::IngestMessageResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::IngestMessageResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the messages in the given HL7v2 store with support for filtering.
        # Note: HL7v2 messages are indexed asynchronously, so there might be a slight
        # delay between the time a message is created and when it can be found through a
        # filter.
        # @param [String] parent
        #   Required. Name of the HL7v2 store to retrieve messages from.
        # @param [String] filter
        #   Restricts messages returned to those matching a filter. The following syntax
        #   is available: * A string field value can be written as text inside quotation
        #   marks, for example `"query text"`. The only valid relational operation for
        #   text fields is equality (`=`), where text is searched within the field, rather
        #   than having the field be equal to the text. For example, `"Comment = great"`
        #   returns messages with `great` in the comment field. * A number field value can
        #   be written as an integer, a decimal, or an exponential. The valid relational
        #   operators for number fields are the equality operator (`=`), along with the
        #   less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no
        #   inequality (`!=`) operator. You can prepend the `NOT` operator to an
        #   expression to negate it. * A date field value must be written in `yyyy-mm-dd`
        #   form. Fields with date and time use the RFC3339 time format. Leading zeros are
        #   required for one-digit months and days. The valid relational operators for
        #   date fields are the equality operator (`=`) , along with the less than/greater
        #   than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality (`!=`)
        #   operator. You can prepend the `NOT` operator to an expression to negate it. *
        #   Multiple field query expressions can be combined in one query by adding `AND`
        #   or `OR` operators between the expressions. If a boolean operator appears
        #   within a quoted string, it is not treated as special, it's just another part
        #   of the character string to be matched. You can prepend the `NOT` operator to
        #   an expression to negate it. Fields/functions available for filtering are: * `
        #   message_type`, from the MSH-9.1 field. For example, `NOT message_type = "ADT"`.
        #   * `send_date` or `sendDate`, the YYYY-MM-DD date the message was sent in the
        #   dataset's time_zone, from the MSH-7 segment. For example, `send_date < "2017-
        #   01-02"`. * `send_time`, the timestamp when the message was sent, using the
        #   RFC3339 time format for comparisons, from the MSH-7 segment. For example, `
        #   send_time < "2017-01-02T00:00:00-05:00"`. * `create_time`, the timestamp when
        #   the message was created in the HL7v2 store. Use the RFC3339 time format for
        #   comparisons. For example, `create_time < "2017-01-02T00:00:00-05:00"`. * `
        #   send_facility`, the care center that the message came from, from the MSH-4
        #   segment. For example, `send_facility = "ABC"`. * `PatientId(value, type)`,
        #   which matches if the message lists a patient having an ID of the given value
        #   and type in the PID-2, PID-3, or PID-4 segments. For example, `PatientId("
        #   123456", "MRN")`. * `labels.x`, a string value of the label with key `x` as
        #   set using the Message.labels map. For example, `labels."priority"="high"`. The
        #   operator `:*` can be used to assert the existence of a label. For example, `
        #   labels."priority":*`.
        # @param [String] order_by
        #   Orders messages returned by the specified order_by clause. Syntax: https://
        #   cloud.google.com/apis/design/design_patterns#sorting_order Fields available
        #   for ordering are: * `send_time`
        # @param [Fixnum] page_size
        #   Limit on the number of messages to return in a single response. If not
        #   specified, 100 is used. May not be larger than 1000.
        # @param [String] page_token
        #   The next_page_token value returned from the previous List request, if any.
        # @param [String] view
        #   Specifies the parts of the Message to return in the response. When unspecified,
        #   equivalent to BASIC. Setting this to anything other than BASIC with a `
        #   page_size` larger than the default can generate a large response, which
        #   impacts the performance of this method.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::ListMessagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::ListMessagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dataset_hl7_v2_store_messages(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/messages', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::ListMessagesResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::ListMessagesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the message. The contents of the message in Message.data and data
        # extracted from the contents such as Message.create_time can't be altered. Only
        # the Message.labels field is allowed to be updated. The labels in the request
        # are merged with the existing set of labels. Existing labels with the same keys
        # are updated.
        # @param [String] name
        #   Output only. Resource name of the Message, of the form `projects/`project_id`/
        #   locations/`location_id`/datasets/`dataset_id`/hl7V2Stores/`hl7_v2_store_id`/
        #   messages/`message_id``. Assigned by the server.
        # @param [Google::Apis::HealthcareV1beta1::Message] message_object
        # @param [String] update_mask
        #   Required. The update mask applies to the resource. For the `FieldMask`
        #   definition, see https://developers.google.com/protocol-buffers/docs/reference/
        #   google.protobuf#fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Message] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Message]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_dataset_hl7_v2_store_message(name, message_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::Message::Representation
          command.request_object = message_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Message::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Message
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # @param [Google::Apis::HealthcareV1beta1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:cancel', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::Empty::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Empty
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
        # @yieldparam result [Google::Apis::HealthcareV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::Operation::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::Operation
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
        # @yieldparam result [Google::Apis::HealthcareV1beta1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dataset_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/operations', options)
          command.response_representation = Google::Apis::HealthcareV1beta1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Analyze heathcare entity in a document. Its response includes the recognized
        # entity mentions and the relationships between them. AnalyzeEntities uses
        # context aware models to detect entities. This method can only analyze
        # documents written in English.
        # @param [String] nlp_service
        #   The resource name of the service of the form: "projects/`project_id`/locations/
        #   `location_id`/services/nlp".
        # @param [Google::Apis::HealthcareV1beta1::AnalyzeEntitiesRequest] analyze_entities_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthcareV1beta1::AnalyzeEntitiesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthcareV1beta1::AnalyzeEntitiesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def analyze_nlp_entities(nlp_service, analyze_entities_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+nlpService}:analyzeEntities', options)
          command.request_representation = Google::Apis::HealthcareV1beta1::AnalyzeEntitiesRequest::Representation
          command.request_object = analyze_entities_request_object
          command.response_representation = Google::Apis::HealthcareV1beta1::AnalyzeEntitiesResponse::Representation
          command.response_class = Google::Apis::HealthcareV1beta1::AnalyzeEntitiesResponse
          command.params['nlpService'] = nlp_service unless nlp_service.nil?
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
