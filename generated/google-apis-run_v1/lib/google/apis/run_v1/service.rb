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
    module RunV1
      # Cloud Run Admin API
      #
      # Deploy and manage user provided container images that scale automatically
      #  based on incoming requests. The Cloud Run Admin API v1 follows the Knative
      #  Serving API specification, while v2 is aligned with Google Cloud AIP-based API
      #  standards, as described in https://google.aip.dev/.
      #
      # @example
      #    require 'google/apis/run_v1'
      #
      #    Run = Google::Apis::RunV1 # Alias the module
      #    service = Run::CloudRunService.new
      #
      # @see https://cloud.google.com/run/
      class CloudRunService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://run.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-run_v1',
                client_version: Google::Apis::RunV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # List authorized domains.
        # @param [String] parent
        #   Name of the parent Project resource. Example: `projects/myproject`.
        # @param [Fixnum] page_size
        #   Maximum results to return per page.
        # @param [String] page_token
        #   Continuation token for fetching the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::ListAuthorizedDomainsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::ListAuthorizedDomainsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_namespace_authorizeddomains(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apis/domains.cloudrun.com/v1/{+parent}/authorizeddomains', options)
          command.response_representation = Google::Apis::RunV1::ListAuthorizedDomainsResponse::Representation
          command.response_class = Google::Apis::RunV1::ListAuthorizedDomainsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get information about a configuration.
        # @param [String] name
        #   The name of the configuration to retrieve. For Cloud Run, replace `
        #   namespace_id` with the project ID or number.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Configuration] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Configuration]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_namespace_configuration(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apis/serving.knative.dev/v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::Configuration::Representation
          command.response_class = Google::Apis::RunV1::Configuration
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List configurations. Results are sorted by creation time, descending.
        # @param [String] parent
        #   The namespace from which the configurations should be listed. For Cloud Run,
        #   replace `namespace_id` with the project ID or number.
        # @param [String] continue
        #   Optional. Encoded string to continue paging.
        # @param [String] field_selector
        #   Not supported by Cloud Run.
        # @param [Boolean] include_uninitialized
        #   Not supported by Cloud Run.
        # @param [String] label_selector
        #   Allows to filter resources based on a label. Supported operations are =, !=,
        #   exists, in, and notIn.
        # @param [Fixnum] limit
        #   Optional. The maximum number of the records that should be returned.
        # @param [String] resource_version
        #   Not supported by Cloud Run.
        # @param [Boolean] watch
        #   Not supported by Cloud Run.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::ListConfigurationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::ListConfigurationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_namespace_configurations(parent, continue: nil, field_selector: nil, include_uninitialized: nil, label_selector: nil, limit: nil, resource_version: nil, watch: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apis/serving.knative.dev/v1/{+parent}/configurations', options)
          command.response_representation = Google::Apis::RunV1::ListConfigurationsResponse::Representation
          command.response_class = Google::Apis::RunV1::ListConfigurationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['continue'] = continue unless continue.nil?
          command.query['fieldSelector'] = field_selector unless field_selector.nil?
          command.query['includeUninitialized'] = include_uninitialized unless include_uninitialized.nil?
          command.query['labelSelector'] = label_selector unless label_selector.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['resourceVersion'] = resource_version unless resource_version.nil?
          command.query['watch'] = watch unless watch.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a new domain mapping.
        # @param [String] parent
        #   Required. The namespace in which the domain mapping should be created. For
        #   Cloud Run (fully managed), replace `namespace` with the project ID or number.
        #   It takes the form namespaces/`namespace`. For example: namespaces/PROJECT_ID
        # @param [Google::Apis::RunV1::DomainMapping] domain_mapping_object
        # @param [String] dry_run
        #   Indicates that the server should validate the request and populate default
        #   values without persisting the request. Supported values: `all`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::DomainMapping] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::DomainMapping]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_namespace_domainmapping(parent, domain_mapping_object = nil, dry_run: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'apis/domains.cloudrun.com/v1/{+parent}/domainmappings', options)
          command.request_representation = Google::Apis::RunV1::DomainMapping::Representation
          command.request_object = domain_mapping_object
          command.response_representation = Google::Apis::RunV1::DomainMapping::Representation
          command.response_class = Google::Apis::RunV1::DomainMapping
          command.params['parent'] = parent unless parent.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a domain mapping.
        # @param [String] name
        #   Required. The name of the domain mapping to delete. For Cloud Run (fully
        #   managed), replace `namespace` with the project ID or number. It takes the form
        #   namespaces/`namespace`. For example: namespaces/PROJECT_ID
        # @param [String] api_version
        #   Cloud Run currently ignores this parameter.
        # @param [String] dry_run
        #   Indicates that the server should validate the request and populate default
        #   values without persisting the request. Supported values: `all`
        # @param [String] kind
        #   Cloud Run currently ignores this parameter.
        # @param [String] propagation_policy
        #   Specifies the propagation policy of delete. Cloud Run currently ignores this
        #   setting, and deletes in the background. Please see kubernetes.io/docs/concepts/
        #   architecture/garbage-collection/ for more information.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Status] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Status]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_namespace_domainmapping(name, api_version: nil, dry_run: nil, kind: nil, propagation_policy: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'apis/domains.cloudrun.com/v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::Status::Representation
          command.response_class = Google::Apis::RunV1::Status
          command.params['name'] = name unless name.nil?
          command.query['apiVersion'] = api_version unless api_version.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['kind'] = kind unless kind.nil?
          command.query['propagationPolicy'] = propagation_policy unless propagation_policy.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get information about a domain mapping.
        # @param [String] name
        #   Required. The name of the domain mapping to retrieve. For Cloud Run (fully
        #   managed), replace `namespace` with the project ID or number. It takes the form
        #   namespaces/`namespace`. For example: namespaces/PROJECT_ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::DomainMapping] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::DomainMapping]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_namespace_domainmapping(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apis/domains.cloudrun.com/v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::DomainMapping::Representation
          command.response_class = Google::Apis::RunV1::DomainMapping
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all domain mappings.
        # @param [String] parent
        #   Required. The namespace from which the domain mappings should be listed. For
        #   Cloud Run (fully managed), replace `namespace` with the project ID or number.
        #   It takes the form namespaces/`namespace`. For example: namespaces/PROJECT_ID
        # @param [String] continue
        #   Optional. Encoded string to continue paging.
        # @param [String] field_selector
        #   Allows to filter resources based on a specific value for a field name. Send
        #   this in a query string format. i.e. 'metadata.name%3Dlorem'. Not currently
        #   used by Cloud Run.
        # @param [Boolean] include_uninitialized
        #   Not currently used by Cloud Run.
        # @param [String] label_selector
        #   Allows to filter resources based on a label. Supported operations are =, !=,
        #   exists, in, and notIn.
        # @param [Fixnum] limit
        #   Optional. The maximum number of records that should be returned.
        # @param [String] resource_version
        #   The baseline resource version from which the list or watch operation should
        #   start. Not currently used by Cloud Run.
        # @param [Boolean] watch
        #   Flag that indicates that the client expects to watch this resource as well.
        #   Not currently used by Cloud Run.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::ListDomainMappingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::ListDomainMappingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_namespace_domainmappings(parent, continue: nil, field_selector: nil, include_uninitialized: nil, label_selector: nil, limit: nil, resource_version: nil, watch: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apis/domains.cloudrun.com/v1/{+parent}/domainmappings', options)
          command.response_representation = Google::Apis::RunV1::ListDomainMappingsResponse::Representation
          command.response_class = Google::Apis::RunV1::ListDomainMappingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['continue'] = continue unless continue.nil?
          command.query['fieldSelector'] = field_selector unless field_selector.nil?
          command.query['includeUninitialized'] = include_uninitialized unless include_uninitialized.nil?
          command.query['labelSelector'] = label_selector unless label_selector.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['resourceVersion'] = resource_version unless resource_version.nil?
          command.query['watch'] = watch unless watch.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancel an execution.
        # @param [String] name
        #   Required. The name of the execution to cancel. Replace `namespace` with the
        #   project ID or number. It takes the form namespaces/`namespace`. For example:
        #   namespaces/PROJECT_ID
        # @param [Google::Apis::RunV1::CancelExecutionRequest] cancel_execution_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Execution] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Execution]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_execution(name, cancel_execution_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'apis/run.googleapis.com/v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::RunV1::CancelExecutionRequest::Representation
          command.request_object = cancel_execution_request_object
          command.response_representation = Google::Apis::RunV1::Execution::Representation
          command.response_class = Google::Apis::RunV1::Execution
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an execution.
        # @param [String] name
        #   Required. The name of the execution to delete. Replace `namespace` with the
        #   project ID or number. It takes the form namespaces/`namespace`. For example:
        #   namespaces/PROJECT_ID
        # @param [String] api_version
        #   Optional. Cloud Run currently ignores this parameter.
        # @param [String] kind
        #   Optional. Cloud Run currently ignores this parameter.
        # @param [String] propagation_policy
        #   Optional. Specifies the propagation policy of delete. Cloud Run currently
        #   ignores this setting.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Status] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Status]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_namespace_execution(name, api_version: nil, kind: nil, propagation_policy: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'apis/run.googleapis.com/v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::Status::Representation
          command.response_class = Google::Apis::RunV1::Status
          command.params['name'] = name unless name.nil?
          command.query['apiVersion'] = api_version unless api_version.nil?
          command.query['kind'] = kind unless kind.nil?
          command.query['propagationPolicy'] = propagation_policy unless propagation_policy.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get information about an execution.
        # @param [String] name
        #   Required. The name of the execution to retrieve. Replace `namespace` with the
        #   project ID or number. It takes the form namespaces/`namespace`. For example:
        #   namespaces/PROJECT_ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Execution] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Execution]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_namespace_execution(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apis/run.googleapis.com/v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::Execution::Representation
          command.response_class = Google::Apis::RunV1::Execution
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List executions. Results are sorted by creation time, descending.
        # @param [String] parent
        #   Required. The namespace from which the executions should be listed. Replace `
        #   namespace` with the project ID or number. It takes the form namespaces/`
        #   namespace`. For example: namespaces/PROJECT_ID
        # @param [String] continue
        #   Optional. Optional encoded string to continue paging.
        # @param [String] field_selector
        #   Optional. Not supported by Cloud Run.
        # @param [Boolean] include_uninitialized
        #   Optional. Not supported by Cloud Run.
        # @param [String] label_selector
        #   Optional. Allows to filter resources based on a label. Supported operations
        #   are =, !=, exists, in, and notIn.
        # @param [Fixnum] limit
        #   Optional. The maximum number of the records that should be returned.
        # @param [String] resource_version
        #   Optional. Not supported by Cloud Run.
        # @param [Boolean] watch
        #   Optional. Not supported by Cloud Run.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::ListExecutionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::ListExecutionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_namespace_executions(parent, continue: nil, field_selector: nil, include_uninitialized: nil, label_selector: nil, limit: nil, resource_version: nil, watch: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apis/run.googleapis.com/v1/{+parent}/executions', options)
          command.response_representation = Google::Apis::RunV1::ListExecutionsResponse::Representation
          command.response_class = Google::Apis::RunV1::ListExecutionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['continue'] = continue unless continue.nil?
          command.query['fieldSelector'] = field_selector unless field_selector.nil?
          command.query['includeUninitialized'] = include_uninitialized unless include_uninitialized.nil?
          command.query['labelSelector'] = label_selector unless label_selector.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['resourceVersion'] = resource_version unless resource_version.nil?
          command.query['watch'] = watch unless watch.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a job.
        # @param [String] parent
        #   Required. The namespace in which the job should be created. Replace `namespace`
        #   with the project ID or number. It takes the form namespaces/`namespace`. For
        #   example: namespaces/PROJECT_ID
        # @param [Google::Apis::RunV1::Job] job_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_namespace_job(parent, job_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'apis/run.googleapis.com/v1/{+parent}/jobs', options)
          command.request_representation = Google::Apis::RunV1::Job::Representation
          command.request_object = job_object
          command.response_representation = Google::Apis::RunV1::Job::Representation
          command.response_class = Google::Apis::RunV1::Job
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a job.
        # @param [String] name
        #   Required. The name of the job to delete. Replace `namespace` with the project
        #   ID or number. It takes the form namespaces/`namespace`. For example:
        #   namespaces/PROJECT_ID
        # @param [String] api_version
        #   Optional. Cloud Run currently ignores this parameter.
        # @param [String] kind
        #   Optional. Cloud Run currently ignores this parameter.
        # @param [String] propagation_policy
        #   Optional. Specifies the propagation policy of delete. Cloud Run currently
        #   ignores this setting, and deletes in the background. Please see kubernetes.io/
        #   docs/concepts/workloads/controllers/garbage-collection/ for more information.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Status] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Status]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_namespace_job(name, api_version: nil, kind: nil, propagation_policy: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'apis/run.googleapis.com/v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::Status::Representation
          command.response_class = Google::Apis::RunV1::Status
          command.params['name'] = name unless name.nil?
          command.query['apiVersion'] = api_version unless api_version.nil?
          command.query['kind'] = kind unless kind.nil?
          command.query['propagationPolicy'] = propagation_policy unless propagation_policy.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get information about a job.
        # @param [String] name
        #   Required. The name of the job to retrieve. Replace `namespace` with the
        #   project ID or number. It takes the form namespaces/`namespace`. For example:
        #   namespaces/PROJECT_ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_namespace_job(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apis/run.googleapis.com/v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::Job::Representation
          command.response_class = Google::Apis::RunV1::Job
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List jobs. Results are sorted by creation time, descending.
        # @param [String] parent
        #   Required. The namespace from which the jobs should be listed. Replace `
        #   namespace` with the project ID or number. It takes the form namespaces/`
        #   namespace`. For example: namespaces/PROJECT_ID
        # @param [String] continue
        #   Optional. Optional encoded string to continue paging.
        # @param [String] field_selector
        #   Optional. Not supported by Cloud Run.
        # @param [Boolean] include_uninitialized
        #   Optional. Not supported by Cloud Run.
        # @param [String] label_selector
        #   Optional. Allows to filter resources based on a label. Supported operations
        #   are =, !=, exists, in, and notIn.
        # @param [Fixnum] limit
        #   Optional. The maximum number of records that should be returned.
        # @param [String] resource_version
        #   Optional. Not supported by Cloud Run.
        # @param [Boolean] watch
        #   Optional. Not supported by Cloud Run.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::ListJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::ListJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_namespace_jobs(parent, continue: nil, field_selector: nil, include_uninitialized: nil, label_selector: nil, limit: nil, resource_version: nil, watch: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apis/run.googleapis.com/v1/{+parent}/jobs', options)
          command.response_representation = Google::Apis::RunV1::ListJobsResponse::Representation
          command.response_class = Google::Apis::RunV1::ListJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['continue'] = continue unless continue.nil?
          command.query['fieldSelector'] = field_selector unless field_selector.nil?
          command.query['includeUninitialized'] = include_uninitialized unless include_uninitialized.nil?
          command.query['labelSelector'] = label_selector unless label_selector.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['resourceVersion'] = resource_version unless resource_version.nil?
          command.query['watch'] = watch unless watch.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Replace a job. Only the spec and metadata labels and annotations are
        # modifiable. After the Replace request, Cloud Run will work to make the 'status'
        # match the requested 'spec'. May provide metadata.resourceVersion to enforce
        # update from last read for optimistic concurrency control.
        # @param [String] name
        #   Required. The name of the job being replaced. Replace `namespace` with the
        #   project ID or number. It takes the form namespaces/`namespace`. For example:
        #   namespaces/PROJECT_ID
        # @param [Google::Apis::RunV1::Job] job_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def replace_namespace_job_job(name, job_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'apis/run.googleapis.com/v1/{+name}', options)
          command.request_representation = Google::Apis::RunV1::Job::Representation
          command.request_object = job_object
          command.response_representation = Google::Apis::RunV1::Job::Representation
          command.response_class = Google::Apis::RunV1::Job
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Trigger creation of a new execution of this job.
        # @param [String] name
        #   Required. The name of the job to run. Replace `namespace` with the project ID
        #   or number. It takes the form namespaces/`namespace`. For example: namespaces/
        #   PROJECT_ID
        # @param [Google::Apis::RunV1::RunJobRequest] run_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Execution] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Execution]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_job(name, run_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'apis/run.googleapis.com/v1/{+name}:run', options)
          command.request_representation = Google::Apis::RunV1::RunJobRequest::Representation
          command.request_object = run_job_request_object
          command.response_representation = Google::Apis::RunV1::Execution::Representation
          command.response_class = Google::Apis::RunV1::Execution
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a revision.
        # @param [String] name
        #   The name of the revision to delete. For Cloud Run (fully managed), replace `
        #   namespace` with the project ID or number. It takes the form namespaces/`
        #   namespace`. For example: namespaces/PROJECT_ID
        # @param [String] api_version
        #   Cloud Run currently ignores this parameter.
        # @param [String] dry_run
        #   Indicates that the server should validate the request and populate default
        #   values without persisting the request. Supported values: `all`
        # @param [String] kind
        #   Cloud Run currently ignores this parameter.
        # @param [String] propagation_policy
        #   Specifies the propagation policy of delete. Cloud Run currently ignores this
        #   setting, and deletes in the background.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Status] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Status]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_namespace_revision(name, api_version: nil, dry_run: nil, kind: nil, propagation_policy: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'apis/serving.knative.dev/v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::Status::Representation
          command.response_class = Google::Apis::RunV1::Status
          command.params['name'] = name unless name.nil?
          command.query['apiVersion'] = api_version unless api_version.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['kind'] = kind unless kind.nil?
          command.query['propagationPolicy'] = propagation_policy unless propagation_policy.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get information about a revision.
        # @param [String] name
        #   The name of the revision to retrieve. For Cloud Run (fully managed), replace `
        #   namespace` with the project ID or number. It takes the form namespaces/`
        #   namespace`. For example: namespaces/PROJECT_ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Revision] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Revision]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_namespace_revision(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apis/serving.knative.dev/v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::Revision::Representation
          command.response_class = Google::Apis::RunV1::Revision
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List revisions. Results are sorted by creation time, descending.
        # @param [String] parent
        #   The namespace from which the revisions should be listed. For Cloud Run (fully
        #   managed), replace `namespace` with the project ID or number. It takes the form
        #   namespaces/`namespace`. For example: namespaces/PROJECT_ID
        # @param [String] continue
        #   Optional. Encoded string to continue paging.
        # @param [String] field_selector
        #   Allows to filter resources based on a specific value for a field name. Send
        #   this in a query string format. i.e. 'metadata.name%3Dlorem'. Not currently
        #   used by Cloud Run.
        # @param [Boolean] include_uninitialized
        #   Not currently used by Cloud Run.
        # @param [String] label_selector
        #   Allows to filter resources based on a label. Supported operations are =, !=,
        #   exists, in, and notIn.
        # @param [Fixnum] limit
        #   Optional. The maximum number of records that should be returned.
        # @param [String] resource_version
        #   The baseline resource version from which the list or watch operation should
        #   start. Not currently used by Cloud Run.
        # @param [Boolean] watch
        #   Flag that indicates that the client expects to watch this resource as well.
        #   Not currently used by Cloud Run.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::ListRevisionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::ListRevisionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_namespace_revisions(parent, continue: nil, field_selector: nil, include_uninitialized: nil, label_selector: nil, limit: nil, resource_version: nil, watch: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apis/serving.knative.dev/v1/{+parent}/revisions', options)
          command.response_representation = Google::Apis::RunV1::ListRevisionsResponse::Representation
          command.response_class = Google::Apis::RunV1::ListRevisionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['continue'] = continue unless continue.nil?
          command.query['fieldSelector'] = field_selector unless field_selector.nil?
          command.query['includeUninitialized'] = include_uninitialized unless include_uninitialized.nil?
          command.query['labelSelector'] = label_selector unless label_selector.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['resourceVersion'] = resource_version unless resource_version.nil?
          command.query['watch'] = watch unless watch.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get information about a route.
        # @param [String] name
        #   The name of the route to retrieve. For Cloud Run (fully managed), replace `
        #   namespace` with the project ID or number. It takes the form namespaces/`
        #   namespace`. For example: namespaces/PROJECT_ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Route] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Route]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_namespace_route(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apis/serving.knative.dev/v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::Route::Representation
          command.response_class = Google::Apis::RunV1::Route
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List routes. Results are sorted by creation time, descending.
        # @param [String] parent
        #   The namespace from which the routes should be listed. For Cloud Run (fully
        #   managed), replace `namespace` with the project ID or number. It takes the form
        #   namespaces/`namespace`. For example: namespaces/PROJECT_ID
        # @param [String] continue
        #   Optional. Encoded string to continue paging.
        # @param [String] field_selector
        #   Allows to filter resources based on a specific value for a field name. Send
        #   this in a query string format. i.e. 'metadata.name%3Dlorem'. Not currently
        #   used by Cloud Run.
        # @param [Boolean] include_uninitialized
        #   Not currently used by Cloud Run.
        # @param [String] label_selector
        #   Allows to filter resources based on a label. Supported operations are =, !=,
        #   exists, in, and notIn.
        # @param [Fixnum] limit
        #   Optional. The maximum number of records that should be returned.
        # @param [String] resource_version
        #   The baseline resource version from which the list or watch operation should
        #   start. Not currently used by Cloud Run.
        # @param [Boolean] watch
        #   Flag that indicates that the client expects to watch this resource as well.
        #   Not currently used by Cloud Run.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::ListRoutesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::ListRoutesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_namespace_routes(parent, continue: nil, field_selector: nil, include_uninitialized: nil, label_selector: nil, limit: nil, resource_version: nil, watch: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apis/serving.knative.dev/v1/{+parent}/routes', options)
          command.response_representation = Google::Apis::RunV1::ListRoutesResponse::Representation
          command.response_class = Google::Apis::RunV1::ListRoutesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['continue'] = continue unless continue.nil?
          command.query['fieldSelector'] = field_selector unless field_selector.nil?
          command.query['includeUninitialized'] = include_uninitialized unless include_uninitialized.nil?
          command.query['labelSelector'] = label_selector unless label_selector.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['resourceVersion'] = resource_version unless resource_version.nil?
          command.query['watch'] = watch unless watch.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Service. Service creation will trigger a new deployment. Use
        # GetService, and check service.status to determine if the Service is ready.
        # @param [String] parent
        #   Required. The resource's parent. In Cloud Run, it may be one of the following:
        #   * ``project_id_or_number`` * `namespaces/`project_id_or_number`` * `namespaces/
        #   `project_id_or_number`/services` * `projects/`project_id_or_number`/locations/`
        #   region`` * `projects/`project_id_or_number`/regions/`region``
        # @param [Google::Apis::RunV1::Service] service_object
        # @param [String] dry_run
        #   Indicates that the server should validate the request and populate default
        #   values without persisting the request. Supported values: `all`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Service] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Service]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_namespace_service(parent, service_object = nil, dry_run: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'apis/serving.knative.dev/v1/{+parent}/services', options)
          command.request_representation = Google::Apis::RunV1::Service::Representation
          command.request_object = service_object
          command.response_representation = Google::Apis::RunV1::Service::Representation
          command.response_class = Google::Apis::RunV1::Service
          command.params['parent'] = parent unless parent.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the provided service. This will cause the Service to stop serving
        # traffic and will delete all associated Revisions.
        # @param [String] name
        #   Required. The fully qualified name of the service to delete. It can be any of
        #   the following forms: * `namespaces/`project_id_or_number`/services/`
        #   service_name`` (only when the `endpoint` is regional) * `projects/`
        #   project_id_or_number`/locations/`region`/services/`service_name`` * `projects/`
        #   project_id_or_number`/regions/`region`/services/`service_name``
        # @param [String] api_version
        #   Not supported, and ignored by Cloud Run.
        # @param [String] dry_run
        #   Indicates that the server should validate the request and populate default
        #   values without persisting the request. Supported values: `all`
        # @param [String] kind
        #   Not supported, and ignored by Cloud Run.
        # @param [String] propagation_policy
        #   Not supported, and ignored by Cloud Run.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Status] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Status]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_namespace_service(name, api_version: nil, dry_run: nil, kind: nil, propagation_policy: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'apis/serving.knative.dev/v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::Status::Representation
          command.response_class = Google::Apis::RunV1::Status
          command.params['name'] = name unless name.nil?
          command.query['apiVersion'] = api_version unless api_version.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['kind'] = kind unless kind.nil?
          command.query['propagationPolicy'] = propagation_policy unless propagation_policy.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a service.
        # @param [String] name
        #   Required. The fully qualified name of the service to retrieve. It can be any
        #   of the following forms: * `namespaces/`project_id_or_number`/services/`
        #   service_name`` (only when the `endpoint` is regional) * `projects/`
        #   project_id_or_number`/locations/`region`/services/`service_name`` * `projects/`
        #   project_id_or_number`/regions/`region`/services/`service_name``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Service] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Service]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_namespace_service(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apis/serving.knative.dev/v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::Service::Representation
          command.response_class = Google::Apis::RunV1::Service
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists services for the given project and region. Results are sorted by
        # creation time, descending.
        # @param [String] parent
        #   Required. The parent from where the resources should be listed. In Cloud Run,
        #   it may be one of the following: * ``project_id_or_number`` * `namespaces/`
        #   project_id_or_number`` * `namespaces/`project_id_or_number`/services` * `
        #   projects/`project_id_or_number`/locations/`region`` * `projects/`
        #   project_id_or_number`/regions/`region``
        # @param [String] continue
        #   Encoded string to continue paging.
        # @param [String] field_selector
        #   Not supported, and ignored by Cloud Run.
        # @param [Boolean] include_uninitialized
        #   Not supported, and ignored by Cloud Run.
        # @param [String] label_selector
        #   Allows to filter resources based on a label. Supported operations are =, !=,
        #   exists, in, and notIn.
        # @param [Fixnum] limit
        #   The maximum number of records that should be returned.
        # @param [String] resource_version
        #   Not supported, and ignored by Cloud Run.
        # @param [Boolean] watch
        #   Not supported, and ignored by Cloud Run.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::ListServicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::ListServicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_namespace_services(parent, continue: nil, field_selector: nil, include_uninitialized: nil, label_selector: nil, limit: nil, resource_version: nil, watch: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apis/serving.knative.dev/v1/{+parent}/services', options)
          command.response_representation = Google::Apis::RunV1::ListServicesResponse::Representation
          command.response_class = Google::Apis::RunV1::ListServicesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['continue'] = continue unless continue.nil?
          command.query['fieldSelector'] = field_selector unless field_selector.nil?
          command.query['includeUninitialized'] = include_uninitialized unless include_uninitialized.nil?
          command.query['labelSelector'] = label_selector unless label_selector.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['resourceVersion'] = resource_version unless resource_version.nil?
          command.query['watch'] = watch unless watch.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Replaces a service. Only the spec and metadata labels and annotations are
        # modifiable. After the Update request, Cloud Run will work to make the 'status'
        # match the requested 'spec'. May provide metadata.resourceVersion to enforce
        # update from last read for optimistic concurrency control.
        # @param [String] name
        #   Required. The fully qualified name of the service to replace. It can be any of
        #   the following forms: * `namespaces/`project_id_or_number`/services/`
        #   service_name`` (only when the `endpoint` is regional) * `projects/`
        #   project_id_or_number`/locations/`region`/services/`service_name`` * `projects/`
        #   project_id_or_number`/regions/`region`/services/`service_name``
        # @param [Google::Apis::RunV1::Service] service_object
        # @param [String] dry_run
        #   Indicates that the server should validate the request and populate default
        #   values without persisting the request. Supported values: `all`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Service] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Service]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def replace_namespace_service_service(name, service_object = nil, dry_run: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'apis/serving.knative.dev/v1/{+name}', options)
          command.request_representation = Google::Apis::RunV1::Service::Representation
          command.request_object = service_object
          command.response_representation = Google::Apis::RunV1::Service::Representation
          command.response_class = Google::Apis::RunV1::Service
          command.params['name'] = name unless name.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get information about a task.
        # @param [String] name
        #   Required. The name of the task to retrieve. Replace `namespace` with the
        #   project ID or number. It takes the form namespaces/`namespace`. For example:
        #   namespaces/PROJECT_ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Task] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Task]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_namespace_task(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apis/run.googleapis.com/v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::Task::Representation
          command.response_class = Google::Apis::RunV1::Task
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List tasks.
        # @param [String] parent
        #   Required. The namespace from which the tasks should be listed. Replace `
        #   namespace` with the project ID or number. It takes the form namespaces/`
        #   namespace`. For example: namespaces/PROJECT_ID
        # @param [String] continue
        #   Optional. Optional encoded string to continue paging.
        # @param [String] field_selector
        #   Optional. Not supported by Cloud Run.
        # @param [Boolean] include_uninitialized
        #   Optional. Not supported by Cloud Run.
        # @param [String] label_selector
        #   Optional. Allows to filter resources based on a label. Supported operations
        #   are =, !=, exists, in, and notIn. For example, to list all tasks of execution "
        #   foo" in succeeded state: `run.googleapis.com/execution=foo,run.googleapis.com/
        #   runningState=Succeeded`. Supported states are: * `Pending`: Initial state of
        #   all tasks. The task has not yet started but eventually will. * `Running`:
        #   Container instances for this task are running or will be running shortly. * `
        #   Succeeded`: No more container instances to run for the task, and the last
        #   attempt succeeded. * `Failed`: No more container instances to run for the task,
        #   and the last attempt failed. This task has run out of retry attempts. * `
        #   Cancelled`: Task was running but got stopped because its parent execution has
        #   been aborted. * `Abandoned`: The task has not yet started and never will
        #   because its parent execution has been aborted.
        # @param [Fixnum] limit
        #   Optional. The maximum number of records that should be returned.
        # @param [String] resource_version
        #   Optional. Not supported by Cloud Run.
        # @param [Boolean] watch
        #   Optional. Not supported by Cloud Run.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::ListTasksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::ListTasksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_namespace_tasks(parent, continue: nil, field_selector: nil, include_uninitialized: nil, label_selector: nil, limit: nil, resource_version: nil, watch: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apis/run.googleapis.com/v1/{+parent}/tasks', options)
          command.response_representation = Google::Apis::RunV1::ListTasksResponse::Representation
          command.response_class = Google::Apis::RunV1::ListTasksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['continue'] = continue unless continue.nil?
          command.query['fieldSelector'] = field_selector unless field_selector.nil?
          command.query['includeUninitialized'] = include_uninitialized unless include_uninitialized.nil?
          command.query['labelSelector'] = label_selector unless label_selector.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['resourceVersion'] = resource_version unless resource_version.nil?
          command.query['watch'] = watch unless watch.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new WorkerPool. WorkerPool creation will trigger a new deployment.
        # Use GetWorkerPool, and check worker_pool.status to determine if the WorkerPool
        # is ready.
        # @param [String] parent
        #   Required. The resource's parent. In Cloud Run, it may be one of the following:
        #   * ``project_id_or_number`` * `namespaces/`project_id_or_number`` * `namespaces/
        #   `project_id_or_number`/workerpools` * `projects/`project_id_or_number`/
        #   locations/`region`` * `projects/`project_id_or_number`/regions/`region``
        # @param [Google::Apis::RunV1::WorkerPool] worker_pool_object
        # @param [String] dry_run
        #   Indicates that the server should validate the request and populate default
        #   values without persisting the request. Supported values: `all`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::WorkerPool] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::WorkerPool]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_namespace_workerpool(parent, worker_pool_object = nil, dry_run: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'apis/run.googleapis.com/v1/{+parent}/workerpools', options)
          command.request_representation = Google::Apis::RunV1::WorkerPool::Representation
          command.request_object = worker_pool_object
          command.response_representation = Google::Apis::RunV1::WorkerPool::Representation
          command.response_class = Google::Apis::RunV1::WorkerPool
          command.params['parent'] = parent unless parent.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the provided worker pool. This will cause the WorkerPool to stop all
        # instances and will delete all associated WorkerPoolRevisions.
        # @param [String] name
        #   Required. The fully qualified name of the worker pool to delete. It can be any
        #   of the following forms: * `namespaces/`project_id_or_number`/workerpools/`
        #   worker_pool_name`` (only when the `endpoint` is regional) * `projects/`
        #   project_id_or_number`/locations/`region`/workerpools/`worker_pool_name`` * `
        #   projects/`project_id_or_number`/regions/`region`/workerpools/`worker_pool_name`
        #   `
        # @param [String] dry_run
        #   Indicates that the server should validate the request and populate default
        #   values without persisting the request. Supported values: `all`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Status] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Status]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_namespace_workerpool(name, dry_run: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'apis/run.googleapis.com/v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::Status::Representation
          command.response_class = Google::Apis::RunV1::Status
          command.params['name'] = name unless name.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a worker pool.
        # @param [String] name
        #   Required. The fully qualified name of the worker pool to retrieve. It can be
        #   any of the following forms: * `namespaces/`project_id_or_number`/workerpools/`
        #   worker_pool_name`` (only when the `endpoint` is regional) * `projects/`
        #   project_id_or_number`/locations/`region`/workerpools/`worker_pool_name`` * `
        #   projects/`project_id_or_number`/regions/`region`/workerpools/`worker_pool_name`
        #   `
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::WorkerPool] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::WorkerPool]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_namespace_workerpool(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apis/run.googleapis.com/v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::WorkerPool::Representation
          command.response_class = Google::Apis::RunV1::WorkerPool
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists worker pools for the given project and region. Results are sorted by
        # creation time, descending.
        # @param [String] parent
        #   Required. The parent from where the resources should be listed. In Cloud Run,
        #   it may be one of the following: * ``project_id_or_number`` * `namespaces/`
        #   project_id_or_number`` * `namespaces/`project_id_or_number`/workerpools` * `
        #   projects/`project_id_or_number`/locations/`region`` * `projects/`
        #   project_id_or_number`/regions/`region``
        # @param [String] continue
        #   Encoded string to continue paging.
        # @param [String] label_selector
        #   =, !=, exists, in, and notIn.
        # @param [Fixnum] limit
        #   The maximum number of records that should be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::ListWorkerPoolsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::ListWorkerPoolsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_namespace_workerpools(parent, continue: nil, label_selector: nil, limit: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'apis/run.googleapis.com/v1/{+parent}/workerpools', options)
          command.response_representation = Google::Apis::RunV1::ListWorkerPoolsResponse::Representation
          command.response_class = Google::Apis::RunV1::ListWorkerPoolsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['continue'] = continue unless continue.nil?
          command.query['labelSelector'] = label_selector unless label_selector.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Replaces a worker pool. Only the spec and metadata labels and annotations are
        # modifiable. After the Update request, Cloud Run will work to make the 'status'
        # match the requested 'spec'. May provide metadata.resourceVersion to enforce
        # update from last read for optimistic concurrency control.
        # @param [String] name
        #   Required. The fully qualified name of the worker pool to replace. It can be
        #   any of the following forms: * `namespaces/`project_id_or_number`/workerpools/`
        #   worker_pool_name`` (only when the `endpoint` is regional) * `projects/`
        #   project_id_or_number`/locations/`region`/workerpools/`worker_pool_name`` * `
        #   projects/`project_id_or_number`/regions/`region`/workerpools/`worker_pool_name`
        #   `
        # @param [Google::Apis::RunV1::WorkerPool] worker_pool_object
        # @param [String] dry_run
        #   Indicates that the server should validate the request and populate default
        #   values without persisting the request. Supported values: `all`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::WorkerPool] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::WorkerPool]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def replace_namespace_workerpool_worker_pool(name, worker_pool_object = nil, dry_run: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'apis/run.googleapis.com/v1/{+name}', options)
          command.request_representation = Google::Apis::RunV1::WorkerPool::Representation
          command.request_object = worker_pool_object
          command.response_representation = Google::Apis::RunV1::WorkerPool::Representation
          command.response_class = Google::Apis::RunV1::WorkerPool
          command.params['name'] = name unless name.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List authorized domains.
        # @param [String] parent
        #   Name of the parent Project resource. Example: `projects/myproject`.
        # @param [Fixnum] page_size
        #   Maximum results to return per page.
        # @param [String] page_token
        #   Continuation token for fetching the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::ListAuthorizedDomainsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::ListAuthorizedDomainsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_authorizeddomains(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/authorizeddomains', options)
          command.response_representation = Google::Apis::RunV1::ListAuthorizedDomainsResponse::Representation
          command.response_class = Google::Apis::RunV1::ListAuthorizedDomainsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
        # @yieldparam result [Google::Apis::RunV1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::RunV1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::RunV1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List authorized domains.
        # @param [String] parent
        #   Name of the parent Project resource. Example: `projects/myproject`.
        # @param [Fixnum] page_size
        #   Maximum results to return per page.
        # @param [String] page_token
        #   Continuation token for fetching the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::ListAuthorizedDomainsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::ListAuthorizedDomainsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_authorizeddomains(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/authorizeddomains', options)
          command.response_representation = Google::Apis::RunV1::ListAuthorizedDomainsResponse::Representation
          command.response_class = Google::Apis::RunV1::ListAuthorizedDomainsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get information about a configuration.
        # @param [String] name
        #   The name of the configuration to retrieve. For Cloud Run, replace `
        #   namespace_id` with the project ID or number.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Configuration] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Configuration]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_configuration(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::Configuration::Representation
          command.response_class = Google::Apis::RunV1::Configuration
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List configurations. Results are sorted by creation time, descending.
        # @param [String] parent
        #   The namespace from which the configurations should be listed. For Cloud Run,
        #   replace `namespace_id` with the project ID or number.
        # @param [String] continue
        #   Optional. Encoded string to continue paging.
        # @param [String] field_selector
        #   Not supported by Cloud Run.
        # @param [Boolean] include_uninitialized
        #   Not supported by Cloud Run.
        # @param [String] label_selector
        #   Allows to filter resources based on a label. Supported operations are =, !=,
        #   exists, in, and notIn.
        # @param [Fixnum] limit
        #   Optional. The maximum number of the records that should be returned.
        # @param [String] resource_version
        #   Not supported by Cloud Run.
        # @param [Boolean] watch
        #   Not supported by Cloud Run.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::ListConfigurationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::ListConfigurationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_configurations(parent, continue: nil, field_selector: nil, include_uninitialized: nil, label_selector: nil, limit: nil, resource_version: nil, watch: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/configurations', options)
          command.response_representation = Google::Apis::RunV1::ListConfigurationsResponse::Representation
          command.response_class = Google::Apis::RunV1::ListConfigurationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['continue'] = continue unless continue.nil?
          command.query['fieldSelector'] = field_selector unless field_selector.nil?
          command.query['includeUninitialized'] = include_uninitialized unless include_uninitialized.nil?
          command.query['labelSelector'] = label_selector unless label_selector.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['resourceVersion'] = resource_version unless resource_version.nil?
          command.query['watch'] = watch unless watch.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a new domain mapping.
        # @param [String] parent
        #   Required. The namespace in which the domain mapping should be created. For
        #   Cloud Run (fully managed), replace `namespace` with the project ID or number.
        #   It takes the form namespaces/`namespace`. For example: namespaces/PROJECT_ID
        # @param [Google::Apis::RunV1::DomainMapping] domain_mapping_object
        # @param [String] dry_run
        #   Indicates that the server should validate the request and populate default
        #   values without persisting the request. Supported values: `all`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::DomainMapping] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::DomainMapping]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_domainmapping(parent, domain_mapping_object = nil, dry_run: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/domainmappings', options)
          command.request_representation = Google::Apis::RunV1::DomainMapping::Representation
          command.request_object = domain_mapping_object
          command.response_representation = Google::Apis::RunV1::DomainMapping::Representation
          command.response_class = Google::Apis::RunV1::DomainMapping
          command.params['parent'] = parent unless parent.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a domain mapping.
        # @param [String] name
        #   Required. The name of the domain mapping to delete. For Cloud Run (fully
        #   managed), replace `namespace` with the project ID or number. It takes the form
        #   namespaces/`namespace`. For example: namespaces/PROJECT_ID
        # @param [String] api_version
        #   Cloud Run currently ignores this parameter.
        # @param [String] dry_run
        #   Indicates that the server should validate the request and populate default
        #   values without persisting the request. Supported values: `all`
        # @param [String] kind
        #   Cloud Run currently ignores this parameter.
        # @param [String] propagation_policy
        #   Specifies the propagation policy of delete. Cloud Run currently ignores this
        #   setting, and deletes in the background. Please see kubernetes.io/docs/concepts/
        #   architecture/garbage-collection/ for more information.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Status] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Status]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_domainmapping(name, api_version: nil, dry_run: nil, kind: nil, propagation_policy: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::Status::Representation
          command.response_class = Google::Apis::RunV1::Status
          command.params['name'] = name unless name.nil?
          command.query['apiVersion'] = api_version unless api_version.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['kind'] = kind unless kind.nil?
          command.query['propagationPolicy'] = propagation_policy unless propagation_policy.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get information about a domain mapping.
        # @param [String] name
        #   Required. The name of the domain mapping to retrieve. For Cloud Run (fully
        #   managed), replace `namespace` with the project ID or number. It takes the form
        #   namespaces/`namespace`. For example: namespaces/PROJECT_ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::DomainMapping] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::DomainMapping]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_domainmapping(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::DomainMapping::Representation
          command.response_class = Google::Apis::RunV1::DomainMapping
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all domain mappings.
        # @param [String] parent
        #   Required. The namespace from which the domain mappings should be listed. For
        #   Cloud Run (fully managed), replace `namespace` with the project ID or number.
        #   It takes the form namespaces/`namespace`. For example: namespaces/PROJECT_ID
        # @param [String] continue
        #   Optional. Encoded string to continue paging.
        # @param [String] field_selector
        #   Allows to filter resources based on a specific value for a field name. Send
        #   this in a query string format. i.e. 'metadata.name%3Dlorem'. Not currently
        #   used by Cloud Run.
        # @param [Boolean] include_uninitialized
        #   Not currently used by Cloud Run.
        # @param [String] label_selector
        #   Allows to filter resources based on a label. Supported operations are =, !=,
        #   exists, in, and notIn.
        # @param [Fixnum] limit
        #   Optional. The maximum number of records that should be returned.
        # @param [String] resource_version
        #   The baseline resource version from which the list or watch operation should
        #   start. Not currently used by Cloud Run.
        # @param [Boolean] watch
        #   Flag that indicates that the client expects to watch this resource as well.
        #   Not currently used by Cloud Run.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::ListDomainMappingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::ListDomainMappingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_domainmappings(parent, continue: nil, field_selector: nil, include_uninitialized: nil, label_selector: nil, limit: nil, resource_version: nil, watch: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/domainmappings', options)
          command.response_representation = Google::Apis::RunV1::ListDomainMappingsResponse::Representation
          command.response_class = Google::Apis::RunV1::ListDomainMappingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['continue'] = continue unless continue.nil?
          command.query['fieldSelector'] = field_selector unless field_selector.nil?
          command.query['includeUninitialized'] = include_uninitialized unless include_uninitialized.nil?
          command.query['labelSelector'] = label_selector unless label_selector.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['resourceVersion'] = resource_version unless resource_version.nil?
          command.query['watch'] = watch unless watch.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the IAM Access Control policy currently in effect for the given job. This
        # result does not include any inherited policies.
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
        # @yieldparam result [Google::Apis::RunV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_job_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::RunV1::Policy::Representation
          command.response_class = Google::Apis::RunV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the IAM Access control policy for the specified job. Overwrites any
        # existing policy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::RunV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_job_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::RunV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::RunV1::Policy::Representation
          command.response_class = Google::Apis::RunV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified job. There are no
        # permissions required for making this API call.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::RunV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_job_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::RunV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::RunV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::RunV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
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
        # @yieldparam result [Google::Apis::RunV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::Empty::Representation
          command.response_class = Google::Apis::RunV1::Empty
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
        # @yieldparam result [Google::Apis::RunV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RunV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   Required. To query for all of the operations for a project.
        # @param [String] filter
        #   Optional. A filter for matching the completed or in-progress operations. The
        #   supported formats of *filter* are: To query for only completed operations:
        #   done:true To query for only ongoing operations: done:false Must be empty to
        #   query for all of the latest operations for the given parent project.
        # @param [Fixnum] page_size
        #   The maximum number of records that should be returned. Requested page size
        #   cannot exceed 100. If not set or set to less than or equal to 0, the default
        #   page size is 100. .
        # @param [String] page_token
        #   Token identifying which result to start with, which is returned by a previous
        #   list call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::RunV1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::RunV1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Waits until the specified long-running operation is done or reaches at most a
        # specified timeout, returning the latest state. If the operation is already
        # done, the latest state is immediately returned. If the timeout specified is
        # greater than the default HTTP/RPC timeout, the HTTP/RPC timeout is used. If
        # the server does not support this method, it returns `google.rpc.Code.
        # UNIMPLEMENTED`. Note that this method is on a best-effort basis. It may return
        # the latest state before the specified timeout (including immediately), meaning
        # even an immediate response is no guarantee that the operation is done.
        # @param [String] name
        #   The name of the operation resource to wait on.
        # @param [Google::Apis::RunV1::GoogleLongrunningWaitOperationRequest] google_longrunning_wait_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def wait_project_location_operation(name, google_longrunning_wait_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:wait', options)
          command.request_representation = Google::Apis::RunV1::GoogleLongrunningWaitOperationRequest::Representation
          command.request_object = google_longrunning_wait_operation_request_object
          command.response_representation = Google::Apis::RunV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RunV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a revision.
        # @param [String] name
        #   The name of the revision to delete. For Cloud Run (fully managed), replace `
        #   namespace` with the project ID or number. It takes the form namespaces/`
        #   namespace`. For example: namespaces/PROJECT_ID
        # @param [String] api_version
        #   Cloud Run currently ignores this parameter.
        # @param [String] dry_run
        #   Indicates that the server should validate the request and populate default
        #   values without persisting the request. Supported values: `all`
        # @param [String] kind
        #   Cloud Run currently ignores this parameter.
        # @param [String] propagation_policy
        #   Specifies the propagation policy of delete. Cloud Run currently ignores this
        #   setting, and deletes in the background.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Status] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Status]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_revision(name, api_version: nil, dry_run: nil, kind: nil, propagation_policy: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::Status::Representation
          command.response_class = Google::Apis::RunV1::Status
          command.params['name'] = name unless name.nil?
          command.query['apiVersion'] = api_version unless api_version.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['kind'] = kind unless kind.nil?
          command.query['propagationPolicy'] = propagation_policy unless propagation_policy.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get information about a revision.
        # @param [String] name
        #   The name of the revision to retrieve. For Cloud Run (fully managed), replace `
        #   namespace` with the project ID or number. It takes the form namespaces/`
        #   namespace`. For example: namespaces/PROJECT_ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Revision] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Revision]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_revision(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::Revision::Representation
          command.response_class = Google::Apis::RunV1::Revision
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List revisions. Results are sorted by creation time, descending.
        # @param [String] parent
        #   The namespace from which the revisions should be listed. For Cloud Run (fully
        #   managed), replace `namespace` with the project ID or number. It takes the form
        #   namespaces/`namespace`. For example: namespaces/PROJECT_ID
        # @param [String] continue
        #   Optional. Encoded string to continue paging.
        # @param [String] field_selector
        #   Allows to filter resources based on a specific value for a field name. Send
        #   this in a query string format. i.e. 'metadata.name%3Dlorem'. Not currently
        #   used by Cloud Run.
        # @param [Boolean] include_uninitialized
        #   Not currently used by Cloud Run.
        # @param [String] label_selector
        #   Allows to filter resources based on a label. Supported operations are =, !=,
        #   exists, in, and notIn.
        # @param [Fixnum] limit
        #   Optional. The maximum number of records that should be returned.
        # @param [String] resource_version
        #   The baseline resource version from which the list or watch operation should
        #   start. Not currently used by Cloud Run.
        # @param [Boolean] watch
        #   Flag that indicates that the client expects to watch this resource as well.
        #   Not currently used by Cloud Run.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::ListRevisionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::ListRevisionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_revisions(parent, continue: nil, field_selector: nil, include_uninitialized: nil, label_selector: nil, limit: nil, resource_version: nil, watch: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/revisions', options)
          command.response_representation = Google::Apis::RunV1::ListRevisionsResponse::Representation
          command.response_class = Google::Apis::RunV1::ListRevisionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['continue'] = continue unless continue.nil?
          command.query['fieldSelector'] = field_selector unless field_selector.nil?
          command.query['includeUninitialized'] = include_uninitialized unless include_uninitialized.nil?
          command.query['labelSelector'] = label_selector unless label_selector.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['resourceVersion'] = resource_version unless resource_version.nil?
          command.query['watch'] = watch unless watch.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get information about a route.
        # @param [String] name
        #   The name of the route to retrieve. For Cloud Run (fully managed), replace `
        #   namespace` with the project ID or number. It takes the form namespaces/`
        #   namespace`. For example: namespaces/PROJECT_ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Route] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Route]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_route(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::Route::Representation
          command.response_class = Google::Apis::RunV1::Route
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List routes. Results are sorted by creation time, descending.
        # @param [String] parent
        #   The namespace from which the routes should be listed. For Cloud Run (fully
        #   managed), replace `namespace` with the project ID or number. It takes the form
        #   namespaces/`namespace`. For example: namespaces/PROJECT_ID
        # @param [String] continue
        #   Optional. Encoded string to continue paging.
        # @param [String] field_selector
        #   Allows to filter resources based on a specific value for a field name. Send
        #   this in a query string format. i.e. 'metadata.name%3Dlorem'. Not currently
        #   used by Cloud Run.
        # @param [Boolean] include_uninitialized
        #   Not currently used by Cloud Run.
        # @param [String] label_selector
        #   Allows to filter resources based on a label. Supported operations are =, !=,
        #   exists, in, and notIn.
        # @param [Fixnum] limit
        #   Optional. The maximum number of records that should be returned.
        # @param [String] resource_version
        #   The baseline resource version from which the list or watch operation should
        #   start. Not currently used by Cloud Run.
        # @param [Boolean] watch
        #   Flag that indicates that the client expects to watch this resource as well.
        #   Not currently used by Cloud Run.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::ListRoutesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::ListRoutesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_routes(parent, continue: nil, field_selector: nil, include_uninitialized: nil, label_selector: nil, limit: nil, resource_version: nil, watch: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/routes', options)
          command.response_representation = Google::Apis::RunV1::ListRoutesResponse::Representation
          command.response_class = Google::Apis::RunV1::ListRoutesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['continue'] = continue unless continue.nil?
          command.query['fieldSelector'] = field_selector unless field_selector.nil?
          command.query['includeUninitialized'] = include_uninitialized unless include_uninitialized.nil?
          command.query['labelSelector'] = label_selector unless label_selector.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['resourceVersion'] = resource_version unless resource_version.nil?
          command.query['watch'] = watch unless watch.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Service. Service creation will trigger a new deployment. Use
        # GetService, and check service.status to determine if the Service is ready.
        # @param [String] parent
        #   Required. The resource's parent. In Cloud Run, it may be one of the following:
        #   * ``project_id_or_number`` * `namespaces/`project_id_or_number`` * `namespaces/
        #   `project_id_or_number`/services` * `projects/`project_id_or_number`/locations/`
        #   region`` * `projects/`project_id_or_number`/regions/`region``
        # @param [Google::Apis::RunV1::Service] service_object
        # @param [String] dry_run
        #   Indicates that the server should validate the request and populate default
        #   values without persisting the request. Supported values: `all`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Service] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Service]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_service(parent, service_object = nil, dry_run: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/services', options)
          command.request_representation = Google::Apis::RunV1::Service::Representation
          command.request_object = service_object
          command.response_representation = Google::Apis::RunV1::Service::Representation
          command.response_class = Google::Apis::RunV1::Service
          command.params['parent'] = parent unless parent.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the provided service. This will cause the Service to stop serving
        # traffic and will delete all associated Revisions.
        # @param [String] name
        #   Required. The fully qualified name of the service to delete. It can be any of
        #   the following forms: * `namespaces/`project_id_or_number`/services/`
        #   service_name`` (only when the `endpoint` is regional) * `projects/`
        #   project_id_or_number`/locations/`region`/services/`service_name`` * `projects/`
        #   project_id_or_number`/regions/`region`/services/`service_name``
        # @param [String] api_version
        #   Not supported, and ignored by Cloud Run.
        # @param [String] dry_run
        #   Indicates that the server should validate the request and populate default
        #   values without persisting the request. Supported values: `all`
        # @param [String] kind
        #   Not supported, and ignored by Cloud Run.
        # @param [String] propagation_policy
        #   Not supported, and ignored by Cloud Run.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Status] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Status]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_service(name, api_version: nil, dry_run: nil, kind: nil, propagation_policy: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::Status::Representation
          command.response_class = Google::Apis::RunV1::Status
          command.params['name'] = name unless name.nil?
          command.query['apiVersion'] = api_version unless api_version.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['kind'] = kind unless kind.nil?
          command.query['propagationPolicy'] = propagation_policy unless propagation_policy.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a service.
        # @param [String] name
        #   Required. The fully qualified name of the service to retrieve. It can be any
        #   of the following forms: * `namespaces/`project_id_or_number`/services/`
        #   service_name`` (only when the `endpoint` is regional) * `projects/`
        #   project_id_or_number`/locations/`region`/services/`service_name`` * `projects/`
        #   project_id_or_number`/regions/`region`/services/`service_name``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Service] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Service]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_service(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RunV1::Service::Representation
          command.response_class = Google::Apis::RunV1::Service
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the IAM Access Control policy currently in effect for the given Cloud Run
        # service. This result does not include any inherited policies.
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
        # @yieldparam result [Google::Apis::RunV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_service_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::RunV1::Policy::Representation
          command.response_class = Google::Apis::RunV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists services for the given project and region. Results are sorted by
        # creation time, descending.
        # @param [String] parent
        #   Required. The parent from where the resources should be listed. In Cloud Run,
        #   it may be one of the following: * ``project_id_or_number`` * `namespaces/`
        #   project_id_or_number`` * `namespaces/`project_id_or_number`/services` * `
        #   projects/`project_id_or_number`/locations/`region`` * `projects/`
        #   project_id_or_number`/regions/`region``
        # @param [String] continue
        #   Encoded string to continue paging.
        # @param [String] field_selector
        #   Not supported, and ignored by Cloud Run.
        # @param [Boolean] include_uninitialized
        #   Not supported, and ignored by Cloud Run.
        # @param [String] label_selector
        #   Allows to filter resources based on a label. Supported operations are =, !=,
        #   exists, in, and notIn.
        # @param [Fixnum] limit
        #   The maximum number of records that should be returned.
        # @param [String] resource_version
        #   Not supported, and ignored by Cloud Run.
        # @param [Boolean] watch
        #   Not supported, and ignored by Cloud Run.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::ListServicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::ListServicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_services(parent, continue: nil, field_selector: nil, include_uninitialized: nil, label_selector: nil, limit: nil, resource_version: nil, watch: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/services', options)
          command.response_representation = Google::Apis::RunV1::ListServicesResponse::Representation
          command.response_class = Google::Apis::RunV1::ListServicesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['continue'] = continue unless continue.nil?
          command.query['fieldSelector'] = field_selector unless field_selector.nil?
          command.query['includeUninitialized'] = include_uninitialized unless include_uninitialized.nil?
          command.query['labelSelector'] = label_selector unless label_selector.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['resourceVersion'] = resource_version unless resource_version.nil?
          command.query['watch'] = watch unless watch.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Replaces a service. Only the spec and metadata labels and annotations are
        # modifiable. After the Update request, Cloud Run will work to make the 'status'
        # match the requested 'spec'. May provide metadata.resourceVersion to enforce
        # update from last read for optimistic concurrency control.
        # @param [String] name
        #   Required. The fully qualified name of the service to replace. It can be any of
        #   the following forms: * `namespaces/`project_id_or_number`/services/`
        #   service_name`` (only when the `endpoint` is regional) * `projects/`
        #   project_id_or_number`/locations/`region`/services/`service_name`` * `projects/`
        #   project_id_or_number`/regions/`region`/services/`service_name``
        # @param [Google::Apis::RunV1::Service] service_object
        # @param [String] dry_run
        #   Indicates that the server should validate the request and populate default
        #   values without persisting the request. Supported values: `all`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Service] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Service]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def replace_project_location_service_service(name, service_object = nil, dry_run: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::RunV1::Service::Representation
          command.request_object = service_object
          command.response_representation = Google::Apis::RunV1::Service::Representation
          command.response_class = Google::Apis::RunV1::Service
          command.params['name'] = name unless name.nil?
          command.query['dryRun'] = dry_run unless dry_run.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the IAM Access control policy for the specified Service. Overwrites any
        # existing policy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::RunV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_service_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::RunV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::RunV1::Policy::Representation
          command.response_class = Google::Apis::RunV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified Project. There are no
        # permissions required for making this API call.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::RunV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_service_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::RunV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::RunV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::RunV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the IAM Access Control policy currently in effect for the given worker
        # pool. This result does not include any inherited policies.
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
        # @yieldparam result [Google::Apis::RunV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_workerpool_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::RunV1::Policy::Representation
          command.response_class = Google::Apis::RunV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the IAM Access control policy for the specified worker pool. Overwrites
        # any existing policy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::RunV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_workerpool_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::RunV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::RunV1::Policy::Representation
          command.response_class = Google::Apis::RunV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified worker pool. There are
        # no permissions required for making this API call.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::RunV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RunV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RunV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_workerpool_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::RunV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::RunV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::RunV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
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
