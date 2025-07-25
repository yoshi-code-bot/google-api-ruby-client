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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module AlloydbV1
      
      # AuthorizedNetwork contains metadata for an authorized network.
      class AuthorizedNetwork
        include Google::Apis::Core::Hashable
      
        # CIDR range for one authorzied network of the instance.
        # Corresponds to the JSON property `cidrRange`
        # @return [String]
        attr_accessor :cidr_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cidr_range = args[:cidr_range] if args.key?(:cidr_range)
        end
      end
      
      # Message describing the user-specified automated backup policy. All fields in
      # the automated backup policy are optional. Defaults for each field are provided
      # if they are not set.
      class AutomatedBackupPolicy
        include Google::Apis::Core::Hashable
      
        # The length of the time window during which a backup can be taken. If a backup
        # does not succeed within this time window, it will be canceled and considered
        # failed. The backup window must be at least 5 minutes long. There is no upper
        # bound on the window. If not set, it defaults to 1 hour.
        # Corresponds to the JSON property `backupWindow`
        # @return [String]
        attr_accessor :backup_window
      
        # Whether automated automated backups are enabled. If not set, defaults to true.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # EncryptionConfig describes the encryption config of a cluster or a backup that
        # is encrypted with a CMEK (customer-managed encryption key).
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::AlloydbV1::EncryptionConfig]
        attr_accessor :encryption_config
      
        # Labels to apply to backups created using this configuration.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The location where the backup will be stored. Currently, the only supported
        # option is to store the backup in the same region as the cluster. If empty,
        # defaults to the region of the cluster.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # A quantity based policy specifies that a certain number of the most recent
        # successful backups should be retained.
        # Corresponds to the JSON property `quantityBasedRetention`
        # @return [Google::Apis::AlloydbV1::QuantityBasedRetention]
        attr_accessor :quantity_based_retention
      
        # A time based retention policy specifies that all backups within a certain time
        # period should be retained.
        # Corresponds to the JSON property `timeBasedRetention`
        # @return [Google::Apis::AlloydbV1::TimeBasedRetention]
        attr_accessor :time_based_retention
      
        # A weekly schedule starts a backup at prescribed start times within a day, for
        # the specified days of the week. The weekly schedule message is flexible and
        # can be used to create many types of schedules. For example, to have a daily
        # backup that starts at 22:00, configure the `start_times` field to have one
        # element "22:00" and the `days_of_week` field to have all seven days of the
        # week.
        # Corresponds to the JSON property `weeklySchedule`
        # @return [Google::Apis::AlloydbV1::WeeklySchedule]
        attr_accessor :weekly_schedule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_window = args[:backup_window] if args.key?(:backup_window)
          @enabled = args[:enabled] if args.key?(:enabled)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
          @labels = args[:labels] if args.key?(:labels)
          @location = args[:location] if args.key?(:location)
          @quantity_based_retention = args[:quantity_based_retention] if args.key?(:quantity_based_retention)
          @time_based_retention = args[:time_based_retention] if args.key?(:time_based_retention)
          @weekly_schedule = args[:weekly_schedule] if args.key?(:weekly_schedule)
        end
      end
      
      # Message describing Backup object
      class Backup
        include Google::Apis::Core::Hashable
      
        # Annotations to allow client tools to store small amount of arbitrary data.
        # This is distinct from labels. https://google.aip.dev/128
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Required. The full resource name of the backup source cluster (e.g., projects/`
        # project`/locations/`region`/clusters/`cluster_id`).
        # Corresponds to the JSON property `clusterName`
        # @return [String]
        attr_accessor :cluster_name
      
        # Output only. The system-generated UID of the cluster which was used to create
        # this resource.
        # Corresponds to the JSON property `clusterUid`
        # @return [String]
        attr_accessor :cluster_uid
      
        # Output only. Timestamp when the resource finished being created.
        # Corresponds to the JSON property `createCompletionTime`
        # @return [String]
        attr_accessor :create_completion_time
      
        # Output only. Create time stamp
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The database engine major version of the cluster this backup was
        # created from. Any restored cluster created from this backup will have the same
        # database version.
        # Corresponds to the JSON property `databaseVersion`
        # @return [String]
        attr_accessor :database_version
      
        # Output only. Delete time stamp
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # User-provided description of the backup.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # User-settable and human-readable display name for the Backup.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # EncryptionConfig describes the encryption config of a cluster or a backup that
        # is encrypted with a CMEK (customer-managed encryption key).
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::AlloydbV1::EncryptionConfig]
        attr_accessor :encryption_config
      
        # EncryptionInfo describes the encryption information of a cluster or a backup.
        # Corresponds to the JSON property `encryptionInfo`
        # @return [Google::Apis::AlloydbV1::EncryptionInfo]
        attr_accessor :encryption_info
      
        # For Resource freshness validation (https://google.aip.dev/154)
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # A backup's position in a quantity-based retention queue, of backups with the
        # same source cluster and type, with length, retention, specified by the backup'
        # s retention policy. Once the position is greater than the retention, the
        # backup is eligible to be garbage collected. Example: 5 backups from the same
        # source cluster and type with a quantity-based retention of 3 and denoted by
        # backup_id (position, retention). Safe: backup_5 (1, 3), backup_4, (2, 3),
        # backup_3 (3, 3). Awaiting garbage collection: backup_2 (4, 3), backup_1 (5, 3)
        # Corresponds to the JSON property `expiryQuantity`
        # @return [Google::Apis::AlloydbV1::QuantityBasedExpiry]
        attr_accessor :expiry_quantity
      
        # Output only. The time at which after the backup is eligible to be garbage
        # collected. It is the duration specified by the backup's retention policy,
        # added to the backup's create_time.
        # Corresponds to the JSON property `expiryTime`
        # @return [String]
        attr_accessor :expiry_time
      
        # Labels as key value pairs
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The name of the backup resource with the format: * projects/`
        # project`/locations/`region`/backups/`backup_id` where the cluster and backup
        # ID segments should satisfy the regex expression `[a-z]([a-z0-9-]`0,61`[a-z0-9])
        # ?`, e.g. 1-63 characters of lowercase letters, numbers, and dashes, starting
        # with a letter, and ending with a letter or number. For more details see https:/
        # /google.aip.dev/122. The prefix of the backup resource name is the name of the
        # parent resource: * projects/`project`/locations/`region`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Reconciling (https://google.aip.dev/128#reconciliation), if true,
        # indicates that the service is actively updating the resource. This can happen
        # due to user-triggered updates or system actions like failover or maintenance.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Output only. The size of the backup in bytes.
        # Corresponds to the JSON property `sizeBytes`
        # @return [Fixnum]
        attr_accessor :size_bytes
      
        # Output only. The current state of the backup.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional. Input only. Immutable. Tag keys/values directly bound to this
        # resource. For example: ``` "123/environment": "production", "123/costCenter": "
        # marketing" ```
        # Corresponds to the JSON property `tags`
        # @return [Hash<String,String>]
        attr_accessor :tags
      
        # The backup type, which suggests the trigger for the backup.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. The system-generated UID of the resource. The UID is assigned
        # when the resource is created, and it is retained until it is deleted.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Update time stamp Users should not infer any meaning from this
        # field. Its value is generally unrelated to the timing of the backup creation
        # operation.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @cluster_name = args[:cluster_name] if args.key?(:cluster_name)
          @cluster_uid = args[:cluster_uid] if args.key?(:cluster_uid)
          @create_completion_time = args[:create_completion_time] if args.key?(:create_completion_time)
          @create_time = args[:create_time] if args.key?(:create_time)
          @database_version = args[:database_version] if args.key?(:database_version)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
          @encryption_info = args[:encryption_info] if args.key?(:encryption_info)
          @etag = args[:etag] if args.key?(:etag)
          @expiry_quantity = args[:expiry_quantity] if args.key?(:expiry_quantity)
          @expiry_time = args[:expiry_time] if args.key?(:expiry_time)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @size_bytes = args[:size_bytes] if args.key?(:size_bytes)
          @state = args[:state] if args.key?(:state)
          @tags = args[:tags] if args.key?(:tags)
          @type = args[:type] if args.key?(:type)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Message describing a BackupSource.
      class BackupSource
        include Google::Apis::Core::Hashable
      
        # Required. The name of the backup resource with the format: * projects/`project`
        # /locations/`region`/backups/`backup_id`
        # Corresponds to the JSON property `backupName`
        # @return [String]
        attr_accessor :backup_name
      
        # Output only. The system-generated UID of the backup which was used to create
        # this resource. The UID is generated when the backup is created, and it is
        # retained until the backup is deleted.
        # Corresponds to the JSON property `backupUid`
        # @return [String]
        attr_accessor :backup_uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_name = args[:backup_name] if args.key?(:backup_name)
          @backup_uid = args[:backup_uid] if args.key?(:backup_uid)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Client connection configuration
      class ClientConnectionConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Configuration to enforce connectors only (ex: AuthProxy) connections
        # to the database.
        # Corresponds to the JSON property `requireConnectors`
        # @return [Boolean]
        attr_accessor :require_connectors
        alias_method :require_connectors?, :require_connectors
      
        # SSL configuration.
        # Corresponds to the JSON property `sslConfig`
        # @return [Google::Apis::AlloydbV1::SslConfig]
        attr_accessor :ssl_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @require_connectors = args[:require_connectors] if args.key?(:require_connectors)
          @ssl_config = args[:ssl_config] if args.key?(:ssl_config)
        end
      end
      
      # Operation metadata returned by the CLH during resource state reconciliation.
      class CloudControl2SharedOperationsReconciliationOperationMetadata
        include Google::Apis::Core::Hashable
      
        # DEPRECATED. Use exclusive_action instead.
        # Corresponds to the JSON property `deleteResource`
        # @return [Boolean]
        attr_accessor :delete_resource
        alias_method :delete_resource?, :delete_resource
      
        # Excluisive action returned by the CLH.
        # Corresponds to the JSON property `exclusiveAction`
        # @return [String]
        attr_accessor :exclusive_action
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delete_resource = args[:delete_resource] if args.key?(:delete_resource)
          @exclusive_action = args[:exclusive_action] if args.key?(:exclusive_action)
        end
      end
      
      # The source CloudSQL backup resource.
      class CloudSqlBackupRunSource
        include Google::Apis::Core::Hashable
      
        # Required. The CloudSQL backup run ID.
        # Corresponds to the JSON property `backupRunId`
        # @return [Fixnum]
        attr_accessor :backup_run_id
      
        # Required. The CloudSQL instance ID.
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # The project ID of the source CloudSQL instance. This should be the same as the
        # AlloyDB cluster's project.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_run_id = args[:backup_run_id] if args.key?(:backup_run_id)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
          @project = args[:project] if args.key?(:project)
        end
      end
      
      # A cluster is a collection of regional AlloyDB resources. It can include a
      # primary instance and one or more read pool instances. All cluster resources
      # share a storage layer, which scales as needed.
      class Cluster
        include Google::Apis::Core::Hashable
      
        # Annotations to allow client tools to store small amount of arbitrary data.
        # This is distinct from labels. https://google.aip.dev/128
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Message describing the user-specified automated backup policy. All fields in
        # the automated backup policy are optional. Defaults for each field are provided
        # if they are not set.
        # Corresponds to the JSON property `automatedBackupPolicy`
        # @return [Google::Apis::AlloydbV1::AutomatedBackupPolicy]
        attr_accessor :automated_backup_policy
      
        # Message describing a BackupSource.
        # Corresponds to the JSON property `backupSource`
        # @return [Google::Apis::AlloydbV1::BackupSource]
        attr_accessor :backup_source
      
        # The source CloudSQL backup resource.
        # Corresponds to the JSON property `cloudsqlBackupRunSource`
        # @return [Google::Apis::AlloydbV1::CloudSqlBackupRunSource]
        attr_accessor :cloudsql_backup_run_source
      
        # Output only. The type of the cluster. This is an output-only field and it's
        # populated at the Cluster creation time or the Cluster promotion time. The
        # cluster type is determined by which RPC was used to create the cluster (i.e. `
        # CreateCluster` vs. `CreateSecondaryCluster`
        # Corresponds to the JSON property `clusterType`
        # @return [String]
        attr_accessor :cluster_type
      
        # ContinuousBackupConfig describes the continuous backups recovery
        # configurations of a cluster.
        # Corresponds to the JSON property `continuousBackupConfig`
        # @return [Google::Apis::AlloydbV1::ContinuousBackupConfig]
        attr_accessor :continuous_backup_config
      
        # ContinuousBackupInfo describes the continuous backup properties of a cluster.
        # Corresponds to the JSON property `continuousBackupInfo`
        # @return [Google::Apis::AlloydbV1::ContinuousBackupInfo]
        attr_accessor :continuous_backup_info
      
        # Output only. Create time stamp
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The database engine major version. This is an optional field and it
        # is populated at the Cluster creation time. If a database version is not
        # supplied at cluster creation time, then a default database version will be
        # used.
        # Corresponds to the JSON property `databaseVersion`
        # @return [String]
        attr_accessor :database_version
      
        # Output only. Delete time stamp
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # User-settable and human-readable display name for the Cluster.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # EncryptionConfig describes the encryption config of a cluster or a backup that
        # is encrypted with a CMEK (customer-managed encryption key).
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::AlloydbV1::EncryptionConfig]
        attr_accessor :encryption_config
      
        # EncryptionInfo describes the encryption information of a cluster or a backup.
        # Corresponds to the JSON property `encryptionInfo`
        # @return [Google::Apis::AlloydbV1::EncryptionInfo]
        attr_accessor :encryption_info
      
        # For Resource freshness validation (https://google.aip.dev/154)
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The username/password for a database user. Used for specifying initial users
        # at cluster creation time.
        # Corresponds to the JSON property `initialUser`
        # @return [Google::Apis::AlloydbV1::UserPassword]
        attr_accessor :initial_user
      
        # Labels as key value pairs
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # MaintenanceSchedule stores the maintenance schedule generated from the
        # MaintenanceUpdatePolicy, once a maintenance rollout is triggered, if
        # MaintenanceWindow is set, and if there is no conflicting DenyPeriod. The
        # schedule is cleared once the update takes place. This field cannot be manually
        # changed; modify the MaintenanceUpdatePolicy instead.
        # Corresponds to the JSON property `maintenanceSchedule`
        # @return [Google::Apis::AlloydbV1::MaintenanceSchedule]
        attr_accessor :maintenance_schedule
      
        # MaintenanceUpdatePolicy defines the policy for system updates.
        # Corresponds to the JSON property `maintenanceUpdatePolicy`
        # @return [Google::Apis::AlloydbV1::MaintenanceUpdatePolicy]
        attr_accessor :maintenance_update_policy
      
        # Subset of the source instance configuration that is available when reading the
        # cluster resource.
        # Corresponds to the JSON property `migrationSource`
        # @return [Google::Apis::AlloydbV1::MigrationSource]
        attr_accessor :migration_source
      
        # Output only. The name of the cluster resource with the format: * projects/`
        # project`/locations/`region`/clusters/`cluster_id` where the cluster ID segment
        # should satisfy the regex expression `[a-z0-9-]+`. For more details see https://
        # google.aip.dev/122. The prefix of the cluster resource name is the name of the
        # parent resource: * projects/`project`/locations/`region`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The resource link for the VPC network in which cluster resources are
        # created and from which they are accessible via Private IP. The network must
        # belong to the same project as the cluster. It is specified in the form: `
        # projects/`project`/global/networks/`network_id``. This is required to create a
        # cluster. Deprecated, use network_config.network instead.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Metadata related to network configuration.
        # Corresponds to the JSON property `networkConfig`
        # @return [Google::Apis::AlloydbV1::NetworkConfig]
        attr_accessor :network_config
      
        # Configuration for the primary cluster. It has the list of clusters that are
        # replicating from this cluster. This should be set if and only if the cluster
        # is of type PRIMARY.
        # Corresponds to the JSON property `primaryConfig`
        # @return [Google::Apis::AlloydbV1::PrimaryConfig]
        attr_accessor :primary_config
      
        # PscConfig contains PSC related configuration at a cluster level.
        # Corresponds to the JSON property `pscConfig`
        # @return [Google::Apis::AlloydbV1::PscConfig]
        attr_accessor :psc_config
      
        # Output only. Reconciling (https://google.aip.dev/128#reconciliation). Set to
        # true if the current state of Cluster does not match the user's intended state,
        # and the service is actively updating the resource to reconcile them. This can
        # happen due to user-triggered updates or system actions like failover or
        # maintenance.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Configuration information for the secondary cluster. This should be set if and
        # only if the cluster is of type SECONDARY.
        # Corresponds to the JSON property `secondaryConfig`
        # @return [Google::Apis::AlloydbV1::SecondaryConfig]
        attr_accessor :secondary_config
      
        # SSL configuration.
        # Corresponds to the JSON property `sslConfig`
        # @return [Google::Apis::AlloydbV1::SslConfig]
        attr_accessor :ssl_config
      
        # Output only. The current serving state of the cluster.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional. Subscription type of the cluster.
        # Corresponds to the JSON property `subscriptionType`
        # @return [String]
        attr_accessor :subscription_type
      
        # Optional. Input only. Immutable. Tag keys/values directly bound to this
        # resource. For example: ``` "123/environment": "production", "123/costCenter": "
        # marketing" ```
        # Corresponds to the JSON property `tags`
        # @return [Hash<String,String>]
        attr_accessor :tags
      
        # Contains information and all metadata related to TRIAL clusters.
        # Corresponds to the JSON property `trialMetadata`
        # @return [Google::Apis::AlloydbV1::TrialMetadata]
        attr_accessor :trial_metadata
      
        # Output only. The system-generated UID of the resource. The UID is assigned
        # when the resource is created, and it is retained until it is deleted.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Update time stamp
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @automated_backup_policy = args[:automated_backup_policy] if args.key?(:automated_backup_policy)
          @backup_source = args[:backup_source] if args.key?(:backup_source)
          @cloudsql_backup_run_source = args[:cloudsql_backup_run_source] if args.key?(:cloudsql_backup_run_source)
          @cluster_type = args[:cluster_type] if args.key?(:cluster_type)
          @continuous_backup_config = args[:continuous_backup_config] if args.key?(:continuous_backup_config)
          @continuous_backup_info = args[:continuous_backup_info] if args.key?(:continuous_backup_info)
          @create_time = args[:create_time] if args.key?(:create_time)
          @database_version = args[:database_version] if args.key?(:database_version)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
          @encryption_info = args[:encryption_info] if args.key?(:encryption_info)
          @etag = args[:etag] if args.key?(:etag)
          @initial_user = args[:initial_user] if args.key?(:initial_user)
          @labels = args[:labels] if args.key?(:labels)
          @maintenance_schedule = args[:maintenance_schedule] if args.key?(:maintenance_schedule)
          @maintenance_update_policy = args[:maintenance_update_policy] if args.key?(:maintenance_update_policy)
          @migration_source = args[:migration_source] if args.key?(:migration_source)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @network_config = args[:network_config] if args.key?(:network_config)
          @primary_config = args[:primary_config] if args.key?(:primary_config)
          @psc_config = args[:psc_config] if args.key?(:psc_config)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @secondary_config = args[:secondary_config] if args.key?(:secondary_config)
          @ssl_config = args[:ssl_config] if args.key?(:ssl_config)
          @state = args[:state] if args.key?(:state)
          @subscription_type = args[:subscription_type] if args.key?(:subscription_type)
          @tags = args[:tags] if args.key?(:tags)
          @trial_metadata = args[:trial_metadata] if args.key?(:trial_metadata)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Upgrade details of a cluster. This cluster can be primary or secondary.
      class ClusterUpgradeDetails
        include Google::Apis::Core::Hashable
      
        # Cluster type which can either be primary or secondary.
        # Corresponds to the JSON property `clusterType`
        # @return [String]
        attr_accessor :cluster_type
      
        # Database version of the cluster after the upgrade operation. This will be the
        # target version if the upgrade was successful otherwise it remains the same as
        # that before the upgrade operation.
        # Corresponds to the JSON property `databaseVersion`
        # @return [String]
        attr_accessor :database_version
      
        # Upgrade details of the instances directly associated with this cluster.
        # Corresponds to the JSON property `instanceUpgradeDetails`
        # @return [Array<Google::Apis::AlloydbV1::InstanceUpgradeDetails>]
        attr_accessor :instance_upgrade_details
      
        # Normalized name of the cluster
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Array containing stage info associated with this cluster.
        # Corresponds to the JSON property `stageInfo`
        # @return [Array<Google::Apis::AlloydbV1::StageInfo>]
        attr_accessor :stage_info
      
        # Upgrade status of the cluster.
        # Corresponds to the JSON property `upgradeStatus`
        # @return [String]
        attr_accessor :upgrade_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_type = args[:cluster_type] if args.key?(:cluster_type)
          @database_version = args[:database_version] if args.key?(:database_version)
          @instance_upgrade_details = args[:instance_upgrade_details] if args.key?(:instance_upgrade_details)
          @name = args[:name] if args.key?(:name)
          @stage_info = args[:stage_info] if args.key?(:stage_info)
          @upgrade_status = args[:upgrade_status] if args.key?(:upgrade_status)
        end
      end
      
      # ConnectionInfo singleton resource. https://google.aip.dev/156
      class ConnectionInfo
        include Google::Apis::Core::Hashable
      
        # Output only. The unique ID of the Instance.
        # Corresponds to the JSON property `instanceUid`
        # @return [String]
        attr_accessor :instance_uid
      
        # Output only. The private network IP address for the Instance. This is the
        # default IP for the instance and is always created (even if enable_public_ip is
        # set). This is the connection endpoint for an end-user application.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # The name of the ConnectionInfo singleton resource, e.g.: projects/`project`/
        # locations/`location`/clusters/*/instances/*/connectionInfo This field
        # currently has no semantic meaning.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The public IP addresses for the Instance. This is available ONLY
        # when enable_public_ip is set. This is the connection endpoint for an end-user
        # application.
        # Corresponds to the JSON property `publicIpAddress`
        # @return [String]
        attr_accessor :public_ip_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_uid = args[:instance_uid] if args.key?(:instance_uid)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @name = args[:name] if args.key?(:name)
          @public_ip_address = args[:public_ip_address] if args.key?(:public_ip_address)
        end
      end
      
      # ContinuousBackupConfig describes the continuous backups recovery
      # configurations of a cluster.
      class ContinuousBackupConfig
        include Google::Apis::Core::Hashable
      
        # Whether ContinuousBackup is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # EncryptionConfig describes the encryption config of a cluster or a backup that
        # is encrypted with a CMEK (customer-managed encryption key).
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::AlloydbV1::EncryptionConfig]
        attr_accessor :encryption_config
      
        # The number of days that are eligible to restore from using PITR. To support
        # the entire recovery window, backups and logs are retained for one day more
        # than the recovery window. If not set, defaults to 14 days.
        # Corresponds to the JSON property `recoveryWindowDays`
        # @return [Fixnum]
        attr_accessor :recovery_window_days
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
          @recovery_window_days = args[:recovery_window_days] if args.key?(:recovery_window_days)
        end
      end
      
      # ContinuousBackupInfo describes the continuous backup properties of a cluster.
      class ContinuousBackupInfo
        include Google::Apis::Core::Hashable
      
        # Output only. The earliest restorable time that can be restored to. If
        # continuous backups and recovery was recently enabled, the earliest restorable
        # time is the creation time of the earliest eligible backup within this cluster'
        # s continuous backup recovery window. After a cluster has had continuous
        # backups enabled for the duration of its recovery window, the earliest
        # restorable time becomes "now minus the recovery window". For example, assuming
        # a point in time recovery is attempted at 04/16/2025 3:23:00PM with a 14d
        # recovery window, the earliest restorable time would be 04/02/2025 3:23:00PM.
        # This field is only visible if the CLUSTER_VIEW_CONTINUOUS_BACKUP cluster view
        # is provided.
        # Corresponds to the JSON property `earliestRestorableTime`
        # @return [String]
        attr_accessor :earliest_restorable_time
      
        # Output only. When ContinuousBackup was most recently enabled. Set to null if
        # ContinuousBackup is not enabled.
        # Corresponds to the JSON property `enabledTime`
        # @return [String]
        attr_accessor :enabled_time
      
        # EncryptionInfo describes the encryption information of a cluster or a backup.
        # Corresponds to the JSON property `encryptionInfo`
        # @return [Google::Apis::AlloydbV1::EncryptionInfo]
        attr_accessor :encryption_info
      
        # Output only. Days of the week on which a continuous backup is taken.
        # Corresponds to the JSON property `schedule`
        # @return [Array<String>]
        attr_accessor :schedule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @earliest_restorable_time = args[:earliest_restorable_time] if args.key?(:earliest_restorable_time)
          @enabled_time = args[:enabled_time] if args.key?(:enabled_time)
          @encryption_info = args[:encryption_info] if args.key?(:encryption_info)
          @schedule = args[:schedule] if args.key?(:schedule)
        end
      end
      
      # Message describing a ContinuousBackupSource.
      class ContinuousBackupSource
        include Google::Apis::Core::Hashable
      
        # Required. The source cluster from which to restore. This cluster must have
        # continuous backup enabled for this operation to succeed. For the required
        # format, see the comment on the Cluster.name field.
        # Corresponds to the JSON property `cluster`
        # @return [String]
        attr_accessor :cluster
      
        # Required. The point in time to restore to.
        # Corresponds to the JSON property `pointInTime`
        # @return [String]
        attr_accessor :point_in_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster = args[:cluster] if args.key?(:cluster)
          @point_in_time = args[:point_in_time] if args.key?(:point_in_time)
        end
      end
      
      # Options for exporting data in CSV format.
      class CsvExportOptions
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies the character that should appear before a data character
        # that needs to be escaped. The default is the same as quote character. The
        # value of this argument has to be a character in Hex ASCII Code.
        # Corresponds to the JSON property `escapeCharacter`
        # @return [String]
        attr_accessor :escape_character
      
        # Optional. Specifies the character that separates columns within each row (line)
        # of the file. The default is comma. The value of this argument has to be a
        # character in Hex ASCII Code.
        # Corresponds to the JSON property `fieldDelimiter`
        # @return [String]
        attr_accessor :field_delimiter
      
        # Optional. Specifies the quoting character to be used when a data value is
        # quoted. The default is double-quote. The value of this argument has to be a
        # character in Hex ASCII Code.
        # Corresponds to the JSON property `quoteCharacter`
        # @return [String]
        attr_accessor :quote_character
      
        # Required. The SELECT query used to extract the data.
        # Corresponds to the JSON property `selectQuery`
        # @return [String]
        attr_accessor :select_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @escape_character = args[:escape_character] if args.key?(:escape_character)
          @field_delimiter = args[:field_delimiter] if args.key?(:field_delimiter)
          @quote_character = args[:quote_character] if args.key?(:quote_character)
          @select_query = args[:select_query] if args.key?(:select_query)
        end
      end
      
      # Options for importing data in CSV format.
      class CsvImportOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The columns to which CSV data is imported. If not specified, all
        # columns of the database table are loaded with CSV data.
        # Corresponds to the JSON property `columns`
        # @return [Array<String>]
        attr_accessor :columns
      
        # Optional. Specifies the character that should appear before a data character
        # that needs to be escaped. The default is same as quote character. The value of
        # this argument has to be a character in Hex ASCII Code.
        # Corresponds to the JSON property `escapeCharacter`
        # @return [String]
        attr_accessor :escape_character
      
        # Optional. Specifies the character that separates columns within each row (line)
        # of the file. The default is comma. The value of this argument has to be a
        # character in Hex ASCII Code.
        # Corresponds to the JSON property `fieldDelimiter`
        # @return [String]
        attr_accessor :field_delimiter
      
        # Optional. Specifies the quoting character to be used when a data value is
        # quoted. The default is double-quote. The value of this argument has to be a
        # character in Hex ASCII Code.
        # Corresponds to the JSON property `quoteCharacter`
        # @return [String]
        attr_accessor :quote_character
      
        # Required. The database table to import CSV file into.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
          @escape_character = args[:escape_character] if args.key?(:escape_character)
          @field_delimiter = args[:field_delimiter] if args.key?(:field_delimiter)
          @quote_character = args[:quote_character] if args.key?(:quote_character)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # DenyMaintenancePeriod definition. Excepting emergencies, maintenance will not
      # be scheduled to start within this deny period. The start_date must be less
      # than the end_date.
      class DenyMaintenancePeriod
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::AlloydbV1::GoogleTypeDate]
        attr_accessor :end_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::AlloydbV1::GoogleTypeDate]
        attr_accessor :start_date
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `time`
        # @return [Google::Apis::AlloydbV1::GoogleTypeTimeOfDay]
        attr_accessor :time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @start_date = args[:start_date] if args.key?(:start_date)
          @time = args[:time] if args.key?(:time)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # EncryptionConfig describes the encryption config of a cluster or a backup that
      # is encrypted with a CMEK (customer-managed encryption key).
      class EncryptionConfig
        include Google::Apis::Core::Hashable
      
        # The fully-qualified resource name of the KMS key. Each Cloud KMS key is
        # regionalized and has the following format: projects/[PROJECT]/locations/[
        # REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
        end
      end
      
      # EncryptionInfo describes the encryption information of a cluster or a backup.
      class EncryptionInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Type of encryption.
        # Corresponds to the JSON property `encryptionType`
        # @return [String]
        attr_accessor :encryption_type
      
        # Output only. Cloud KMS key versions that are being used to protect the
        # database or the backup.
        # Corresponds to the JSON property `kmsKeyVersions`
        # @return [Array<String>]
        attr_accessor :kms_key_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encryption_type = args[:encryption_type] if args.key?(:encryption_type)
          @kms_key_versions = args[:kms_key_versions] if args.key?(:kms_key_versions)
        end
      end
      
      # Export cluster request.
      class ExportClusterRequest
        include Google::Apis::Core::Hashable
      
        # Options for exporting data in CSV format.
        # Corresponds to the JSON property `csvExportOptions`
        # @return [Google::Apis::AlloydbV1::CsvExportOptions]
        attr_accessor :csv_export_options
      
        # Required. Name of the database where the export command will be executed. Note
        # - Value provided should be the same as expected from `SELECT current_database()
        # ;` and NOT as a resource reference.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # Destination for Export. Export will be done to cloud storage.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::AlloydbV1::GcsDestination]
        attr_accessor :gcs_destination
      
        # Options for exporting data in SQL format.
        # Corresponds to the JSON property `sqlExportOptions`
        # @return [Google::Apis::AlloydbV1::SqlExportOptions]
        attr_accessor :sql_export_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @csv_export_options = args[:csv_export_options] if args.key?(:csv_export_options)
          @database = args[:database] if args.key?(:database)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
          @sql_export_options = args[:sql_export_options] if args.key?(:sql_export_options)
        end
      end
      
      # Response of export cluster rpc.
      class ExportClusterResponse
        include Google::Apis::Core::Hashable
      
        # Destination for Export. Export will be done to cloud storage.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::AlloydbV1::GcsDestination]
        attr_accessor :gcs_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
        end
      end
      
      # Message for triggering failover on an Instance
      class FailoverInstanceRequest
        include Google::Apis::Core::Hashable
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server ignores the
        # request if it has already been completed. The server guarantees that for at
        # least 60 minutes since the first request. For example, consider a situation
        # where you make an initial request and the request times out. If you make the
        # request again with the same request ID, the server can check if the original
        # operation with the same request ID was received, and if so, ignores the second
        # request. This prevents clients from accidentally creating duplicate
        # commitments. The request ID must be a valid UUID with the exception that zero
        # UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Optional. If set, performs request validation, for example, permission checks
        # and any other type of validation, but does not actually execute the create
        # request.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Destination for Export. Export will be done to cloud storage.
      class GcsDestination
        include Google::Apis::Core::Hashable
      
        # Required. The path to the file in Google Cloud Storage where the export will
        # be stored. The URI is in the form `gs://bucketName/fileName`.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # The response message for Locations.ListLocations.
      class GoogleCloudLocationListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::AlloydbV1::GoogleCloudLocationLocation>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class GoogleCloudLocationLocation
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class GoogleTypeDate
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # Represents a time of day. The date and time zone are either not significant or
      # are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class GoogleTypeTimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of a day in 24 hour format. Must be greater than or equal to 0 and
        # typically must be less than or equal to 23. An API may choose to allow the
        # value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of an hour. Must be greater than or equal to 0 and less than or equal
        # to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and
        # less than or equal to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Seconds of a minute. Must be greater than or equal to 0 and typically must be
        # less than or equal to 59. An API may allow the value 60 if it allows leap-
        # seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
        end
      end
      
      # Import cluster request.
      class ImportClusterRequest
        include Google::Apis::Core::Hashable
      
        # Options for importing data in CSV format.
        # Corresponds to the JSON property `csvImportOptions`
        # @return [Google::Apis::AlloydbV1::CsvImportOptions]
        attr_accessor :csv_import_options
      
        # Optional. Name of the database to which the import will be done. For import
        # from SQL file, this is required only if the file does not specify a database.
        # Note - Value provided should be the same as expected from `SELECT
        # current_database();` and NOT as a resource reference.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # Required. The path to the file in Google Cloud Storage where the source file
        # for import will be stored. The URI is in the form `gs://bucketName/fileName`.
        # Corresponds to the JSON property `gcsUri`
        # @return [String]
        attr_accessor :gcs_uri
      
        # Options for importing data in SQL format.
        # Corresponds to the JSON property `sqlImportOptions`
        # @return [Google::Apis::AlloydbV1::SqlImportOptions]
        attr_accessor :sql_import_options
      
        # Optional. Database user to be used for importing the data. Note - Value
        # provided should be the same as expected from `SELECT current_user;` and NOT as
        # a resource reference.
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @csv_import_options = args[:csv_import_options] if args.key?(:csv_import_options)
          @database = args[:database] if args.key?(:database)
          @gcs_uri = args[:gcs_uri] if args.key?(:gcs_uri)
          @sql_import_options = args[:sql_import_options] if args.key?(:sql_import_options)
          @user = args[:user] if args.key?(:user)
        end
      end
      
      # Response of import rpc.
      class ImportClusterResponse
        include Google::Apis::Core::Hashable
      
        # Required. Size of the object downloaded from Google Cloud Storage in bytes.
        # Corresponds to the JSON property `bytesDownloaded`
        # @return [Fixnum]
        attr_accessor :bytes_downloaded
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bytes_downloaded = args[:bytes_downloaded] if args.key?(:bytes_downloaded)
        end
      end
      
      # Message for triggering fault injection on an instance
      class InjectFaultRequest
        include Google::Apis::Core::Hashable
      
        # Required. The type of fault to be injected in an instance.
        # Corresponds to the JSON property `faultType`
        # @return [String]
        attr_accessor :fault_type
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server ignores the
        # request if it has already been completed. The server guarantees that for at
        # least 60 minutes since the first request. For example, consider a situation
        # where you make an initial request and the request times out. If you make the
        # request again with the same request ID, the server can check if the original
        # operation with the same request ID was received, and if so, ignores the second
        # request. This prevents clients from accidentally creating duplicate
        # commitments. The request ID must be a valid UUID with the exception that zero
        # UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Optional. If set, performs request validation, for example, permission checks
        # and any other type of validation, but does not actually execute the create
        # request.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fault_type = args[:fault_type] if args.key?(:fault_type)
          @request_id = args[:request_id] if args.key?(:request_id)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # An Instance is a computing unit that an end customer can connect to. It's the
      # main unit of computing resources in AlloyDB.
      class Instance
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies whether an instance needs to spin up. Once the instance is
        # active, the activation policy can be updated to the `NEVER` to stop the
        # instance. Likewise, the activation policy can be updated to `ALWAYS` to start
        # the instance. There are restrictions around when an instance can/cannot be
        # activated (for example, a read pool instance should be stopped before stopping
        # primary etc.). Please refer to the API documentation for more details.
        # Corresponds to the JSON property `activationPolicy`
        # @return [String]
        attr_accessor :activation_policy
      
        # Annotations to allow client tools to store small amount of arbitrary data.
        # This is distinct from labels. https://google.aip.dev/128
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Availability type of an Instance. If empty, defaults to REGIONAL for primary
        # instances. For read pools, availability_type is always UNSPECIFIED. Instances
        # in the read pools are evenly distributed across available zones within the
        # region (i.e. read pools with more than one node will have a node in at least
        # two zones).
        # Corresponds to the JSON property `availabilityType`
        # @return [String]
        attr_accessor :availability_type
      
        # Client connection configuration
        # Corresponds to the JSON property `clientConnectionConfig`
        # @return [Google::Apis::AlloydbV1::ClientConnectionConfig]
        attr_accessor :client_connection_config
      
        # Output only. Create time stamp
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Database flags. Set at the instance level. They are copied from the primary
        # instance on secondary instance creation. Flags that have restrictions default
        # to the value at primary instance on read instances during creation. Read
        # instances can set new flags or override existing flags that are relevant for
        # reads, for example, for enabling columnar cache on a read instance. Flags set
        # on read instance might or might not be present on the primary instance. This
        # is a list of "key": "value" pairs. "key": The name of the flag. These flags
        # are passed at instance setup time, so include both server options and system
        # variables for Postgres. Flags are specified with underscores, not hyphens. "
        # value": The value of the flag. Booleans are set to **on** for true and **off**
        # for false. This field must be omitted if the flag doesn't take a value.
        # Corresponds to the JSON property `databaseFlags`
        # @return [Hash<String,String>]
        attr_accessor :database_flags
      
        # Output only. Delete time stamp
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # User-settable and human-readable display name for the Instance.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # For Resource freshness validation (https://google.aip.dev/154)
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The Compute Engine zone that the instance should serve from, per https://cloud.
        # google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL
        # instances. If present for a REGIONAL instance, an error will be thrown. If
        # this is absent for a ZONAL instance, instance is created in a random zone with
        # available capacity.
        # Corresponds to the JSON property `gceZone`
        # @return [String]
        attr_accessor :gce_zone
      
        # Required. The type of the instance. Specified at creation time.
        # Corresponds to the JSON property `instanceType`
        # @return [String]
        attr_accessor :instance_type
      
        # Output only. The IP address for the Instance. This is the connection endpoint
        # for an end-user application.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # Labels as key value pairs
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # MachineConfig describes the configuration of a machine.
        # Corresponds to the JSON property `machineConfig`
        # @return [Google::Apis::AlloydbV1::MachineConfig]
        attr_accessor :machine_config
      
        # Output only. The name of the instance resource with the format: * projects/`
        # project`/locations/`region`/clusters/`cluster_id`/instances/`instance_id`
        # where the cluster and instance ID segments should satisfy the regex expression
        # `[a-z]([a-z0-9-]`0,61`[a-z0-9])?`, e.g. 1-63 characters of lowercase letters,
        # numbers, and dashes, starting with a letter, and ending with a letter or
        # number. For more details see https://google.aip.dev/122. The prefix of the
        # instance resource name is the name of the parent resource: * projects/`project`
        # /locations/`region`/clusters/`cluster_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Metadata related to instance-level network configuration.
        # Corresponds to the JSON property `networkConfig`
        # @return [Google::Apis::AlloydbV1::InstanceNetworkConfig]
        attr_accessor :network_config
      
        # Output only. List of available read-only VMs in this instance, including the
        # standby for a PRIMARY instance.
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::AlloydbV1::Node>]
        attr_accessor :nodes
      
        # Observability Instance specific configuration.
        # Corresponds to the JSON property `observabilityConfig`
        # @return [Google::Apis::AlloydbV1::ObservabilityInstanceConfig]
        attr_accessor :observability_config
      
        # Output only. All outbound public IP addresses configured for the instance.
        # Corresponds to the JSON property `outboundPublicIpAddresses`
        # @return [Array<String>]
        attr_accessor :outbound_public_ip_addresses
      
        # PscInstanceConfig contains PSC related configuration at an instance level.
        # Corresponds to the JSON property `pscInstanceConfig`
        # @return [Google::Apis::AlloydbV1::PscInstanceConfig]
        attr_accessor :psc_instance_config
      
        # Output only. The public IP addresses for the Instance. This is available ONLY
        # when enable_public_ip is set. This is the connection endpoint for an end-user
        # application.
        # Corresponds to the JSON property `publicIpAddress`
        # @return [String]
        attr_accessor :public_ip_address
      
        # QueryInsights Instance specific configuration.
        # Corresponds to the JSON property `queryInsightsConfig`
        # @return [Google::Apis::AlloydbV1::QueryInsightsInstanceConfig]
        attr_accessor :query_insights_config
      
        # Configuration for a read pool instance.
        # Corresponds to the JSON property `readPoolConfig`
        # @return [Google::Apis::AlloydbV1::ReadPoolConfig]
        attr_accessor :read_pool_config
      
        # Output only. Reconciling (https://google.aip.dev/128#reconciliation). Set to
        # true if the current state of Instance does not match the user's intended state,
        # and the service is actively updating the resource to reconcile them. This can
        # happen due to user-triggered updates or system actions like failover or
        # maintenance.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Output only. The current serving state of the instance.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The system-generated UID of the resource. The UID is assigned
        # when the resource is created, and it is retained until it is deleted.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Update time stamp
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Details of a single node in the instance. Nodes in an AlloyDB instance are
        # ephemeral, they can change during update, failover, autohealing and resize
        # operations.
        # Corresponds to the JSON property `writableNode`
        # @return [Google::Apis::AlloydbV1::Node]
        attr_accessor :writable_node
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activation_policy = args[:activation_policy] if args.key?(:activation_policy)
          @annotations = args[:annotations] if args.key?(:annotations)
          @availability_type = args[:availability_type] if args.key?(:availability_type)
          @client_connection_config = args[:client_connection_config] if args.key?(:client_connection_config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @database_flags = args[:database_flags] if args.key?(:database_flags)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @gce_zone = args[:gce_zone] if args.key?(:gce_zone)
          @instance_type = args[:instance_type] if args.key?(:instance_type)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @labels = args[:labels] if args.key?(:labels)
          @machine_config = args[:machine_config] if args.key?(:machine_config)
          @name = args[:name] if args.key?(:name)
          @network_config = args[:network_config] if args.key?(:network_config)
          @nodes = args[:nodes] if args.key?(:nodes)
          @observability_config = args[:observability_config] if args.key?(:observability_config)
          @outbound_public_ip_addresses = args[:outbound_public_ip_addresses] if args.key?(:outbound_public_ip_addresses)
          @psc_instance_config = args[:psc_instance_config] if args.key?(:psc_instance_config)
          @public_ip_address = args[:public_ip_address] if args.key?(:public_ip_address)
          @query_insights_config = args[:query_insights_config] if args.key?(:query_insights_config)
          @read_pool_config = args[:read_pool_config] if args.key?(:read_pool_config)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @state = args[:state] if args.key?(:state)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @writable_node = args[:writable_node] if args.key?(:writable_node)
        end
      end
      
      # Metadata related to instance-level network configuration.
      class InstanceNetworkConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Name of the allocated IP range for the private IP AlloyDB instance,
        # for example: "google-managed-services-default". If set, the instance IPs will
        # be created from this allocated range and will override the IP range used by
        # the parent cluster. The range name must comply with [RFC 1035](http://
        # datatracker.ietf.org/doc/html/rfc1035). Specifically, the name must be 1-63
        # characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])?.
        # Corresponds to the JSON property `allocatedIpRangeOverride`
        # @return [String]
        attr_accessor :allocated_ip_range_override
      
        # Optional. A list of external network authorized to access this instance.
        # Corresponds to the JSON property `authorizedExternalNetworks`
        # @return [Array<Google::Apis::AlloydbV1::AuthorizedNetwork>]
        attr_accessor :authorized_external_networks
      
        # Optional. Enabling an outbound public IP address to support a database server
        # sending requests out into the internet.
        # Corresponds to the JSON property `enableOutboundPublicIp`
        # @return [Boolean]
        attr_accessor :enable_outbound_public_ip
        alias_method :enable_outbound_public_ip?, :enable_outbound_public_ip
      
        # Optional. Enabling public ip for the instance.
        # Corresponds to the JSON property `enablePublicIp`
        # @return [Boolean]
        attr_accessor :enable_public_ip
        alias_method :enable_public_ip?, :enable_public_ip
      
        # Output only. The resource link for the VPC network in which instance resources
        # are created and from which they are accessible via Private IP. This will be
        # the same value as the parent cluster's network. It is specified in the form: //
        # `projects/`project_number`/global/networks/`network_id``.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allocated_ip_range_override = args[:allocated_ip_range_override] if args.key?(:allocated_ip_range_override)
          @authorized_external_networks = args[:authorized_external_networks] if args.key?(:authorized_external_networks)
          @enable_outbound_public_ip = args[:enable_outbound_public_ip] if args.key?(:enable_outbound_public_ip)
          @enable_public_ip = args[:enable_public_ip] if args.key?(:enable_public_ip)
          @network = args[:network] if args.key?(:network)
        end
      end
      
      # Details regarding the upgrade of instances associated with a cluster.
      class InstanceUpgradeDetails
        include Google::Apis::Core::Hashable
      
        # Instance type.
        # Corresponds to the JSON property `instanceType`
        # @return [String]
        attr_accessor :instance_type
      
        # Normalized name of the instance.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Upgrade status of the instance.
        # Corresponds to the JSON property `upgradeStatus`
        # @return [String]
        attr_accessor :upgrade_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_type = args[:instance_type] if args.key?(:instance_type)
          @name = args[:name] if args.key?(:name)
          @upgrade_status = args[:upgrade_status] if args.key?(:upgrade_status)
        end
      end
      
      # Restrictions on INTEGER type values.
      class IntegerRestrictions
        include Google::Apis::Core::Hashable
      
        # The maximum value that can be specified, if applicable.
        # Corresponds to the JSON property `maxValue`
        # @return [Fixnum]
        attr_accessor :max_value
      
        # The minimum value that can be specified, if applicable.
        # Corresponds to the JSON property `minValue`
        # @return [Fixnum]
        attr_accessor :min_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_value = args[:max_value] if args.key?(:max_value)
          @min_value = args[:min_value] if args.key?(:min_value)
        end
      end
      
      # Message for response to listing Backups
      class ListBackupsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Backup
        # Corresponds to the JSON property `backups`
        # @return [Array<Google::Apis::AlloydbV1::Backup>]
        attr_accessor :backups
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backups = args[:backups] if args.key?(:backups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Message for response to listing Clusters
      class ListClustersResponse
        include Google::Apis::Core::Hashable
      
        # The list of Cluster
        # Corresponds to the JSON property `clusters`
        # @return [Array<Google::Apis::AlloydbV1::Cluster>]
        attr_accessor :clusters
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clusters = args[:clusters] if args.key?(:clusters)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Message for response to listing Instances
      class ListInstancesResponse
        include Google::Apis::Core::Hashable
      
        # The list of Instance
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::AlloydbV1::Instance>]
        attr_accessor :instances
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::AlloydbV1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # Message for response to listing SupportedDatabaseFlags.
      class ListSupportedDatabaseFlagsResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of SupportedDatabaseFlags.
        # Corresponds to the JSON property `supportedDatabaseFlags`
        # @return [Array<Google::Apis::AlloydbV1::SupportedDatabaseFlag>]
        attr_accessor :supported_database_flags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @supported_database_flags = args[:supported_database_flags] if args.key?(:supported_database_flags)
        end
      end
      
      # Message for response to listing Users
      class ListUsersResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # The list of User
        # Corresponds to the JSON property `users`
        # @return [Array<Google::Apis::AlloydbV1::User>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @users = args[:users] if args.key?(:users)
        end
      end
      
      # MachineConfig describes the configuration of a machine.
      class MachineConfig
        include Google::Apis::Core::Hashable
      
        # The number of CPU's in the VM instance.
        # Corresponds to the JSON property `cpuCount`
        # @return [Fixnum]
        attr_accessor :cpu_count
      
        # Machine type of the VM instance. E.g. "n2-highmem-4", "n2-highmem-8", "c4a-
        # highmem-4-lssd". cpu_count must match the number of vCPUs in the machine type.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu_count = args[:cpu_count] if args.key?(:cpu_count)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
        end
      end
      
      # MaintenanceSchedule stores the maintenance schedule generated from the
      # MaintenanceUpdatePolicy, once a maintenance rollout is triggered, if
      # MaintenanceWindow is set, and if there is no conflicting DenyPeriod. The
      # schedule is cleared once the update takes place. This field cannot be manually
      # changed; modify the MaintenanceUpdatePolicy instead.
      class MaintenanceSchedule
        include Google::Apis::Core::Hashable
      
        # Output only. The scheduled start time for the maintenance.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # MaintenanceUpdatePolicy defines the policy for system updates.
      class MaintenanceUpdatePolicy
        include Google::Apis::Core::Hashable
      
        # Periods to deny maintenance. Currently limited to 1.
        # Corresponds to the JSON property `denyMaintenancePeriods`
        # @return [Array<Google::Apis::AlloydbV1::DenyMaintenancePeriod>]
        attr_accessor :deny_maintenance_periods
      
        # Preferred windows to perform maintenance. Currently limited to 1.
        # Corresponds to the JSON property `maintenanceWindows`
        # @return [Array<Google::Apis::AlloydbV1::MaintenanceWindow>]
        attr_accessor :maintenance_windows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deny_maintenance_periods = args[:deny_maintenance_periods] if args.key?(:deny_maintenance_periods)
          @maintenance_windows = args[:maintenance_windows] if args.key?(:maintenance_windows)
        end
      end
      
      # MaintenanceWindow specifies a preferred day and time for maintenance.
      class MaintenanceWindow
        include Google::Apis::Core::Hashable
      
        # Preferred day of the week for maintenance, e.g. MONDAY, TUESDAY, etc.
        # Corresponds to the JSON property `day`
        # @return [String]
        attr_accessor :day
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startTime`
        # @return [Google::Apis::AlloydbV1::GoogleTypeTimeOfDay]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Subset of the source instance configuration that is available when reading the
      # cluster resource.
      class MigrationSource
        include Google::Apis::Core::Hashable
      
        # Output only. The host and port of the on-premises instance in host:port format
        # Corresponds to the JSON property `hostPort`
        # @return [String]
        attr_accessor :host_port
      
        # Output only. Place holder for the external source identifier(e.g DMS job name)
        # that created the cluster.
        # Corresponds to the JSON property `referenceId`
        # @return [String]
        attr_accessor :reference_id
      
        # Output only. Type of migration source.
        # Corresponds to the JSON property `sourceType`
        # @return [String]
        attr_accessor :source_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @host_port = args[:host_port] if args.key?(:host_port)
          @reference_id = args[:reference_id] if args.key?(:reference_id)
          @source_type = args[:source_type] if args.key?(:source_type)
        end
      end
      
      # Metadata related to network configuration.
      class NetworkConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Name of the allocated IP range for the private IP AlloyDB cluster,
        # for example: "google-managed-services-default". If set, the instance IPs for
        # this cluster will be created in the allocated range. The range name must
        # comply with RFC 1035. Specifically, the name must be 1-63 characters long and
        # match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. Field name is
        # intended to be consistent with Cloud SQL.
        # Corresponds to the JSON property `allocatedIpRange`
        # @return [String]
        attr_accessor :allocated_ip_range
      
        # Optional. The resource link for the VPC network in which cluster resources are
        # created and from which they are accessible via Private IP. The network must
        # belong to the same project as the cluster. It is specified in the form: `
        # projects/`project_number`/global/networks/`network_id``. This is required to
        # create a cluster.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allocated_ip_range = args[:allocated_ip_range] if args.key?(:allocated_ip_range)
          @network = args[:network] if args.key?(:network)
        end
      end
      
      # Details of a single node in the instance. Nodes in an AlloyDB instance are
      # ephemeral, they can change during update, failover, autohealing and resize
      # operations.
      class Node
        include Google::Apis::Core::Hashable
      
        # Output only. The identifier of the VM e.g. "test-read-0601-407e52be-ms3l".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. The private IP address of the VM e.g. "10.57.0.34".
        # Corresponds to the JSON property `ip`
        # @return [String]
        attr_accessor :ip
      
        # Output only. Determined by state of the compute VM and postgres-service health.
        # Compute VM state can have values listed in https://cloud.google.com/compute/
        # docs/instances/instance-life-cycle and postgres-service health can have values:
        # HEALTHY and UNHEALTHY.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The Compute Engine zone of the VM e.g. "us-central1-b".
        # Corresponds to the JSON property `zoneId`
        # @return [String]
        attr_accessor :zone_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @ip = args[:ip] if args.key?(:ip)
          @state = args[:state] if args.key?(:state)
          @zone_id = args[:zone_id] if args.key?(:zone_id)
        end
      end
      
      # Observability Instance specific configuration.
      class ObservabilityInstanceConfig
        include Google::Apis::Core::Hashable
      
        # Observability feature status for an instance. This flag is turned "off" by
        # default.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Query string length. The default value is 10k.
        # Corresponds to the JSON property `maxQueryStringLength`
        # @return [Fixnum]
        attr_accessor :max_query_string_length
      
        # Preserve comments in query string for an instance. This flag is turned "off"
        # by default.
        # Corresponds to the JSON property `preserveComments`
        # @return [Boolean]
        attr_accessor :preserve_comments
        alias_method :preserve_comments?, :preserve_comments
      
        # Number of query execution plans captured by Insights per minute for all
        # queries combined. The default value is 200. Any integer between 0 to 200 is
        # considered valid.
        # Corresponds to the JSON property `queryPlansPerMinute`
        # @return [Fixnum]
        attr_accessor :query_plans_per_minute
      
        # Record application tags for an instance. This flag is turned "off" by default.
        # Corresponds to the JSON property `recordApplicationTags`
        # @return [Boolean]
        attr_accessor :record_application_tags
        alias_method :record_application_tags?, :record_application_tags
      
        # Track actively running queries on the instance. If not set, this flag is "off"
        # by default.
        # Corresponds to the JSON property `trackActiveQueries`
        # @return [Boolean]
        attr_accessor :track_active_queries
        alias_method :track_active_queries?, :track_active_queries
      
        # Output only. Track wait event types during query execution for an instance.
        # This flag is turned "on" by default but tracking is enabled only after
        # observability enabled flag is also turned on. This is read-only flag and only
        # modifiable by internal API.
        # Corresponds to the JSON property `trackWaitEventTypes`
        # @return [Boolean]
        attr_accessor :track_wait_event_types
        alias_method :track_wait_event_types?, :track_wait_event_types
      
        # Track wait events during query execution for an instance. This flag is turned "
        # on" by default but tracking is enabled only after observability enabled flag
        # is also turned on.
        # Corresponds to the JSON property `trackWaitEvents`
        # @return [Boolean]
        attr_accessor :track_wait_events
        alias_method :track_wait_events?, :track_wait_events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @max_query_string_length = args[:max_query_string_length] if args.key?(:max_query_string_length)
          @preserve_comments = args[:preserve_comments] if args.key?(:preserve_comments)
          @query_plans_per_minute = args[:query_plans_per_minute] if args.key?(:query_plans_per_minute)
          @record_application_tags = args[:record_application_tags] if args.key?(:record_application_tags)
          @track_active_queries = args[:track_active_queries] if args.key?(:track_active_queries)
          @track_wait_event_types = args[:track_wait_event_types] if args.key?(:track_wait_event_types)
          @track_wait_events = args[:track_wait_events] if args.key?(:track_wait_events)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::AlloydbV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have successfully been cancelled have google.
        # longrunning.Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Message for current status of the Major Version Upgrade operation.
        # Corresponds to the JSON property `upgradeClusterStatus`
        # @return [Google::Apis::AlloydbV1::UpgradeClusterStatus]
        attr_accessor :upgrade_cluster_status
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @upgrade_cluster_status = args[:upgrade_cluster_status] if args.key?(:upgrade_cluster_status)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Configuration for the primary cluster. It has the list of clusters that are
      # replicating from this cluster. This should be set if and only if the cluster
      # is of type PRIMARY.
      class PrimaryConfig
        include Google::Apis::Core::Hashable
      
        # Output only. Names of the clusters that are replicating from this cluster.
        # Corresponds to the JSON property `secondaryClusterNames`
        # @return [Array<String>]
        attr_accessor :secondary_cluster_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @secondary_cluster_names = args[:secondary_cluster_names] if args.key?(:secondary_cluster_names)
        end
      end
      
      # Message for promoting a Cluster
      class PromoteClusterRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The current etag of the Cluster. If an etag is provided and does not
        # match the current etag of the Cluster, deletion will be blocked and an ABORTED
        # error will be returned.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server ignores the
        # request if it has already been completed. The server guarantees that for at
        # least 60 minutes since the first request. For example, consider a situation
        # where you make an initial request and the request times out. If you make the
        # request again with the same request ID, the server can check if original
        # operation with the same request ID was received, and if so, will ignore the
        # second request. This prevents clients from accidentally creating duplicate
        # commitments. The request ID must be a valid UUID with the exception that zero
        # UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Optional. If set, performs request validation, for example, permission checks
        # and any other type of validation, but does not actually execute the create
        # request.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @request_id = args[:request_id] if args.key?(:request_id)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Configuration for setting up PSC service automation. Consumer projects in the
      # configs will be allowlisted automatically for the instance.
      class PscAutoConnectionConfig
        include Google::Apis::Core::Hashable
      
        # The consumer network for the PSC service automation, example: "projects/vpc-
        # host-project/global/networks/default". The consumer network might be hosted a
        # different project than the consumer project.
        # Corresponds to the JSON property `consumerNetwork`
        # @return [String]
        attr_accessor :consumer_network
      
        # Output only. The status of the service connection policy. Possible values: "
        # STATE_UNSPECIFIED" - Default state, when Connection Map is created initially. "
        # VALID" - Set when policy and map configuration is valid, and their matching
        # can lead to allowing creation of PSC Connections subject to other constraints
        # like connections limit. "CONNECTION_POLICY_MISSING" - No Service Connection
        # Policy found for this network and Service Class "POLICY_LIMIT_REACHED" -
        # Service Connection Policy limit reached for this network and Service Class "
        # CONSUMER_INSTANCE_PROJECT_NOT_ALLOWLISTED" - The consumer instance project is
        # not in AllowedGoogleProducersResourceHierarchyLevels of the matching
        # ServiceConnectionPolicy.
        # Corresponds to the JSON property `consumerNetworkStatus`
        # @return [String]
        attr_accessor :consumer_network_status
      
        # The consumer project to which the PSC service automation endpoint will be
        # created.
        # Corresponds to the JSON property `consumerProject`
        # @return [String]
        attr_accessor :consumer_project
      
        # Output only. The IP address of the PSC service automation endpoint.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # Output only. The status of the PSC service automation connection. Possible
        # values: "STATE_UNSPECIFIED" - An invalid state as the default case. "ACTIVE" -
        # The connection has been created successfully. "FAILED" - The connection is not
        # functional since some resources on the connection fail to be created. "
        # CREATING" - The connection is being created. "DELETING" - The connection is
        # being deleted. "CREATE_REPAIRING" - The connection is being repaired to
        # complete creation. "DELETE_REPAIRING" - The connection is being repaired to
        # complete deletion.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumer_network = args[:consumer_network] if args.key?(:consumer_network)
          @consumer_network_status = args[:consumer_network_status] if args.key?(:consumer_network_status)
          @consumer_project = args[:consumer_project] if args.key?(:consumer_project)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # PscConfig contains PSC related configuration at a cluster level.
      class PscConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Create an instance that allows connections from Private Service
        # Connect endpoints to the instance.
        # Corresponds to the JSON property `pscEnabled`
        # @return [Boolean]
        attr_accessor :psc_enabled
        alias_method :psc_enabled?, :psc_enabled
      
        # Output only. The project number that needs to be allowlisted on the network
        # attachment to enable outbound connectivity.
        # Corresponds to the JSON property `serviceOwnedProjectNumber`
        # @return [Fixnum]
        attr_accessor :service_owned_project_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @psc_enabled = args[:psc_enabled] if args.key?(:psc_enabled)
          @service_owned_project_number = args[:service_owned_project_number] if args.key?(:service_owned_project_number)
        end
      end
      
      # PscInstanceConfig contains PSC related configuration at an instance level.
      class PscInstanceConfig
        include Google::Apis::Core::Hashable
      
        # Optional. List of consumer projects that are allowed to create PSC endpoints
        # to service-attachments to this instance.
        # Corresponds to the JSON property `allowedConsumerProjects`
        # @return [Array<String>]
        attr_accessor :allowed_consumer_projects
      
        # Optional. Configurations for setting up PSC service automation.
        # Corresponds to the JSON property `pscAutoConnections`
        # @return [Array<Google::Apis::AlloydbV1::PscAutoConnectionConfig>]
        attr_accessor :psc_auto_connections
      
        # Output only. The DNS name of the instance for PSC connectivity. Name
        # convention: ...alloydb-psc.goog
        # Corresponds to the JSON property `pscDnsName`
        # @return [String]
        attr_accessor :psc_dns_name
      
        # Optional. Configurations for setting up PSC interfaces attached to the
        # instance which are used for outbound connectivity. Only primary instances can
        # have PSC interface attached. Currently we only support 0 or 1 PSC interface.
        # Corresponds to the JSON property `pscInterfaceConfigs`
        # @return [Array<Google::Apis::AlloydbV1::PscInterfaceConfig>]
        attr_accessor :psc_interface_configs
      
        # Output only. The service attachment created when Private Service Connect (PSC)
        # is enabled for the instance. The name of the resource will be in the format of
        # `projects//regions//serviceAttachments/`
        # Corresponds to the JSON property `serviceAttachmentLink`
        # @return [String]
        attr_accessor :service_attachment_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_consumer_projects = args[:allowed_consumer_projects] if args.key?(:allowed_consumer_projects)
          @psc_auto_connections = args[:psc_auto_connections] if args.key?(:psc_auto_connections)
          @psc_dns_name = args[:psc_dns_name] if args.key?(:psc_dns_name)
          @psc_interface_configs = args[:psc_interface_configs] if args.key?(:psc_interface_configs)
          @service_attachment_link = args[:service_attachment_link] if args.key?(:service_attachment_link)
        end
      end
      
      # Configuration for setting up a PSC interface to enable outbound connectivity.
      class PscInterfaceConfig
        include Google::Apis::Core::Hashable
      
        # The network attachment resource created in the consumer network to which the
        # PSC interface will be linked. This is of the format: "projects/$`
        # CONSUMER_PROJECT`/regions/$`REGION`/networkAttachments/$`
        # NETWORK_ATTACHMENT_NAME`". The network attachment must be in the same region
        # as the instance.
        # Corresponds to the JSON property `networkAttachmentResource`
        # @return [String]
        attr_accessor :network_attachment_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network_attachment_resource = args[:network_attachment_resource] if args.key?(:network_attachment_resource)
        end
      end
      
      # A backup's position in a quantity-based retention queue, of backups with the
      # same source cluster and type, with length, retention, specified by the backup'
      # s retention policy. Once the position is greater than the retention, the
      # backup is eligible to be garbage collected. Example: 5 backups from the same
      # source cluster and type with a quantity-based retention of 3 and denoted by
      # backup_id (position, retention). Safe: backup_5 (1, 3), backup_4, (2, 3),
      # backup_3 (3, 3). Awaiting garbage collection: backup_2 (4, 3), backup_1 (5, 3)
      class QuantityBasedExpiry
        include Google::Apis::Core::Hashable
      
        # Output only. The backup's position among its backups with the same source
        # cluster and type, by descending chronological order create time(i.e. newest
        # first).
        # Corresponds to the JSON property `retentionCount`
        # @return [Fixnum]
        attr_accessor :retention_count
      
        # Output only. The length of the quantity-based queue, specified by the backup's
        # retention policy.
        # Corresponds to the JSON property `totalRetentionCount`
        # @return [Fixnum]
        attr_accessor :total_retention_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @retention_count = args[:retention_count] if args.key?(:retention_count)
          @total_retention_count = args[:total_retention_count] if args.key?(:total_retention_count)
        end
      end
      
      # A quantity based policy specifies that a certain number of the most recent
      # successful backups should be retained.
      class QuantityBasedRetention
        include Google::Apis::Core::Hashable
      
        # The number of backups to retain.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
        end
      end
      
      # QueryInsights Instance specific configuration.
      class QueryInsightsInstanceConfig
        include Google::Apis::Core::Hashable
      
        # Number of query execution plans captured by Insights per minute for all
        # queries combined. The default value is 5. Any integer between 0 and 20 is
        # considered valid.
        # Corresponds to the JSON property `queryPlansPerMinute`
        # @return [Fixnum]
        attr_accessor :query_plans_per_minute
      
        # Query string length. The default value is 1024. Any integer between 256 and
        # 4500 is considered valid.
        # Corresponds to the JSON property `queryStringLength`
        # @return [Fixnum]
        attr_accessor :query_string_length
      
        # Record application tags for an instance. This flag is turned "on" by default.
        # Corresponds to the JSON property `recordApplicationTags`
        # @return [Boolean]
        attr_accessor :record_application_tags
        alias_method :record_application_tags?, :record_application_tags
      
        # Record client address for an instance. Client address is PII information. This
        # flag is turned "on" by default.
        # Corresponds to the JSON property `recordClientAddress`
        # @return [Boolean]
        attr_accessor :record_client_address
        alias_method :record_client_address?, :record_client_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query_plans_per_minute = args[:query_plans_per_minute] if args.key?(:query_plans_per_minute)
          @query_string_length = args[:query_string_length] if args.key?(:query_string_length)
          @record_application_tags = args[:record_application_tags] if args.key?(:record_application_tags)
          @record_client_address = args[:record_client_address] if args.key?(:record_client_address)
        end
      end
      
      # Configuration for a read pool instance.
      class ReadPoolConfig
        include Google::Apis::Core::Hashable
      
        # Read capacity, i.e. number of nodes in a read pool instance.
        # Corresponds to the JSON property `nodeCount`
        # @return [Fixnum]
        attr_accessor :node_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node_count = args[:node_count] if args.key?(:node_count)
        end
      end
      
      # Read pool instances upgrade specific status.
      class ReadPoolInstancesUpgradeStageStatus
        include Google::Apis::Core::Hashable
      
        # Upgrade stats for read pool instances.
        # Corresponds to the JSON property `upgradeStats`
        # @return [Google::Apis::AlloydbV1::Stats]
        attr_accessor :upgrade_stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @upgrade_stats = args[:upgrade_stats] if args.key?(:upgrade_stats)
        end
      end
      
      # 
      class RestartInstanceRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Full name of the nodes as obtained from INSTANCE_VIEW_FULL to
        # restart upon. Applicable only to read instances.
        # Corresponds to the JSON property `nodeIds`
        # @return [Array<String>]
        attr_accessor :node_ids
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server ignores the
        # request if it has already been completed. The server guarantees that for at
        # least 60 minutes since the first request. For example, consider a situation
        # where you make an initial request and the request times out. If you make the
        # request again with the same request ID, the server can check if the original
        # operation with the same request ID was received, and if so, ignores the second
        # request. This prevents clients from accidentally creating duplicate
        # commitments. The request ID must be a valid UUID with the exception that zero
        # UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Optional. If set, performs request validation, for example, permission checks
        # and any other type of validation, but does not actually execute the create
        # request.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @node_ids = args[:node_ids] if args.key?(:node_ids)
          @request_id = args[:request_id] if args.key?(:request_id)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Message for restoring a Cluster from a backup or another cluster at a given
      # point in time. NEXT_ID: 11
      class RestoreClusterRequest
        include Google::Apis::Core::Hashable
      
        # Message describing a BackupSource.
        # Corresponds to the JSON property `backupSource`
        # @return [Google::Apis::AlloydbV1::BackupSource]
        attr_accessor :backup_source
      
        # A cluster is a collection of regional AlloyDB resources. It can include a
        # primary instance and one or more read pool instances. All cluster resources
        # share a storage layer, which scales as needed.
        # Corresponds to the JSON property `cluster`
        # @return [Google::Apis::AlloydbV1::Cluster]
        attr_accessor :cluster
      
        # Required. ID of the requesting object.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # Message describing a ContinuousBackupSource.
        # Corresponds to the JSON property `continuousBackupSource`
        # @return [Google::Apis::AlloydbV1::ContinuousBackupSource]
        attr_accessor :continuous_backup_source
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server ignores the
        # request if it has already been completed. The server guarantees that for at
        # least 60 minutes since the first request. For example, consider a situation
        # where you make an initial request and the request times out. If you make the
        # request again with the same request ID, the server can check if the original
        # operation with the same request ID was received, and if so, ignores the second
        # request. This prevents clients from accidentally creating duplicate
        # commitments. The request ID must be a valid UUID with the exception that zero
        # UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Optional. If set, performs request validation, for example, permission checks
        # and any other type of validation, but does not actually execute the create
        # request.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_source = args[:backup_source] if args.key?(:backup_source)
          @cluster = args[:cluster] if args.key?(:cluster)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @continuous_backup_source = args[:continuous_backup_source] if args.key?(:continuous_backup_source)
          @request_id = args[:request_id] if args.key?(:request_id)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Message for registering Restoring from CloudSQL resource.
      class RestoreFromCloudSqlRequest
        include Google::Apis::Core::Hashable
      
        # The source CloudSQL backup resource.
        # Corresponds to the JSON property `cloudsqlBackupRunSource`
        # @return [Google::Apis::AlloydbV1::CloudSqlBackupRunSource]
        attr_accessor :cloudsql_backup_run_source
      
        # A cluster is a collection of regional AlloyDB resources. It can include a
        # primary instance and one or more read pool instances. All cluster resources
        # share a storage layer, which scales as needed.
        # Corresponds to the JSON property `cluster`
        # @return [Google::Apis::AlloydbV1::Cluster]
        attr_accessor :cluster
      
        # Required. ID of the requesting object.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloudsql_backup_run_source = args[:cloudsql_backup_run_source] if args.key?(:cloudsql_backup_run_source)
          @cluster = args[:cluster] if args.key?(:cluster)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
        end
      end
      
      # Configuration information for the secondary cluster. This should be set if and
      # only if the cluster is of type SECONDARY.
      class SecondaryConfig
        include Google::Apis::Core::Hashable
      
        # The name of the primary cluster name with the format: * projects/`project`/
        # locations/`region`/clusters/`cluster_id`
        # Corresponds to the JSON property `primaryClusterName`
        # @return [String]
        attr_accessor :primary_cluster_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @primary_cluster_name = args[:primary_cluster_name] if args.key?(:primary_cluster_name)
        end
      end
      
      # Options for exporting data in SQL format.
      class SqlExportOptions
        include Google::Apis::Core::Hashable
      
        # Optional. If true, output commands to DROP all the dumped database objects
        # prior to outputting the commands for creating them.
        # Corresponds to the JSON property `cleanTargetObjects`
        # @return [Boolean]
        attr_accessor :clean_target_objects
        alias_method :clean_target_objects?, :clean_target_objects
      
        # Optional. If true, use DROP ... IF EXISTS commands to check for the object's
        # existence before dropping it in clean_target_objects mode.
        # Corresponds to the JSON property `ifExistTargetObjects`
        # @return [Boolean]
        attr_accessor :if_exist_target_objects
        alias_method :if_exist_target_objects?, :if_exist_target_objects
      
        # Optional. If true, only export the schema.
        # Corresponds to the JSON property `schemaOnly`
        # @return [Boolean]
        attr_accessor :schema_only
        alias_method :schema_only?, :schema_only
      
        # Optional. Tables to export from.
        # Corresponds to the JSON property `tables`
        # @return [Array<String>]
        attr_accessor :tables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clean_target_objects = args[:clean_target_objects] if args.key?(:clean_target_objects)
          @if_exist_target_objects = args[:if_exist_target_objects] if args.key?(:if_exist_target_objects)
          @schema_only = args[:schema_only] if args.key?(:schema_only)
          @tables = args[:tables] if args.key?(:tables)
        end
      end
      
      # Options for importing data in SQL format.
      class SqlImportOptions
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # SSL configuration.
      class SslConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is
        # supported currently, and is the default value.
        # Corresponds to the JSON property `caSource`
        # @return [String]
        attr_accessor :ca_source
      
        # Optional. SSL mode. Specifies client-server SSL/TLS connection behavior.
        # Corresponds to the JSON property `sslMode`
        # @return [String]
        attr_accessor :ssl_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_source = args[:ca_source] if args.key?(:ca_source)
          @ssl_mode = args[:ssl_mode] if args.key?(:ssl_mode)
        end
      end
      
      # Stage information for different stages in the upgrade process.
      class StageInfo
        include Google::Apis::Core::Hashable
      
        # logs_url is the URL for the logs associated with a stage if that stage has
        # logs. Right now, only three stages have logs: ALLOYDB_PRECHECK,
        # PG_UPGRADE_CHECK, PRIMARY_INSTANCE_UPGRADE.
        # Corresponds to the JSON property `logsUrl`
        # @return [String]
        attr_accessor :logs_url
      
        # The stage.
        # Corresponds to the JSON property `stage`
        # @return [String]
        attr_accessor :stage
      
        # Status of the stage.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @logs_url = args[:logs_url] if args.key?(:logs_url)
          @stage = args[:stage] if args.key?(:stage)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Status of an upgrade stage.
      class StageStatus
        include Google::Apis::Core::Hashable
      
        # Read pool instances upgrade specific status.
        # Corresponds to the JSON property `readPoolInstancesUpgrade`
        # @return [Google::Apis::AlloydbV1::ReadPoolInstancesUpgradeStageStatus]
        attr_accessor :read_pool_instances_upgrade
      
        # Upgrade stage.
        # Corresponds to the JSON property `stage`
        # @return [String]
        attr_accessor :stage
      
        # State of this stage.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @read_pool_instances_upgrade = args[:read_pool_instances_upgrade] if args.key?(:read_pool_instances_upgrade)
          @stage = args[:stage] if args.key?(:stage)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Upgrade stats for read pool instances.
      class Stats
        include Google::Apis::Core::Hashable
      
        # Number of read pool instances which failed to upgrade.
        # Corresponds to the JSON property `failed`
        # @return [Fixnum]
        attr_accessor :failed
      
        # Number of read pool instances for which upgrade has not started.
        # Corresponds to the JSON property `notStarted`
        # @return [Fixnum]
        attr_accessor :not_started
      
        # Number of read pool instances undergoing upgrade.
        # Corresponds to the JSON property `ongoing`
        # @return [Fixnum]
        attr_accessor :ongoing
      
        # Number of read pool instances successfully upgraded.
        # Corresponds to the JSON property `success`
        # @return [Fixnum]
        attr_accessor :success
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failed = args[:failed] if args.key?(:failed)
          @not_started = args[:not_started] if args.key?(:not_started)
          @ongoing = args[:ongoing] if args.key?(:ongoing)
          @success = args[:success] if args.key?(:success)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Configuration for availability of database instance
      class StorageDatabasecenterPartnerapiV1mainAvailabilityConfiguration
        include Google::Apis::Core::Hashable
      
        # Checks for existence of (multi-cluster) routing configuration that allows
        # automatic failover to a different zone/region in case of an outage. Applicable
        # to Bigtable resources.
        # Corresponds to the JSON property `automaticFailoverRoutingConfigured`
        # @return [Boolean]
        attr_accessor :automatic_failover_routing_configured
        alias_method :automatic_failover_routing_configured?, :automatic_failover_routing_configured
      
        # Availability type. Potential values: * `ZONAL`: The instance serves data from
        # only one zone. Outages in that zone affect data accessibility. * `REGIONAL`:
        # The instance can serve data from more than one zone in a region (it is highly
        # available).
        # Corresponds to the JSON property `availabilityType`
        # @return [String]
        attr_accessor :availability_type
      
        # Checks for resources that are configured to have redundancy, and ongoing
        # replication across regions
        # Corresponds to the JSON property `crossRegionReplicaConfigured`
        # @return [Boolean]
        attr_accessor :cross_region_replica_configured
        alias_method :cross_region_replica_configured?, :cross_region_replica_configured
      
        # 
        # Corresponds to the JSON property `externalReplicaConfigured`
        # @return [Boolean]
        attr_accessor :external_replica_configured
        alias_method :external_replica_configured?, :external_replica_configured
      
        # 
        # Corresponds to the JSON property `promotableReplicaConfigured`
        # @return [Boolean]
        attr_accessor :promotable_replica_configured
        alias_method :promotable_replica_configured?, :promotable_replica_configured
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automatic_failover_routing_configured = args[:automatic_failover_routing_configured] if args.key?(:automatic_failover_routing_configured)
          @availability_type = args[:availability_type] if args.key?(:availability_type)
          @cross_region_replica_configured = args[:cross_region_replica_configured] if args.key?(:cross_region_replica_configured)
          @external_replica_configured = args[:external_replica_configured] if args.key?(:external_replica_configured)
          @promotable_replica_configured = args[:promotable_replica_configured] if args.key?(:promotable_replica_configured)
        end
      end
      
      # Configuration for automatic backups
      class StorageDatabasecenterPartnerapiV1mainBackupConfiguration
        include Google::Apis::Core::Hashable
      
        # Whether customer visible automated backups are enabled on the instance.
        # Corresponds to the JSON property `automatedBackupEnabled`
        # @return [Boolean]
        attr_accessor :automated_backup_enabled
        alias_method :automated_backup_enabled?, :automated_backup_enabled
      
        # Backup retention settings.
        # Corresponds to the JSON property `backupRetentionSettings`
        # @return [Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainRetentionSettings]
        attr_accessor :backup_retention_settings
      
        # Whether point-in-time recovery is enabled. This is optional field, if the
        # database service does not have this feature or metadata is not available in
        # control plane, this can be omitted.
        # Corresponds to the JSON property `pointInTimeRecoveryEnabled`
        # @return [Boolean]
        attr_accessor :point_in_time_recovery_enabled
        alias_method :point_in_time_recovery_enabled?, :point_in_time_recovery_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automated_backup_enabled = args[:automated_backup_enabled] if args.key?(:automated_backup_enabled)
          @backup_retention_settings = args[:backup_retention_settings] if args.key?(:backup_retention_settings)
          @point_in_time_recovery_enabled = args[:point_in_time_recovery_enabled] if args.key?(:point_in_time_recovery_enabled)
        end
      end
      
      # A backup run.
      class StorageDatabasecenterPartnerapiV1mainBackupRun
        include Google::Apis::Core::Hashable
      
        # The time the backup operation completed. REQUIRED
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # An error that occurred during a backup creation operation.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainOperationError]
        attr_accessor :error
      
        # The time the backup operation started. REQUIRED
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The status of this run. REQUIRED
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @error = args[:error] if args.key?(:error)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Contains compliance information about a security standard indicating unmet
      # recommendations.
      class StorageDatabasecenterPartnerapiV1mainCompliance
        include Google::Apis::Core::Hashable
      
        # Industry-wide compliance standards or benchmarks, such as CIS, PCI, and OWASP.
        # Corresponds to the JSON property `standard`
        # @return [String]
        attr_accessor :standard
      
        # Version of the standard or benchmark, for example, 1.1
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @standard = args[:standard] if args.key?(:standard)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Any custom metadata associated with the resource. e.g. A spanner instance can
      # have multiple databases with its own unique metadata. Information for these
      # individual databases can be captured in custom metadata data
      class StorageDatabasecenterPartnerapiV1mainCustomMetadataData
        include Google::Apis::Core::Hashable
      
        # Metadata for individual internal resources in an instance. e.g. spanner
        # instance can have multiple databases with unique configuration.
        # Corresponds to the JSON property `internalResourceMetadata`
        # @return [Array<Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainInternalResourceMetadata>]
        attr_accessor :internal_resource_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @internal_resource_metadata = args[:internal_resource_metadata] if args.key?(:internal_resource_metadata)
        end
      end
      
      # DatabaseResourceFeed is the top level proto to be used to ingest different
      # database resource level events into Condor platform. Next ID: 8
      class StorageDatabasecenterPartnerapiV1mainDatabaseResourceFeed
        include Google::Apis::Core::Hashable
      
        # Required. Timestamp when feed is generated.
        # Corresponds to the JSON property `feedTimestamp`
        # @return [String]
        attr_accessor :feed_timestamp
      
        # Required. Type feed to be ingested into condor
        # Corresponds to the JSON property `feedType`
        # @return [String]
        attr_accessor :feed_type
      
        # 
        # Corresponds to the JSON property `observabilityMetricData`
        # @return [Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainObservabilityMetricData]
        attr_accessor :observability_metric_data
      
        # Common model for database resource recommendation signal data.
        # Corresponds to the JSON property `recommendationSignalData`
        # @return [Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceRecommendationSignalData]
        attr_accessor :recommendation_signal_data
      
        # Common model for database resource health signal data.
        # Corresponds to the JSON property `resourceHealthSignalData`
        # @return [Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceHealthSignalData]
        attr_accessor :resource_health_signal_data
      
        # DatabaseResourceId will serve as primary key for any resource ingestion event.
        # Corresponds to the JSON property `resourceId`
        # @return [Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId]
        attr_accessor :resource_id
      
        # Common model for database resource instance metadata. Next ID: 25
        # Corresponds to the JSON property `resourceMetadata`
        # @return [Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceMetadata]
        attr_accessor :resource_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @feed_timestamp = args[:feed_timestamp] if args.key?(:feed_timestamp)
          @feed_type = args[:feed_type] if args.key?(:feed_type)
          @observability_metric_data = args[:observability_metric_data] if args.key?(:observability_metric_data)
          @recommendation_signal_data = args[:recommendation_signal_data] if args.key?(:recommendation_signal_data)
          @resource_health_signal_data = args[:resource_health_signal_data] if args.key?(:resource_health_signal_data)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @resource_metadata = args[:resource_metadata] if args.key?(:resource_metadata)
        end
      end
      
      # Common model for database resource health signal data.
      class StorageDatabasecenterPartnerapiV1mainDatabaseResourceHealthSignalData
        include Google::Apis::Core::Hashable
      
        # Any other additional metadata
        # Corresponds to the JSON property `additionalMetadata`
        # @return [Hash<String,Object>]
        attr_accessor :additional_metadata
      
        # Industry standards associated with this signal; if this signal is an issue,
        # that could be a violation of the associated industry standard(s). For example,
        # AUTO_BACKUP_DISABLED signal is associated with CIS GCP 1.1, CIS GCP 1.2, CIS
        # GCP 1.3, NIST 800-53 and ISO-27001 compliance standards. If a database
        # resource does not have automated backup enable, it will violate these
        # following industry standards.
        # Corresponds to the JSON property `compliance`
        # @return [Array<Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainCompliance>]
        attr_accessor :compliance
      
        # Description associated with signal
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The last time at which the event described by this signal took place
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # The external-uri of the signal, using which more information about this signal
        # can be obtained. In GCP, this will take user to SCC page to get more details
        # about signals.
        # Corresponds to the JSON property `externalUri`
        # @return [String]
        attr_accessor :external_uri
      
        # This is used to identify the location of the resource. Example: "us-central1"
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Required. The name of the signal, ex: PUBLIC_SQL_INSTANCE,
        # SQL_LOG_ERROR_VERBOSITY etc.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Cloud provider name. Ex: GCP/AWS/Azure/OnPrem/SelfManaged
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        # Closest parent container of this resource. In GCP, 'container' refers to a
        # Cloud Resource Manager project. It must be resource name of a Cloud Resource
        # Manager project with the format of "provider//", such as "projects/123". For
        # GCP provided resources, number should be project number.
        # Corresponds to the JSON property `resourceContainer`
        # @return [String]
        attr_accessor :resource_container
      
        # Required. Database resource name associated with the signal. Resource name to
        # follow CAIS resource_name format as noted here go/condor-common-datamodel
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Required. The class of the signal, such as if it's a THREAT or VULNERABILITY.
        # Corresponds to the JSON property `signalClass`
        # @return [String]
        attr_accessor :signal_class
      
        # Required. Unique identifier for the signal. This is an unique id which would
        # be mainatined by partner to identify a signal.
        # Corresponds to the JSON property `signalId`
        # @return [String]
        attr_accessor :signal_id
      
        # The severity of the signal, such as if it's a HIGH or LOW severity.
        # Corresponds to the JSON property `signalSeverity`
        # @return [String]
        attr_accessor :signal_severity
      
        # Required. Type of signal, for example, `AVAILABLE_IN_MULTIPLE_ZONES`, `
        # LOGGING_MOST_ERRORS`, etc.
        # Corresponds to the JSON property `signalType`
        # @return [String]
        attr_accessor :signal_type
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_metadata = args[:additional_metadata] if args.key?(:additional_metadata)
          @compliance = args[:compliance] if args.key?(:compliance)
          @description = args[:description] if args.key?(:description)
          @event_time = args[:event_time] if args.key?(:event_time)
          @external_uri = args[:external_uri] if args.key?(:external_uri)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @provider = args[:provider] if args.key?(:provider)
          @resource_container = args[:resource_container] if args.key?(:resource_container)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @signal_class = args[:signal_class] if args.key?(:signal_class)
          @signal_id = args[:signal_id] if args.key?(:signal_id)
          @signal_severity = args[:signal_severity] if args.key?(:signal_severity)
          @signal_type = args[:signal_type] if args.key?(:signal_type)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # DatabaseResourceId will serve as primary key for any resource ingestion event.
      class StorageDatabasecenterPartnerapiV1mainDatabaseResourceId
        include Google::Apis::Core::Hashable
      
        # Required. Cloud provider name. Ex: GCP/AWS/Azure/OnPrem/SelfManaged
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        # Optional. Needs to be used only when the provider is PROVIDER_OTHER.
        # Corresponds to the JSON property `providerDescription`
        # @return [String]
        attr_accessor :provider_description
      
        # Required. The type of resource this ID is identifying. Ex go/keep-sorted start
        # alloydb.googleapis.com/Cluster, alloydb.googleapis.com/Instance, bigtableadmin.
        # googleapis.com/Cluster, bigtableadmin.googleapis.com/Instance compute.
        # googleapis.com/Instance firestore.googleapis.com/Database, redis.googleapis.
        # com/Instance, redis.googleapis.com/Cluster, oracledatabase.googleapis.com/
        # CloudExadataInfrastructure oracledatabase.googleapis.com/CloudVmCluster
        # oracledatabase.googleapis.com/AutonomousDatabase spanner.googleapis.com/
        # Instance, spanner.googleapis.com/Database, sqladmin.googleapis.com/Instance,
        # go/keep-sorted end REQUIRED Please refer go/condor-common-datamodel
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # Required. A service-local token that distinguishes this resource from other
        # resources within the same service.
        # Corresponds to the JSON property `uniqueId`
        # @return [String]
        attr_accessor :unique_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @provider = args[:provider] if args.key?(:provider)
          @provider_description = args[:provider_description] if args.key?(:provider_description)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @unique_id = args[:unique_id] if args.key?(:unique_id)
        end
      end
      
      # Common model for database resource instance metadata. Next ID: 25
      class StorageDatabasecenterPartnerapiV1mainDatabaseResourceMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for availability of database instance
        # Corresponds to the JSON property `availabilityConfiguration`
        # @return [Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainAvailabilityConfiguration]
        attr_accessor :availability_configuration
      
        # Configuration for automatic backups
        # Corresponds to the JSON property `backupConfiguration`
        # @return [Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainBackupConfiguration]
        attr_accessor :backup_configuration
      
        # A backup run.
        # Corresponds to the JSON property `backupRun`
        # @return [Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainBackupRun]
        attr_accessor :backup_run
      
        # The creation time of the resource, i.e. the time when resource is created and
        # recorded in partner service.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Current state of the instance.
        # Corresponds to the JSON property `currentState`
        # @return [String]
        attr_accessor :current_state
      
        # Any custom metadata associated with the resource. e.g. A spanner instance can
        # have multiple databases with its own unique metadata. Information for these
        # individual databases can be captured in custom metadata data
        # Corresponds to the JSON property `customMetadata`
        # @return [Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainCustomMetadataData]
        attr_accessor :custom_metadata
      
        # Optional. Edition represents whether the instance is ENTERPRISE or
        # ENTERPRISE_PLUS. This information is core to Cloud SQL only and is used to
        # identify the edition of the instance.
        # Corresponds to the JSON property `edition`
        # @return [String]
        attr_accessor :edition
      
        # Entitlements associated with the resource
        # Corresponds to the JSON property `entitlements`
        # @return [Array<Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainEntitlement>]
        attr_accessor :entitlements
      
        # The state that the instance is expected to be in. For example, an instance
        # state can transition to UNHEALTHY due to wrong patch update, while the
        # expected state will remain at the HEALTHY.
        # Corresponds to the JSON property `expectedState`
        # @return [String]
        attr_accessor :expected_state
      
        # GCBDR Configuration for the resource.
        # Corresponds to the JSON property `gcbdrConfiguration`
        # @return [Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainGcbdrConfiguration]
        attr_accessor :gcbdr_configuration
      
        # DatabaseResourceId will serve as primary key for any resource ingestion event.
        # Corresponds to the JSON property `id`
        # @return [Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId]
        attr_accessor :id
      
        # The type of the instance. Specified at creation time.
        # Corresponds to the JSON property `instanceType`
        # @return [String]
        attr_accessor :instance_type
      
        # The resource location. REQUIRED
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # MachineConfiguration describes the configuration of a machine specific to
        # Database Resource.
        # Corresponds to the JSON property `machineConfiguration`
        # @return [Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainMachineConfiguration]
        attr_accessor :machine_configuration
      
        # DatabaseResourceId will serve as primary key for any resource ingestion event.
        # Corresponds to the JSON property `primaryResourceId`
        # @return [Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId]
        attr_accessor :primary_resource_id
      
        # Primary resource location. REQUIRED if the immediate parent exists when first
        # time resource is getting ingested, otherwise optional.
        # Corresponds to the JSON property `primaryResourceLocation`
        # @return [String]
        attr_accessor :primary_resource_location
      
        # Product specification for Condor resources.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::AlloydbV1::StorageDatabasecenterProtoCommonProduct]
        attr_accessor :product
      
        # Closest parent Cloud Resource Manager container of this resource. It must be
        # resource name of a Cloud Resource Manager project with the format of "/", such
        # as "projects/123". For GCP provided resources, number should be project number.
        # Corresponds to the JSON property `resourceContainer`
        # @return [String]
        attr_accessor :resource_container
      
        # Required. Different from DatabaseResourceId.unique_id, a resource name can be
        # reused over time. That is, after a resource named "ABC" is deleted, the name "
        # ABC" can be used to to create a new resource within the same source. Resource
        # name to follow CAIS resource_name format as noted here go/condor-common-
        # datamodel
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Optional. Suspension reason for the resource.
        # Corresponds to the JSON property `suspensionReason`
        # @return [String]
        attr_accessor :suspension_reason
      
        # Message type for storing tags. Tags provide a way to create annotations for
        # resources, and in some cases conditionally allow or deny policies based on
        # whether a resource has a specific tag.
        # Corresponds to the JSON property `tagsSet`
        # @return [Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainTags]
        attr_accessor :tags_set
      
        # The time at which the resource was updated and recorded at partner service.
        # Corresponds to the JSON property `updationTime`
        # @return [String]
        attr_accessor :updation_time
      
        # Message type for storing user labels. User labels are used to tag App Engine
        # resources, allowing users to search for resources matching a set of labels and
        # to aggregate usage data by labels.
        # Corresponds to the JSON property `userLabelSet`
        # @return [Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainUserLabels]
        attr_accessor :user_label_set
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @availability_configuration = args[:availability_configuration] if args.key?(:availability_configuration)
          @backup_configuration = args[:backup_configuration] if args.key?(:backup_configuration)
          @backup_run = args[:backup_run] if args.key?(:backup_run)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @current_state = args[:current_state] if args.key?(:current_state)
          @custom_metadata = args[:custom_metadata] if args.key?(:custom_metadata)
          @edition = args[:edition] if args.key?(:edition)
          @entitlements = args[:entitlements] if args.key?(:entitlements)
          @expected_state = args[:expected_state] if args.key?(:expected_state)
          @gcbdr_configuration = args[:gcbdr_configuration] if args.key?(:gcbdr_configuration)
          @id = args[:id] if args.key?(:id)
          @instance_type = args[:instance_type] if args.key?(:instance_type)
          @location = args[:location] if args.key?(:location)
          @machine_configuration = args[:machine_configuration] if args.key?(:machine_configuration)
          @primary_resource_id = args[:primary_resource_id] if args.key?(:primary_resource_id)
          @primary_resource_location = args[:primary_resource_location] if args.key?(:primary_resource_location)
          @product = args[:product] if args.key?(:product)
          @resource_container = args[:resource_container] if args.key?(:resource_container)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @suspension_reason = args[:suspension_reason] if args.key?(:suspension_reason)
          @tags_set = args[:tags_set] if args.key?(:tags_set)
          @updation_time = args[:updation_time] if args.key?(:updation_time)
          @user_label_set = args[:user_label_set] if args.key?(:user_label_set)
        end
      end
      
      # Common model for database resource recommendation signal data.
      class StorageDatabasecenterPartnerapiV1mainDatabaseResourceRecommendationSignalData
        include Google::Apis::Core::Hashable
      
        # Optional. Any other additional metadata specific to recommendation
        # Corresponds to the JSON property `additionalMetadata`
        # @return [Hash<String,Object>]
        attr_accessor :additional_metadata
      
        # Required. last time recommendationw as refreshed
        # Corresponds to the JSON property `lastRefreshTime`
        # @return [String]
        attr_accessor :last_refresh_time
      
        # Required. Recommendation state
        # Corresponds to the JSON property `recommendationState`
        # @return [String]
        attr_accessor :recommendation_state
      
        # Required. Name of recommendation. Examples: organizations/1234/locations/us-
        # central1/recommenders/google.cloudsql.instance.PerformanceRecommender/
        # recommendations/9876
        # Corresponds to the JSON property `recommender`
        # @return [String]
        attr_accessor :recommender
      
        # Required. ID of recommender. Examples: "google.cloudsql.instance.
        # PerformanceRecommender"
        # Corresponds to the JSON property `recommenderId`
        # @return [String]
        attr_accessor :recommender_id
      
        # Required. Contains an identifier for a subtype of recommendations produced for
        # the same recommender. Subtype is a function of content and impact, meaning a
        # new subtype might be added when significant changes to `content` or `
        # primary_impact.category` are introduced. See the Recommenders section to see a
        # list of subtypes for a given Recommender. Examples: For recommender = "google.
        # cloudsql.instance.PerformanceRecommender", recommender_subtype can be "
        # MYSQL_HIGH_NUMBER_OF_OPEN_TABLES_BEST_PRACTICE"/"
        # POSTGRES_HIGH_TRANSACTION_ID_UTILIZATION_BEST_PRACTICE"
        # Corresponds to the JSON property `recommenderSubtype`
        # @return [String]
        attr_accessor :recommender_subtype
      
        # Required. Database resource name associated with the signal. Resource name to
        # follow CAIS resource_name format as noted here go/condor-common-datamodel
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Required. Type of signal, for example, `SIGNAL_TYPE_IDLE`, `
        # SIGNAL_TYPE_HIGH_NUMBER_OF_TABLES`, etc.
        # Corresponds to the JSON property `signalType`
        # @return [String]
        attr_accessor :signal_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_metadata = args[:additional_metadata] if args.key?(:additional_metadata)
          @last_refresh_time = args[:last_refresh_time] if args.key?(:last_refresh_time)
          @recommendation_state = args[:recommendation_state] if args.key?(:recommendation_state)
          @recommender = args[:recommender] if args.key?(:recommender)
          @recommender_id = args[:recommender_id] if args.key?(:recommender_id)
          @recommender_subtype = args[:recommender_subtype] if args.key?(:recommender_subtype)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @signal_type = args[:signal_type] if args.key?(:signal_type)
        end
      end
      
      # Proto representing the access that a user has to a specific feature/service.
      # NextId: 3.
      class StorageDatabasecenterPartnerapiV1mainEntitlement
        include Google::Apis::Core::Hashable
      
        # The current state of user's accessibility to a feature/benefit.
        # Corresponds to the JSON property `entitlementState`
        # @return [String]
        attr_accessor :entitlement_state
      
        # An enum that represents the type of this entitlement.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entitlement_state = args[:entitlement_state] if args.key?(:entitlement_state)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # GCBDR Configuration for the resource.
      class StorageDatabasecenterPartnerapiV1mainGcbdrConfiguration
        include Google::Apis::Core::Hashable
      
        # Whether the resource is managed by GCBDR.
        # Corresponds to the JSON property `gcbdrManaged`
        # @return [Boolean]
        attr_accessor :gcbdr_managed
        alias_method :gcbdr_managed?, :gcbdr_managed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcbdr_managed = args[:gcbdr_managed] if args.key?(:gcbdr_managed)
        end
      end
      
      # Metadata for individual internal resources in an instance. e.g. spanner
      # instance can have multiple databases with unique configuration settings.
      # Similarly bigtable can have multiple clusters within same bigtable instance.
      class StorageDatabasecenterPartnerapiV1mainInternalResourceMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for automatic backups
        # Corresponds to the JSON property `backupConfiguration`
        # @return [Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainBackupConfiguration]
        attr_accessor :backup_configuration
      
        # A backup run.
        # Corresponds to the JSON property `backupRun`
        # @return [Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainBackupRun]
        attr_accessor :backup_run
      
        # Whether deletion protection is enabled for this internal resource.
        # Corresponds to the JSON property `isDeletionProtectionEnabled`
        # @return [Boolean]
        attr_accessor :is_deletion_protection_enabled
        alias_method :is_deletion_protection_enabled?, :is_deletion_protection_enabled
      
        # Product specification for Condor resources.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::AlloydbV1::StorageDatabasecenterProtoCommonProduct]
        attr_accessor :product
      
        # DatabaseResourceId will serve as primary key for any resource ingestion event.
        # Corresponds to the JSON property `resourceId`
        # @return [Google::Apis::AlloydbV1::StorageDatabasecenterPartnerapiV1mainDatabaseResourceId]
        attr_accessor :resource_id
      
        # Required. internal resource name for spanner this will be database name e.g."
        # spanner.googleapis.com/projects/123/abc/instances/inst1/databases/db1"
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_configuration = args[:backup_configuration] if args.key?(:backup_configuration)
          @backup_run = args[:backup_run] if args.key?(:backup_run)
          @is_deletion_protection_enabled = args[:is_deletion_protection_enabled] if args.key?(:is_deletion_protection_enabled)
          @product = args[:product] if args.key?(:product)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # MachineConfiguration describes the configuration of a machine specific to
      # Database Resource.
      class StorageDatabasecenterPartnerapiV1mainMachineConfiguration
        include Google::Apis::Core::Hashable
      
        # The number of CPUs. Deprecated. Use vcpu_count instead. TODO(b/342344482) add
        # proto validations again after bug fix.
        # Corresponds to the JSON property `cpuCount`
        # @return [Fixnum]
        attr_accessor :cpu_count
      
        # Memory size in bytes. TODO(b/342344482) add proto validations again after bug
        # fix.
        # Corresponds to the JSON property `memorySizeInBytes`
        # @return [Fixnum]
        attr_accessor :memory_size_in_bytes
      
        # Optional. Number of shards (if applicable).
        # Corresponds to the JSON property `shardCount`
        # @return [Fixnum]
        attr_accessor :shard_count
      
        # Optional. The number of vCPUs. TODO(b/342344482) add proto validations again
        # after bug fix.
        # Corresponds to the JSON property `vcpuCount`
        # @return [Float]
        attr_accessor :vcpu_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu_count = args[:cpu_count] if args.key?(:cpu_count)
          @memory_size_in_bytes = args[:memory_size_in_bytes] if args.key?(:memory_size_in_bytes)
          @shard_count = args[:shard_count] if args.key?(:shard_count)
          @vcpu_count = args[:vcpu_count] if args.key?(:vcpu_count)
        end
      end
      
      # 
      class StorageDatabasecenterPartnerapiV1mainObservabilityMetricData
        include Google::Apis::Core::Hashable
      
        # Required. Type of aggregation performed on the metric.
        # Corresponds to the JSON property `aggregationType`
        # @return [String]
        attr_accessor :aggregation_type
      
        # Required. Type of metric like CPU, Memory, etc.
        # Corresponds to the JSON property `metricType`
        # @return [String]
        attr_accessor :metric_type
      
        # Required. The time the metric value was observed.
        # Corresponds to the JSON property `observationTime`
        # @return [String]
        attr_accessor :observation_time
      
        # Required. Database resource name associated with the signal. Resource name to
        # follow CAIS resource_name format as noted here go/condor-common-datamodel
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # TypedValue represents the value of a metric type. It can either be a double,
        # an int64, a string or a bool.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::AlloydbV1::StorageDatabasecenterProtoCommonTypedValue]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_type = args[:aggregation_type] if args.key?(:aggregation_type)
          @metric_type = args[:metric_type] if args.key?(:metric_type)
          @observation_time = args[:observation_time] if args.key?(:observation_time)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # An error that occurred during a backup creation operation.
      class StorageDatabasecenterPartnerapiV1mainOperationError
        include Google::Apis::Core::Hashable
      
        # Identifies the specific error that occurred. REQUIRED
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # 
        # Corresponds to the JSON property `errorType`
        # @return [String]
        attr_accessor :error_type
      
        # Additional information about the error encountered. REQUIRED
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @error_type = args[:error_type] if args.key?(:error_type)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # 
      class StorageDatabasecenterPartnerapiV1mainRetentionSettings
        include Google::Apis::Core::Hashable
      
        # Duration based retention period i.e. 172800 seconds (2 days)
        # Corresponds to the JSON property `durationBasedRetention`
        # @return [String]
        attr_accessor :duration_based_retention
      
        # 
        # Corresponds to the JSON property `quantityBasedRetention`
        # @return [Fixnum]
        attr_accessor :quantity_based_retention
      
        # The unit that 'retained_backups' represents.
        # Corresponds to the JSON property `retentionUnit`
        # @return [String]
        attr_accessor :retention_unit
      
        # 
        # Corresponds to the JSON property `timeBasedRetention`
        # @return [String]
        attr_accessor :time_based_retention
      
        # Timestamp based retention period i.e. 2024-05-01T00:00:00Z
        # Corresponds to the JSON property `timestampBasedRetentionTime`
        # @return [String]
        attr_accessor :timestamp_based_retention_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration_based_retention = args[:duration_based_retention] if args.key?(:duration_based_retention)
          @quantity_based_retention = args[:quantity_based_retention] if args.key?(:quantity_based_retention)
          @retention_unit = args[:retention_unit] if args.key?(:retention_unit)
          @time_based_retention = args[:time_based_retention] if args.key?(:time_based_retention)
          @timestamp_based_retention_time = args[:timestamp_based_retention_time] if args.key?(:timestamp_based_retention_time)
        end
      end
      
      # Message type for storing tags. Tags provide a way to create annotations for
      # resources, and in some cases conditionally allow or deny policies based on
      # whether a resource has a specific tag.
      class StorageDatabasecenterPartnerapiV1mainTags
        include Google::Apis::Core::Hashable
      
        # The Tag key/value mappings.
        # Corresponds to the JSON property `tags`
        # @return [Hash<String,String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # Message type for storing user labels. User labels are used to tag App Engine
      # resources, allowing users to search for resources matching a set of labels and
      # to aggregate usage data by labels.
      class StorageDatabasecenterPartnerapiV1mainUserLabels
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # Product specification for Condor resources.
      class StorageDatabasecenterProtoCommonProduct
        include Google::Apis::Core::Hashable
      
        # The specific engine that the underlying database is running.
        # Corresponds to the JSON property `engine`
        # @return [String]
        attr_accessor :engine
      
        # Type of specific database product. It could be CloudSQL, AlloyDB etc..
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Version of the underlying database engine. Example values: For MySQL, it could
        # be "8.0", "5.7" etc.. For Postgres, it could be "14", "15" etc..
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @engine = args[:engine] if args.key?(:engine)
          @type = args[:type] if args.key?(:type)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # TypedValue represents the value of a metric type. It can either be a double,
      # an int64, a string or a bool.
      class StorageDatabasecenterProtoCommonTypedValue
        include Google::Apis::Core::Hashable
      
        # For boolean value
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # For double value
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # For integer value
        # Corresponds to the JSON property `int64Value`
        # @return [Fixnum]
        attr_accessor :int64_value
      
        # For string value
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @double_value = args[:double_value] if args.key?(:double_value)
          @int64_value = args[:int64_value] if args.key?(:int64_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # Restrictions on STRING type values
      class StringRestrictions
        include Google::Apis::Core::Hashable
      
        # The list of allowed values, if bounded. This field will be empty if there is a
        # unbounded number of allowed values.
        # Corresponds to the JSON property `allowedValues`
        # @return [Array<String>]
        attr_accessor :allowed_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_values = args[:allowed_values] if args.key?(:allowed_values)
        end
      end
      
      # SupportedDatabaseFlag gives general information about a database flag, like
      # type and allowed values. This is a static value that is defined on the server
      # side, and it cannot be modified by callers. To set the Database flags on a
      # particular Instance, a caller should modify the Instance.database_flags field.
      class SupportedDatabaseFlag
        include Google::Apis::Core::Hashable
      
        # Whether the database flag accepts multiple values. If true, a comma-separated
        # list of stringified values may be specified.
        # Corresponds to the JSON property `acceptsMultipleValues`
        # @return [Boolean]
        attr_accessor :accepts_multiple_values
        alias_method :accepts_multiple_values?, :accepts_multiple_values
      
        # The name of the database flag, e.g. "max_allowed_packets". The is a possibly
        # key for the Instance.database_flags map field.
        # Corresponds to the JSON property `flagName`
        # @return [String]
        attr_accessor :flag_name
      
        # Restrictions on INTEGER type values.
        # Corresponds to the JSON property `integerRestrictions`
        # @return [Google::Apis::AlloydbV1::IntegerRestrictions]
        attr_accessor :integer_restrictions
      
        # The name of the flag resource, following Google Cloud conventions, e.g.: *
        # projects/`project`/locations/`location`/flags/`flag` This field currently has
        # no semantic meaning.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The recommended value for an INTEGER flag.
        # Corresponds to the JSON property `recommendedIntegerValue`
        # @return [Fixnum]
        attr_accessor :recommended_integer_value
      
        # The recommended value for a STRING flag.
        # Corresponds to the JSON property `recommendedStringValue`
        # @return [String]
        attr_accessor :recommended_string_value
      
        # Whether setting or updating this flag on an Instance requires a database
        # restart. If a flag that requires database restart is set, the backend will
        # automatically restart the database (making sure to satisfy any availability
        # SLO's).
        # Corresponds to the JSON property `requiresDbRestart`
        # @return [Boolean]
        attr_accessor :requires_db_restart
        alias_method :requires_db_restart?, :requires_db_restart
      
        # The scope of the flag.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # Restrictions on STRING type values
        # Corresponds to the JSON property `stringRestrictions`
        # @return [Google::Apis::AlloydbV1::StringRestrictions]
        attr_accessor :string_restrictions
      
        # Major database engine versions for which this flag is supported.
        # Corresponds to the JSON property `supportedDbVersions`
        # @return [Array<String>]
        attr_accessor :supported_db_versions
      
        # 
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accepts_multiple_values = args[:accepts_multiple_values] if args.key?(:accepts_multiple_values)
          @flag_name = args[:flag_name] if args.key?(:flag_name)
          @integer_restrictions = args[:integer_restrictions] if args.key?(:integer_restrictions)
          @name = args[:name] if args.key?(:name)
          @recommended_integer_value = args[:recommended_integer_value] if args.key?(:recommended_integer_value)
          @recommended_string_value = args[:recommended_string_value] if args.key?(:recommended_string_value)
          @requires_db_restart = args[:requires_db_restart] if args.key?(:requires_db_restart)
          @scope = args[:scope] if args.key?(:scope)
          @string_restrictions = args[:string_restrictions] if args.key?(:string_restrictions)
          @supported_db_versions = args[:supported_db_versions] if args.key?(:supported_db_versions)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Message for switching over to a cluster
      class SwitchoverClusterRequest
        include Google::Apis::Core::Hashable
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server ignores the
        # request if it has already been completed. The server guarantees that for at
        # least 60 minutes since the first request. For example, consider a situation
        # where you make an initial request and the request times out. If you make the
        # request again with the same request ID, the server can check if the original
        # operation with the same request ID was received, and if so, ignores the second
        # request. This prevents clients from accidentally creating duplicate
        # commitments. The request ID must be a valid UUID with the exception that zero
        # UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Optional. If set, performs request validation, for example, permission checks
        # and any other type of validation, but does not actually execute the create
        # request.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # A time based retention policy specifies that all backups within a certain time
      # period should be retained.
      class TimeBasedRetention
        include Google::Apis::Core::Hashable
      
        # The retention period.
        # Corresponds to the JSON property `retentionPeriod`
        # @return [String]
        attr_accessor :retention_period
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @retention_period = args[:retention_period] if args.key?(:retention_period)
        end
      end
      
      # Contains information and all metadata related to TRIAL clusters.
      class TrialMetadata
        include Google::Apis::Core::Hashable
      
        # End time of the trial cluster.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # grace end time of the cluster.
        # Corresponds to the JSON property `graceEndTime`
        # @return [String]
        attr_accessor :grace_end_time
      
        # start time of the trial cluster.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Upgrade time of trial cluster to Standard cluster.
        # Corresponds to the JSON property `upgradeTime`
        # @return [String]
        attr_accessor :upgrade_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @grace_end_time = args[:grace_end_time] if args.key?(:grace_end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @upgrade_time = args[:upgrade_time] if args.key?(:upgrade_time)
        end
      end
      
      # Upgrades a cluster.
      class UpgradeClusterRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The current etag of the Cluster. If an etag is provided and does not
        # match the current etag of the Cluster, upgrade will be blocked and an ABORTED
        # error will be returned.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server ignores the
        # request if it has already been completed. The server guarantees that for at
        # least 60 minutes since the first request. For example, consider a situation
        # where you make an initial request and the request times out. If you make the
        # request again with the same request ID, the server can check if the original
        # operation with the same request ID was received, and if so, ignores the second
        # request. This prevents clients from accidentally creating duplicate
        # commitments. The request ID must be a valid UUID with the exception that zero
        # UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Optional. If set, performs request validation, for example, permission checks
        # and any other type of validation, but does not actually execute the create
        # request.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        # Required. The version the cluster is going to be upgraded to.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @request_id = args[:request_id] if args.key?(:request_id)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # UpgradeClusterResponse contains the response for upgrade cluster operation.
      class UpgradeClusterResponse
        include Google::Apis::Core::Hashable
      
        # Array of upgrade details for the current cluster and all the secondary
        # clusters associated with this cluster.
        # Corresponds to the JSON property `clusterUpgradeDetails`
        # @return [Array<Google::Apis::AlloydbV1::ClusterUpgradeDetails>]
        attr_accessor :cluster_upgrade_details
      
        # A user friendly message summarising the upgrade operation details and the next
        # steps for the user if there is any.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Status of upgrade operation.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_upgrade_details = args[:cluster_upgrade_details] if args.key?(:cluster_upgrade_details)
          @message = args[:message] if args.key?(:message)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Message for current status of the Major Version Upgrade operation.
      class UpgradeClusterStatus
        include Google::Apis::Core::Hashable
      
        # Whether the operation is cancellable.
        # Corresponds to the JSON property `cancellable`
        # @return [Boolean]
        attr_accessor :cancellable
        alias_method :cancellable?, :cancellable
      
        # Source database major version.
        # Corresponds to the JSON property `sourceVersion`
        # @return [String]
        attr_accessor :source_version
      
        # Status of all upgrade stages.
        # Corresponds to the JSON property `stages`
        # @return [Array<Google::Apis::AlloydbV1::StageStatus>]
        attr_accessor :stages
      
        # Cluster Major Version Upgrade state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Target database major version.
        # Corresponds to the JSON property `targetVersion`
        # @return [String]
        attr_accessor :target_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cancellable = args[:cancellable] if args.key?(:cancellable)
          @source_version = args[:source_version] if args.key?(:source_version)
          @stages = args[:stages] if args.key?(:stages)
          @state = args[:state] if args.key?(:state)
          @target_version = args[:target_version] if args.key?(:target_version)
        end
      end
      
      # Message describing User object.
      class User
        include Google::Apis::Core::Hashable
      
        # Optional. List of database roles this user has. The database role strings are
        # subject to the PostgreSQL naming conventions.
        # Corresponds to the JSON property `databaseRoles`
        # @return [Array<String>]
        attr_accessor :database_roles
      
        # Input only. If the user already exists and it has additional roles, keep them
        # granted.
        # Corresponds to the JSON property `keepExtraRoles`
        # @return [Boolean]
        attr_accessor :keep_extra_roles
        alias_method :keep_extra_roles?, :keep_extra_roles
      
        # Output only. Name of the resource in the form of projects/`project`/locations/`
        # location`/cluster/`cluster`/users/`user`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Input only. Password for the user.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Optional. Type of this user.
        # Corresponds to the JSON property `userType`
        # @return [String]
        attr_accessor :user_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_roles = args[:database_roles] if args.key?(:database_roles)
          @keep_extra_roles = args[:keep_extra_roles] if args.key?(:keep_extra_roles)
          @name = args[:name] if args.key?(:name)
          @password = args[:password] if args.key?(:password)
          @user_type = args[:user_type] if args.key?(:user_type)
        end
      end
      
      # The username/password for a database user. Used for specifying initial users
      # at cluster creation time.
      class UserPassword
        include Google::Apis::Core::Hashable
      
        # The initial password for the user.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # The database username.
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @password = args[:password] if args.key?(:password)
          @user = args[:user] if args.key?(:user)
        end
      end
      
      # A weekly schedule starts a backup at prescribed start times within a day, for
      # the specified days of the week. The weekly schedule message is flexible and
      # can be used to create many types of schedules. For example, to have a daily
      # backup that starts at 22:00, configure the `start_times` field to have one
      # element "22:00" and the `days_of_week` field to have all seven days of the
      # week.
      class WeeklySchedule
        include Google::Apis::Core::Hashable
      
        # The days of the week to perform a backup. If this field is left empty, the
        # default of every day of the week is used.
        # Corresponds to the JSON property `daysOfWeek`
        # @return [Array<String>]
        attr_accessor :days_of_week
      
        # The times during the day to start a backup. The start times are assumed to be
        # in UTC and to be an exact hour (e.g., 04:00:00). If no start times are
        # provided, a single fixed start time is chosen arbitrarily.
        # Corresponds to the JSON property `startTimes`
        # @return [Array<Google::Apis::AlloydbV1::GoogleTypeTimeOfDay>]
        attr_accessor :start_times
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @days_of_week = args[:days_of_week] if args.key?(:days_of_week)
          @start_times = args[:start_times] if args.key?(:start_times)
        end
      end
    end
  end
end
