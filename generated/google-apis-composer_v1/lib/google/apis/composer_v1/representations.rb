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
    module ComposerV1
      
      class AirflowMetadataRetentionPolicyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllowedIpRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckUpgradeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckUpgradeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CidrBlock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudDataLineageIntegration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComposerWorkload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComposerWorkloadStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DagProcessorResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataRetentionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseFailoverRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseFailoverResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncryptionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Environment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnvironmentConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecuteAirflowCommandRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecuteAirflowCommandResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExitInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchDatabasePropertiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IpAllocationPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Line
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEnvironmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListImageVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUserWorkloadsConfigMapsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUserWorkloadsSecretsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListWorkloadsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoadSnapshotRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoadSnapshotResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MasterAuthorizedNetworksConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PollAirflowCommandRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PollAirflowCommandResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateClusterConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateEnvironmentConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecoveryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestartWebServerRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SaveSnapshotRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SaveSnapshotResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScheduledSnapshotsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchedulerResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SoftwareConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StopAirflowCommandRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StopAirflowCommandResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaskLogsRetentionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TriggererResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserWorkloadsConfigMap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserWorkloadsSecret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebServerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebServerNetworkAccessControl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebServerResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkerResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkloadsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AirflowMetadataRetentionPolicyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :retention_days, as: 'retentionDays'
          property :retention_mode, as: 'retentionMode'
        end
      end
      
      class AllowedIpRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :value, as: 'value'
        end
      end
      
      class CheckUpgradeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_version, as: 'imageVersion'
        end
      end
      
      class CheckUpgradeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :build_log_uri, as: 'buildLogUri'
          property :contains_pypi_modules_conflict, as: 'containsPypiModulesConflict'
          property :image_version, as: 'imageVersion'
          property :pypi_conflict_build_log_extract, as: 'pypiConflictBuildLogExtract'
          hash :pypi_dependencies, as: 'pypiDependencies'
        end
      end
      
      class CidrBlock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cidr_block, as: 'cidrBlock'
          property :display_name, as: 'displayName'
        end
      end
      
      class CloudDataLineageIntegration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class ComposerWorkload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :status, as: 'status', class: Google::Apis::ComposerV1::ComposerWorkloadStatus, decorator: Google::Apis::ComposerV1::ComposerWorkloadStatus::Representation
      
          property :type, as: 'type'
        end
      end
      
      class ComposerWorkloadStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detailed_status_message, as: 'detailedStatusMessage'
          property :state, as: 'state'
          property :status_message, as: 'statusMessage'
        end
      end
      
      class DagProcessorResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
          property :cpu, as: 'cpu'
          property :memory_gb, as: 'memoryGb'
          property :storage_gb, as: 'storageGb'
        end
      end
      
      class DataRetentionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :airflow_metadata_retention_config, as: 'airflowMetadataRetentionConfig', class: Google::Apis::ComposerV1::AirflowMetadataRetentionPolicyConfig, decorator: Google::Apis::ComposerV1::AirflowMetadataRetentionPolicyConfig::Representation
      
          property :task_logs_retention_config, as: 'taskLogsRetentionConfig', class: Google::Apis::ComposerV1::TaskLogsRetentionConfig, decorator: Google::Apis::ComposerV1::TaskLogsRetentionConfig::Representation
      
        end
      end
      
      class DatabaseConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :machine_type, as: 'machineType'
          property :zone, as: 'zone'
        end
      end
      
      class DatabaseFailoverRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DatabaseFailoverResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EncryptionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class Environment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::ComposerV1::EnvironmentConfig, decorator: Google::Apis::ComposerV1::EnvironmentConfig::Representation
      
          property :create_time, as: 'createTime'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :state, as: 'state'
          property :storage_config, as: 'storageConfig', class: Google::Apis::ComposerV1::StorageConfig, decorator: Google::Apis::ComposerV1::StorageConfig::Representation
      
          property :update_time, as: 'updateTime'
          property :uuid, as: 'uuid'
        end
      end
      
      class EnvironmentConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :airflow_byoid_uri, as: 'airflowByoidUri'
          property :airflow_uri, as: 'airflowUri'
          property :dag_gcs_prefix, as: 'dagGcsPrefix'
          property :data_retention_config, as: 'dataRetentionConfig', class: Google::Apis::ComposerV1::DataRetentionConfig, decorator: Google::Apis::ComposerV1::DataRetentionConfig::Representation
      
          property :database_config, as: 'databaseConfig', class: Google::Apis::ComposerV1::DatabaseConfig, decorator: Google::Apis::ComposerV1::DatabaseConfig::Representation
      
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::ComposerV1::EncryptionConfig, decorator: Google::Apis::ComposerV1::EncryptionConfig::Representation
      
          property :environment_size, as: 'environmentSize'
          property :gke_cluster, as: 'gkeCluster'
          property :maintenance_window, as: 'maintenanceWindow', class: Google::Apis::ComposerV1::MaintenanceWindow, decorator: Google::Apis::ComposerV1::MaintenanceWindow::Representation
      
          property :master_authorized_networks_config, as: 'masterAuthorizedNetworksConfig', class: Google::Apis::ComposerV1::MasterAuthorizedNetworksConfig, decorator: Google::Apis::ComposerV1::MasterAuthorizedNetworksConfig::Representation
      
          property :node_config, as: 'nodeConfig', class: Google::Apis::ComposerV1::NodeConfig, decorator: Google::Apis::ComposerV1::NodeConfig::Representation
      
          property :node_count, as: 'nodeCount'
          property :private_environment_config, as: 'privateEnvironmentConfig', class: Google::Apis::ComposerV1::PrivateEnvironmentConfig, decorator: Google::Apis::ComposerV1::PrivateEnvironmentConfig::Representation
      
          property :recovery_config, as: 'recoveryConfig', class: Google::Apis::ComposerV1::RecoveryConfig, decorator: Google::Apis::ComposerV1::RecoveryConfig::Representation
      
          property :resilience_mode, as: 'resilienceMode'
          property :software_config, as: 'softwareConfig', class: Google::Apis::ComposerV1::SoftwareConfig, decorator: Google::Apis::ComposerV1::SoftwareConfig::Representation
      
          property :web_server_config, as: 'webServerConfig', class: Google::Apis::ComposerV1::WebServerConfig, decorator: Google::Apis::ComposerV1::WebServerConfig::Representation
      
          property :web_server_network_access_control, as: 'webServerNetworkAccessControl', class: Google::Apis::ComposerV1::WebServerNetworkAccessControl, decorator: Google::Apis::ComposerV1::WebServerNetworkAccessControl::Representation
      
          property :workloads_config, as: 'workloadsConfig', class: Google::Apis::ComposerV1::WorkloadsConfig, decorator: Google::Apis::ComposerV1::WorkloadsConfig::Representation
      
        end
      end
      
      class ExecuteAirflowCommandRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :command, as: 'command'
          collection :parameters, as: 'parameters'
          property :subcommand, as: 'subcommand'
        end
      end
      
      class ExecuteAirflowCommandResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error'
          property :execution_id, as: 'executionId'
          property :pod, as: 'pod'
          property :pod_namespace, as: 'podNamespace'
        end
      end
      
      class ExitInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error'
          property :exit_code, as: 'exitCode'
        end
      end
      
      class FetchDatabasePropertiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_failover_replica_available, as: 'isFailoverReplicaAvailable'
          property :primary_gce_zone, as: 'primaryGceZone'
          property :secondary_gce_zone, as: 'secondaryGceZone'
        end
      end
      
      class IpAllocationPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_ipv4_cidr_block, as: 'clusterIpv4CidrBlock'
          property :cluster_secondary_range_name, as: 'clusterSecondaryRangeName'
          property :services_ipv4_cidr_block, as: 'servicesIpv4CidrBlock'
          property :services_secondary_range_name, as: 'servicesSecondaryRangeName'
          property :use_ip_aliases, as: 'useIpAliases'
        end
      end
      
      class ImageVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_disabled, as: 'creationDisabled'
          property :image_version_id, as: 'imageVersionId'
          property :is_default, as: 'isDefault'
          property :release_date, as: 'releaseDate', class: Google::Apis::ComposerV1::Date, decorator: Google::Apis::ComposerV1::Date::Representation
      
          collection :supported_python_versions, as: 'supportedPythonVersions'
          property :upgrade_disabled, as: 'upgradeDisabled'
        end
      end
      
      class Line
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :line_number, as: 'lineNumber'
        end
      end
      
      class ListEnvironmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :environments, as: 'environments', class: Google::Apis::ComposerV1::Environment, decorator: Google::Apis::ComposerV1::Environment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListImageVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :image_versions, as: 'imageVersions', class: Google::Apis::ComposerV1::ImageVersion, decorator: Google::Apis::ComposerV1::ImageVersion::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::ComposerV1::Operation, decorator: Google::Apis::ComposerV1::Operation::Representation
      
        end
      end
      
      class ListUserWorkloadsConfigMapsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :user_workloads_config_maps, as: 'userWorkloadsConfigMaps', class: Google::Apis::ComposerV1::UserWorkloadsConfigMap, decorator: Google::Apis::ComposerV1::UserWorkloadsConfigMap::Representation
      
        end
      end
      
      class ListUserWorkloadsSecretsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :user_workloads_secrets, as: 'userWorkloadsSecrets', class: Google::Apis::ComposerV1::UserWorkloadsSecret, decorator: Google::Apis::ComposerV1::UserWorkloadsSecret::Representation
      
        end
      end
      
      class ListWorkloadsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :workloads, as: 'workloads', class: Google::Apis::ComposerV1::ComposerWorkload, decorator: Google::Apis::ComposerV1::ComposerWorkload::Representation
      
        end
      end
      
      class LoadSnapshotRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :skip_airflow_overrides_setting, as: 'skipAirflowOverridesSetting'
          property :skip_environment_variables_setting, as: 'skipEnvironmentVariablesSetting'
          property :skip_gcs_data_copying, as: 'skipGcsDataCopying'
          property :skip_pypi_packages_installation, as: 'skipPypiPackagesInstallation'
          property :snapshot_path, as: 'snapshotPath'
        end
      end
      
      class LoadSnapshotResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class MaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :recurrence, as: 'recurrence'
          property :start_time, as: 'startTime'
        end
      end
      
      class MasterAuthorizedNetworksConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cidr_blocks, as: 'cidrBlocks', class: Google::Apis::ComposerV1::CidrBlock, decorator: Google::Apis::ComposerV1::CidrBlock::Representation
      
          property :enabled, as: 'enabled'
        end
      end
      
      class NetworkingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_type, as: 'connectionType'
        end
      end
      
      class NodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :composer_internal_ipv4_cidr_block, as: 'composerInternalIpv4CidrBlock'
          property :composer_network_attachment, as: 'composerNetworkAttachment'
          property :disk_size_gb, as: 'diskSizeGb'
          property :enable_ip_masq_agent, as: 'enableIpMasqAgent'
          property :ip_allocation_policy, as: 'ipAllocationPolicy', class: Google::Apis::ComposerV1::IpAllocationPolicy, decorator: Google::Apis::ComposerV1::IpAllocationPolicy::Representation
      
          property :location, as: 'location'
          property :machine_type, as: 'machineType'
          property :network, as: 'network'
          collection :oauth_scopes, as: 'oauthScopes'
          property :service_account, as: 'serviceAccount'
          property :subnetwork, as: 'subnetwork'
          collection :tags, as: 'tags'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ComposerV1::Status, decorator: Google::Apis::ComposerV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :operation_type, as: 'operationType'
          property :resource, as: 'resource'
          property :resource_uuid, as: 'resourceUuid'
          property :state, as: 'state'
        end
      end
      
      class PollAirflowCommandRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execution_id, as: 'executionId'
          property :next_line_number, as: 'nextLineNumber'
          property :pod, as: 'pod'
          property :pod_namespace, as: 'podNamespace'
        end
      end
      
      class PollAirflowCommandResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exit_info, as: 'exitInfo', class: Google::Apis::ComposerV1::ExitInfo, decorator: Google::Apis::ComposerV1::ExitInfo::Representation
      
          collection :output, as: 'output', class: Google::Apis::ComposerV1::Line, decorator: Google::Apis::ComposerV1::Line::Representation
      
          property :output_end, as: 'outputEnd'
        end
      end
      
      class PrivateClusterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_private_endpoint, as: 'enablePrivateEndpoint'
          property :master_ipv4_cidr_block, as: 'masterIpv4CidrBlock'
          property :master_ipv4_reserved_range, as: 'masterIpv4ReservedRange'
        end
      end
      
      class PrivateEnvironmentConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_composer_connection_subnetwork, as: 'cloudComposerConnectionSubnetwork'
          property :cloud_composer_network_ipv4_cidr_block, as: 'cloudComposerNetworkIpv4CidrBlock'
          property :cloud_composer_network_ipv4_reserved_range, as: 'cloudComposerNetworkIpv4ReservedRange'
          property :cloud_sql_ipv4_cidr_block, as: 'cloudSqlIpv4CidrBlock'
          property :enable_private_builds_only, as: 'enablePrivateBuildsOnly'
          property :enable_private_environment, as: 'enablePrivateEnvironment'
          property :enable_privately_used_public_ips, as: 'enablePrivatelyUsedPublicIps'
          property :networking_config, as: 'networkingConfig', class: Google::Apis::ComposerV1::NetworkingConfig, decorator: Google::Apis::ComposerV1::NetworkingConfig::Representation
      
          property :private_cluster_config, as: 'privateClusterConfig', class: Google::Apis::ComposerV1::PrivateClusterConfig, decorator: Google::Apis::ComposerV1::PrivateClusterConfig::Representation
      
          property :web_server_ipv4_cidr_block, as: 'webServerIpv4CidrBlock'
          property :web_server_ipv4_reserved_range, as: 'webServerIpv4ReservedRange'
        end
      end
      
      class RecoveryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :scheduled_snapshots_config, as: 'scheduledSnapshotsConfig', class: Google::Apis::ComposerV1::ScheduledSnapshotsConfig, decorator: Google::Apis::ComposerV1::ScheduledSnapshotsConfig::Representation
      
        end
      end
      
      class RestartWebServerRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SaveSnapshotRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :snapshot_location, as: 'snapshotLocation'
        end
      end
      
      class SaveSnapshotResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :snapshot_path, as: 'snapshotPath'
        end
      end
      
      class ScheduledSnapshotsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :snapshot_creation_schedule, as: 'snapshotCreationSchedule'
          property :snapshot_location, as: 'snapshotLocation'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class SchedulerResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
          property :cpu, as: 'cpu'
          property :memory_gb, as: 'memoryGb'
          property :storage_gb, as: 'storageGb'
        end
      end
      
      class SoftwareConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :airflow_config_overrides, as: 'airflowConfigOverrides'
          property :cloud_data_lineage_integration, as: 'cloudDataLineageIntegration', class: Google::Apis::ComposerV1::CloudDataLineageIntegration, decorator: Google::Apis::ComposerV1::CloudDataLineageIntegration::Representation
      
          hash :env_variables, as: 'envVariables'
          property :image_version, as: 'imageVersion'
          hash :pypi_packages, as: 'pypiPackages'
          property :python_version, as: 'pythonVersion'
          property :scheduler_count, as: 'schedulerCount'
          property :web_server_plugins_mode, as: 'webServerPluginsMode'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class StopAirflowCommandRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execution_id, as: 'executionId'
          property :force, as: 'force'
          property :pod, as: 'pod'
          property :pod_namespace, as: 'podNamespace'
        end
      end
      
      class StopAirflowCommandResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_done, as: 'isDone'
          collection :output, as: 'output'
        end
      end
      
      class StorageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
        end
      end
      
      class TaskLogsRetentionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :storage_mode, as: 'storageMode'
        end
      end
      
      class TriggererResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
          property :cpu, as: 'cpu'
          property :memory_gb, as: 'memoryGb'
        end
      end
      
      class UserWorkloadsConfigMap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :data, as: 'data'
          property :name, as: 'name'
        end
      end
      
      class UserWorkloadsSecret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :data, as: 'data'
          property :name, as: 'name'
        end
      end
      
      class WebServerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :machine_type, as: 'machineType'
        end
      end
      
      class WebServerNetworkAccessControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_ip_ranges, as: 'allowedIpRanges', class: Google::Apis::ComposerV1::AllowedIpRange, decorator: Google::Apis::ComposerV1::AllowedIpRange::Representation
      
        end
      end
      
      class WebServerResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu, as: 'cpu'
          property :memory_gb, as: 'memoryGb'
          property :storage_gb, as: 'storageGb'
        end
      end
      
      class WorkerResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu, as: 'cpu'
          property :max_count, as: 'maxCount'
          property :memory_gb, as: 'memoryGb'
          property :min_count, as: 'minCount'
          property :storage_gb, as: 'storageGb'
        end
      end
      
      class WorkloadsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dag_processor, as: 'dagProcessor', class: Google::Apis::ComposerV1::DagProcessorResource, decorator: Google::Apis::ComposerV1::DagProcessorResource::Representation
      
          property :scheduler, as: 'scheduler', class: Google::Apis::ComposerV1::SchedulerResource, decorator: Google::Apis::ComposerV1::SchedulerResource::Representation
      
          property :triggerer, as: 'triggerer', class: Google::Apis::ComposerV1::TriggererResource, decorator: Google::Apis::ComposerV1::TriggererResource::Representation
      
          property :web_server, as: 'webServer', class: Google::Apis::ComposerV1::WebServerResource, decorator: Google::Apis::ComposerV1::WebServerResource::Representation
      
          property :worker, as: 'worker', class: Google::Apis::ComposerV1::WorkerResource, decorator: Google::Apis::ComposerV1::WorkerResource::Representation
      
        end
      end
    end
  end
end
