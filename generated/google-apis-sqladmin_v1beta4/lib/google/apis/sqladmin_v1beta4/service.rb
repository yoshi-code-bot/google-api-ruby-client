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
    module SqladminV1beta4
      # Cloud SQL Admin API
      #
      # API for Cloud SQL database instance management
      #
      # @example
      #    require 'google/apis/sqladmin_v1beta4'
      #
      #    Sqladmin = Google::Apis::SqladminV1beta4 # Alias the module
      #    service = Sqladmin::SQLAdminService.new
      #
      # @see https://developers.google.com/cloud-sql/
      class SQLAdminService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://sqladmin.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-sqladmin_v1beta4',
                client_version: Google::Apis::SqladminV1beta4::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Deletes the backup taken by a backup run.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Fixnum] id
        #   The ID of the backup run to delete. To find a backup run ID, use the [list](
        #   https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1beta4/backupRuns/list)
        #   method.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_backup_run(project, instance, id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'sql/v1beta4/projects/{project}/instances/{instance}/backupRuns/{id}', options)
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a resource containing information about a backup run.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Fixnum] id
        #   The ID of this backup run.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::BackupRun] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::BackupRun]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_backup_run(project, instance, id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'sql/v1beta4/projects/{project}/instances/{instance}/backupRuns/{id}', options)
          command.response_representation = Google::Apis::SqladminV1beta4::BackupRun::Representation
          command.response_class = Google::Apis::SqladminV1beta4::BackupRun
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new backup run on demand.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::BackupRun] backup_run_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_backup_run(project, instance, backup_run_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/backupRuns', options)
          command.request_representation = Google::Apis::SqladminV1beta4::BackupRun::Representation
          command.request_object = backup_run_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all backup runs associated with the project or a given instance and
        # configuration in the reverse chronological order of the backup initiation time.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID, or "-" for all instances. This does not include the
        #   project ID.
        # @param [Fixnum] max_results
        #   Maximum number of backup runs per response.
        # @param [String] page_token
        #   A previously-returned page token representing part of the larger set of
        #   results to view.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::ListBackupRunsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::ListBackupRunsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_backup_runs(project, instance, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'sql/v1beta4/projects/{project}/instances/{instance}/backupRuns', options)
          command.response_representation = Google::Apis::SqladminV1beta4::ListBackupRunsResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta4::ListBackupRunsResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a backup for a Cloud SQL instance. This API can be used only to create
        # on-demand backups.
        # @param [String] parent
        #   Required. The parent resource where this backup is created. Format: projects/`
        #   project`
        # @param [Google::Apis::SqladminV1beta4::Backup] backup_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_backup_backup(parent, backup_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/{+parent}/backups', options)
          command.request_representation = Google::Apis::SqladminV1beta4::Backup::Representation
          command.request_object = backup_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the backup.
        # @param [String] name
        #   Required. The name of the backup to delete. Format: projects/`project`/backups/
        #   `backup`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_backup_backup(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'sql/v1beta4/{+name}', options)
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a resource containing information about a backup.
        # @param [String] name
        #   Required. The name of the backup to retrieve. Format: projects/`project`/
        #   backups/`backup`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Backup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Backup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_backup_backup(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'sql/v1beta4/{+name}', options)
          command.response_representation = Google::Apis::SqladminV1beta4::Backup::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Backup
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all backups associated with the project.
        # @param [String] parent
        #   Required. The parent that owns this collection of backups. Format: projects/`
        #   project`
        # @param [String] filter
        #   Multiple filter queries are separated by spaces. For example, 'instance:abc
        #   AND type:FINAL, 'location:us', 'backupInterval.startTime>=1950-01-01T01:01:25.
        #   771Z'. You can filter by type, instance, backupInterval.startTime (creation
        #   time), or location.
        # @param [Fixnum] page_size
        #   The maximum number of backups to return per response. The service might return
        #   fewer backups than this value. If a value for this parameter isn't specified,
        #   then, at most, 500 backups are returned. The maximum value is 2,000. Any
        #   values that you set, which are greater than 2,000, are changed to 2,000.
        # @param [String] page_token
        #   A page token, received from a previous `ListBackups` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListBackups` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::ListBackupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::ListBackupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_backup_backups(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'sql/v1beta4/{+parent}/backups', options)
          command.response_representation = Google::Apis::SqladminV1beta4::ListBackupsResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta4::ListBackupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the retention period and the description of the backup. You can use
        # this API to update final backups only.
        # @param [String] name
        #   Output only. The resource name of the backup. Format: projects/`project`/
        #   backups/`backup`.
        # @param [Google::Apis::SqladminV1beta4::Backup] backup_object
        # @param [String] update_mask
        #   The list of fields that you can update. You can update only the description
        #   and retention period of the final backup.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_backup_backup(name, backup_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'sql/v1beta4/{+name}', options)
          command.request_representation = Google::Apis::SqladminV1beta4::Backup::Representation
          command.request_object = backup_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a short-lived X509 certificate containing the provided public key
        # and signed by a private key specific to the target instance. Users may use the
        # certificate to authenticate as themselves when connecting to the database.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::GenerateEphemeralCertRequest] generate_ephemeral_cert_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::GenerateEphemeralCertResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::GenerateEphemeralCertResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_connect_ephemeral_cert(project, instance, generate_ephemeral_cert_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}:generateEphemeralCert', options)
          command.request_representation = Google::Apis::SqladminV1beta4::GenerateEphemeralCertRequest::Representation
          command.request_object = generate_ephemeral_cert_request_object
          command.response_representation = Google::Apis::SqladminV1beta4::GenerateEphemeralCertResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta4::GenerateEphemeralCertResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves connect settings about a Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] read_time
        #   Optional. Optional snapshot read timestamp to trade freshness for performance.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::ConnectSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::ConnectSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_connect(project, instance, read_time: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'sql/v1beta4/projects/{project}/instances/{instance}/connectSettings', options)
          command.response_representation = Google::Apis::SqladminV1beta4::ConnectSettings::Representation
          command.response_class = Google::Apis::SqladminV1beta4::ConnectSettings
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['readTime'] = read_time unless read_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a database from a Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Database instance ID. This does not include the project ID.
        # @param [String] database
        #   Name of the database to be deleted in the instance.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_database(project, instance, database, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'sql/v1beta4/projects/{project}/instances/{instance}/databases/{database}', options)
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.params['database'] = database unless database.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a resource containing information about a database inside a Cloud
        # SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Database instance ID. This does not include the project ID.
        # @param [String] database
        #   Name of the database in the instance.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Database] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Database]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_database(project, instance, database, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'sql/v1beta4/projects/{project}/instances/{instance}/databases/{database}', options)
          command.response_representation = Google::Apis::SqladminV1beta4::Database::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Database
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.params['database'] = database unless database.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a resource containing information about a database inside a Cloud SQL
        # instance. **Note:** You can't modify the default character set and collation.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Database instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::Database] database_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_database(project, instance, database_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/databases', options)
          command.request_representation = Google::Apis::SqladminV1beta4::Database::Representation
          command.request_object = database_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists databases in the specified Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::ListDatabasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::ListDatabasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_databases(project, instance, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'sql/v1beta4/projects/{project}/instances/{instance}/databases', options)
          command.response_representation = Google::Apis::SqladminV1beta4::ListDatabasesResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta4::ListDatabasesResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Partially updates a resource containing information about a database inside a
        # Cloud SQL instance. This method supports patch semantics.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Database instance ID. This does not include the project ID.
        # @param [String] database
        #   Name of the database to be updated in the instance.
        # @param [Google::Apis::SqladminV1beta4::Database] database_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_database(project, instance, database, database_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'sql/v1beta4/projects/{project}/instances/{instance}/databases/{database}', options)
          command.request_representation = Google::Apis::SqladminV1beta4::Database::Representation
          command.request_object = database_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.params['database'] = database unless database.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a resource containing information about a database inside a Cloud SQL
        # instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Database instance ID. This does not include the project ID.
        # @param [String] database
        #   Name of the database to be updated in the instance.
        # @param [Google::Apis::SqladminV1beta4::Database] database_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_database(project, instance, database, database_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'sql/v1beta4/projects/{project}/instances/{instance}/databases/{database}', options)
          command.request_representation = Google::Apis::SqladminV1beta4::Database::Representation
          command.request_object = database_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.params['database'] = database unless database.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all available database flags for Cloud SQL instances.
        # @param [String] database_version
        #   Database type and version you want to retrieve flags for. By default, this
        #   method returns flags for all database types and versions.
        # @param [String] flag_scope
        #   Optional. Specify the scope of flags to be returned by SqlFlagsListService.
        #   Return list of database flags if unspecified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::ListFlagsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::ListFlagsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_flags(database_version: nil, flag_scope: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'sql/v1beta4/flags', options)
          command.response_representation = Google::Apis::SqladminV1beta4::ListFlagsResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta4::ListFlagsResponse
          command.query['databaseVersion'] = database_version unless database_version.nil?
          command.query['flagScope'] = flag_scope unless flag_scope.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all versions of server certificates and certificate authorities (CAs)
        # for the specified instance. There can be up to three sets of certs listed: the
        # certificate that is currently in use, a future that has been added but not yet
        # used to sign a certificate, and a certificate that has been rotated out. For
        # instances not using Certificate Authority Service (CAS) server CA, use
        # ListServerCas instead.
        # @param [String] project
        #   Required. Project ID of the project that contains the instance.
        # @param [String] instance
        #   Required. Cloud SQL instance ID. This does not include the project ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::InstancesListServerCertificatesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::InstancesListServerCertificatesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_instance_server_certificates(project, instance, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'sql/v1beta4/projects/{project}/instances/{instance}/listServerCertificates', options)
          command.response_representation = Google::Apis::SqladminV1beta4::InstancesListServerCertificatesResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta4::InstancesListServerCertificatesResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Rotates the server certificate version to one previously added with the
        # addServerCertificate method. For instances not using Certificate Authority
        # Service (CAS) server CA, use RotateServerCa instead.
        # @param [String] project
        #   Required. Project ID of the project that contains the instance.
        # @param [String] instance
        #   Required. Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::InstancesRotateServerCertificateRequest] instances_rotate_server_certificate_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rotate_instance_server_certificate(project, instance, instances_rotate_server_certificate_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/rotateServerCertificate', options)
          command.request_representation = Google::Apis::SqladminV1beta4::InstancesRotateServerCertificateRequest::Representation
          command.request_object = instances_rotate_server_certificate_request_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Acquire a lease for the setup of SQL Server Reporting Services (SSRS).
        # @param [String] project
        #   Required. ID of the project that contains the instance (Example: project-id).
        # @param [String] instance
        #   Required. Cloud SQL instance ID. This doesn't include the project ID. It's
        #   composed of lowercase letters, numbers, and hyphens, and it must start with a
        #   letter. The total length must be 98 characters or less (Example: instance-id).
        # @param [Google::Apis::SqladminV1beta4::InstancesAcquireSsrsLeaseRequest] instances_acquire_ssrs_lease_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::SqlInstancesAcquireSsrsLeaseResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::SqlInstancesAcquireSsrsLeaseResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def acquire_instance_ssrs_lease(project, instance, instances_acquire_ssrs_lease_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/acquireSsrsLease', options)
          command.request_representation = Google::Apis::SqladminV1beta4::InstancesAcquireSsrsLeaseRequest::Representation
          command.request_object = instances_acquire_ssrs_lease_request_object
          command.response_representation = Google::Apis::SqladminV1beta4::SqlInstancesAcquireSsrsLeaseResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta4::SqlInstancesAcquireSsrsLeaseResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Add a new trusted Certificate Authority (CA) version for the specified
        # instance. Required to prepare for a certificate rotation. If a CA version was
        # previously added but never used in a certificate rotation, this operation
        # replaces that version. There cannot be more than one CA version waiting to be
        # rotated in. For instances that have enabled Certificate Authority Service (CAS)
        # based server CA, use AddServerCertificate to add a new server certificate.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_instance_server_ca(project, instance, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/addServerCa', options)
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Add a new trusted server certificate version for the specified instance using
        # Certificate Authority Service (CAS) server CA. Required to prepare for a
        # certificate rotation. If a server certificate version was previously added but
        # never used in a certificate rotation, this operation replaces that version.
        # There cannot be more than one certificate version waiting to be rotated in.
        # For instances not using CAS server CA, use AddServerCa instead.
        # @param [String] project
        #   Required. Project ID of the project that contains the instance.
        # @param [String] instance
        #   Required. Cloud SQL instance ID. This does not include the project ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_instance_server_certificate(project, instance, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/addServerCertificate', options)
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Cloud SQL instance as a clone of the source instance. Using this
        # operation might cause your instance to restart.
        # @param [String] project
        #   Project ID of the source as well as the clone Cloud SQL instance.
        # @param [String] instance
        #   The ID of the Cloud SQL instance to be cloned (source). This does not include
        #   the project ID.
        # @param [Google::Apis::SqladminV1beta4::CloneInstancesRequest] clone_instances_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def clone_instance(project, instance, clone_instances_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/clone', options)
          command.request_representation = Google::Apis::SqladminV1beta4::CloneInstancesRequest::Representation
          command.request_object = clone_instances_request_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance to be deleted.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Boolean] enable_final_backup
        #   Flag to opt-in for final backup. By default, it is turned off.
        # @param [String] final_backup_description
        #   Optional. The description of the final backup.
        # @param [String] final_backup_expiry_time
        #   Optional. Final Backup expiration time. Timestamp in UTC of when this resource
        #   is considered expired.
        # @param [Fixnum] final_backup_ttl_days
        #   Optional. Retention period of the final backup.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_instance(project, instance, enable_final_backup: nil, final_backup_description: nil, final_backup_expiry_time: nil, final_backup_ttl_days: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'sql/v1beta4/projects/{project}/instances/{instance}', options)
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['enableFinalBackup'] = enable_final_backup unless enable_final_backup.nil?
          command.query['finalBackupDescription'] = final_backup_description unless final_backup_description.nil?
          command.query['finalBackupExpiryTime'] = final_backup_expiry_time unless final_backup_expiry_time.nil?
          command.query['finalBackupTtlDays'] = final_backup_ttl_days unless final_backup_ttl_days.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Demotes an existing standalone instance to be a Cloud SQL read replica for an
        # external database server.
        # @param [String] project
        #   Required. The project ID of the project that contains the instance.
        # @param [String] instance
        #   Required. The name of the Cloud SQL instance.
        # @param [Google::Apis::SqladminV1beta4::InstancesDemoteRequest] instances_demote_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def demote_instance(project, instance, instances_demote_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/demote', options)
          command.request_representation = Google::Apis::SqladminV1beta4::InstancesDemoteRequest::Representation
          command.request_object = instances_demote_request_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Demotes the stand-alone instance to be a Cloud SQL read replica for an
        # external database server.
        # @param [String] project
        #   ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance name.
        # @param [Google::Apis::SqladminV1beta4::InstancesDemoteMasterRequest] instances_demote_master_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def demote_instance_master(project, instance, instances_demote_master_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/demoteMaster', options)
          command.request_representation = Google::Apis::SqladminV1beta4::InstancesDemoteMasterRequest::Representation
          command.request_object = instances_demote_master_request_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports data from a Cloud SQL instance to a Cloud Storage bucket as a SQL dump
        # or CSV file.
        # @param [String] project
        #   Project ID of the project that contains the instance to be exported.
        # @param [String] instance
        #   The Cloud SQL instance ID. This doesn't include the project ID.
        # @param [Google::Apis::SqladminV1beta4::ExportInstancesRequest] export_instances_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_instance(project, instance, export_instances_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/export', options)
          command.request_representation = Google::Apis::SqladminV1beta4::ExportInstancesRequest::Representation
          command.request_object = export_instances_request_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Initiates a manual failover of a high availability (HA) primary instance to a
        # standby instance, which becomes the primary instance. Users are then rerouted
        # to the new primary. For more information, see the [Overview of high
        # availability](https://cloud.google.com/sql/docs/mysql/high-availability) page
        # in the Cloud SQL documentation. If using Legacy HA (MySQL only), this causes
        # the instance to failover to its failover replica instance.
        # @param [String] project
        #   ID of the project that contains the read replica.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::InstancesFailoverRequest] instances_failover_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def failover_instance(project, instance, instances_failover_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/failover', options)
          command.request_representation = Google::Apis::SqladminV1beta4::InstancesFailoverRequest::Representation
          command.request_object = instances_failover_request_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a resource containing information about a Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Database instance ID. This does not include the project ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::DatabaseInstance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::DatabaseInstance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_instance(project, instance, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'sql/v1beta4/projects/{project}/instances/{instance}', options)
          command.response_representation = Google::Apis::SqladminV1beta4::DatabaseInstance::Representation
          command.response_class = Google::Apis::SqladminV1beta4::DatabaseInstance
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports data into a Cloud SQL instance from a SQL dump or CSV file in Cloud
        # Storage.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::ImportInstancesRequest] import_instances_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_instance(project, instance, import_instances_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/import', options)
          command.request_representation = Google::Apis::SqladminV1beta4::ImportInstancesRequest::Representation
          command.request_object = import_instances_request_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project to which the newly created Cloud SQL instances
        #   should belong.
        # @param [Google::Apis::SqladminV1beta4::DatabaseInstance] database_instance_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_instance(project, database_instance_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances', options)
          command.request_representation = Google::Apis::SqladminV1beta4::DatabaseInstance::Representation
          command.request_object = database_instance_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists instances under a given project.
        # @param [String] project
        #   Project ID of the project for which to list Cloud SQL instances.
        # @param [String] filter
        #   A filter expression that filters resources listed in the response. The
        #   expression is in the form of field:value. For example, 'instanceType:
        #   CLOUD_SQL_INSTANCE'. Fields can be nested as needed as per their JSON
        #   representation, such as 'settings.userLabels.auto_start:true'. Multiple filter
        #   queries are space-separated. For example. 'state:RUNNABLE instanceType:
        #   CLOUD_SQL_INSTANCE'. By default, each expression is an AND expression. However,
        #   you can include AND and OR expressions explicitly.
        # @param [Fixnum] max_results
        #   The maximum number of instances to return. The service may return fewer than
        #   this value. If unspecified, at most 500 instances are returned. The maximum
        #   value is 1000; values above 1000 are coerced to 1000.
        # @param [String] page_token
        #   A previously-returned page token representing part of the larger set of
        #   results to view.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::ListInstancesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::ListInstancesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_instances(project, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'sql/v1beta4/projects/{project}/instances', options)
          command.response_representation = Google::Apis::SqladminV1beta4::ListInstancesResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta4::ListInstancesResponse
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all of the trusted Certificate Authorities (CAs) for the specified
        # instance. There can be up to three CAs listed: the CA that was used to sign
        # the certificate that is currently in use, a CA that has been added but not yet
        # used to sign a certificate, and a CA used to sign a certificate that has
        # previously rotated out.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::InstancesListServerCasResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::InstancesListServerCasResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_instance_server_cas(project, instance, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'sql/v1beta4/projects/{project}/instances/{instance}/listServerCas', options)
          command.response_representation = Google::Apis::SqladminV1beta4::InstancesListServerCasResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta4::InstancesListServerCasResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Partially updates settings of a Cloud SQL instance by merging the request with
        # the current configuration. This method supports patch semantics.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::DatabaseInstance] database_instance_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_instance(project, instance, database_instance_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'sql/v1beta4/projects/{project}/instances/{instance}', options)
          command.request_representation = Google::Apis::SqladminV1beta4::DatabaseInstance::Representation
          command.request_object = database_instance_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Point in time restore for an instance managed by Google Cloud Backup and
        # Disaster Recovery.
        # @param [String] parent
        #   Required. The parent resource where you created this instance. Format:
        #   projects/`project`
        # @param [Google::Apis::SqladminV1beta4::PointInTimeRestoreContext] point_in_time_restore_context_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def point_instance_in_time_restore(parent, point_in_time_restore_context_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/{+parent}:pointInTimeRestore', options)
          command.request_representation = Google::Apis::SqladminV1beta4::PointInTimeRestoreContext::Representation
          command.request_object = point_in_time_restore_context_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Promotes the read replica instance to be an independent Cloud SQL primary
        # instance. Using this operation might cause your instance to restart.
        # @param [String] project
        #   ID of the project that contains the read replica.
        # @param [String] instance
        #   Cloud SQL read replica instance name.
        # @param [Boolean] failover
        #   Set to true to invoke a replica failover to the DR replica. As part of replica
        #   failover, the promote operation attempts to add the original primary instance
        #   as a replica of the promoted DR replica when the original primary instance
        #   comes back online. If set to false or not specified, then the original primary
        #   instance becomes an independent Cloud SQL primary instance.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def promote_instance_replica(project, instance, failover: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/promoteReplica', options)
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['failover'] = failover unless failover.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reencrypt CMEK instance with latest key version.
        # @param [String] project
        #   ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::InstancesReencryptRequest] instances_reencrypt_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reencrypt_instance(project, instance, instances_reencrypt_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/reencrypt', options)
          command.request_representation = Google::Apis::SqladminV1beta4::InstancesReencryptRequest::Representation
          command.request_object = instances_reencrypt_request_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Release a lease for the setup of SQL Server Reporting Services (SSRS).
        # @param [String] project
        #   Required. The ID of the project that contains the instance (Example: project-
        #   id).
        # @param [String] instance
        #   Required. The Cloud SQL instance ID. This doesn't include the project ID. It's
        #   composed of lowercase letters, numbers, and hyphens, and it must start with a
        #   letter. The total length must be 98 characters or less (Example: instance-id).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::SqlInstancesReleaseSsrsLeaseResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::SqlInstancesReleaseSsrsLeaseResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def release_instance_ssrs_lease(project, instance, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/releaseSsrsLease', options)
          command.response_representation = Google::Apis::SqladminV1beta4::SqlInstancesReleaseSsrsLeaseResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta4::SqlInstancesReleaseSsrsLeaseResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes all client certificates and generates a new server SSL certificate for
        # the instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reset_instance_ssl_config(project, instance, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/resetSslConfig', options)
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restarts a Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance to be restarted.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restart_instance(project, instance, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/restart', options)
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restores a backup of a Cloud SQL instance. Using this operation might cause
        # your instance to restart.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::RestoreInstancesBackupRequest] restore_instances_backup_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_instance_backup(project, instance, restore_instances_backup_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/restoreBackup', options)
          command.request_representation = Google::Apis::SqladminV1beta4::RestoreInstancesBackupRequest::Representation
          command.request_object = restore_instances_backup_request_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Rotates the server certificate to one signed by the Certificate Authority (CA)
        # version previously added with the addServerCA method. For instances that have
        # enabled Certificate Authority Service (CAS) based server CA, use
        # RotateServerCertificate to rotate the server certificate.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::InstancesRotateServerCaRequest] instances_rotate_server_ca_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rotate_instance_server_ca(project, instance, instances_rotate_server_ca_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/rotateServerCa', options)
          command.request_representation = Google::Apis::SqladminV1beta4::InstancesRotateServerCaRequest::Representation
          command.request_object = instances_rotate_server_ca_request_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts the replication in the read replica instance.
        # @param [String] project
        #   ID of the project that contains the read replica.
        # @param [String] instance
        #   Cloud SQL read replica instance name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_instance_replica(project, instance, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/startReplica', options)
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stops the replication in the read replica instance.
        # @param [String] project
        #   ID of the project that contains the read replica.
        # @param [String] instance
        #   Cloud SQL read replica instance name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_instance_replica(project, instance, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/stopReplica', options)
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Switches over from the primary instance to the DR replica instance.
        # @param [String] project
        #   ID of the project that contains the replica.
        # @param [String] instance
        #   Cloud SQL read replica instance name.
        # @param [String] db_timeout
        #   Optional. (MySQL and PostgreSQL only) Cloud SQL instance operations timeout,
        #   which is a sum of all database operations. Default value is 10 minutes and can
        #   be modified to a maximum value of 24 hours.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def switchover_instance(project, instance, db_timeout: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/switchover', options)
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['dbTimeout'] = db_timeout unless db_timeout.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Truncate MySQL general and slow query log tables MySQL only.
        # @param [String] project
        #   Project ID of the Cloud SQL project.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::InstancesTruncateLogRequest] instances_truncate_log_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def truncate_instance_log(project, instance, instances_truncate_log_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/truncateLog', options)
          command.request_representation = Google::Apis::SqladminV1beta4::InstancesTruncateLogRequest::Representation
          command.request_object = instances_truncate_log_request_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates settings of a Cloud SQL instance. Using this operation might cause
        # your instance to restart.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::DatabaseInstance] database_instance_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_instance(project, instance, database_instance_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'sql/v1beta4/projects/{project}/instances/{instance}', options)
          command.request_representation = Google::Apis::SqladminV1beta4::DatabaseInstance::Representation
          command.request_object = database_instance_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels an instance operation that has been performed on an instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] operation
        #   Instance operation ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(project, operation, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/operations/{operation}/cancel', options)
          command.response_representation = Google::Apis::SqladminV1beta4::Empty::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Empty
          command.params['project'] = project unless project.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an instance operation that has been performed on an instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] operation
        #   Instance operation ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(project, operation, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'sql/v1beta4/projects/{project}/operations/{operation}', options)
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all instance operations that have been performed on the given Cloud SQL
        # instance in the reverse chronological order of the start time.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Fixnum] max_results
        #   Maximum number of operations per response.
        # @param [String] page_token
        #   A previously-returned page token representing part of the larger set of
        #   results to view.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operations(project, instance: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'sql/v1beta4/projects/{project}/operations', options)
          command.response_representation = Google::Apis::SqladminV1beta4::ListOperationsResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta4::ListOperationsResponse
          command.params['project'] = project unless project.nil?
          command.query['instance'] = instance unless instance.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get Disk Shrink Config for a given instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::SqlInstancesGetDiskShrinkConfigResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::SqlInstancesGetDiskShrinkConfigResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_instance_disk_shrink_config(project, instance, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'sql/v1beta4/projects/{project}/instances/{instance}/getDiskShrinkConfig', options)
          command.response_representation = Google::Apis::SqladminV1beta4::SqlInstancesGetDiskShrinkConfigResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta4::SqlInstancesGetDiskShrinkConfigResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get Latest Recovery Time for a given instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::SqlInstancesGetLatestRecoveryTimeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::SqlInstancesGetLatestRecoveryTimeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_instance_latest_recovery_time(project, instance, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'sql/v1beta4/projects/{project}/instances/{instance}/getLatestRecoveryTime', options)
          command.response_representation = Google::Apis::SqladminV1beta4::SqlInstancesGetLatestRecoveryTimeResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta4::SqlInstancesGetLatestRecoveryTimeResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Perform Disk Shrink on primary instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::PerformDiskShrinkContext] perform_disk_shrink_context_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def perform_project_instance_disk_shrink(project, instance, perform_disk_shrink_context_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/performDiskShrink', options)
          command.request_representation = Google::Apis::SqladminV1beta4::PerformDiskShrinkContext::Representation
          command.request_object = perform_disk_shrink_context_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reschedules the maintenance on the given instance.
        # @param [String] project
        #   ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::SqlInstancesRescheduleMaintenanceRequestBody] sql_instances_reschedule_maintenance_request_body_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reschedule_project_instance_maintenance(project, instance, sql_instances_reschedule_maintenance_request_body_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/rescheduleMaintenance', options)
          command.request_representation = Google::Apis::SqladminV1beta4::SqlInstancesRescheduleMaintenanceRequestBody::Representation
          command.request_object = sql_instances_reschedule_maintenance_request_body_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reset Replica Size to primary instance disk size.
        # @param [String] project
        #   ID of the project that contains the read replica.
        # @param [String] instance
        #   Cloud SQL read replica instance name.
        # @param [Google::Apis::SqladminV1beta4::SqlInstancesResetReplicaSizeRequest] sql_instances_reset_replica_size_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reset_project_instance_replica_size(project, instance, sql_instances_reset_replica_size_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/resetReplicaSize', options)
          command.request_representation = Google::Apis::SqladminV1beta4::SqlInstancesResetReplicaSizeRequest::Representation
          command.request_object = sql_instances_reset_replica_size_request_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Start External primary instance migration.
        # @param [String] project
        #   ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::SqlInstancesStartExternalSyncRequest] sql_instances_start_external_sync_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_project_instance_external_sync(project, instance, sql_instances_start_external_sync_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/startExternalSync', options)
          command.request_representation = Google::Apis::SqladminV1beta4::SqlInstancesStartExternalSyncRequest::Representation
          command.request_object = sql_instances_start_external_sync_request_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Verify External primary instance external sync settings.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::SqlInstancesVerifyExternalSyncSettingsRequest] sql_instances_verify_external_sync_settings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::SqlInstancesVerifyExternalSyncSettingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::SqlInstancesVerifyExternalSyncSettingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def verify_project_instance_external_sync_settings(project, instance, sql_instances_verify_external_sync_settings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/verifyExternalSyncSettings', options)
          command.request_representation = Google::Apis::SqladminV1beta4::SqlInstancesVerifyExternalSyncSettingsRequest::Representation
          command.request_object = sql_instances_verify_external_sync_settings_request_object
          command.response_representation = Google::Apis::SqladminV1beta4::SqlInstancesVerifyExternalSyncSettingsResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta4::SqlInstancesVerifyExternalSyncSettingsResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a short-lived X509 certificate containing the provided public key
        # and signed by a private key specific to the target instance. Users may use the
        # certificate to authenticate as themselves when connecting to the database.
        # @param [String] project
        #   Project ID of the Cloud SQL project.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::SslCertsCreateEphemeralRequest] ssl_certs_create_ephemeral_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::SslCert] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::SslCert]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_ssl_cert_ephemeral(project, instance, ssl_certs_create_ephemeral_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/createEphemeral', options)
          command.request_representation = Google::Apis::SqladminV1beta4::SslCertsCreateEphemeralRequest::Representation
          command.request_object = ssl_certs_create_ephemeral_request_object
          command.response_representation = Google::Apis::SqladminV1beta4::SslCert::Representation
          command.response_class = Google::Apis::SqladminV1beta4::SslCert
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the SSL certificate. For First Generation instances, the certificate
        # remains valid until the instance is restarted.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] sha1_fingerprint
        #   Sha1 FingerPrint.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_ssl_cert(project, instance, sha1_fingerprint, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'sql/v1beta4/projects/{project}/instances/{instance}/sslCerts/{sha1Fingerprint}', options)
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.params['sha1Fingerprint'] = sha1_fingerprint unless sha1_fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a particular SSL certificate. Does not include the private key (
        # required for usage). The private key must be saved from the response to
        # initial creation.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] sha1_fingerprint
        #   Sha1 FingerPrint.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::SslCert] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::SslCert]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_ssl_cert(project, instance, sha1_fingerprint, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'sql/v1beta4/projects/{project}/instances/{instance}/sslCerts/{sha1Fingerprint}', options)
          command.response_representation = Google::Apis::SqladminV1beta4::SslCert::Representation
          command.response_class = Google::Apis::SqladminV1beta4::SslCert
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.params['sha1Fingerprint'] = sha1_fingerprint unless sha1_fingerprint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an SSL certificate and returns it along with the private key and
        # server certificate authority. The new certificate will not be usable until the
        # instance is restarted.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::InsertSslCertsRequest] insert_ssl_certs_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::InsertSslCertsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::InsertSslCertsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_ssl_cert(project, instance, insert_ssl_certs_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/sslCerts', options)
          command.request_representation = Google::Apis::SqladminV1beta4::InsertSslCertsRequest::Representation
          command.request_object = insert_ssl_certs_request_object
          command.response_representation = Google::Apis::SqladminV1beta4::InsertSslCertsResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta4::InsertSslCertsResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all of the current SSL certificates for the instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Cloud SQL instance ID. This does not include the project ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::ListSslCertsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::ListSslCertsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_ssl_certs(project, instance, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'sql/v1beta4/projects/{project}/instances/{instance}/sslCerts', options)
          command.response_representation = Google::Apis::SqladminV1beta4::ListSslCertsResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta4::ListSslCertsResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all available machine types (tiers) for Cloud SQL, for example, `db-
        # custom-1-3840`. For related information, see [Pricing](/sql/pricing).
        # @param [String] project
        #   Project ID of the project for which to list tiers.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::ListTiersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::ListTiersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_tiers(project, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'sql/v1beta4/projects/{project}/tiers', options)
          command.response_representation = Google::Apis::SqladminV1beta4::ListTiersResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta4::ListTiersResponse
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a user from a Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Database instance ID. This does not include the project ID.
        # @param [String] host
        #   Host of the user in the instance.
        # @param [String] name
        #   Name of the user in the instance.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_user(project, instance, host: nil, name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'sql/v1beta4/projects/{project}/instances/{instance}/users', options)
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['host'] = host unless host.nil?
          command.query['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a resource containing information about a user.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Database instance ID. This does not include the project ID.
        # @param [String] name
        #   User of the instance.
        # @param [String] host
        #   Host of a user of the instance.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user(project, instance, name, host: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'sql/v1beta4/projects/{project}/instances/{instance}/users/{name}', options)
          command.response_representation = Google::Apis::SqladminV1beta4::User::Representation
          command.response_class = Google::Apis::SqladminV1beta4::User
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.params['name'] = name unless name.nil?
          command.query['host'] = host unless host.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new user in a Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Database instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::User] user_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_user(project, instance, user_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sql/v1beta4/projects/{project}/instances/{instance}/users', options)
          command.request_representation = Google::Apis::SqladminV1beta4::User::Representation
          command.request_object = user_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists users in the specified Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Database instance ID. This does not include the project ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::ListUsersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::ListUsersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_users(project, instance, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'sql/v1beta4/projects/{project}/instances/{instance}/users', options)
          command.response_representation = Google::Apis::SqladminV1beta4::ListUsersResponse::Representation
          command.response_class = Google::Apis::SqladminV1beta4::ListUsersResponse
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing user in a Cloud SQL instance.
        # @param [String] project
        #   Project ID of the project that contains the instance.
        # @param [String] instance
        #   Database instance ID. This does not include the project ID.
        # @param [Google::Apis::SqladminV1beta4::User] user_object
        # @param [String] host
        #   Optional. Host of the user in the instance.
        # @param [String] name
        #   Name of the user in the instance.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SqladminV1beta4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SqladminV1beta4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_user(project, instance, user_object = nil, host: nil, name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'sql/v1beta4/projects/{project}/instances/{instance}/users', options)
          command.request_representation = Google::Apis::SqladminV1beta4::User::Representation
          command.request_object = user_object
          command.response_representation = Google::Apis::SqladminV1beta4::Operation::Representation
          command.response_class = Google::Apis::SqladminV1beta4::Operation
          command.params['project'] = project unless project.nil?
          command.params['instance'] = instance unless instance.nil?
          command.query['host'] = host unless host.nil?
          command.query['name'] = name unless name.nil?
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
