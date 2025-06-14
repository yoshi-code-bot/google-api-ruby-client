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
    module SqladminV1
      
      class AclEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcquireSsrsLeaseContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdvancedMachineFeatures
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApiWarning
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AvailableDatabaseVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Backup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupReencryptionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupRetentionSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupRun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupRunsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BinLogCoordinates
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloneContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectPoolNodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectionPoolConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectionPoolFlags
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataCacheConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Database
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseFlags
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class FailoverReplica
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabasesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DemoteContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DemoteMasterConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DemoteMasterContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DemoteMasterMySqlReplicaConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DenyMaintenancePeriod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskEncryptionConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskEncryptionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsNameMapping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class BakExportOptions
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class CsvExportOptions
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class SqlExportOptions
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class MysqlExportOptions
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
          
          class PostgresExportOptions
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class TdeExportOptions
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExternalSyncSelectedObject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FailoverContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Flag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlagsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GeminiInstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateEphemeralCertRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateEphemeralCertResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class BakImportOptions
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class EncryptionOptions
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class CsvImportOptions
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class SqlImportOptions
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class PostgresImportOptions
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class TdeImportOptions
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InsightsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesAcquireSsrsLeaseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesCloneRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesDemoteMasterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesDemoteRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesExportRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesFailoverRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesImportRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesListServerCasResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesListServerCertificatesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesReencryptRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesRestoreBackupRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesRotateServerCaRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesRotateServerCertificateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesTruncateLogRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Interval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IpConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IpMapping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBackupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationPreference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MySqlReplicaConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MySqlSyncConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OnPremisesConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationErrors
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PitrFields
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PasswordStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PasswordValidationPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PerformDiskShrinkContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PointInTimeRestoreContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PoolNodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PscAutoConnectionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PscConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplicaConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplicationCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reschedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreBackupContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RotateServerCaContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RotateServerCertificateContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SelectedObjects
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Settings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlActiveDirectoryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlExternalSyncSettingError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlInstancesAcquireSsrsLeaseResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlInstancesGetDiskShrinkConfigResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlInstancesGetLatestRecoveryTimeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlInstancesReleaseSsrsLeaseResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlInstancesRescheduleMaintenanceRequestBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlInstancesResetReplicaSizeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlInstancesStartExternalSyncRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlInstancesVerifyExternalSyncSettingsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlInstancesVerifyExternalSyncSettingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlOutOfDiskReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlScheduledMaintenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlServerAuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlServerDatabaseDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlServerUserDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlSubOperationType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslCert
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslCertDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslCertsCreateEphemeralRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslCertsInsertRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslCertsInsertResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslCertsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SyncFlags
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Tier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TiersListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TruncateLogContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class User
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserPasswordValidationPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UsersListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AclEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expiration_time, as: 'expirationTime'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class AcquireSsrsLeaseContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :report_database, as: 'reportDatabase'
          property :service_login, as: 'serviceLogin'
          property :setup_login, as: 'setupLogin'
        end
      end
      
      class AdvancedMachineFeatures
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :threads_per_core, as: 'threadsPerCore'
        end
      end
      
      class ApiWarning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :message, as: 'message'
          property :region, as: 'region'
        end
      end
      
      class AvailableDatabaseVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :major_version, as: 'majorVersion'
          property :name, as: 'name'
        end
      end
      
      class Backup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_interval, as: 'backupInterval', class: Google::Apis::SqladminV1::Interval, decorator: Google::Apis::SqladminV1::Interval::Representation
      
          property :backup_kind, as: 'backupKind'
          property :backup_run, as: 'backupRun'
          property :database_version, as: 'databaseVersion'
          property :description, as: 'description'
          property :error, as: 'error', class: Google::Apis::SqladminV1::OperationError, decorator: Google::Apis::SqladminV1::OperationError::Representation
      
          property :expiry_time, as: 'expiryTime'
          property :instance, as: 'instance'
          property :instance_deletion_time, as: 'instanceDeletionTime'
          property :instance_settings, as: 'instanceSettings', class: Google::Apis::SqladminV1::DatabaseInstance, decorator: Google::Apis::SqladminV1::DatabaseInstance::Representation
      
          property :kind, as: 'kind'
          property :kms_key, as: 'kmsKey'
          property :kms_key_version, as: 'kmsKeyVersion'
          property :location, as: 'location'
          property :max_chargeable_bytes, :numeric_string => true, as: 'maxChargeableBytes'
          property :name, as: 'name'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :self_link, as: 'selfLink'
          property :state, as: 'state'
          property :time_zone, as: 'timeZone'
          property :ttl_days, :numeric_string => true, as: 'ttlDays'
          property :type, as: 'type'
        end
      end
      
      class BackupConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_retention_settings, as: 'backupRetentionSettings', class: Google::Apis::SqladminV1::BackupRetentionSettings, decorator: Google::Apis::SqladminV1::BackupRetentionSettings::Representation
      
          property :backup_tier, as: 'backupTier'
          property :binary_log_enabled, as: 'binaryLogEnabled'
          property :enabled, as: 'enabled'
          property :kind, as: 'kind'
          property :location, as: 'location'
          property :point_in_time_recovery_enabled, as: 'pointInTimeRecoveryEnabled'
          property :replication_log_archiving_enabled, as: 'replicationLogArchivingEnabled'
          property :start_time, as: 'startTime'
          property :transaction_log_retention_days, as: 'transactionLogRetentionDays'
          property :transactional_log_storage_state, as: 'transactionalLogStorageState'
        end
      end
      
      class BackupContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_id, :numeric_string => true, as: 'backupId'
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      class BackupReencryptionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_limit, as: 'backupLimit'
          property :backup_type, as: 'backupType'
        end
      end
      
      class BackupRetentionSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :retained_backups, as: 'retainedBackups'
          property :retention_unit, as: 'retentionUnit'
        end
      end
      
      class BackupRun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_kind, as: 'backupKind'
          property :database_version, as: 'databaseVersion'
          property :description, as: 'description'
          property :disk_encryption_configuration, as: 'diskEncryptionConfiguration', class: Google::Apis::SqladminV1::DiskEncryptionConfiguration, decorator: Google::Apis::SqladminV1::DiskEncryptionConfiguration::Representation
      
          property :disk_encryption_status, as: 'diskEncryptionStatus', class: Google::Apis::SqladminV1::DiskEncryptionStatus, decorator: Google::Apis::SqladminV1::DiskEncryptionStatus::Representation
      
          property :end_time, as: 'endTime'
          property :enqueued_time, as: 'enqueuedTime'
          property :error, as: 'error', class: Google::Apis::SqladminV1::OperationError, decorator: Google::Apis::SqladminV1::OperationError::Representation
      
          property :id, :numeric_string => true, as: 'id'
          property :instance, as: 'instance'
          property :kind, as: 'kind'
          property :location, as: 'location'
          property :max_chargeable_bytes, :numeric_string => true, as: 'maxChargeableBytes'
          property :self_link, as: 'selfLink'
          property :start_time, as: 'startTime'
          property :status, as: 'status'
          property :time_zone, as: 'timeZone'
          property :type, as: 'type'
          property :window_start_time, as: 'windowStartTime'
        end
      end
      
      class BackupRunsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SqladminV1::BackupRun, decorator: Google::Apis::SqladminV1::BackupRun::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class BinLogCoordinates
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bin_log_file_name, as: 'binLogFileName'
          property :bin_log_position, :numeric_string => true, as: 'binLogPosition'
          property :kind, as: 'kind'
        end
      end
      
      class CloneContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allocated_ip_range, as: 'allocatedIpRange'
          property :bin_log_coordinates, as: 'binLogCoordinates', class: Google::Apis::SqladminV1::BinLogCoordinates, decorator: Google::Apis::SqladminV1::BinLogCoordinates::Representation
      
          collection :database_names, as: 'databaseNames'
          property :destination_instance_name, as: 'destinationInstanceName'
          property :kind, as: 'kind'
          property :pitr_timestamp_ms, :numeric_string => true, as: 'pitrTimestampMs'
          property :point_in_time, as: 'pointInTime'
          property :preferred_secondary_zone, as: 'preferredSecondaryZone'
          property :preferred_zone, as: 'preferredZone'
        end
      end
      
      class ConnectPoolNodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dns_name, as: 'dnsName'
          collection :dns_names, as: 'dnsNames', class: Google::Apis::SqladminV1::DnsNameMapping, decorator: Google::Apis::SqladminV1::DnsNameMapping::Representation
      
          collection :ip_addresses, as: 'ipAddresses', class: Google::Apis::SqladminV1::IpMapping, decorator: Google::Apis::SqladminV1::IpMapping::Representation
      
          property :name, as: 'name'
        end
      end
      
      class ConnectSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backend_type, as: 'backendType'
          collection :custom_subject_alternative_names, as: 'customSubjectAlternativeNames'
          property :database_version, as: 'databaseVersion'
          property :dns_name, as: 'dnsName'
          collection :dns_names, as: 'dnsNames', class: Google::Apis::SqladminV1::DnsNameMapping, decorator: Google::Apis::SqladminV1::DnsNameMapping::Representation
      
          collection :ip_addresses, as: 'ipAddresses', class: Google::Apis::SqladminV1::IpMapping, decorator: Google::Apis::SqladminV1::IpMapping::Representation
      
          property :kind, as: 'kind'
          property :node_count, as: 'nodeCount'
          collection :nodes, as: 'nodes', class: Google::Apis::SqladminV1::ConnectPoolNodeConfig, decorator: Google::Apis::SqladminV1::ConnectPoolNodeConfig::Representation
      
          property :psc_enabled, as: 'pscEnabled'
          property :region, as: 'region'
          property :server_ca_cert, as: 'serverCaCert', class: Google::Apis::SqladminV1::SslCert, decorator: Google::Apis::SqladminV1::SslCert::Representation
      
          property :server_ca_mode, as: 'serverCaMode'
        end
      end
      
      class ConnectionPoolConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_pooling_enabled, as: 'connectionPoolingEnabled'
          collection :flags, as: 'flags', class: Google::Apis::SqladminV1::ConnectionPoolFlags, decorator: Google::Apis::SqladminV1::ConnectionPoolFlags::Representation
      
        end
      end
      
      class ConnectionPoolFlags
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class DataCacheConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_cache_enabled, as: 'dataCacheEnabled'
        end
      end
      
      class Database
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :charset, as: 'charset'
          property :collation, as: 'collation'
          property :etag, as: 'etag'
          property :instance, as: 'instance'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :project, as: 'project'
          property :self_link, as: 'selfLink'
          property :sqlserver_database_details, as: 'sqlserverDatabaseDetails', class: Google::Apis::SqladminV1::SqlServerDatabaseDetails, decorator: Google::Apis::SqladminV1::SqlServerDatabaseDetails::Representation
      
        end
      end
      
      class DatabaseFlags
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class DatabaseInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :available_maintenance_versions, as: 'availableMaintenanceVersions'
          property :backend_type, as: 'backendType'
          property :clear_network, as: 'clearNetwork'
          property :connection_name, as: 'connectionName'
          property :create_time, as: 'createTime'
          property :current_disk_size, :numeric_string => true, as: 'currentDiskSize'
          property :database_installed_version, as: 'databaseInstalledVersion'
          property :database_version, as: 'databaseVersion'
          property :disk_encryption_configuration, as: 'diskEncryptionConfiguration', class: Google::Apis::SqladminV1::DiskEncryptionConfiguration, decorator: Google::Apis::SqladminV1::DiskEncryptionConfiguration::Representation
      
          property :disk_encryption_status, as: 'diskEncryptionStatus', class: Google::Apis::SqladminV1::DiskEncryptionStatus, decorator: Google::Apis::SqladminV1::DiskEncryptionStatus::Representation
      
          property :dns_name, as: 'dnsName'
          collection :dns_names, as: 'dnsNames', class: Google::Apis::SqladminV1::DnsNameMapping, decorator: Google::Apis::SqladminV1::DnsNameMapping::Representation
      
          property :etag, as: 'etag'
          property :failover_replica, as: 'failoverReplica', class: Google::Apis::SqladminV1::DatabaseInstance::FailoverReplica, decorator: Google::Apis::SqladminV1::DatabaseInstance::FailoverReplica::Representation
      
          property :gce_zone, as: 'gceZone'
          property :gemini_config, as: 'geminiConfig', class: Google::Apis::SqladminV1::GeminiInstanceConfig, decorator: Google::Apis::SqladminV1::GeminiInstanceConfig::Representation
      
          property :include_replicas_for_major_version_upgrade, as: 'includeReplicasForMajorVersionUpgrade'
          property :instance_type, as: 'instanceType'
          collection :ip_addresses, as: 'ipAddresses', class: Google::Apis::SqladminV1::IpMapping, decorator: Google::Apis::SqladminV1::IpMapping::Representation
      
          property :ipv6_address, as: 'ipv6Address'
          property :kind, as: 'kind'
          property :maintenance_version, as: 'maintenanceVersion'
          property :master_instance_name, as: 'masterInstanceName'
          property :max_disk_size, :numeric_string => true, as: 'maxDiskSize'
          property :name, as: 'name'
          property :node_count, as: 'nodeCount'
          collection :nodes, as: 'nodes', class: Google::Apis::SqladminV1::PoolNodeConfig, decorator: Google::Apis::SqladminV1::PoolNodeConfig::Representation
      
          property :on_premises_configuration, as: 'onPremisesConfiguration', class: Google::Apis::SqladminV1::OnPremisesConfiguration, decorator: Google::Apis::SqladminV1::OnPremisesConfiguration::Representation
      
          property :out_of_disk_report, as: 'outOfDiskReport', class: Google::Apis::SqladminV1::SqlOutOfDiskReport, decorator: Google::Apis::SqladminV1::SqlOutOfDiskReport::Representation
      
          property :pitr_fields, as: 'pitrFields', class: Google::Apis::SqladminV1::PitrFields, decorator: Google::Apis::SqladminV1::PitrFields::Representation
      
          property :primary_dns_name, as: 'primaryDnsName'
          property :project, as: 'project'
          property :psc_service_attachment_link, as: 'pscServiceAttachmentLink'
          property :region, as: 'region'
          property :replica_configuration, as: 'replicaConfiguration', class: Google::Apis::SqladminV1::ReplicaConfiguration, decorator: Google::Apis::SqladminV1::ReplicaConfiguration::Representation
      
          collection :replica_names, as: 'replicaNames'
          property :replication_cluster, as: 'replicationCluster', class: Google::Apis::SqladminV1::ReplicationCluster, decorator: Google::Apis::SqladminV1::ReplicationCluster::Representation
      
          property :root_password, as: 'rootPassword'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :scheduled_maintenance, as: 'scheduledMaintenance', class: Google::Apis::SqladminV1::SqlScheduledMaintenance, decorator: Google::Apis::SqladminV1::SqlScheduledMaintenance::Representation
      
          property :secondary_gce_zone, as: 'secondaryGceZone'
          property :self_link, as: 'selfLink'
          property :server_ca_cert, as: 'serverCaCert', class: Google::Apis::SqladminV1::SslCert, decorator: Google::Apis::SqladminV1::SslCert::Representation
      
          property :service_account_email_address, as: 'serviceAccountEmailAddress'
          property :settings, as: 'settings', class: Google::Apis::SqladminV1::Settings, decorator: Google::Apis::SqladminV1::Settings::Representation
      
          property :sql_network_architecture, as: 'sqlNetworkArchitecture'
          property :state, as: 'state'
          collection :suspension_reason, as: 'suspensionReason'
          property :switch_transaction_logs_to_cloud_storage_enabled, as: 'switchTransactionLogsToCloudStorageEnabled'
          hash :tags, as: 'tags'
          collection :upgradable_database_versions, as: 'upgradableDatabaseVersions', class: Google::Apis::SqladminV1::AvailableDatabaseVersion, decorator: Google::Apis::SqladminV1::AvailableDatabaseVersion::Representation
      
          property :write_endpoint, as: 'writeEndpoint'
        end
        
        class FailoverReplica
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :available, as: 'available'
            property :name, as: 'name'
          end
        end
      end
      
      class DatabasesListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SqladminV1::Database, decorator: Google::Apis::SqladminV1::Database::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class DemoteContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :source_representative_instance_name, as: 'sourceRepresentativeInstanceName'
        end
      end
      
      class DemoteMasterConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :mysql_replica_configuration, as: 'mysqlReplicaConfiguration', class: Google::Apis::SqladminV1::DemoteMasterMySqlReplicaConfiguration, decorator: Google::Apis::SqladminV1::DemoteMasterMySqlReplicaConfiguration::Representation
      
        end
      end
      
      class DemoteMasterContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :master_instance_name, as: 'masterInstanceName'
          property :replica_configuration, as: 'replicaConfiguration', class: Google::Apis::SqladminV1::DemoteMasterConfiguration, decorator: Google::Apis::SqladminV1::DemoteMasterConfiguration::Representation
      
          property :skip_replication_setup, as: 'skipReplicationSetup'
          property :verify_gtid_consistency, as: 'verifyGtidConsistency'
        end
      end
      
      class DemoteMasterMySqlReplicaConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_certificate, as: 'caCertificate'
          property :client_certificate, as: 'clientCertificate'
          property :client_key, as: 'clientKey'
          property :kind, as: 'kind'
          property :password, as: 'password'
          property :username, as: 'username'
        end
      end
      
      class DenyMaintenancePeriod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate'
          property :start_date, as: 'startDate'
          property :time, as: 'time'
        end
      end
      
      class DiskEncryptionConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class DiskEncryptionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :kms_key_version_name, as: 'kmsKeyVersionName'
        end
      end
      
      class DnsNameMapping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_type, as: 'connectionType'
          property :dns_scope, as: 'dnsScope'
          property :name, as: 'name'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ExportContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bak_export_options, as: 'bakExportOptions', class: Google::Apis::SqladminV1::ExportContext::BakExportOptions, decorator: Google::Apis::SqladminV1::ExportContext::BakExportOptions::Representation
      
          property :csv_export_options, as: 'csvExportOptions', class: Google::Apis::SqladminV1::ExportContext::CsvExportOptions, decorator: Google::Apis::SqladminV1::ExportContext::CsvExportOptions::Representation
      
          collection :databases, as: 'databases'
          property :file_type, as: 'fileType'
          property :kind, as: 'kind'
          property :offload, as: 'offload'
          property :sql_export_options, as: 'sqlExportOptions', class: Google::Apis::SqladminV1::ExportContext::SqlExportOptions, decorator: Google::Apis::SqladminV1::ExportContext::SqlExportOptions::Representation
      
          property :tde_export_options, as: 'tdeExportOptions', class: Google::Apis::SqladminV1::ExportContext::TdeExportOptions, decorator: Google::Apis::SqladminV1::ExportContext::TdeExportOptions::Representation
      
          property :uri, as: 'uri'
        end
        
        class BakExportOptions
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :bak_type, as: 'bakType'
            property :copy_only, as: 'copyOnly'
            property :differential_base, as: 'differentialBase'
            property :export_log_end_time, as: 'exportLogEndTime'
            property :export_log_start_time, as: 'exportLogStartTime'
            property :stripe_count, as: 'stripeCount'
            property :striped, as: 'striped'
          end
        end
        
        class CsvExportOptions
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :escape_character, as: 'escapeCharacter'
            property :fields_terminated_by, as: 'fieldsTerminatedBy'
            property :lines_terminated_by, as: 'linesTerminatedBy'
            property :quote_character, as: 'quoteCharacter'
            property :select_query, as: 'selectQuery'
          end
        end
        
        class SqlExportOptions
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :mysql_export_options, as: 'mysqlExportOptions', class: Google::Apis::SqladminV1::ExportContext::SqlExportOptions::MysqlExportOptions, decorator: Google::Apis::SqladminV1::ExportContext::SqlExportOptions::MysqlExportOptions::Representation
        
            property :parallel, as: 'parallel'
            property :postgres_export_options, as: 'postgresExportOptions', class: Google::Apis::SqladminV1::ExportContext::SqlExportOptions::PostgresExportOptions, decorator: Google::Apis::SqladminV1::ExportContext::SqlExportOptions::PostgresExportOptions::Representation
        
            property :schema_only, as: 'schemaOnly'
            collection :tables, as: 'tables'
            property :threads, as: 'threads'
          end
          
          class MysqlExportOptions
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :master_data, as: 'masterData'
            end
          end
          
          class PostgresExportOptions
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :clean, as: 'clean'
              property :if_exists, as: 'ifExists'
            end
          end
        end
        
        class TdeExportOptions
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :certificate_path, as: 'certificatePath'
            property :name, as: 'name'
            property :private_key_password, as: 'privateKeyPassword'
            property :private_key_path, as: 'privateKeyPath'
          end
        end
      end
      
      class ExternalSyncSelectedObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database, as: 'database'
        end
      end
      
      class FailoverContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :settings_version, :numeric_string => true, as: 'settingsVersion'
        end
      end
      
      class Flag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_int_values, as: 'allowedIntValues'
          collection :allowed_string_values, as: 'allowedStringValues'
          collection :applies_to, as: 'appliesTo'
          property :flag_scope, as: 'flagScope'
          property :in_beta, as: 'inBeta'
          property :kind, as: 'kind'
          property :max_value, :numeric_string => true, as: 'maxValue'
          property :min_value, :numeric_string => true, as: 'minValue'
          property :name, as: 'name'
          property :recommended_int_value, :numeric_string => true, as: 'recommendedIntValue'
          property :recommended_string_value, as: 'recommendedStringValue'
          property :requires_restart, as: 'requiresRestart'
          property :type, as: 'type'
        end
      end
      
      class FlagsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SqladminV1::Flag, decorator: Google::Apis::SqladminV1::Flag::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class GeminiInstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_query_enabled, as: 'activeQueryEnabled'
          property :entitled, as: 'entitled'
          property :flag_recommender_enabled, as: 'flagRecommenderEnabled'
          property :google_vacuum_mgmt_enabled, as: 'googleVacuumMgmtEnabled'
          property :index_advisor_enabled, as: 'indexAdvisorEnabled'
          property :oom_session_cancel_enabled, as: 'oomSessionCancelEnabled'
        end
      end
      
      class GenerateEphemeralCertRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_token, as: 'access_token'
          property :public_key, as: 'public_key'
          property :read_time, as: 'readTime'
          property :valid_duration, as: 'validDuration'
        end
      end
      
      class GenerateEphemeralCertResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ephemeral_cert, as: 'ephemeralCert', class: Google::Apis::SqladminV1::SslCert, decorator: Google::Apis::SqladminV1::SslCert::Representation
      
        end
      end
      
      class ImportContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bak_import_options, as: 'bakImportOptions', class: Google::Apis::SqladminV1::ImportContext::BakImportOptions, decorator: Google::Apis::SqladminV1::ImportContext::BakImportOptions::Representation
      
          property :csv_import_options, as: 'csvImportOptions', class: Google::Apis::SqladminV1::ImportContext::CsvImportOptions, decorator: Google::Apis::SqladminV1::ImportContext::CsvImportOptions::Representation
      
          property :database, as: 'database'
          property :file_type, as: 'fileType'
          property :import_user, as: 'importUser'
          property :kind, as: 'kind'
          property :sql_import_options, as: 'sqlImportOptions', class: Google::Apis::SqladminV1::ImportContext::SqlImportOptions, decorator: Google::Apis::SqladminV1::ImportContext::SqlImportOptions::Representation
      
          property :tde_import_options, as: 'tdeImportOptions', class: Google::Apis::SqladminV1::ImportContext::TdeImportOptions, decorator: Google::Apis::SqladminV1::ImportContext::TdeImportOptions::Representation
      
          property :uri, as: 'uri'
        end
        
        class BakImportOptions
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :bak_type, as: 'bakType'
            property :encryption_options, as: 'encryptionOptions', class: Google::Apis::SqladminV1::ImportContext::BakImportOptions::EncryptionOptions, decorator: Google::Apis::SqladminV1::ImportContext::BakImportOptions::EncryptionOptions::Representation
        
            property :no_recovery, as: 'noRecovery'
            property :recovery_only, as: 'recoveryOnly'
            property :stop_at, as: 'stopAt'
            property :stop_at_mark, as: 'stopAtMark'
            property :striped, as: 'striped'
          end
          
          class EncryptionOptions
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :cert_path, as: 'certPath'
              property :keep_encrypted, as: 'keepEncrypted'
              property :pvk_password, as: 'pvkPassword'
              property :pvk_path, as: 'pvkPath'
            end
          end
        end
        
        class CsvImportOptions
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :columns, as: 'columns'
            property :escape_character, as: 'escapeCharacter'
            property :fields_terminated_by, as: 'fieldsTerminatedBy'
            property :lines_terminated_by, as: 'linesTerminatedBy'
            property :quote_character, as: 'quoteCharacter'
            property :table, as: 'table'
          end
        end
        
        class SqlImportOptions
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :parallel, as: 'parallel'
            property :postgres_import_options, as: 'postgresImportOptions', class: Google::Apis::SqladminV1::ImportContext::SqlImportOptions::PostgresImportOptions, decorator: Google::Apis::SqladminV1::ImportContext::SqlImportOptions::PostgresImportOptions::Representation
        
            property :threads, as: 'threads'
          end
          
          class PostgresImportOptions
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :clean, as: 'clean'
              property :if_exists, as: 'ifExists'
            end
          end
        end
        
        class TdeImportOptions
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :certificate_path, as: 'certificatePath'
            property :name, as: 'name'
            property :private_key_password, as: 'privateKeyPassword'
            property :private_key_path, as: 'privateKeyPath'
          end
        end
      end
      
      class InsightsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_insights_enabled, as: 'queryInsightsEnabled'
          property :query_plans_per_minute, as: 'queryPlansPerMinute'
          property :query_string_length, as: 'queryStringLength'
          property :record_application_tags, as: 'recordApplicationTags'
          property :record_client_address, as: 'recordClientAddress'
        end
      end
      
      class InstanceReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :project, as: 'project'
          property :region, as: 'region'
        end
      end
      
      class InstancesAcquireSsrsLeaseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acquire_ssrs_lease_context, as: 'acquireSsrsLeaseContext', class: Google::Apis::SqladminV1::AcquireSsrsLeaseContext, decorator: Google::Apis::SqladminV1::AcquireSsrsLeaseContext::Representation
      
        end
      end
      
      class InstancesCloneRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :clone_context, as: 'cloneContext', class: Google::Apis::SqladminV1::CloneContext, decorator: Google::Apis::SqladminV1::CloneContext::Representation
      
        end
      end
      
      class InstancesDemoteMasterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :demote_master_context, as: 'demoteMasterContext', class: Google::Apis::SqladminV1::DemoteMasterContext, decorator: Google::Apis::SqladminV1::DemoteMasterContext::Representation
      
        end
      end
      
      class InstancesDemoteRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :demote_context, as: 'demoteContext', class: Google::Apis::SqladminV1::DemoteContext, decorator: Google::Apis::SqladminV1::DemoteContext::Representation
      
        end
      end
      
      class InstancesExportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :export_context, as: 'exportContext', class: Google::Apis::SqladminV1::ExportContext, decorator: Google::Apis::SqladminV1::ExportContext::Representation
      
        end
      end
      
      class InstancesFailoverRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failover_context, as: 'failoverContext', class: Google::Apis::SqladminV1::FailoverContext, decorator: Google::Apis::SqladminV1::FailoverContext::Representation
      
        end
      end
      
      class InstancesImportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :import_context, as: 'importContext', class: Google::Apis::SqladminV1::ImportContext, decorator: Google::Apis::SqladminV1::ImportContext::Representation
      
        end
      end
      
      class InstancesListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SqladminV1::DatabaseInstance, decorator: Google::Apis::SqladminV1::DatabaseInstance::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :warnings, as: 'warnings', class: Google::Apis::SqladminV1::ApiWarning, decorator: Google::Apis::SqladminV1::ApiWarning::Representation
      
        end
      end
      
      class InstancesListServerCasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_version, as: 'activeVersion'
          collection :certs, as: 'certs', class: Google::Apis::SqladminV1::SslCert, decorator: Google::Apis::SqladminV1::SslCert::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class InstancesListServerCertificatesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_version, as: 'activeVersion'
          collection :ca_certs, as: 'caCerts', class: Google::Apis::SqladminV1::SslCert, decorator: Google::Apis::SqladminV1::SslCert::Representation
      
          property :kind, as: 'kind'
          collection :server_certs, as: 'serverCerts', class: Google::Apis::SqladminV1::SslCert, decorator: Google::Apis::SqladminV1::SslCert::Representation
      
        end
      end
      
      class InstancesReencryptRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_reencryption_config, as: 'backupReencryptionConfig', class: Google::Apis::SqladminV1::BackupReencryptionConfig, decorator: Google::Apis::SqladminV1::BackupReencryptionConfig::Representation
      
        end
      end
      
      class InstancesRestoreBackupRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup, as: 'backup'
          property :backupdr_backup, as: 'backupdrBackup'
          property :restore_backup_context, as: 'restoreBackupContext', class: Google::Apis::SqladminV1::RestoreBackupContext, decorator: Google::Apis::SqladminV1::RestoreBackupContext::Representation
      
          property :restore_instance_settings, as: 'restoreInstanceSettings', class: Google::Apis::SqladminV1::DatabaseInstance, decorator: Google::Apis::SqladminV1::DatabaseInstance::Representation
      
        end
      end
      
      class InstancesRotateServerCaRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rotate_server_ca_context, as: 'rotateServerCaContext', class: Google::Apis::SqladminV1::RotateServerCaContext, decorator: Google::Apis::SqladminV1::RotateServerCaContext::Representation
      
        end
      end
      
      class InstancesRotateServerCertificateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rotate_server_certificate_context, as: 'rotateServerCertificateContext', class: Google::Apis::SqladminV1::RotateServerCertificateContext, decorator: Google::Apis::SqladminV1::RotateServerCertificateContext::Representation
      
        end
      end
      
      class InstancesTruncateLogRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :truncate_log_context, as: 'truncateLogContext', class: Google::Apis::SqladminV1::TruncateLogContext, decorator: Google::Apis::SqladminV1::TruncateLogContext::Representation
      
        end
      end
      
      class Interval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class IpConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allocated_ip_range, as: 'allocatedIpRange'
          collection :authorized_networks, as: 'authorizedNetworks', class: Google::Apis::SqladminV1::AclEntry, decorator: Google::Apis::SqladminV1::AclEntry::Representation
      
          collection :custom_subject_alternative_names, as: 'customSubjectAlternativeNames'
          property :enable_private_path_for_google_cloud_services, as: 'enablePrivatePathForGoogleCloudServices'
          property :ipv4_enabled, as: 'ipv4Enabled'
          property :private_network, as: 'privateNetwork'
          property :psc_config, as: 'pscConfig', class: Google::Apis::SqladminV1::PscConfig, decorator: Google::Apis::SqladminV1::PscConfig::Representation
      
          property :require_ssl, as: 'requireSsl'
          property :server_ca_mode, as: 'serverCaMode'
          property :server_ca_pool, as: 'serverCaPool'
          property :ssl_mode, as: 'sslMode'
        end
      end
      
      class IpMapping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_address, as: 'ipAddress'
          property :time_to_retire, as: 'timeToRetire'
          property :type, as: 'type'
        end
      end
      
      class ListBackupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backups, as: 'backups', class: Google::Apis::SqladminV1::Backup, decorator: Google::Apis::SqladminV1::Backup::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :warnings, as: 'warnings', class: Google::Apis::SqladminV1::ApiWarning, decorator: Google::Apis::SqladminV1::ApiWarning::Representation
      
        end
      end
      
      class LocationPreference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :follow_gae_application, as: 'followGaeApplication'
          property :kind, as: 'kind'
          property :secondary_zone, as: 'secondaryZone'
          property :zone, as: 'zone'
        end
      end
      
      class MaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :hour, as: 'hour'
          property :kind, as: 'kind'
          property :update_track, as: 'updateTrack'
        end
      end
      
      class MySqlReplicaConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_certificate, as: 'caCertificate'
          property :client_certificate, as: 'clientCertificate'
          property :client_key, as: 'clientKey'
          property :connect_retry_interval, as: 'connectRetryInterval'
          property :dump_file_path, as: 'dumpFilePath'
          property :kind, as: 'kind'
          property :master_heartbeat_period, :numeric_string => true, as: 'masterHeartbeatPeriod'
          property :password, as: 'password'
          property :ssl_cipher, as: 'sslCipher'
          property :username, as: 'username'
          property :verify_server_certificate, as: 'verifyServerCertificate'
        end
      end
      
      class MySqlSyncConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :initial_sync_flags, as: 'initialSyncFlags', class: Google::Apis::SqladminV1::SyncFlags, decorator: Google::Apis::SqladminV1::SyncFlags::Representation
      
        end
      end
      
      class OnPremisesConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_certificate, as: 'caCertificate'
          property :client_certificate, as: 'clientCertificate'
          property :client_key, as: 'clientKey'
          property :dump_file_path, as: 'dumpFilePath'
          property :host_port, as: 'hostPort'
          property :kind, as: 'kind'
          property :password, as: 'password'
          collection :selected_objects, as: 'selectedObjects', class: Google::Apis::SqladminV1::SelectedObjects, decorator: Google::Apis::SqladminV1::SelectedObjects::Representation
      
          property :source_instance, as: 'sourceInstance', class: Google::Apis::SqladminV1::InstanceReference, decorator: Google::Apis::SqladminV1::InstanceReference::Representation
      
          property :ssl_option, as: 'sslOption'
          property :username, as: 'username'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acquire_ssrs_lease_context, as: 'acquireSsrsLeaseContext', class: Google::Apis::SqladminV1::AcquireSsrsLeaseContext, decorator: Google::Apis::SqladminV1::AcquireSsrsLeaseContext::Representation
      
          property :api_warning, as: 'apiWarning', class: Google::Apis::SqladminV1::ApiWarning, decorator: Google::Apis::SqladminV1::ApiWarning::Representation
      
          property :backup_context, as: 'backupContext', class: Google::Apis::SqladminV1::BackupContext, decorator: Google::Apis::SqladminV1::BackupContext::Representation
      
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::SqladminV1::OperationErrors, decorator: Google::Apis::SqladminV1::OperationErrors::Representation
      
          property :export_context, as: 'exportContext', class: Google::Apis::SqladminV1::ExportContext, decorator: Google::Apis::SqladminV1::ExportContext::Representation
      
          property :import_context, as: 'importContext', class: Google::Apis::SqladminV1::ImportContext, decorator: Google::Apis::SqladminV1::ImportContext::Representation
      
          property :insert_time, as: 'insertTime'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :operation_type, as: 'operationType'
          property :self_link, as: 'selfLink'
          property :start_time, as: 'startTime'
          property :status, as: 'status'
          property :sub_operation_type, as: 'subOperationType', class: Google::Apis::SqladminV1::SqlSubOperationType, decorator: Google::Apis::SqladminV1::SqlSubOperationType::Representation
      
          property :target_id, as: 'targetId'
          property :target_link, as: 'targetLink'
          property :target_project, as: 'targetProject'
          property :user, as: 'user'
        end
      end
      
      class OperationError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :kind, as: 'kind'
          property :message, as: 'message'
        end
      end
      
      class OperationErrors
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::SqladminV1::OperationError, decorator: Google::Apis::SqladminV1::OperationError::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :cancel_requested, as: 'cancelRequested'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :status_detail, as: 'statusDetail'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class OperationsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SqladminV1::Operation, decorator: Google::Apis::SqladminV1::Operation::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class PitrFields
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_bin_log, as: 'enableBinLog'
          property :replication_log_archiving_enabled, as: 'replicationLogArchivingEnabled'
          property :sqlserver_pitr_enabled, as: 'sqlserverPitrEnabled'
          property :transaction_log_retention_days, as: 'transactionLogRetentionDays'
        end
      end
      
      class PasswordStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :locked, as: 'locked'
          property :password_expiration_time, as: 'passwordExpirationTime'
        end
      end
      
      class PasswordValidationPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :complexity, as: 'complexity'
          property :disallow_compromised_credentials, as: 'disallowCompromisedCredentials'
          property :disallow_username_substring, as: 'disallowUsernameSubstring'
          property :enable_password_policy, as: 'enablePasswordPolicy'
          property :min_length, as: 'minLength'
          property :password_change_interval, as: 'passwordChangeInterval'
          property :reuse_interval, as: 'reuseInterval'
        end
      end
      
      class PerformDiskShrinkContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_size_gb, :numeric_string => true, as: 'targetSizeGb'
        end
      end
      
      class PointInTimeRestoreContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allocated_ip_range, as: 'allocatedIpRange'
          property :datasource, as: 'datasource'
          property :point_in_time, as: 'pointInTime'
          property :preferred_secondary_zone, as: 'preferredSecondaryZone'
          property :preferred_zone, as: 'preferredZone'
          property :private_network, as: 'privateNetwork'
          property :target_instance, as: 'targetInstance'
        end
      end
      
      class PoolNodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dns_name, as: 'dnsName'
          collection :dns_names, as: 'dnsNames', class: Google::Apis::SqladminV1::DnsNameMapping, decorator: Google::Apis::SqladminV1::DnsNameMapping::Representation
      
          property :gce_zone, as: 'gceZone'
          collection :ip_addresses, as: 'ipAddresses', class: Google::Apis::SqladminV1::IpMapping, decorator: Google::Apis::SqladminV1::IpMapping::Representation
      
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class PscAutoConnectionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumer_network, as: 'consumerNetwork'
          property :consumer_network_status, as: 'consumerNetworkStatus'
          property :consumer_project, as: 'consumerProject'
          property :ip_address, as: 'ipAddress'
          property :status, as: 'status'
        end
      end
      
      class PscConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_consumer_projects, as: 'allowedConsumerProjects'
          property :network_attachment_uri, as: 'networkAttachmentUri'
          collection :psc_auto_connections, as: 'pscAutoConnections', class: Google::Apis::SqladminV1::PscAutoConnectionConfig, decorator: Google::Apis::SqladminV1::PscAutoConnectionConfig::Representation
      
          property :psc_enabled, as: 'pscEnabled'
        end
      end
      
      class ReplicaConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cascadable_replica, as: 'cascadableReplica'
          property :failover_target, as: 'failoverTarget'
          property :kind, as: 'kind'
          property :mysql_replica_configuration, as: 'mysqlReplicaConfiguration', class: Google::Apis::SqladminV1::MySqlReplicaConfiguration, decorator: Google::Apis::SqladminV1::MySqlReplicaConfiguration::Representation
      
        end
      end
      
      class ReplicationCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dr_replica, as: 'drReplica'
          property :failover_dr_replica_name, as: 'failoverDrReplicaName'
          property :psa_write_endpoint, as: 'psaWriteEndpoint'
        end
      end
      
      class Reschedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reschedule_type, as: 'rescheduleType'
          property :schedule_time, as: 'scheduleTime'
        end
      end
      
      class RestoreBackupContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_run_id, :numeric_string => true, as: 'backupRunId'
          property :instance_id, as: 'instanceId'
          property :kind, as: 'kind'
          property :project, as: 'project'
        end
      end
      
      class RotateServerCaContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_version, as: 'nextVersion'
        end
      end
      
      class RotateServerCertificateContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_version, as: 'nextVersion'
        end
      end
      
      class SelectedObjects
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database, as: 'database'
        end
      end
      
      class Settings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activation_policy, as: 'activationPolicy'
          property :active_directory_config, as: 'activeDirectoryConfig', class: Google::Apis::SqladminV1::SqlActiveDirectoryConfig, decorator: Google::Apis::SqladminV1::SqlActiveDirectoryConfig::Representation
      
          property :advanced_machine_features, as: 'advancedMachineFeatures', class: Google::Apis::SqladminV1::AdvancedMachineFeatures, decorator: Google::Apis::SqladminV1::AdvancedMachineFeatures::Representation
      
          collection :authorized_gae_applications, as: 'authorizedGaeApplications'
          property :availability_type, as: 'availabilityType'
          property :backup_configuration, as: 'backupConfiguration', class: Google::Apis::SqladminV1::BackupConfiguration, decorator: Google::Apis::SqladminV1::BackupConfiguration::Representation
      
          property :collation, as: 'collation'
          property :connection_pool_config, as: 'connectionPoolConfig', class: Google::Apis::SqladminV1::ConnectionPoolConfig, decorator: Google::Apis::SqladminV1::ConnectionPoolConfig::Representation
      
          property :connector_enforcement, as: 'connectorEnforcement'
          property :crash_safe_replication_enabled, as: 'crashSafeReplicationEnabled'
          property :data_cache_config, as: 'dataCacheConfig', class: Google::Apis::SqladminV1::DataCacheConfig, decorator: Google::Apis::SqladminV1::DataCacheConfig::Representation
      
          property :data_disk_provisioned_iops, :numeric_string => true, as: 'dataDiskProvisionedIops'
          property :data_disk_provisioned_throughput, :numeric_string => true, as: 'dataDiskProvisionedThroughput'
          property :data_disk_size_gb, :numeric_string => true, as: 'dataDiskSizeGb'
          property :data_disk_type, as: 'dataDiskType'
          collection :database_flags, as: 'databaseFlags', class: Google::Apis::SqladminV1::DatabaseFlags, decorator: Google::Apis::SqladminV1::DatabaseFlags::Representation
      
          property :database_replication_enabled, as: 'databaseReplicationEnabled'
          property :deletion_protection_enabled, as: 'deletionProtectionEnabled'
          collection :deny_maintenance_periods, as: 'denyMaintenancePeriods', class: Google::Apis::SqladminV1::DenyMaintenancePeriod, decorator: Google::Apis::SqladminV1::DenyMaintenancePeriod::Representation
      
          property :edition, as: 'edition'
          property :enable_dataplex_integration, as: 'enableDataplexIntegration'
          property :enable_google_ml_integration, as: 'enableGoogleMlIntegration'
          property :insights_config, as: 'insightsConfig', class: Google::Apis::SqladminV1::InsightsConfig, decorator: Google::Apis::SqladminV1::InsightsConfig::Representation
      
          property :ip_configuration, as: 'ipConfiguration', class: Google::Apis::SqladminV1::IpConfiguration, decorator: Google::Apis::SqladminV1::IpConfiguration::Representation
      
          property :kind, as: 'kind'
          property :location_preference, as: 'locationPreference', class: Google::Apis::SqladminV1::LocationPreference, decorator: Google::Apis::SqladminV1::LocationPreference::Representation
      
          property :maintenance_window, as: 'maintenanceWindow', class: Google::Apis::SqladminV1::MaintenanceWindow, decorator: Google::Apis::SqladminV1::MaintenanceWindow::Representation
      
          property :password_validation_policy, as: 'passwordValidationPolicy', class: Google::Apis::SqladminV1::PasswordValidationPolicy, decorator: Google::Apis::SqladminV1::PasswordValidationPolicy::Representation
      
          property :pricing_plan, as: 'pricingPlan'
          property :replication_lag_max_seconds, as: 'replicationLagMaxSeconds'
          property :replication_type, as: 'replicationType'
          property :retain_backups_on_delete, as: 'retainBackupsOnDelete'
          property :settings_version, :numeric_string => true, as: 'settingsVersion'
          property :sql_server_audit_config, as: 'sqlServerAuditConfig', class: Google::Apis::SqladminV1::SqlServerAuditConfig, decorator: Google::Apis::SqladminV1::SqlServerAuditConfig::Representation
      
          property :storage_auto_resize, as: 'storageAutoResize'
          property :storage_auto_resize_limit, :numeric_string => true, as: 'storageAutoResizeLimit'
          property :tier, as: 'tier'
          property :time_zone, as: 'timeZone'
          hash :user_labels, as: 'userLabels'
        end
      end
      
      class SqlActiveDirectoryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          property :kind, as: 'kind'
        end
      end
      
      class SqlExternalSyncSettingError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detail, as: 'detail'
          property :kind, as: 'kind'
          property :type, as: 'type'
        end
      end
      
      class SqlInstancesAcquireSsrsLeaseResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_id, as: 'operationId'
        end
      end
      
      class SqlInstancesGetDiskShrinkConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :message, as: 'message'
          property :minimal_target_size_gb, :numeric_string => true, as: 'minimalTargetSizeGb'
        end
      end
      
      class SqlInstancesGetLatestRecoveryTimeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :latest_recovery_time, as: 'latestRecoveryTime'
        end
      end
      
      class SqlInstancesReleaseSsrsLeaseResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_id, as: 'operationId'
        end
      end
      
      class SqlInstancesRescheduleMaintenanceRequestBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reschedule, as: 'reschedule', class: Google::Apis::SqladminV1::Reschedule, decorator: Google::Apis::SqladminV1::Reschedule::Representation
      
        end
      end
      
      class SqlInstancesResetReplicaSizeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SqlInstancesStartExternalSyncRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :migration_type, as: 'migrationType'
          property :mysql_sync_config, as: 'mysqlSyncConfig', class: Google::Apis::SqladminV1::MySqlSyncConfig, decorator: Google::Apis::SqladminV1::MySqlSyncConfig::Representation
      
          property :skip_verification, as: 'skipVerification'
          property :sync_mode, as: 'syncMode'
          property :sync_parallel_level, as: 'syncParallelLevel'
        end
      end
      
      class SqlInstancesVerifyExternalSyncSettingsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :migration_type, as: 'migrationType'
          property :mysql_sync_config, as: 'mysqlSyncConfig', class: Google::Apis::SqladminV1::MySqlSyncConfig, decorator: Google::Apis::SqladminV1::MySqlSyncConfig::Representation
      
          collection :selected_objects, as: 'selectedObjects', class: Google::Apis::SqladminV1::ExternalSyncSelectedObject, decorator: Google::Apis::SqladminV1::ExternalSyncSelectedObject::Representation
      
          property :sync_mode, as: 'syncMode'
          property :sync_parallel_level, as: 'syncParallelLevel'
          property :verify_connection_only, as: 'verifyConnectionOnly'
          property :verify_replication_only, as: 'verifyReplicationOnly'
        end
      end
      
      class SqlInstancesVerifyExternalSyncSettingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::SqladminV1::SqlExternalSyncSettingError, decorator: Google::Apis::SqladminV1::SqlExternalSyncSettingError::Representation
      
          property :kind, as: 'kind'
          collection :warnings, as: 'warnings', class: Google::Apis::SqladminV1::SqlExternalSyncSettingError, decorator: Google::Apis::SqladminV1::SqlExternalSyncSettingError::Representation
      
        end
      end
      
      class SqlOutOfDiskReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sql_min_recommended_increase_size_gb, as: 'sqlMinRecommendedIncreaseSizeGb'
          property :sql_out_of_disk_state, as: 'sqlOutOfDiskState'
        end
      end
      
      class SqlScheduledMaintenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_defer, as: 'canDefer'
          property :can_reschedule, as: 'canReschedule'
          property :schedule_deadline_time, as: 'scheduleDeadlineTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class SqlServerAuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :kind, as: 'kind'
          property :retention_interval, as: 'retentionInterval'
          property :upload_interval, as: 'uploadInterval'
        end
      end
      
      class SqlServerDatabaseDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compatibility_level, as: 'compatibilityLevel'
          property :recovery_model, as: 'recoveryModel'
        end
      end
      
      class SqlServerUserDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
          collection :server_roles, as: 'serverRoles'
        end
      end
      
      class SqlSubOperationType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :maintenance_type, as: 'maintenanceType'
        end
      end
      
      class SslCert
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cert, as: 'cert'
          property :cert_serial_number, as: 'certSerialNumber'
          property :common_name, as: 'commonName'
          property :create_time, as: 'createTime'
          property :expiration_time, as: 'expirationTime'
          property :instance, as: 'instance'
          property :kind, as: 'kind'
          property :self_link, as: 'selfLink'
          property :sha1_fingerprint, as: 'sha1Fingerprint'
        end
      end
      
      class SslCertDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cert_info, as: 'certInfo', class: Google::Apis::SqladminV1::SslCert, decorator: Google::Apis::SqladminV1::SslCert::Representation
      
          property :cert_private_key, as: 'certPrivateKey'
        end
      end
      
      class SslCertsCreateEphemeralRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_token, as: 'access_token'
          property :public_key, as: 'public_key'
        end
      end
      
      class SslCertsInsertRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_name, as: 'commonName'
        end
      end
      
      class SslCertsInsertResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_cert, as: 'clientCert', class: Google::Apis::SqladminV1::SslCertDetail, decorator: Google::Apis::SqladminV1::SslCertDetail::Representation
      
          property :kind, as: 'kind'
          property :operation, as: 'operation', class: Google::Apis::SqladminV1::Operation, decorator: Google::Apis::SqladminV1::Operation::Representation
      
          property :server_ca_cert, as: 'serverCaCert', class: Google::Apis::SqladminV1::SslCert, decorator: Google::Apis::SqladminV1::SslCert::Representation
      
        end
      end
      
      class SslCertsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SqladminV1::SslCert, decorator: Google::Apis::SqladminV1::SslCert::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class SyncFlags
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class Tier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_quota, :numeric_string => true, as: 'DiskQuota'
          property :ram, :numeric_string => true, as: 'RAM'
          property :kind, as: 'kind'
          collection :region, as: 'region'
          property :tier, as: 'tier'
        end
      end
      
      class TiersListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SqladminV1::Tier, decorator: Google::Apis::SqladminV1::Tier::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class TruncateLogContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :log_type, as: 'logType'
        end
      end
      
      class User
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dual_password_type, as: 'dualPasswordType'
          property :etag, as: 'etag'
          property :host, as: 'host'
          property :instance, as: 'instance'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :password, as: 'password'
          property :password_policy, as: 'passwordPolicy', class: Google::Apis::SqladminV1::UserPasswordValidationPolicy, decorator: Google::Apis::SqladminV1::UserPasswordValidationPolicy::Representation
      
          property :project, as: 'project'
          property :sqlserver_user_details, as: 'sqlserverUserDetails', class: Google::Apis::SqladminV1::SqlServerUserDetails, decorator: Google::Apis::SqladminV1::SqlServerUserDetails::Representation
      
          property :type, as: 'type'
        end
      end
      
      class UserPasswordValidationPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allowed_failed_attempts, as: 'allowedFailedAttempts'
          property :enable_failed_attempts_check, as: 'enableFailedAttemptsCheck'
          property :enable_password_verification, as: 'enablePasswordVerification'
          property :password_expiration_duration, as: 'passwordExpirationDuration'
          property :status, as: 'status', class: Google::Apis::SqladminV1::PasswordStatus, decorator: Google::Apis::SqladminV1::PasswordStatus::Representation
      
        end
      end
      
      class UsersListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SqladminV1::User, decorator: Google::Apis::SqladminV1::User::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
    end
  end
end
