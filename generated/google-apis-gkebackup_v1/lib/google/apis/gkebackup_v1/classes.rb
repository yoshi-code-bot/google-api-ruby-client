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
    module GkebackupV1
      
      # Specifies the audit configuration for a service. The configuration determines
      # which permission types are logged, and what identities, if any, are exempted
      # from logging. An AuditConfig must have one or more AuditLogConfigs. If there
      # are AuditConfigs for both `allServices` and a specific service, the union of
      # the two AuditConfigs is used for that service: the log_types specified in each
      # AuditConfig are enabled, and the exempted_members in each AuditLogConfig are
      # exempted. Example Policy with multiple AuditConfigs: ` "audit_configs": [ ` "
      # service": "allServices", "audit_log_configs": [ ` "log_type": "DATA_READ", "
      # exempted_members": [ "user:jose@example.com" ] `, ` "log_type": "DATA_WRITE" `,
      # ` "log_type": "ADMIN_READ" ` ] `, ` "service": "sampleservice.googleapis.com",
      # "audit_log_configs": [ ` "log_type": "DATA_READ" `, ` "log_type": "DATA_WRITE"
      # , "exempted_members": [ "user:aliya@example.com" ] ` ] ` ] ` For sampleservice,
      # this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also
      # exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com`
      # from DATA_WRITE logging.
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::GkebackupV1::AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # Specifies a service that will be enabled for audit logging. For example, `
        # storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special
        # value that covers all services.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_log_configs = args[:audit_log_configs] if args.key?(:audit_log_configs)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Provides the configuration for logging a type of permissions. Example: ` "
      # audit_log_configs": [ ` "log_type": "DATA_READ", "exempted_members": [ "user:
      # jose@example.com" ] `, ` "log_type": "DATA_WRITE" ` ] ` This enables '
      # DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from
      # DATA_READ logging.
      class AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the identities that do not cause logging for this type of permission.
        # Follows the same format of Binding.members.
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # The log type that this config enables.
        # Corresponds to the JSON property `logType`
        # @return [String]
        attr_accessor :log_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @log_type = args[:log_type] if args.key?(:log_type)
        end
      end
      
      # Represents a request to perform a single point-in-time capture of some portion
      # of the state of a GKE cluster, the record of the backup operation itself, and
      # an anchor for the underlying artifacts that comprise the Backup (the config
      # backup and VolumeBackups).
      class Backup
        include Google::Apis::Core::Hashable
      
        # Output only. If True, all namespaces were included in the Backup.
        # Corresponds to the JSON property `allNamespaces`
        # @return [Boolean]
        attr_accessor :all_namespaces
        alias_method :all_namespaces?, :all_namespaces
      
        # Information about the GKE cluster from which this Backup was created.
        # Corresponds to the JSON property `clusterMetadata`
        # @return [Google::Apis::GkebackupV1::ClusterMetadata]
        attr_accessor :cluster_metadata
      
        # Output only. Completion time of the Backup
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # Output only. The size of the config backup in bytes.
        # Corresponds to the JSON property `configBackupSizeBytes`
        # @return [Fixnum]
        attr_accessor :config_backup_size_bytes
      
        # Output only. Whether or not the Backup contains Kubernetes Secrets. Controlled
        # by the parent BackupPlan's include_secrets value.
        # Corresponds to the JSON property `containsSecrets`
        # @return [Boolean]
        attr_accessor :contains_secrets
        alias_method :contains_secrets?, :contains_secrets
      
        # Output only. Whether or not the Backup contains volume data. Controlled by the
        # parent BackupPlan's include_volume_data value.
        # Corresponds to the JSON property `containsVolumeData`
        # @return [Boolean]
        attr_accessor :contains_volume_data
        alias_method :contains_volume_data?, :contains_volume_data
      
        # Output only. The timestamp when this Backup resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Minimum age for this Backup (in days). If this field is set to a non-
        # zero value, the Backup will be "locked" against deletion (either manual or
        # automatic deletion) for the number of days provided (measured from the
        # creation time of the Backup). MUST be an integer value between 0-90 (inclusive)
        # . Defaults to parent BackupPlan's backup_delete_lock_days setting and may only
        # be increased (either at creation time or in a subsequent update).
        # Corresponds to the JSON property `deleteLockDays`
        # @return [Fixnum]
        attr_accessor :delete_lock_days
      
        # Output only. The time at which an existing delete lock will expire for this
        # backup (calculated from create_time + delete_lock_days).
        # Corresponds to the JSON property `deleteLockExpireTime`
        # @return [String]
        attr_accessor :delete_lock_expire_time
      
        # Optional. User specified descriptive string for this Backup.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Defined a customer managed encryption key that will be used to encrypt Backup
        # artifacts.
        # Corresponds to the JSON property `encryptionKey`
        # @return [Google::Apis::GkebackupV1::EncryptionKey]
        attr_accessor :encryption_key
      
        # Output only. `etag` is used for optimistic concurrency control as a way to
        # help prevent simultaneous updates of a backup from overwriting each other. It
        # is strongly suggested that systems make use of the `etag` in the read-modify-
        # write cycle to perform backup updates in order to avoid race conditions: An `
        # etag` is returned in the response to `GetBackup`, and systems are expected to
        # put that etag in the request to `UpdateBackup` or `DeleteBackup` to ensure
        # that their change will be applied to the same version of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. A set of custom labels supplied by user.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. This flag indicates whether this Backup resource was created
        # manually by a user or via a schedule in the BackupPlan. A value of True means
        # that the Backup was created manually.
        # Corresponds to the JSON property `manual`
        # @return [Boolean]
        attr_accessor :manual
        alias_method :manual?, :manual
      
        # Output only. The fully qualified name of the Backup. `projects/*/locations/*/
        # backupPlans/*/backups/*`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. If false, Backup will fail when Backup for GKE detects Kubernetes
        # configuration that is non-standard or requires additional setup to restore.
        # Inherited from the parent BackupPlan's permissive_mode value.
        # Corresponds to the JSON property `permissiveMode`
        # @return [Boolean]
        attr_accessor :permissive_mode
        alias_method :permissive_mode?, :permissive_mode
      
        # Output only. The total number of Kubernetes Pods contained in the Backup.
        # Corresponds to the JSON property `podCount`
        # @return [Fixnum]
        attr_accessor :pod_count
      
        # Output only. The total number of Kubernetes resources included in the Backup.
        # Corresponds to the JSON property `resourceCount`
        # @return [Fixnum]
        attr_accessor :resource_count
      
        # Optional. The age (in days) after which this Backup will be automatically
        # deleted. Must be an integer value >= 0: - If 0, no automatic deletion will
        # occur for this Backup. - If not 0, this must be >= delete_lock_days and <= 365.
        # Once a Backup is created, this value may only be increased. Defaults to the
        # parent BackupPlan's backup_retain_days value.
        # Corresponds to the JSON property `retainDays`
        # @return [Fixnum]
        attr_accessor :retain_days
      
        # Output only. The time at which this Backup will be automatically deleted (
        # calculated from create_time + retain_days).
        # Corresponds to the JSON property `retainExpireTime`
        # @return [String]
        attr_accessor :retain_expire_time
      
        # Output only. [Output Only] Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # Output only. [Output Only] Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # A list of namespaced Kubernetes resources.
        # Corresponds to the JSON property `selectedApplications`
        # @return [Google::Apis::GkebackupV1::NamespacedNames]
        attr_accessor :selected_applications
      
        # A list of Kubernetes labels.
        # Corresponds to the JSON property `selectedNamespaceLabels`
        # @return [Google::Apis::GkebackupV1::ResourceLabels]
        attr_accessor :selected_namespace_labels
      
        # A list of Kubernetes Namespaces.
        # Corresponds to the JSON property `selectedNamespaces`
        # @return [Google::Apis::GkebackupV1::Namespaces]
        attr_accessor :selected_namespaces
      
        # Output only. The total size of the Backup in bytes = config backup size + sum(
        # volume backup sizes)
        # Corresponds to the JSON property `sizeBytes`
        # @return [Fixnum]
        attr_accessor :size_bytes
      
        # Output only. Current state of the Backup
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Human-readable description of why the backup is in the current `
        # state`. This field is only meant for human readability and should not be used
        # programmatically as this field is not guaranteed to be consistent.
        # Corresponds to the JSON property `stateReason`
        # @return [String]
        attr_accessor :state_reason
      
        # Output only. Server generated global unique identifier of [UUID4](https://en.
        # wikipedia.org/wiki/Universally_unique_identifier)
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The timestamp when this Backup resource was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. The total number of volume backups contained in the Backup.
        # Corresponds to the JSON property `volumeCount`
        # @return [Fixnum]
        attr_accessor :volume_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_namespaces = args[:all_namespaces] if args.key?(:all_namespaces)
          @cluster_metadata = args[:cluster_metadata] if args.key?(:cluster_metadata)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @config_backup_size_bytes = args[:config_backup_size_bytes] if args.key?(:config_backup_size_bytes)
          @contains_secrets = args[:contains_secrets] if args.key?(:contains_secrets)
          @contains_volume_data = args[:contains_volume_data] if args.key?(:contains_volume_data)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_lock_days = args[:delete_lock_days] if args.key?(:delete_lock_days)
          @delete_lock_expire_time = args[:delete_lock_expire_time] if args.key?(:delete_lock_expire_time)
          @description = args[:description] if args.key?(:description)
          @encryption_key = args[:encryption_key] if args.key?(:encryption_key)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @manual = args[:manual] if args.key?(:manual)
          @name = args[:name] if args.key?(:name)
          @permissive_mode = args[:permissive_mode] if args.key?(:permissive_mode)
          @pod_count = args[:pod_count] if args.key?(:pod_count)
          @resource_count = args[:resource_count] if args.key?(:resource_count)
          @retain_days = args[:retain_days] if args.key?(:retain_days)
          @retain_expire_time = args[:retain_expire_time] if args.key?(:retain_expire_time)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @selected_applications = args[:selected_applications] if args.key?(:selected_applications)
          @selected_namespace_labels = args[:selected_namespace_labels] if args.key?(:selected_namespace_labels)
          @selected_namespaces = args[:selected_namespaces] if args.key?(:selected_namespaces)
          @size_bytes = args[:size_bytes] if args.key?(:size_bytes)
          @state = args[:state] if args.key?(:state)
          @state_reason = args[:state_reason] if args.key?(:state_reason)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @volume_count = args[:volume_count] if args.key?(:volume_count)
        end
      end
      
      # A BackupChannel imposes constraints on where clusters can be backed up. The
      # BackupChannel should be in the same project and region as the cluster being
      # backed up. The backup can be created only in destination_project.
      class BackupChannel
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when this BackupChannel resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. User specified descriptive string for this BackupChannel.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Immutable. The project where Backups are allowed to be stored. The
        # format is `projects/`projectId`` or `projects/`projectNumber``.
        # Corresponds to the JSON property `destinationProject`
        # @return [String]
        attr_accessor :destination_project
      
        # Output only. The project_id where Backups are allowed to be stored. Example
        # Project ID: "my-project-id". This will be an OUTPUT_ONLY field to return the
        # project_id of the destination project.
        # Corresponds to the JSON property `destinationProjectId`
        # @return [String]
        attr_accessor :destination_project_id
      
        # Output only. `etag` is used for optimistic concurrency control as a way to
        # help prevent simultaneous updates of a BackupChannel from overwriting each
        # other. It is strongly suggested that systems make use of the 'etag' in the
        # read-modify-write cycle to perform BackupChannel updates in order to avoid
        # race conditions: An `etag` is returned in the response to `GetBackupChannel`,
        # and systems are expected to put that etag in the request to `
        # UpdateBackupChannel` or `DeleteBackupChannel` to ensure that their change will
        # be applied to the same version of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. A set of custom labels supplied by user.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The fully qualified name of the BackupChannel. `projects/*/
        # locations/*/backupChannels/*`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Server generated global unique identifier of [UUID](https://en.
        # wikipedia.org/wiki/Universally_unique_identifier) format.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The timestamp when this BackupChannel resource was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @destination_project = args[:destination_project] if args.key?(:destination_project)
          @destination_project_id = args[:destination_project_id] if args.key?(:destination_project_id)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # BackupConfig defines the configuration of Backups created via this BackupPlan.
      class BackupConfig
        include Google::Apis::Core::Hashable
      
        # If True, include all namespaced resources
        # Corresponds to the JSON property `allNamespaces`
        # @return [Boolean]
        attr_accessor :all_namespaces
        alias_method :all_namespaces?, :all_namespaces
      
        # Defined a customer managed encryption key that will be used to encrypt Backup
        # artifacts.
        # Corresponds to the JSON property `encryptionKey`
        # @return [Google::Apis::GkebackupV1::EncryptionKey]
        attr_accessor :encryption_key
      
        # Optional. This flag specifies whether Kubernetes Secret resources should be
        # included when they fall into the scope of Backups. Default: False
        # Corresponds to the JSON property `includeSecrets`
        # @return [Boolean]
        attr_accessor :include_secrets
        alias_method :include_secrets?, :include_secrets
      
        # Optional. This flag specifies whether volume data should be backed up when
        # PVCs are included in the scope of a Backup. Default: False
        # Corresponds to the JSON property `includeVolumeData`
        # @return [Boolean]
        attr_accessor :include_volume_data
        alias_method :include_volume_data?, :include_volume_data
      
        # Optional. If false, Backups will fail when Backup for GKE detects Kubernetes
        # configuration that is non-standard or requires additional setup to restore.
        # Default: False
        # Corresponds to the JSON property `permissiveMode`
        # @return [Boolean]
        attr_accessor :permissive_mode
        alias_method :permissive_mode?, :permissive_mode
      
        # A list of namespaced Kubernetes resources.
        # Corresponds to the JSON property `selectedApplications`
        # @return [Google::Apis::GkebackupV1::NamespacedNames]
        attr_accessor :selected_applications
      
        # A list of Kubernetes labels.
        # Corresponds to the JSON property `selectedNamespaceLabels`
        # @return [Google::Apis::GkebackupV1::ResourceLabels]
        attr_accessor :selected_namespace_labels
      
        # A list of Kubernetes Namespaces.
        # Corresponds to the JSON property `selectedNamespaces`
        # @return [Google::Apis::GkebackupV1::Namespaces]
        attr_accessor :selected_namespaces
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_namespaces = args[:all_namespaces] if args.key?(:all_namespaces)
          @encryption_key = args[:encryption_key] if args.key?(:encryption_key)
          @include_secrets = args[:include_secrets] if args.key?(:include_secrets)
          @include_volume_data = args[:include_volume_data] if args.key?(:include_volume_data)
          @permissive_mode = args[:permissive_mode] if args.key?(:permissive_mode)
          @selected_applications = args[:selected_applications] if args.key?(:selected_applications)
          @selected_namespace_labels = args[:selected_namespace_labels] if args.key?(:selected_namespace_labels)
          @selected_namespaces = args[:selected_namespaces] if args.key?(:selected_namespaces)
        end
      end
      
      # BackupConfigDetails defines the configuration of Backups created via this
      # BackupPlan.
      class BackupConfigDetails
        include Google::Apis::Core::Hashable
      
        # Output only. If True, include all namespaced resources
        # Corresponds to the JSON property `allNamespaces`
        # @return [Boolean]
        attr_accessor :all_namespaces
        alias_method :all_namespaces?, :all_namespaces
      
        # Defined a customer managed encryption key that will be used to encrypt Backup
        # artifacts.
        # Corresponds to the JSON property `encryptionKey`
        # @return [Google::Apis::GkebackupV1::EncryptionKey]
        attr_accessor :encryption_key
      
        # Output only. This flag specifies whether Kubernetes Secret resources should be
        # included when they fall into the scope of Backups. Default: False
        # Corresponds to the JSON property `includeSecrets`
        # @return [Boolean]
        attr_accessor :include_secrets
        alias_method :include_secrets?, :include_secrets
      
        # Output only. This flag specifies whether volume data should be backed up when
        # PVCs are included in the scope of a Backup. Default: False
        # Corresponds to the JSON property `includeVolumeData`
        # @return [Boolean]
        attr_accessor :include_volume_data
        alias_method :include_volume_data?, :include_volume_data
      
        # A list of namespaced Kubernetes resources.
        # Corresponds to the JSON property `selectedApplications`
        # @return [Google::Apis::GkebackupV1::NamespacedNames]
        attr_accessor :selected_applications
      
        # A list of Kubernetes Namespaces.
        # Corresponds to the JSON property `selectedNamespaces`
        # @return [Google::Apis::GkebackupV1::Namespaces]
        attr_accessor :selected_namespaces
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_namespaces = args[:all_namespaces] if args.key?(:all_namespaces)
          @encryption_key = args[:encryption_key] if args.key?(:encryption_key)
          @include_secrets = args[:include_secrets] if args.key?(:include_secrets)
          @include_volume_data = args[:include_volume_data] if args.key?(:include_volume_data)
          @selected_applications = args[:selected_applications] if args.key?(:selected_applications)
          @selected_namespaces = args[:selected_namespaces] if args.key?(:selected_namespaces)
        end
      end
      
      # Defines the configuration and scheduling for a "line" of Backups.
      class BackupPlan
        include Google::Apis::Core::Hashable
      
        # Output only. The fully qualified name of the BackupChannel to be used to
        # create a backup. This field is set only if the cluster being backed up is in a
        # different project. `projects/*/locations/*/backupChannels/*`
        # Corresponds to the JSON property `backupChannel`
        # @return [String]
        attr_accessor :backup_channel
      
        # BackupConfig defines the configuration of Backups created via this BackupPlan.
        # Corresponds to the JSON property `backupConfig`
        # @return [Google::Apis::GkebackupV1::BackupConfig]
        attr_accessor :backup_config
      
        # Defines scheduling parameters for automatically creating Backups via this
        # BackupPlan.
        # Corresponds to the JSON property `backupSchedule`
        # @return [Google::Apis::GkebackupV1::Schedule]
        attr_accessor :backup_schedule
      
        # Required. Immutable. The source cluster from which Backups will be created via
        # this BackupPlan. Valid formats: - `projects/*/locations/*/clusters/*` - `
        # projects/*/zones/*/clusters/*`
        # Corresponds to the JSON property `cluster`
        # @return [String]
        attr_accessor :cluster
      
        # Output only. The timestamp when this BackupPlan resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. This flag indicates whether this BackupPlan has been deactivated.
        # Setting this field to True locks the BackupPlan such that no further updates
        # will be allowed (except deletes), including the deactivated field itself. It
        # also prevents any new Backups from being created via this BackupPlan (
        # including scheduled Backups). Default: False
        # Corresponds to the JSON property `deactivated`
        # @return [Boolean]
        attr_accessor :deactivated
        alias_method :deactivated?, :deactivated
      
        # Optional. User specified descriptive string for this BackupPlan.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. `etag` is used for optimistic concurrency control as a way to
        # help prevent simultaneous updates of a backup plan from overwriting each other.
        # It is strongly suggested that systems make use of the 'etag' in the read-
        # modify-write cycle to perform BackupPlan updates in order to avoid race
        # conditions: An `etag` is returned in the response to `GetBackupPlan`, and
        # systems are expected to put that etag in the request to `UpdateBackupPlan` or `
        # DeleteBackupPlan` to ensure that their change will be applied to the same
        # version of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. A set of custom labels supplied by user.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Completion time of the last successful Backup. This is sourced
        # from a successful Backup's complete_time field. This field is added to
        # maintain consistency with BackupPlanBinding to display last successful backup
        # time.
        # Corresponds to the JSON property `lastSuccessfulBackupTime`
        # @return [String]
        attr_accessor :last_successful_backup_time
      
        # Output only. The full name of the BackupPlan resource. Format: `projects/*/
        # locations/*/backupPlans/*`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The number of Kubernetes Pods backed up in the last successful
        # Backup created via this BackupPlan.
        # Corresponds to the JSON property `protectedPodCount`
        # @return [Fixnum]
        attr_accessor :protected_pod_count
      
        # RetentionPolicy defines a Backup retention policy for a BackupPlan.
        # Corresponds to the JSON property `retentionPolicy`
        # @return [Google::Apis::GkebackupV1::RetentionPolicy]
        attr_accessor :retention_policy
      
        # Output only. A number that represents the current risk level of this
        # BackupPlan from RPO perspective with 1 being no risk and 5 being highest risk.
        # Corresponds to the JSON property `rpoRiskLevel`
        # @return [Fixnum]
        attr_accessor :rpo_risk_level
      
        # Output only. Human-readable description of why the BackupPlan is in the
        # current rpo_risk_level and action items if any.
        # Corresponds to the JSON property `rpoRiskReason`
        # @return [String]
        attr_accessor :rpo_risk_reason
      
        # Output only. State of the BackupPlan. This State field reflects the various
        # stages a BackupPlan can be in during the Create operation. It will be set to "
        # DEACTIVATED" if the BackupPlan is deactivated on an Update
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Human-readable description of why BackupPlan is in the current `
        # state`. This field is only meant for human readability and should not be used
        # programmatically as this field is not guaranteed to be consistent.
        # Corresponds to the JSON property `stateReason`
        # @return [String]
        attr_accessor :state_reason
      
        # Output only. Server generated global unique identifier of [UUID](https://en.
        # wikipedia.org/wiki/Universally_unique_identifier) format.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The timestamp when this BackupPlan resource was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_channel = args[:backup_channel] if args.key?(:backup_channel)
          @backup_config = args[:backup_config] if args.key?(:backup_config)
          @backup_schedule = args[:backup_schedule] if args.key?(:backup_schedule)
          @cluster = args[:cluster] if args.key?(:cluster)
          @create_time = args[:create_time] if args.key?(:create_time)
          @deactivated = args[:deactivated] if args.key?(:deactivated)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @last_successful_backup_time = args[:last_successful_backup_time] if args.key?(:last_successful_backup_time)
          @name = args[:name] if args.key?(:name)
          @protected_pod_count = args[:protected_pod_count] if args.key?(:protected_pod_count)
          @retention_policy = args[:retention_policy] if args.key?(:retention_policy)
          @rpo_risk_level = args[:rpo_risk_level] if args.key?(:rpo_risk_level)
          @rpo_risk_reason = args[:rpo_risk_reason] if args.key?(:rpo_risk_reason)
          @state = args[:state] if args.key?(:state)
          @state_reason = args[:state_reason] if args.key?(:state_reason)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A BackupPlanBinding binds a BackupPlan with a BackupChannel. This resource is
      # created automatically when a BackupPlan is created using a BackupChannel. This
      # also serves as a holder for cross-project fields that need to be displayed in
      # the current project.
      class BackupPlanBinding
        include Google::Apis::Core::Hashable
      
        # Output only. Immutable. The fully qualified name of the BackupPlan bound with
        # the parent BackupChannel. `projects/*/locations/*/backupPlans/`backup_plan``
        # Corresponds to the JSON property `backupPlan`
        # @return [String]
        attr_accessor :backup_plan
      
        # Contains metadata about the backup plan/backup.
        # Corresponds to the JSON property `backupPlanDetails`
        # @return [Google::Apis::GkebackupV1::BackupPlanDetails]
        attr_accessor :backup_plan_details
      
        # Output only. Immutable. The fully qualified name of the cluster that is being
        # backed up Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/
        # zones/*/clusters/*`
        # Corresponds to the JSON property `cluster`
        # @return [String]
        attr_accessor :cluster
      
        # Output only. The timestamp when this binding was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. `etag` is used for optimistic concurrency control as a way to
        # help prevent simultaneous updates of a BackupPlanBinding from overwriting each
        # other. It is strongly suggested that systems make use of the 'etag' in the
        # read-modify-write cycle to perform BackupPlanBinding updates in order to avoid
        # race conditions: An `etag` is returned in the response to `
        # GetBackupPlanBinding`, and systems are expected to put that etag in the
        # request to `UpdateBackupPlanBinding` or `DeleteBackupPlanBinding` to ensure
        # that their change will be applied to the same version of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Identifier. The fully qualified name of the BackupPlanBinding. `projects/*/
        # locations/*/backupChannels/*/backupPlanBindings/*`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Server generated global unique identifier of [UUID4](https://en.
        # wikipedia.org/wiki/Universally_unique_identifier)
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The timestamp when this binding was created.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_plan = args[:backup_plan] if args.key?(:backup_plan)
          @backup_plan_details = args[:backup_plan_details] if args.key?(:backup_plan_details)
          @cluster = args[:cluster] if args.key?(:cluster)
          @create_time = args[:create_time] if args.key?(:create_time)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Contains metadata about the backup plan/backup.
      class BackupPlanDetails
        include Google::Apis::Core::Hashable
      
        # BackupConfigDetails defines the configuration of Backups created via this
        # BackupPlan.
        # Corresponds to the JSON property `backupConfigDetails`
        # @return [Google::Apis::GkebackupV1::BackupConfigDetails]
        attr_accessor :backup_config_details
      
        # Output only. The fully qualified name of the last successful Backup created
        # under this BackupPlan. `projects/*/locations/*/backupPlans/*/backups/*`
        # Corresponds to the JSON property `lastSuccessfulBackup`
        # @return [String]
        attr_accessor :last_successful_backup
      
        # Output only. Completion time of the last successful Backup. This is sourced
        # from a successful Backup's complete_time field.
        # Corresponds to the JSON property `lastSuccessfulBackupTime`
        # @return [String]
        attr_accessor :last_successful_backup_time
      
        # Output only. Start time of next scheduled backup under this BackupPlan by
        # either cron_schedule or rpo config. This is sourced from BackupPlan.
        # Corresponds to the JSON property `nextScheduledBackupTime`
        # @return [String]
        attr_accessor :next_scheduled_backup_time
      
        # Output only. The number of Kubernetes Pods backed up in the last successful
        # Backup created via this BackupPlan.
        # Corresponds to the JSON property `protectedPodCount`
        # @return [Fixnum]
        attr_accessor :protected_pod_count
      
        # RetentionPolicyDetails defines a Backup retention policy for a BackupPlan.
        # Corresponds to the JSON property `retentionPolicyDetails`
        # @return [Google::Apis::GkebackupV1::RetentionPolicyDetails]
        attr_accessor :retention_policy_details
      
        # Output only. A number that represents the current risk level of this
        # BackupPlan from RPO perspective with 1 being no risk and 5 being highest risk.
        # Corresponds to the JSON property `rpoRiskLevel`
        # @return [Fixnum]
        attr_accessor :rpo_risk_level
      
        # Output only. State of the BackupPlan.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_config_details = args[:backup_config_details] if args.key?(:backup_config_details)
          @last_successful_backup = args[:last_successful_backup] if args.key?(:last_successful_backup)
          @last_successful_backup_time = args[:last_successful_backup_time] if args.key?(:last_successful_backup_time)
          @next_scheduled_backup_time = args[:next_scheduled_backup_time] if args.key?(:next_scheduled_backup_time)
          @protected_pod_count = args[:protected_pod_count] if args.key?(:protected_pod_count)
          @retention_policy_details = args[:retention_policy_details] if args.key?(:retention_policy_details)
          @rpo_risk_level = args[:rpo_risk_level] if args.key?(:rpo_risk_level)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Associates `members`, or principals, with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec. Example (Comparison): title:
        # "Summary size limit" description: "Determines if a summary is less than 100
        # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
        # Requestor is owner" description: "Determines if requestor is the document
        # owner" expression: "document.owner == request.auth.claims.email" Example (
        # Logic): title: "Public documents" description: "Determine whether the document
        # should be publicly visible" expression: "document.type != 'private' &&
        # document.type != 'internal'" Example (Data Manipulation): title: "Notification
        # string" description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)" The
        # exact variables and functions that may be referenced within an expression are
        # determined by the service that evaluates it. See the service documentation for
        # additional information.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::GkebackupV1::Expr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Google Cloud resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. Does
        # not include identities that come from external identity providers (IdPs)
        # through identity federation. * `user:`emailid``: An email address that
        # represents a specific Google account. For example, `alice@example.com` . * `
        # serviceAccount:`emailid``: An email address that represents a Google service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`. * `
        # serviceAccount:`projectid`.svc.id.goog[`namespace`/`kubernetes-sa`]`: An
        # identifier for a [Kubernetes service account](https://cloud.google.com/
        # kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-
        # project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:`emailid``: An
        # email address that represents a Google group. For example, `admins@example.com`
        # . * `domain:`domain``: The G Suite domain (primary) that represents all the
        # users of that domain. For example, `google.com` or `example.com`. * `principal:
        # //iam.googleapis.com/locations/global/workforcePools/`pool_id`/subject/`
        # subject_attribute_value``: A single identity in a workforce identity pool. * `
        # principalSet://iam.googleapis.com/locations/global/workforcePools/`pool_id`/
        # group/`group_id``: All workforce identities in a group. * `principalSet://iam.
        # googleapis.com/locations/global/workforcePools/`pool_id`/attribute.`
        # attribute_name`/`attribute_value``: All workforce identities with a specific
        # attribute value. * `principalSet://iam.googleapis.com/locations/global/
        # workforcePools/`pool_id`/*`: All identities in a workforce identity pool. * `
        # principal://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/subject/`subject_attribute_value``: A single
        # identity in a workload identity pool. * `principalSet://iam.googleapis.com/
        # projects/`project_number`/locations/global/workloadIdentityPools/`pool_id`/
        # group/`group_id``: A workload identity pool group. * `principalSet://iam.
        # googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/attribute.`attribute_name`/`attribute_value``:
        # All identities in a workload identity pool with a certain attribute. * `
        # principalSet://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/*`: All identities in a workload identity pool.
        # * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For example, `
        # alice@example.com?uid=123456789012345678901`. If the user is recovered, this
        # value reverts to `user:`emailid`` and the recovered user retains the role in
        # the binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email
        # address (plus unique identifier) representing a service account that has been
        # recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding. * `
        # deleted:principal://iam.googleapis.com/locations/global/workforcePools/`
        # pool_id`/subject/`subject_attribute_value``: Deleted single identity in a
        # workforce identity pool. For example, `deleted:principal://iam.googleapis.com/
        # locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`. For an overview of the IAM
        # roles and permissions, see the [IAM documentation](https://cloud.google.com/
        # iam/docs/roles-overview). For a list of the available pre-defined roles, see [
        # here](https://cloud.google.com/iam/docs/understanding-roles).
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Information about the GKE cluster from which this Backup was created.
      class ClusterMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. Anthos version
        # Corresponds to the JSON property `anthosVersion`
        # @return [String]
        attr_accessor :anthos_version
      
        # Output only. A list of the Backup for GKE CRD versions found in the cluster.
        # Corresponds to the JSON property `backupCrdVersions`
        # @return [Hash<String,String>]
        attr_accessor :backup_crd_versions
      
        # Output only. The source cluster from which this Backup was created. Valid
        # formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*
        # ` This is inherited from the parent BackupPlan's cluster field.
        # Corresponds to the JSON property `cluster`
        # @return [String]
        attr_accessor :cluster
      
        # Output only. GKE version
        # Corresponds to the JSON property `gkeVersion`
        # @return [String]
        attr_accessor :gke_version
      
        # Output only. The Kubernetes server version of the source cluster.
        # Corresponds to the JSON property `k8sVersion`
        # @return [String]
        attr_accessor :k8s_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @anthos_version = args[:anthos_version] if args.key?(:anthos_version)
          @backup_crd_versions = args[:backup_crd_versions] if args.key?(:backup_crd_versions)
          @cluster = args[:cluster] if args.key?(:cluster)
          @gke_version = args[:gke_version] if args.key?(:gke_version)
          @k8s_version = args[:k8s_version] if args.key?(:k8s_version)
        end
      end
      
      # Defines the scope of cluster-scoped resources to restore. Some group kinds are
      # not reasonable choices for a restore, and will cause an error if selected here.
      # Any scope selection that would restore "all valid" resources automatically
      # excludes these group kinds. - Node - ComponentStatus - gkebackup.gke.io/
      # BackupJob - gkebackup.gke.io/RestoreJob - metrics.k8s.io/NodeMetrics -
      # migration.k8s.io/StorageState - migration.k8s.io/StorageVersionMigration -
      # snapshot.storage.k8s.io/VolumeSnapshotContent - storage.k8s.io/CSINode -
      # storage.k8s.io/VolumeAttachment Some group kinds are driven by restore
      # configuration elsewhere, and will cause an error if selected here. - Namespace
      # - PersistentVolume
      class ClusterResourceRestoreScope
        include Google::Apis::Core::Hashable
      
        # Optional. If True, all valid cluster-scoped resources will be restored.
        # Mutually exclusive to any other field in the message.
        # Corresponds to the JSON property `allGroupKinds`
        # @return [Boolean]
        attr_accessor :all_group_kinds
        alias_method :all_group_kinds?, :all_group_kinds
      
        # Optional. A list of cluster-scoped resource group kinds to NOT restore from
        # the backup. If specified, all valid cluster-scoped resources will be restored
        # except for those specified in the list. Mutually exclusive to any other field
        # in the message.
        # Corresponds to the JSON property `excludedGroupKinds`
        # @return [Array<Google::Apis::GkebackupV1::GroupKind>]
        attr_accessor :excluded_group_kinds
      
        # Optional. If True, no cluster-scoped resources will be restored. This has the
        # same restore scope as if the message is not defined. Mutually exclusive to any
        # other field in the message.
        # Corresponds to the JSON property `noGroupKinds`
        # @return [Boolean]
        attr_accessor :no_group_kinds
        alias_method :no_group_kinds?, :no_group_kinds
      
        # Optional. A list of cluster-scoped resource group kinds to restore from the
        # backup. If specified, only the selected resources will be restored. Mutually
        # exclusive to any other field in the message.
        # Corresponds to the JSON property `selectedGroupKinds`
        # @return [Array<Google::Apis::GkebackupV1::GroupKind>]
        attr_accessor :selected_group_kinds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_group_kinds = args[:all_group_kinds] if args.key?(:all_group_kinds)
          @excluded_group_kinds = args[:excluded_group_kinds] if args.key?(:excluded_group_kinds)
          @no_group_kinds = args[:no_group_kinds] if args.key?(:no_group_kinds)
          @selected_group_kinds = args[:selected_group_kinds] if args.key?(:selected_group_kinds)
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
      class Date
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
      
      # Holds repeated DaysOfWeek values as a container.
      class DayOfWeekList
        include Google::Apis::Core::Hashable
      
        # Optional. A list of days of week.
        # Corresponds to the JSON property `daysOfWeek`
        # @return [Array<String>]
        attr_accessor :days_of_week
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @days_of_week = args[:days_of_week] if args.key?(:days_of_week)
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
      
      # Defined a customer managed encryption key that will be used to encrypt Backup
      # artifacts.
      class EncryptionKey
        include Google::Apis::Core::Hashable
      
        # Optional. Google Cloud KMS encryption key. Format: `projects/*/locations/*/
        # keyRings/*/cryptoKeys/*`
        # Corresponds to the JSON property `gcpKmsEncryptionKey`
        # @return [String]
        attr_accessor :gcp_kms_encryption_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcp_kms_encryption_key = args[:gcp_kms_encryption_key] if args.key?(:gcp_kms_encryption_key)
        end
      end
      
      # Defines a time window during which no backup should happen. All time and date
      # are in UTC.
      class ExclusionWindow
        include Google::Apis::Core::Hashable
      
        # The exclusion window occurs every day if set to "True". Specifying this field
        # to "False" is an error.
        # Corresponds to the JSON property `daily`
        # @return [Boolean]
        attr_accessor :daily
        alias_method :daily?, :daily
      
        # Holds repeated DaysOfWeek values as a container.
        # Corresponds to the JSON property `daysOfWeek`
        # @return [Google::Apis::GkebackupV1::DayOfWeekList]
        attr_accessor :days_of_week
      
        # Required. Specifies duration of the window. Duration must be >= 5 minutes and <
        # (target RPO - 20 minutes). Additional restrictions based on the recurrence
        # type to allow some time for backup to happen: - single_occurrence_date: no
        # restriction, but UI may warn about this when duration >= target RPO - daily
        # window: duration < 24 hours - weekly window: - days of week includes all seven
        # days of a week: duration < 24 hours - all other weekly window: duration < 168
        # hours (i.e., 24 * 7 hours)
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `singleOccurrenceDate`
        # @return [Google::Apis::GkebackupV1::Date]
        attr_accessor :single_occurrence_date
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startTime`
        # @return [Google::Apis::GkebackupV1::TimeOfDay]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @daily = args[:daily] if args.key?(:daily)
          @days_of_week = args[:days_of_week] if args.key?(:days_of_week)
          @duration = args[:duration] if args.key?(:duration)
          @single_occurrence_date = args[:single_occurrence_date] if args.key?(:single_occurrence_date)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec. Example (Comparison): title:
      # "Summary size limit" description: "Determines if a summary is less than 100
      # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
      # Requestor is owner" description: "Determines if requestor is the document
      # owner" expression: "document.owner == request.auth.claims.email" Example (
      # Logic): title: "Public documents" description: "Determine whether the document
      # should be publicly visible" expression: "document.type != 'private' &&
      # document.type != 'internal'" Example (Data Manipulation): title: "Notification
      # string" description: "Create a notification string with a timestamp."
      # expression: "'New message received at ' + string(document.create_time)" The
      # exact variables and functions that may be referenced within an expression are
      # determined by the service that evaluates it. See the service documentation for
      # additional information.
      class Expr
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the expression. This is a longer text which describes
        # the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in Common Expression Language syntax.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Optional. String indicating the location of the expression for error reporting,
        # e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Title for the expression, i.e. a short string describing its purpose.
        # This can be used e.g. in UIs which allow to enter the expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Defines the filter for `Restore`. This filter can be used to further refine
      # the resource selection of the `Restore` beyond the coarse-grained scope
      # defined in the `RestorePlan`. `exclusion_filters` take precedence over `
      # inclusion_filters`. If a resource matches both `inclusion_filters` and `
      # exclusion_filters`, it will not be restored.
      class Filter
        include Google::Apis::Core::Hashable
      
        # Optional. Excludes resources from restoration. If specified, a resource will
        # not be restored if it matches any `ResourceSelector` of the `exclusion_filters`
        # .
        # Corresponds to the JSON property `exclusionFilters`
        # @return [Array<Google::Apis::GkebackupV1::ResourceSelector>]
        attr_accessor :exclusion_filters
      
        # Optional. Selects resources for restoration. If specified, only resources
        # which match `inclusion_filters` will be selected for restoration. A resource
        # will be selected if it matches any `ResourceSelector` of the `
        # inclusion_filters`.
        # Corresponds to the JSON property `inclusionFilters`
        # @return [Array<Google::Apis::GkebackupV1::ResourceSelector>]
        attr_accessor :inclusion_filters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclusion_filters = args[:exclusion_filters] if args.key?(:exclusion_filters)
          @inclusion_filters = args[:inclusion_filters] if args.key?(:inclusion_filters)
        end
      end
      
      # Response message for GetBackupIndexDownloadUrl.
      class GetBackupIndexDownloadUrlResponse
        include Google::Apis::Core::Hashable
      
        # Required. The signed URL for downloading the backup index.
        # Corresponds to the JSON property `signedUrl`
        # @return [String]
        attr_accessor :signed_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @signed_url = args[:signed_url] if args.key?(:signed_url)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class GoogleLongrunningCancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response message for Operations.ListOperations.
      class GoogleLongrunningListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::GkebackupV1::GoogleLongrunningOperation>]
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
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class GoogleLongrunningOperation
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
        # @return [Google::Apis::GkebackupV1::GoogleRpcStatus]
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
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class GoogleRpcStatus
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
      
      # This is a direct map to the Kubernetes GroupKind type [GroupKind](https://
      # godoc.org/k8s.io/apimachinery/pkg/runtime/schema#GroupKind) and is used for
      # identifying specific "types" of resources to restore.
      class GroupKind
        include Google::Apis::Core::Hashable
      
        # Optional. API group string of a Kubernetes resource, e.g. "apiextensions.k8s.
        # io", "storage.k8s.io", etc. Note: use empty string for core API group.
        # Corresponds to the JSON property `resourceGroup`
        # @return [String]
        attr_accessor :resource_group
      
        # Optional. Kind of a Kubernetes resource, must be in UpperCamelCase (PascalCase)
        # and singular form. E.g. "CustomResourceDefinition", "StorageClass", etc.
        # Corresponds to the JSON property `resourceKind`
        # @return [String]
        attr_accessor :resource_kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_group = args[:resource_group] if args.key?(:resource_group)
          @resource_kind = args[:resource_kind] if args.key?(:resource_kind)
        end
      end
      
      # Defines a dependency between two group kinds.
      class GroupKindDependency
        include Google::Apis::Core::Hashable
      
        # This is a direct map to the Kubernetes GroupKind type [GroupKind](https://
        # godoc.org/k8s.io/apimachinery/pkg/runtime/schema#GroupKind) and is used for
        # identifying specific "types" of resources to restore.
        # Corresponds to the JSON property `requiring`
        # @return [Google::Apis::GkebackupV1::GroupKind]
        attr_accessor :requiring
      
        # This is a direct map to the Kubernetes GroupKind type [GroupKind](https://
        # godoc.org/k8s.io/apimachinery/pkg/runtime/schema#GroupKind) and is used for
        # identifying specific "types" of resources to restore.
        # Corresponds to the JSON property `satisfying`
        # @return [Google::Apis::GkebackupV1::GroupKind]
        attr_accessor :satisfying
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requiring = args[:requiring] if args.key?(:requiring)
          @satisfying = args[:satisfying] if args.key?(:satisfying)
        end
      end
      
      # A single Kubernetes label-value pair.
      class Label
        include Google::Apis::Core::Hashable
      
        # Optional. The key/name of the label.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Optional. The value of the label.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Response message for ListBackupChannels.
      class ListBackupChannelsResponse
        include Google::Apis::Core::Hashable
      
        # The list of BackupChannels matching the given criteria.
        # Corresponds to the JSON property `backupChannels`
        # @return [Array<Google::Apis::GkebackupV1::BackupChannel>]
        attr_accessor :backup_channels
      
        # A token which may be sent as page_token in a subsequent `ListBackupChannels`
        # call to retrieve the next page of results. If this field is omitted or empty,
        # then there are no more results to return.
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
          @backup_channels = args[:backup_channels] if args.key?(:backup_channels)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for ListBackupPlanBindings.
      class ListBackupPlanBindingsResponse
        include Google::Apis::Core::Hashable
      
        # The list of BackupPlanBindings matching the given criteria.
        # Corresponds to the JSON property `backupPlanBindings`
        # @return [Array<Google::Apis::GkebackupV1::BackupPlanBinding>]
        attr_accessor :backup_plan_bindings
      
        # A token which may be sent as page_token in a subsequent `
        # ListBackupPlanBindingss` call to retrieve the next page of results. If this
        # field is omitted or empty, then there are no more results to return.
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
          @backup_plan_bindings = args[:backup_plan_bindings] if args.key?(:backup_plan_bindings)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for ListBackupPlans.
      class ListBackupPlansResponse
        include Google::Apis::Core::Hashable
      
        # The list of BackupPlans matching the given criteria.
        # Corresponds to the JSON property `backupPlans`
        # @return [Array<Google::Apis::GkebackupV1::BackupPlan>]
        attr_accessor :backup_plans
      
        # A token which may be sent as page_token in a subsequent `ListBackupPlans` call
        # to retrieve the next page of results. If this field is omitted or empty, then
        # there are no more results to return.
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
          @backup_plans = args[:backup_plans] if args.key?(:backup_plans)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for ListBackups.
      class ListBackupsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Backups matching the given criteria.
        # Corresponds to the JSON property `backups`
        # @return [Array<Google::Apis::GkebackupV1::Backup>]
        attr_accessor :backups
      
        # A token which may be sent as page_token in a subsequent `ListBackups` call to
        # retrieve the next page of results. If this field is omitted or empty, then
        # there are no more results to return.
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
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::GkebackupV1::Location>]
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
      
      # Response message for ListRestoreChannels.
      class ListRestoreChannelsResponse
        include Google::Apis::Core::Hashable
      
        # A token which may be sent as page_token in a subsequent `ListRestoreChannels`
        # call to retrieve the next page of results. If this field is omitted or empty,
        # then there are no more results to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of RestoreChannels matching the given criteria.
        # Corresponds to the JSON property `restoreChannels`
        # @return [Array<Google::Apis::GkebackupV1::RestoreChannel>]
        attr_accessor :restore_channels
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @restore_channels = args[:restore_channels] if args.key?(:restore_channels)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for ListRestorePlanBindings.
      class ListRestorePlanBindingsResponse
        include Google::Apis::Core::Hashable
      
        # A token which may be sent as page_token in a subsequent `
        # ListRestorePlanBindings` call to retrieve the next page of results. If this
        # field is omitted or empty, then there are no more results to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of RestorePlanBindings matching the given criteria.
        # Corresponds to the JSON property `restorePlanBindings`
        # @return [Array<Google::Apis::GkebackupV1::RestorePlanBinding>]
        attr_accessor :restore_plan_bindings
      
        # Unordered list. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @restore_plan_bindings = args[:restore_plan_bindings] if args.key?(:restore_plan_bindings)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for ListRestorePlans.
      class ListRestorePlansResponse
        include Google::Apis::Core::Hashable
      
        # A token which may be sent as page_token in a subsequent `ListRestorePlans`
        # call to retrieve the next page of results. If this field is omitted or empty,
        # then there are no more results to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of RestorePlans matching the given criteria.
        # Corresponds to the JSON property `restorePlans`
        # @return [Array<Google::Apis::GkebackupV1::RestorePlan>]
        attr_accessor :restore_plans
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @restore_plans = args[:restore_plans] if args.key?(:restore_plans)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for ListRestores.
      class ListRestoresResponse
        include Google::Apis::Core::Hashable
      
        # A token which may be sent as page_token in a subsequent `ListRestores` call to
        # retrieve the next page of results. If this field is omitted or empty, then
        # there are no more results to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Restores matching the given criteria.
        # Corresponds to the JSON property `restores`
        # @return [Array<Google::Apis::GkebackupV1::Restore>]
        attr_accessor :restores
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @restores = args[:restores] if args.key?(:restores)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for ListVolumeBackups.
      class ListVolumeBackupsResponse
        include Google::Apis::Core::Hashable
      
        # A token which may be sent as page_token in a subsequent `ListVolumeBackups`
        # call to retrieve the next page of results. If this field is omitted or empty,
        # then there are no more results to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of VolumeBackups matching the given criteria.
        # Corresponds to the JSON property `volumeBackups`
        # @return [Array<Google::Apis::GkebackupV1::VolumeBackup>]
        attr_accessor :volume_backups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @volume_backups = args[:volume_backups] if args.key?(:volume_backups)
        end
      end
      
      # Response message for ListVolumeRestores.
      class ListVolumeRestoresResponse
        include Google::Apis::Core::Hashable
      
        # A token which may be sent as page_token in a subsequent `ListVolumeRestores`
        # call to retrieve the next page of results. If this field is omitted or empty,
        # then there are no more results to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of VolumeRestores matching the given criteria.
        # Corresponds to the JSON property `volumeRestores`
        # @return [Array<Google::Apis::GkebackupV1::VolumeRestore>]
        attr_accessor :volume_restores
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @volume_restores = args[:volume_restores] if args.key?(:volume_restores)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class Location
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
      
      # A reference to a namespaced resource in Kubernetes.
      class NamespacedName
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the Kubernetes resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The Namespace of the Kubernetes resource.
        # Corresponds to the JSON property `namespace`
        # @return [String]
        attr_accessor :namespace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @namespace = args[:namespace] if args.key?(:namespace)
        end
      end
      
      # A list of namespaced Kubernetes resources.
      class NamespacedNames
        include Google::Apis::Core::Hashable
      
        # Optional. A list of namespaced Kubernetes resources.
        # Corresponds to the JSON property `namespacedNames`
        # @return [Array<Google::Apis::GkebackupV1::NamespacedName>]
        attr_accessor :namespaced_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @namespaced_names = args[:namespaced_names] if args.key?(:namespaced_names)
        end
      end
      
      # A list of Kubernetes Namespaces.
      class Namespaces
        include Google::Apis::Core::Hashable
      
        # Optional. A list of Kubernetes Namespaces.
        # Corresponds to the JSON property `namespaces`
        # @return [Array<String>]
        attr_accessor :namespaces
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @namespaces = args[:namespaces] if args.key?(:namespaces)
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
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members`, or principals, to a single `role`.
      # Principals can be user accounts, service accounts, Google groups, and domains (
      # such as G Suite). A `role` is a named list of permissions; each `role` can be
      # an IAM predefined role or a user-created custom role. For some types of Google
      # Cloud resources, a `binding` can also specify a `condition`, which is a
      # logical expression that allows access to a resource only if the expression
      # evaluates to `true`. A condition can add constraints based on attributes of
      # the request, the resource, or both. To learn which resources support
      # conditions in their IAM policies, see the [IAM documentation](https://cloud.
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
      # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
      # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
      # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
      # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
      # title: expirable access description: Does not grant access after Sep 2020
      # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
      # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
      # [IAM documentation](https://cloud.google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::GkebackupV1::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::GkebackupV1::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the `etag` in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An `etag` is
        # returned in the response to `getIamPolicy`, and systems are expected to put
        # that etag in the request to `setIamPolicy` to ensure that their change will be
        # applied to the same version of the policy. **Important:** If you use IAM
        # Conditions, you must include the `etag` field whenever you call `setIamPolicy`.
        # If you omit this field, then IAM allows you to overwrite a version `3` policy
        # with a version `1` policy, and all of the conditions in the version `3` policy
        # are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
        # Requests that specify an invalid value are rejected. Any operation that
        # affects conditional role bindings must specify version `3`. This requirement
        # applies to the following operations: * Getting a policy that includes a
        # conditional role binding * Adding a conditional role binding to a policy *
        # Changing a conditional role binding in a policy * Removing any role binding,
        # with or without a condition, from a policy that includes conditions **
        # Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows you
        # to overwrite a version `3` policy with a version `1` policy, and all of the
        # conditions in the version `3` policy are lost. If a policy does not include
        # any conditions, operations on that policy may specify any valid version or
        # leave the field unset. To learn which resources support conditions in their
        # IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/
        # conditions/resource-policies).
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_configs = args[:audit_configs] if args.key?(:audit_configs)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # ResourceFilter specifies matching criteria to limit the scope of a change to a
      # specific set of kubernetes resources that are selected for restoration from a
      # backup.
      class ResourceFilter
        include Google::Apis::Core::Hashable
      
        # Optional. (Filtering parameter) Any resource subject to transformation must
        # belong to one of the listed "types". If this field is not provided, no type
        # filtering will be performed (all resources of all types matching previous
        # filtering parameters will be candidates for transformation).
        # Corresponds to the JSON property `groupKinds`
        # @return [Array<Google::Apis::GkebackupV1::GroupKind>]
        attr_accessor :group_kinds
      
        # Optional. This is a [JSONPath] (https://github.com/json-path/JsonPath/blob/
        # master/README.md) expression that matches specific fields of candidate
        # resources and it operates as a filtering parameter (resources that are not
        # matched with this expression will not be candidates for transformation).
        # Corresponds to the JSON property `jsonPath`
        # @return [String]
        attr_accessor :json_path
      
        # Optional. (Filtering parameter) Any resource subject to transformation must be
        # contained within one of the listed Kubernetes Namespace in the Backup. If this
        # field is not provided, no namespace filtering will be performed (all resources
        # in all Namespaces, including all cluster-scoped resources, will be candidates
        # for transformation).
        # Corresponds to the JSON property `namespaces`
        # @return [Array<String>]
        attr_accessor :namespaces
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_kinds = args[:group_kinds] if args.key?(:group_kinds)
          @json_path = args[:json_path] if args.key?(:json_path)
          @namespaces = args[:namespaces] if args.key?(:namespaces)
        end
      end
      
      # A list of Kubernetes labels.
      class ResourceLabels
        include Google::Apis::Core::Hashable
      
        # Optional. A list of Kubernetes label-value pairs.
        # Corresponds to the JSON property `resourceLabels`
        # @return [Array<Google::Apis::GkebackupV1::Label>]
        attr_accessor :resource_labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_labels = args[:resource_labels] if args.key?(:resource_labels)
        end
      end
      
      # Defines a selector to identify a single or a group of resources. Conditions in
      # the selector are optional, but at least one field should be set to a non-empty
      # value. If a condition is not specified, no restrictions will be applied on
      # that dimension. If more than one condition is specified, a resource will be
      # selected if and only if all conditions are met.
      class ResourceSelector
        include Google::Apis::Core::Hashable
      
        # This is a direct map to the Kubernetes GroupKind type [GroupKind](https://
        # godoc.org/k8s.io/apimachinery/pkg/runtime/schema#GroupKind) and is used for
        # identifying specific "types" of resources to restore.
        # Corresponds to the JSON property `groupKind`
        # @return [Google::Apis::GkebackupV1::GroupKind]
        attr_accessor :group_kind
      
        # Optional. Selects resources using Kubernetes [labels](https://kubernetes.io/
        # docs/concepts/overview/working-with-objects/labels/). If specified, a resource
        # will be selected if and only if the resource has all of the provided labels
        # and all the label values match.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. Selects resources using their resource names. If specified, only
        # resources with the provided name will be selected.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Selects resources using their namespaces. This only applies to
        # namespace scoped resources and cannot be used for selecting cluster scoped
        # resources. If specified, only resources in the provided namespace will be
        # selected. If not specified, the filter will apply to both cluster scoped and
        # namespace scoped resources (e.g. name or label). The [Namespace](https://pkg.
        # go.dev/k8s.io/api/core/v1#Namespace) resource itself will be restored if and
        # only if any resources within the namespace are restored.
        # Corresponds to the JSON property `namespace`
        # @return [String]
        attr_accessor :namespace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_kind = args[:group_kind] if args.key?(:group_kind)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @namespace = args[:namespace] if args.key?(:namespace)
        end
      end
      
      # Represents both a request to Restore some portion of a Backup into a target
      # GKE cluster and a record of the restore operation itself.
      class Restore
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. A reference to the Backup used as the source from which
        # this Restore will restore. Note that this Backup must be a sub-resource of the
        # RestorePlan's backup_plan. Format: `projects/*/locations/*/backupPlans/*/
        # backups/*`.
        # Corresponds to the JSON property `backup`
        # @return [String]
        attr_accessor :backup
      
        # Output only. The target cluster into which this Restore will restore data.
        # Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/
        # clusters/*` Inherited from parent RestorePlan's cluster value.
        # Corresponds to the JSON property `cluster`
        # @return [String]
        attr_accessor :cluster
      
        # Output only. Timestamp of when the restore operation completed.
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # Output only. The timestamp when this Restore resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. User specified descriptive string for this Restore.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. `etag` is used for optimistic concurrency control as a way to
        # help prevent simultaneous updates of a restore from overwriting each other. It
        # is strongly suggested that systems make use of the `etag` in the read-modify-
        # write cycle to perform restore updates in order to avoid race conditions: An `
        # etag` is returned in the response to `GetRestore`, and systems are expected to
        # put that etag in the request to `UpdateRestore` or `DeleteRestore` to ensure
        # that their change will be applied to the same version of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Defines the filter for `Restore`. This filter can be used to further refine
        # the resource selection of the `Restore` beyond the coarse-grained scope
        # defined in the `RestorePlan`. `exclusion_filters` take precedence over `
        # inclusion_filters`. If a resource matches both `inclusion_filters` and `
        # exclusion_filters`, it will not be restored.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::GkebackupV1::Filter]
        attr_accessor :filter
      
        # A set of custom labels supplied by user.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The full name of the Restore resource. Format: `projects/*/
        # locations/*/restorePlans/*/restores/*`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Number of resources excluded during the restore execution.
        # Corresponds to the JSON property `resourcesExcludedCount`
        # @return [Fixnum]
        attr_accessor :resources_excluded_count
      
        # Output only. Number of resources that failed to be restored during the restore
        # execution.
        # Corresponds to the JSON property `resourcesFailedCount`
        # @return [Fixnum]
        attr_accessor :resources_failed_count
      
        # Output only. Number of resources restored during the restore execution.
        # Corresponds to the JSON property `resourcesRestoredCount`
        # @return [Fixnum]
        attr_accessor :resources_restored_count
      
        # Configuration of a restore.
        # Corresponds to the JSON property `restoreConfig`
        # @return [Google::Apis::GkebackupV1::RestoreConfig]
        attr_accessor :restore_config
      
        # Output only. The current state of the Restore.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Human-readable description of why the Restore is in its current
        # state. This field is only meant for human readability and should not be used
        # programmatically as this field is not guaranteed to be consistent.
        # Corresponds to the JSON property `stateReason`
        # @return [String]
        attr_accessor :state_reason
      
        # Output only. Server generated global unique identifier of [UUID](https://en.
        # wikipedia.org/wiki/Universally_unique_identifier) format.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The timestamp when this Restore resource was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Optional. Immutable. Overrides the volume data restore policies selected in
        # the Restore Config for override-scoped resources.
        # Corresponds to the JSON property `volumeDataRestorePolicyOverrides`
        # @return [Array<Google::Apis::GkebackupV1::VolumeDataRestorePolicyOverride>]
        attr_accessor :volume_data_restore_policy_overrides
      
        # Output only. Number of volumes restored during the restore execution.
        # Corresponds to the JSON property `volumesRestoredCount`
        # @return [Fixnum]
        attr_accessor :volumes_restored_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup = args[:backup] if args.key?(:backup)
          @cluster = args[:cluster] if args.key?(:cluster)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @filter = args[:filter] if args.key?(:filter)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @resources_excluded_count = args[:resources_excluded_count] if args.key?(:resources_excluded_count)
          @resources_failed_count = args[:resources_failed_count] if args.key?(:resources_failed_count)
          @resources_restored_count = args[:resources_restored_count] if args.key?(:resources_restored_count)
          @restore_config = args[:restore_config] if args.key?(:restore_config)
          @state = args[:state] if args.key?(:state)
          @state_reason = args[:state_reason] if args.key?(:state_reason)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @volume_data_restore_policy_overrides = args[:volume_data_restore_policy_overrides] if args.key?(:volume_data_restore_policy_overrides)
          @volumes_restored_count = args[:volumes_restored_count] if args.key?(:volumes_restored_count)
        end
      end
      
      # A RestoreChannel imposes constraints on where backups can be restored. The
      # RestoreChannel should be in the same project and region as the backups. The
      # backups can only be restored in the `destination_project`.
      class RestoreChannel
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when this RestoreChannel was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. User specified descriptive string for this RestoreChannel.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Immutable. The project into which the backups will be restored. The
        # format is `projects/`projectId`` or `projects/`projectNumber``.
        # Corresponds to the JSON property `destinationProject`
        # @return [String]
        attr_accessor :destination_project
      
        # Output only. The project_id where backups will be restored. Example Project ID:
        # "my-project-id". This will be an OUTPUT_ONLY field to return the project_id
        # of the destination project.
        # Corresponds to the JSON property `destinationProjectId`
        # @return [String]
        attr_accessor :destination_project_id
      
        # Output only. `etag` is used for optimistic concurrency control as a way to
        # help prevent simultaneous updates of a RestoreChannel from overwriting each
        # other. It is strongly suggested that systems make use of the 'etag' in the
        # read-modify-write cycle to perform RestoreChannel updates in order to avoid
        # race conditions: An `etag` is returned in the response to `GetRestoreChannel`,
        # and systems are expected to put that etag in the request to `
        # UpdateRestoreChannel` or `DeleteRestoreChannel` to ensure that their change
        # will be applied to the same version of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. A set of custom labels supplied by user.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The fully qualified name of the RestoreChannel. `projects/*/
        # locations/*/restoreChannels/*`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Server generated global unique identifier of [UUID](https://en.
        # wikipedia.org/wiki/Universally_unique_identifier) format.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The timestamp when this RestoreChannel was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @destination_project = args[:destination_project] if args.key?(:destination_project)
          @destination_project_id = args[:destination_project_id] if args.key?(:destination_project_id)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Configuration of a restore.
      class RestoreConfig
        include Google::Apis::Core::Hashable
      
        # Restore all namespaced resources in the Backup if set to "True". Specifying
        # this field to "False" is an error.
        # Corresponds to the JSON property `allNamespaces`
        # @return [Boolean]
        attr_accessor :all_namespaces
        alias_method :all_namespaces?, :all_namespaces
      
        # Optional. Defines the behavior for handling the situation where cluster-scoped
        # resources being restored already exist in the target cluster. This MUST be set
        # to a value other than CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED if
        # cluster_resource_restore_scope is not empty.
        # Corresponds to the JSON property `clusterResourceConflictPolicy`
        # @return [String]
        attr_accessor :cluster_resource_conflict_policy
      
        # Defines the scope of cluster-scoped resources to restore. Some group kinds are
        # not reasonable choices for a restore, and will cause an error if selected here.
        # Any scope selection that would restore "all valid" resources automatically
        # excludes these group kinds. - Node - ComponentStatus - gkebackup.gke.io/
        # BackupJob - gkebackup.gke.io/RestoreJob - metrics.k8s.io/NodeMetrics -
        # migration.k8s.io/StorageState - migration.k8s.io/StorageVersionMigration -
        # snapshot.storage.k8s.io/VolumeSnapshotContent - storage.k8s.io/CSINode -
        # storage.k8s.io/VolumeAttachment Some group kinds are driven by restore
        # configuration elsewhere, and will cause an error if selected here. - Namespace
        # - PersistentVolume
        # Corresponds to the JSON property `clusterResourceRestoreScope`
        # @return [Google::Apis::GkebackupV1::ClusterResourceRestoreScope]
        attr_accessor :cluster_resource_restore_scope
      
        # A list of Kubernetes Namespaces.
        # Corresponds to the JSON property `excludedNamespaces`
        # @return [Google::Apis::GkebackupV1::Namespaces]
        attr_accessor :excluded_namespaces
      
        # Optional. Defines the behavior for handling the situation where sets of
        # namespaced resources being restored already exist in the target cluster. This
        # MUST be set to a value other than NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED.
        # Corresponds to the JSON property `namespacedResourceRestoreMode`
        # @return [String]
        attr_accessor :namespaced_resource_restore_mode
      
        # Do not restore any namespaced resources if set to "True". Specifying this
        # field to "False" is not allowed.
        # Corresponds to the JSON property `noNamespaces`
        # @return [Boolean]
        attr_accessor :no_namespaces
        alias_method :no_namespaces?, :no_namespaces
      
        # Allows customers to specify dependencies between resources that Backup for GKE
        # can use to compute a resasonable restore order.
        # Corresponds to the JSON property `restoreOrder`
        # @return [Google::Apis::GkebackupV1::RestoreOrder]
        attr_accessor :restore_order
      
        # A list of namespaced Kubernetes resources.
        # Corresponds to the JSON property `selectedApplications`
        # @return [Google::Apis::GkebackupV1::NamespacedNames]
        attr_accessor :selected_applications
      
        # A list of Kubernetes Namespaces.
        # Corresponds to the JSON property `selectedNamespaces`
        # @return [Google::Apis::GkebackupV1::Namespaces]
        attr_accessor :selected_namespaces
      
        # Optional. A list of transformation rules to be applied against Kubernetes
        # resources as they are selected for restoration from a Backup. Rules are
        # executed in order defined - this order matters, as changes made by a rule may
        # impact the filtering logic of subsequent rules. An empty list means no
        # substitution will occur.
        # Corresponds to the JSON property `substitutionRules`
        # @return [Array<Google::Apis::GkebackupV1::SubstitutionRule>]
        attr_accessor :substitution_rules
      
        # Optional. A list of transformation rules to be applied against Kubernetes
        # resources as they are selected for restoration from a Backup. Rules are
        # executed in order defined - this order matters, as changes made by a rule may
        # impact the filtering logic of subsequent rules. An empty list means no
        # transformation will occur.
        # Corresponds to the JSON property `transformationRules`
        # @return [Array<Google::Apis::GkebackupV1::TransformationRule>]
        attr_accessor :transformation_rules
      
        # Optional. Specifies the mechanism to be used to restore volume data. Default:
        # VOLUME_DATA_RESTORE_POLICY_UNSPECIFIED (will be treated as
        # NO_VOLUME_DATA_RESTORATION).
        # Corresponds to the JSON property `volumeDataRestorePolicy`
        # @return [String]
        attr_accessor :volume_data_restore_policy
      
        # Optional. A table that binds volumes by their scope to a restore policy.
        # Bindings must have a unique scope. Any volumes not scoped in the bindings are
        # subject to the policy defined in volume_data_restore_policy.
        # Corresponds to the JSON property `volumeDataRestorePolicyBindings`
        # @return [Array<Google::Apis::GkebackupV1::VolumeDataRestorePolicyBinding>]
        attr_accessor :volume_data_restore_policy_bindings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_namespaces = args[:all_namespaces] if args.key?(:all_namespaces)
          @cluster_resource_conflict_policy = args[:cluster_resource_conflict_policy] if args.key?(:cluster_resource_conflict_policy)
          @cluster_resource_restore_scope = args[:cluster_resource_restore_scope] if args.key?(:cluster_resource_restore_scope)
          @excluded_namespaces = args[:excluded_namespaces] if args.key?(:excluded_namespaces)
          @namespaced_resource_restore_mode = args[:namespaced_resource_restore_mode] if args.key?(:namespaced_resource_restore_mode)
          @no_namespaces = args[:no_namespaces] if args.key?(:no_namespaces)
          @restore_order = args[:restore_order] if args.key?(:restore_order)
          @selected_applications = args[:selected_applications] if args.key?(:selected_applications)
          @selected_namespaces = args[:selected_namespaces] if args.key?(:selected_namespaces)
          @substitution_rules = args[:substitution_rules] if args.key?(:substitution_rules)
          @transformation_rules = args[:transformation_rules] if args.key?(:transformation_rules)
          @volume_data_restore_policy = args[:volume_data_restore_policy] if args.key?(:volume_data_restore_policy)
          @volume_data_restore_policy_bindings = args[:volume_data_restore_policy_bindings] if args.key?(:volume_data_restore_policy_bindings)
        end
      end
      
      # Allows customers to specify dependencies between resources that Backup for GKE
      # can use to compute a resasonable restore order.
      class RestoreOrder
        include Google::Apis::Core::Hashable
      
        # Optional. Contains a list of group kind dependency pairs provided by the
        # customer, that is used by Backup for GKE to generate a group kind restore
        # order.
        # Corresponds to the JSON property `groupKindDependencies`
        # @return [Array<Google::Apis::GkebackupV1::GroupKindDependency>]
        attr_accessor :group_kind_dependencies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_kind_dependencies = args[:group_kind_dependencies] if args.key?(:group_kind_dependencies)
        end
      end
      
      # The configuration of a potential series of Restore operations to be performed
      # against Backups belong to a particular BackupPlan.
      class RestorePlan
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. A reference to the BackupPlan from which Backups may be
        # used as the source for Restores created via this RestorePlan. Format: `
        # projects/*/locations/*/backupPlans/*`.
        # Corresponds to the JSON property `backupPlan`
        # @return [String]
        attr_accessor :backup_plan
      
        # Required. Immutable. The target cluster into which Restores created via this
        # RestorePlan will restore data. NOTE: the cluster's region must be the same as
        # the RestorePlan. Valid formats: - `projects/*/locations/*/clusters/*` - `
        # projects/*/zones/*/clusters/*`
        # Corresponds to the JSON property `cluster`
        # @return [String]
        attr_accessor :cluster
      
        # Output only. The timestamp when this RestorePlan resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. User specified descriptive string for this RestorePlan.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. `etag` is used for optimistic concurrency control as a way to
        # help prevent simultaneous updates of a restore from overwriting each other. It
        # is strongly suggested that systems make use of the `etag` in the read-modify-
        # write cycle to perform restore updates in order to avoid race conditions: An `
        # etag` is returned in the response to `GetRestorePlan`, and systems are
        # expected to put that etag in the request to `UpdateRestorePlan` or `
        # DeleteRestorePlan` to ensure that their change will be applied to the same
        # version of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. A set of custom labels supplied by user.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The full name of the RestorePlan resource. Format: `projects/*/
        # locations/*/restorePlans/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The fully qualified name of the RestoreChannel to be used to
        # create a RestorePlan. This field is set only if the `backup_plan` is in a
        # different project than the RestorePlan. Format: `projects/*/locations/*/
        # restoreChannels/*`
        # Corresponds to the JSON property `restoreChannel`
        # @return [String]
        attr_accessor :restore_channel
      
        # Configuration of a restore.
        # Corresponds to the JSON property `restoreConfig`
        # @return [Google::Apis::GkebackupV1::RestoreConfig]
        attr_accessor :restore_config
      
        # Output only. State of the RestorePlan. This State field reflects the various
        # stages a RestorePlan can be in during the Create operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Human-readable description of why RestorePlan is in the current `
        # state`. This field is only meant for human readability and should not be used
        # programmatically as this field is not guaranteed to be consistent.
        # Corresponds to the JSON property `stateReason`
        # @return [String]
        attr_accessor :state_reason
      
        # Output only. Server generated global unique identifier of [UUID](https://en.
        # wikipedia.org/wiki/Universally_unique_identifier) format.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The timestamp when this RestorePlan resource was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_plan = args[:backup_plan] if args.key?(:backup_plan)
          @cluster = args[:cluster] if args.key?(:cluster)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @restore_channel = args[:restore_channel] if args.key?(:restore_channel)
          @restore_config = args[:restore_config] if args.key?(:restore_config)
          @state = args[:state] if args.key?(:state)
          @state_reason = args[:state_reason] if args.key?(:state_reason)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A RestorePlanBinding binds a RestorePlan with a RestoreChannel. This resource
      # is created automatically when a RestorePlan is created using a RestoreChannel.
      # This also serves as a holder for cross-project fields that need to be
      # displayed in the current project.
      class RestorePlanBinding
        include Google::Apis::Core::Hashable
      
        # Output only. The fully qualified name of the BackupPlan bound to the specified
        # RestorePlan. `projects/*/locations/*/backukpPlans/`backup_plan``
        # Corresponds to the JSON property `backupPlan`
        # @return [String]
        attr_accessor :backup_plan
      
        # Output only. The timestamp when this binding was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. `etag` is used for optimistic concurrency control as a way to
        # help prevent simultaneous updates of a RestorePlanBinding from overwriting
        # each other. It is strongly suggested that systems make use of the 'etag' in
        # the read-modify-write cycle to perform RestorePlanBinding updates in order to
        # avoid race conditions: An `etag` is returned in the response to `
        # GetRestorePlanBinding`, and systems are expected to put that etag in the
        # request to `UpdateRestorePlanBinding` or `DeleteRestorePlanBinding` to ensure
        # that their change will be applied to the same version of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Identifier. The fully qualified name of the RestorePlanBinding. `projects/*/
        # locations/*/restoreChannels/*/restorePlanBindings/*`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The fully qualified name of the RestorePlan bound to this
        # RestoreChannel. `projects/*/locations/*/restorePlans/`restore_plan``
        # Corresponds to the JSON property `restorePlan`
        # @return [String]
        attr_accessor :restore_plan
      
        # Output only. Server generated global unique identifier of [UUID4](https://en.
        # wikipedia.org/wiki/Universally_unique_identifier)
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The timestamp when this binding was created.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_plan = args[:backup_plan] if args.key?(:backup_plan)
          @create_time = args[:create_time] if args.key?(:create_time)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @restore_plan = args[:restore_plan] if args.key?(:restore_plan)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # RetentionPolicy defines a Backup retention policy for a BackupPlan.
      class RetentionPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. Minimum age for Backups created via this BackupPlan (in days). This
        # field MUST be an integer value between 0-90 (inclusive). A Backup created
        # under this BackupPlan will NOT be deletable until it reaches Backup's (
        # create_time + backup_delete_lock_days). Updating this field of a BackupPlan
        # does NOT affect existing Backups under it. Backups created AFTER a successful
        # update will inherit the new value. Default: 0 (no delete blocking)
        # Corresponds to the JSON property `backupDeleteLockDays`
        # @return [Fixnum]
        attr_accessor :backup_delete_lock_days
      
        # Optional. The default maximum age of a Backup created via this BackupPlan.
        # This field MUST be an integer value >= 0 and <= 365. If specified, a Backup
        # created under this BackupPlan will be automatically deleted after its age
        # reaches (create_time + backup_retain_days). If not specified, Backups created
        # under this BackupPlan will NOT be subject to automatic deletion. Updating this
        # field does NOT affect existing Backups under it. Backups created AFTER a
        # successful update will automatically pick up the new value. NOTE:
        # backup_retain_days must be >= backup_delete_lock_days. If cron_schedule is
        # defined, then this must be <= 360 * the creation interval. If rpo_config is
        # defined, then this must be <= 360 * target_rpo_minutes / (1440minutes/day).
        # Default: 0 (no automatic deletion)
        # Corresponds to the JSON property `backupRetainDays`
        # @return [Fixnum]
        attr_accessor :backup_retain_days
      
        # Optional. This flag denotes whether the retention policy of this BackupPlan is
        # locked. If set to True, no further update is allowed on this policy, including
        # the `locked` field itself. Default: False
        # Corresponds to the JSON property `locked`
        # @return [Boolean]
        attr_accessor :locked
        alias_method :locked?, :locked
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_delete_lock_days = args[:backup_delete_lock_days] if args.key?(:backup_delete_lock_days)
          @backup_retain_days = args[:backup_retain_days] if args.key?(:backup_retain_days)
          @locked = args[:locked] if args.key?(:locked)
        end
      end
      
      # RetentionPolicyDetails defines a Backup retention policy for a BackupPlan.
      class RetentionPolicyDetails
        include Google::Apis::Core::Hashable
      
        # Optional. Minimum age for Backups created via this BackupPlan (in days). This
        # field MUST be an integer value between 0-90 (inclusive). A Backup created
        # under this BackupPlan will NOT be deletable until it reaches Backup's (
        # create_time + backup_delete_lock_days). Updating this field of a BackupPlan
        # does NOT affect existing Backups under it. Backups created AFTER a successful
        # update will inherit the new value. Default: 0 (no delete blocking)
        # Corresponds to the JSON property `backupDeleteLockDays`
        # @return [Fixnum]
        attr_accessor :backup_delete_lock_days
      
        # Optional. The default maximum age of a Backup created via this BackupPlan.
        # This field MUST be an integer value >= 0 and <= 365. If specified, a Backup
        # created under this BackupPlan will be automatically deleted after its age
        # reaches (create_time + backup_retain_days). If not specified, Backups created
        # under this BackupPlan will NOT be subject to automatic deletion. Default: 0 (
        # no automatic deletion)
        # Corresponds to the JSON property `backupRetainDays`
        # @return [Fixnum]
        attr_accessor :backup_retain_days
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_delete_lock_days = args[:backup_delete_lock_days] if args.key?(:backup_delete_lock_days)
          @backup_retain_days = args[:backup_retain_days] if args.key?(:backup_retain_days)
        end
      end
      
      # Defines RPO scheduling configuration for automatically creating Backups via
      # this BackupPlan.
      class RpoConfig
        include Google::Apis::Core::Hashable
      
        # Optional. User specified time windows during which backup can NOT happen for
        # this BackupPlan - backups should start and finish outside of any given
        # exclusion window. Note: backup jobs will be scheduled to start and finish
        # outside the duration of the window as much as possible, but running jobs will
        # not get canceled when it runs into the window. All the time and date values in
        # exclusion_windows entry in the API are in UTC. We only allow <=1 recurrence (
        # daily or weekly) exclusion window for a BackupPlan while no restriction on
        # number of single occurrence windows.
        # Corresponds to the JSON property `exclusionWindows`
        # @return [Array<Google::Apis::GkebackupV1::ExclusionWindow>]
        attr_accessor :exclusion_windows
      
        # Required. Defines the target RPO for the BackupPlan in minutes, which means
        # the target maximum data loss in time that is acceptable for this BackupPlan.
        # This must be at least 60, i.e., 1 hour, and at most 86400, i.e., 60 days.
        # Corresponds to the JSON property `targetRpoMinutes`
        # @return [Fixnum]
        attr_accessor :target_rpo_minutes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclusion_windows = args[:exclusion_windows] if args.key?(:exclusion_windows)
          @target_rpo_minutes = args[:target_rpo_minutes] if args.key?(:target_rpo_minutes)
        end
      end
      
      # Defines scheduling parameters for automatically creating Backups via this
      # BackupPlan.
      class Schedule
        include Google::Apis::Core::Hashable
      
        # Optional. A standard [cron](https://wikipedia.com/wiki/cron) string that
        # defines a repeating schedule for creating Backups via this BackupPlan. This is
        # mutually exclusive with the rpo_config field since at most one schedule can be
        # defined for a BackupPlan. If this is defined, then backup_retain_days must
        # also be defined. Default (empty): no automatic backup creation will occur.
        # Corresponds to the JSON property `cronSchedule`
        # @return [String]
        attr_accessor :cron_schedule
      
        # Output only. Start time of next scheduled backup under this BackupPlan by
        # either cron_schedule or rpo config.
        # Corresponds to the JSON property `nextScheduledBackupTime`
        # @return [String]
        attr_accessor :next_scheduled_backup_time
      
        # Optional. This flag denotes whether automatic Backup creation is paused for
        # this BackupPlan. Default: False
        # Corresponds to the JSON property `paused`
        # @return [Boolean]
        attr_accessor :paused
        alias_method :paused?, :paused
      
        # Defines RPO scheduling configuration for automatically creating Backups via
        # this BackupPlan.
        # Corresponds to the JSON property `rpoConfig`
        # @return [Google::Apis::GkebackupV1::RpoConfig]
        attr_accessor :rpo_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cron_schedule = args[:cron_schedule] if args.key?(:cron_schedule)
          @next_scheduled_backup_time = args[:next_scheduled_backup_time] if args.key?(:next_scheduled_backup_time)
          @paused = args[:paused] if args.key?(:paused)
          @rpo_config = args[:rpo_config] if args.key?(:rpo_config)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members`, or principals, to a single `role`.
        # Principals can be user accounts, service accounts, Google groups, and domains (
        # such as G Suite). A `role` is a named list of permissions; each `role` can be
        # an IAM predefined role or a user-created custom role. For some types of Google
        # Cloud resources, a `binding` can also specify a `condition`, which is a
        # logical expression that allows access to a resource only if the expression
        # evaluates to `true`. A condition can add constraints based on attributes of
        # the request, the resource, or both. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
        # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
        # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
        # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
        # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
        # title: expirable access description: Does not grant access after Sep 2020
        # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
        # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
        # [IAM documentation](https://cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::GkebackupV1::Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the following
        # default mask is used: `paths: "bindings, etag"`
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # A transformation rule to be applied against Kubernetes resources as they are
      # selected for restoration from a Backup. A rule contains both filtering logic (
      # which resources are subject to substitution) and substitution logic.
      class SubstitutionRule
        include Google::Apis::Core::Hashable
      
        # Optional. This is the new value to set for any fields that pass the filtering
        # and selection criteria. To remove a value from a Kubernetes resource, either
        # leave this field unspecified, or set it to the empty string ("").
        # Corresponds to the JSON property `newValue`
        # @return [String]
        attr_accessor :new_value
      
        # Optional. (Filtering parameter) This is a [regular expression] (https://en.
        # wikipedia.org/wiki/Regular_expression) that is compared against the fields
        # matched by the target_json_path expression (and must also have passed the
        # previous filters). Substitution will not be performed against fields whose
        # value does not match this expression. If this field is NOT specified, then ALL
        # fields matched by the target_json_path expression will undergo substitution.
        # Note that an empty (e.g., "", rather than unspecified) value for this field
        # will only match empty fields.
        # Corresponds to the JSON property `originalValuePattern`
        # @return [String]
        attr_accessor :original_value_pattern
      
        # Optional. (Filtering parameter) Any resource subject to substitution must
        # belong to one of the listed "types". If this field is not provided, no type
        # filtering will be performed (all resources of all types matching previous
        # filtering parameters will be candidates for substitution).
        # Corresponds to the JSON property `targetGroupKinds`
        # @return [Array<Google::Apis::GkebackupV1::GroupKind>]
        attr_accessor :target_group_kinds
      
        # Required. This is a [JSONPath] (https://kubernetes.io/docs/reference/kubectl/
        # jsonpath/) expression that matches specific fields of candidate resources and
        # it operates as both a filtering parameter (resources that are not matched with
        # this expression will not be candidates for substitution) as well as a field
        # identifier (identifies exactly which fields out of the candidate resources
        # will be modified).
        # Corresponds to the JSON property `targetJsonPath`
        # @return [String]
        attr_accessor :target_json_path
      
        # Optional. (Filtering parameter) Any resource subject to substitution must be
        # contained within one of the listed Kubernetes Namespace in the Backup. If this
        # field is not provided, no namespace filtering will be performed (all resources
        # in all Namespaces, including all cluster-scoped resources, will be candidates
        # for substitution). To mix cluster-scoped and namespaced resources in the same
        # rule, use an empty string ("") as one of the target namespaces.
        # Corresponds to the JSON property `targetNamespaces`
        # @return [Array<String>]
        attr_accessor :target_namespaces
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_value = args[:new_value] if args.key?(:new_value)
          @original_value_pattern = args[:original_value_pattern] if args.key?(:original_value_pattern)
          @target_group_kinds = args[:target_group_kinds] if args.key?(:target_group_kinds)
          @target_json_path = args[:target_json_path] if args.key?(:target_json_path)
          @target_namespaces = args[:target_namespaces] if args.key?(:target_namespaces)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as `*` or `storage.*`) are not allowed. For more information see [IAM
        # Overview](https://cloud.google.com/iam/docs/overview#permissions).
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Represents a time of day. The date and time zone are either not significant or
      # are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class TimeOfDay
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
      
      # A transformation rule to be applied against Kubernetes resources as they are
      # selected for restoration from a Backup. A rule contains both filtering logic (
      # which resources are subject to transform) and transformation logic.
      class TransformationRule
        include Google::Apis::Core::Hashable
      
        # Optional. The description is a user specified string description of the
        # transformation rule.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. A list of transformation rule actions to take against candidate
        # resources. Actions are executed in order defined - this order matters, as they
        # could potentially interfere with each other and the first operation could
        # affect the outcome of the second operation.
        # Corresponds to the JSON property `fieldActions`
        # @return [Array<Google::Apis::GkebackupV1::TransformationRuleAction>]
        attr_accessor :field_actions
      
        # ResourceFilter specifies matching criteria to limit the scope of a change to a
        # specific set of kubernetes resources that are selected for restoration from a
        # backup.
        # Corresponds to the JSON property `resourceFilter`
        # @return [Google::Apis::GkebackupV1::ResourceFilter]
        attr_accessor :resource_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @field_actions = args[:field_actions] if args.key?(:field_actions)
          @resource_filter = args[:resource_filter] if args.key?(:resource_filter)
        end
      end
      
      # TransformationRuleAction defines a TransformationRule action based on the JSON
      # Patch RFC (https://www.rfc-editor.org/rfc/rfc6902)
      class TransformationRuleAction
        include Google::Apis::Core::Hashable
      
        # Optional. A string containing a JSON Pointer value that references the
        # location in the target document to move the value from.
        # Corresponds to the JSON property `fromPath`
        # @return [String]
        attr_accessor :from_path
      
        # Required. op specifies the operation to perform.
        # Corresponds to the JSON property `op`
        # @return [String]
        attr_accessor :op
      
        # Optional. A string containing a JSON-Pointer value that references a location
        # within the target document where the operation is performed.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Optional. A string that specifies the desired value in string format to use
        # for transformation.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @from_path = args[:from_path] if args.key?(:from_path)
          @op = args[:op] if args.key?(:op)
          @path = args[:path] if args.key?(:path)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Represents the backup of a specific persistent volume as a component of a
      # Backup - both the record of the operation and a pointer to the underlying
      # storage-specific artifacts.
      class VolumeBackup
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the associated underlying volume backup
        # operation completed.
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # Output only. The timestamp when this VolumeBackup resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The minimum size of the disk to which this VolumeBackup can be
        # restored.
        # Corresponds to the JSON property `diskSizeBytes`
        # @return [Fixnum]
        attr_accessor :disk_size_bytes
      
        # Output only. `etag` is used for optimistic concurrency control as a way to
        # help prevent simultaneous updates of a volume backup from overwriting each
        # other. It is strongly suggested that systems make use of the `etag` in the
        # read-modify-write cycle to perform volume backup updates in order to avoid
        # race conditions.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. The format used for the volume backup.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Output only. The full name of the VolumeBackup resource. Format: `projects/*/
        # locations/*/backupPlans/*/backups/*/volumeBackups/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. [Output Only] Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # Output only. [Output Only] Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # A reference to a namespaced resource in Kubernetes.
        # Corresponds to the JSON property `sourcePvc`
        # @return [Google::Apis::GkebackupV1::NamespacedName]
        attr_accessor :source_pvc
      
        # Output only. The current state of this VolumeBackup.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. A human readable message explaining why the VolumeBackup is in
        # its current state. This field is only meant for human consumption and should
        # not be used programmatically as this field is not guaranteed to be consistent.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # Output only. The aggregate size of the underlying artifacts associated with
        # this VolumeBackup in the backup storage. This may change over time when
        # multiple backups of the same volume share the same backup storage location. In
        # particular, this is likely to increase in size when the immediately preceding
        # backup of the same volume is deleted.
        # Corresponds to the JSON property `storageBytes`
        # @return [Fixnum]
        attr_accessor :storage_bytes
      
        # Output only. Server generated global unique identifier of [UUID](https://en.
        # wikipedia.org/wiki/Universally_unique_identifier) format.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The timestamp when this VolumeBackup resource was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. A storage system-specific opaque handle to the underlying volume
        # backup.
        # Corresponds to the JSON property `volumeBackupHandle`
        # @return [String]
        attr_accessor :volume_backup_handle
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @create_time = args[:create_time] if args.key?(:create_time)
          @disk_size_bytes = args[:disk_size_bytes] if args.key?(:disk_size_bytes)
          @etag = args[:etag] if args.key?(:etag)
          @format = args[:format] if args.key?(:format)
          @name = args[:name] if args.key?(:name)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @source_pvc = args[:source_pvc] if args.key?(:source_pvc)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @storage_bytes = args[:storage_bytes] if args.key?(:storage_bytes)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @volume_backup_handle = args[:volume_backup_handle] if args.key?(:volume_backup_handle)
        end
      end
      
      # Binds resources in the scope to the given VolumeDataRestorePolicy.
      class VolumeDataRestorePolicyBinding
        include Google::Apis::Core::Hashable
      
        # Required. The VolumeDataRestorePolicy to apply when restoring volumes in scope.
        # Corresponds to the JSON property `policy`
        # @return [String]
        attr_accessor :policy
      
        # The volume type, as determined by the PVC's bound PV, to apply the policy to.
        # Corresponds to the JSON property `volumeType`
        # @return [String]
        attr_accessor :volume_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @volume_type = args[:volume_type] if args.key?(:volume_type)
        end
      end
      
      # Defines an override to apply a VolumeDataRestorePolicy for scoped resources.
      class VolumeDataRestorePolicyOverride
        include Google::Apis::Core::Hashable
      
        # Required. The VolumeDataRestorePolicy to apply when restoring volumes in scope.
        # Corresponds to the JSON property `policy`
        # @return [String]
        attr_accessor :policy
      
        # A list of namespaced Kubernetes resources.
        # Corresponds to the JSON property `selectedPvcs`
        # @return [Google::Apis::GkebackupV1::NamespacedNames]
        attr_accessor :selected_pvcs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @selected_pvcs = args[:selected_pvcs] if args.key?(:selected_pvcs)
        end
      end
      
      # Represents the operation of restoring a volume from a VolumeBackup.
      class VolumeRestore
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the associated underlying volume restoration
        # completed.
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # Output only. The timestamp when this VolumeRestore resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. `etag` is used for optimistic concurrency control as a way to
        # help prevent simultaneous updates of a volume restore from overwriting each
        # other. It is strongly suggested that systems make use of the `etag` in the
        # read-modify-write cycle to perform volume restore updates in order to avoid
        # race conditions.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. Full name of the VolumeRestore resource. Format: `projects/*/
        # locations/*/restorePlans/*/restores/*/volumeRestores/*`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current state of this VolumeRestore.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. A human readable message explaining why the VolumeRestore is in
        # its current state.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # A reference to a namespaced resource in Kubernetes.
        # Corresponds to the JSON property `targetPvc`
        # @return [Google::Apis::GkebackupV1::NamespacedName]
        attr_accessor :target_pvc
      
        # Output only. Server generated global unique identifier of [UUID](https://en.
        # wikipedia.org/wiki/Universally_unique_identifier) format.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The timestamp when this VolumeRestore resource was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. The full name of the VolumeBackup from which the volume will be
        # restored. Format: `projects/*/locations/*/backupPlans/*/backups/*/
        # volumeBackups/*`.
        # Corresponds to the JSON property `volumeBackup`
        # @return [String]
        attr_accessor :volume_backup
      
        # Output only. A storage system-specific opaque handler to the underlying volume
        # created for the target PVC from the volume backup.
        # Corresponds to the JSON property `volumeHandle`
        # @return [String]
        attr_accessor :volume_handle
      
        # Output only. The type of volume provisioned
        # Corresponds to the JSON property `volumeType`
        # @return [String]
        attr_accessor :volume_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @create_time = args[:create_time] if args.key?(:create_time)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @target_pvc = args[:target_pvc] if args.key?(:target_pvc)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @volume_backup = args[:volume_backup] if args.key?(:volume_backup)
          @volume_handle = args[:volume_handle] if args.key?(:volume_handle)
          @volume_type = args[:volume_type] if args.key?(:volume_type)
        end
      end
    end
  end
end
