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
    module FileV1beta1
      
      class Backup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailyCycle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DenyMaintenancePeriod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DirectoryServicesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileShareConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FixedIops
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IopsPerTb
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LdapConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBackupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInstancesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSharesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSnapshotsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenancePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedActiveDirectoryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NfsExportOptions
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
      
      class PerformanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PerformanceLimits
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PromoteReplicaRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PscConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplicaConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Replication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RevertInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Schedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Share
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Snapshot
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdatePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WeeklyCycle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Backup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :capacity_gb, :numeric_string => true, as: 'capacityGb'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :download_bytes, :numeric_string => true, as: 'downloadBytes'
          property :file_system_protocol, as: 'fileSystemProtocol'
          property :kms_key_name, as: 'kmsKeyName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :source_file_share, as: 'sourceFileShare'
          property :source_instance, as: 'sourceInstance'
          property :source_instance_tier, as: 'sourceInstanceTier'
          property :state, as: 'state'
          property :storage_bytes, :numeric_string => true, as: 'storageBytes'
          hash :tags, as: 'tags'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DailyCycle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :start_time, as: 'startTime', class: Google::Apis::FileV1beta1::TimeOfDay, decorator: Google::Apis::FileV1beta1::TimeOfDay::Representation
      
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
      
      class DenyMaintenancePeriod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', class: Google::Apis::FileV1beta1::Date, decorator: Google::Apis::FileV1beta1::Date::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::FileV1beta1::Date, decorator: Google::Apis::FileV1beta1::Date::Representation
      
          property :time, as: 'time', class: Google::Apis::FileV1beta1::TimeOfDay, decorator: Google::Apis::FileV1beta1::TimeOfDay::Representation
      
        end
      end
      
      class DirectoryServicesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ldap, as: 'ldap', class: Google::Apis::FileV1beta1::LdapConfig, decorator: Google::Apis::FileV1beta1::LdapConfig::Representation
      
          property :managed_active_directory, as: 'managedActiveDirectory', class: Google::Apis::FileV1beta1::ManagedActiveDirectoryConfig, decorator: Google::Apis::FileV1beta1::ManagedActiveDirectoryConfig::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FileShareConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :capacity_gb, :numeric_string => true, as: 'capacityGb'
          property :name, as: 'name'
          collection :nfs_export_options, as: 'nfsExportOptions', class: Google::Apis::FileV1beta1::NfsExportOptions, decorator: Google::Apis::FileV1beta1::NfsExportOptions::Representation
      
          property :source_backup, as: 'sourceBackup'
        end
      end
      
      class FixedIops
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_iops, :numeric_string => true, as: 'maxIops'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumer_defined_name, as: 'consumerDefinedName'
          property :consumer_project_number, as: 'consumerProjectNumber'
          property :create_time, as: 'createTime'
          property :instance_type, as: 'instanceType'
          hash :labels, as: 'labels'
          hash :maintenance_policy_names, as: 'maintenancePolicyNames'
          hash :maintenance_schedules, as: 'maintenanceSchedules', class: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule, decorator: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule::Representation
      
          property :maintenance_settings, as: 'maintenanceSettings', class: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings, decorator: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings::Representation
      
          property :name, as: 'name'
          hash :notification_parameters, as: 'notificationParameters', class: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter, decorator: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter::Representation
      
          hash :producer_metadata, as: 'producerMetadata'
          collection :provisioned_resources, as: 'provisionedResources', class: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource, decorator: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource::Representation
      
          property :slm_instance_template, as: 'slmInstanceTemplate'
          property :slo_metadata, as: 'sloMetadata', class: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata, decorator: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata::Representation
      
          hash :software_versions, as: 'softwareVersions'
          property :state, as: 'state'
          property :tenant_project_id, as: 'tenantProjectId'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_reschedule, as: 'canReschedule'
          property :end_time, as: 'endTime'
          property :rollout_management_policy, as: 'rolloutManagementPolicy'
          property :schedule_deadline_time, as: 'scheduleDeadlineTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclude, as: 'exclude'
          property :is_rollback, as: 'isRollback'
          hash :maintenance_policies, as: 'maintenancePolicies', class: Google::Apis::FileV1beta1::MaintenancePolicy, decorator: Google::Apis::FileV1beta1::MaintenancePolicy::Representation
      
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          property :node_id, as: 'nodeId'
          property :per_sli_eligibility, as: 'perSliEligibility', class: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility, decorator: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility::Representation
      
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :eligibilities, as: 'eligibilities', class: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility, decorator: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility::Representation
      
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_type, as: 'resourceType'
          property :resource_url, as: 'resourceUrl'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :eligible, as: 'eligible'
          property :reason, as: 'reason'
        end
      end
      
      class GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :nodes, as: 'nodes', class: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata, decorator: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata::Representation
      
          property :per_sli_eligibility, as: 'perSliEligibility', class: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility, decorator: Google::Apis::FileV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility::Representation
      
          property :tier, as: 'tier'
        end
      end
      
      class IopsPerTb
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_iops_per_tb, :numeric_string => true, as: 'maxIopsPerTb'
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :capacity_gb, :numeric_string => true, as: 'capacityGb'
          property :capacity_step_size_gb, :numeric_string => true, as: 'capacityStepSizeGb'
          property :create_time, as: 'createTime'
          property :custom_performance_supported, as: 'customPerformanceSupported'
          property :deletion_protection_enabled, as: 'deletionProtectionEnabled'
          property :deletion_protection_reason, as: 'deletionProtectionReason'
          property :description, as: 'description'
          property :directory_services, as: 'directoryServices', class: Google::Apis::FileV1beta1::DirectoryServicesConfig, decorator: Google::Apis::FileV1beta1::DirectoryServicesConfig::Representation
      
          property :etag, as: 'etag'
          collection :file_shares, as: 'fileShares', class: Google::Apis::FileV1beta1::FileShareConfig, decorator: Google::Apis::FileV1beta1::FileShareConfig::Representation
      
          property :kms_key_name, as: 'kmsKeyName'
          hash :labels, as: 'labels'
          property :max_capacity_gb, :numeric_string => true, as: 'maxCapacityGb'
          property :max_share_count, :numeric_string => true, as: 'maxShareCount'
          property :multi_share_enabled, as: 'multiShareEnabled'
          property :name, as: 'name'
          collection :networks, as: 'networks', class: Google::Apis::FileV1beta1::NetworkConfig, decorator: Google::Apis::FileV1beta1::NetworkConfig::Representation
      
          property :performance_config, as: 'performanceConfig', class: Google::Apis::FileV1beta1::PerformanceConfig, decorator: Google::Apis::FileV1beta1::PerformanceConfig::Representation
      
          property :performance_limits, as: 'performanceLimits', class: Google::Apis::FileV1beta1::PerformanceLimits, decorator: Google::Apis::FileV1beta1::PerformanceLimits::Representation
      
          property :protocol, as: 'protocol'
          property :replication, as: 'replication', class: Google::Apis::FileV1beta1::Replication, decorator: Google::Apis::FileV1beta1::Replication::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :state, as: 'state'
          property :status_message, as: 'statusMessage'
          collection :suspension_reasons, as: 'suspensionReasons'
          hash :tags, as: 'tags'
          property :tier, as: 'tier'
        end
      end
      
      class LdapConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          property :groups_ou, as: 'groupsOu'
          collection :servers, as: 'servers'
          property :users_ou, as: 'usersOu'
        end
      end
      
      class ListBackupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backups, as: 'backups', class: Google::Apis::FileV1beta1::Backup, decorator: Google::Apis::FileV1beta1::Backup::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::FileV1beta1::Instance, decorator: Google::Apis::FileV1beta1::Instance::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::FileV1beta1::Location, decorator: Google::Apis::FileV1beta1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::FileV1beta1::Operation, decorator: Google::Apis::FileV1beta1::Operation::Representation
      
        end
      end
      
      class ListSharesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :shares, as: 'shares', class: Google::Apis::FileV1beta1::Share, decorator: Google::Apis::FileV1beta1::Share::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListSnapshotsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :snapshots, as: 'snapshots', class: Google::Apis::FileV1beta1::Snapshot, decorator: Google::Apis::FileV1beta1::Snapshot::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class MaintenancePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :update_policy, as: 'updatePolicy', class: Google::Apis::FileV1beta1::UpdatePolicy, decorator: Google::Apis::FileV1beta1::UpdatePolicy::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class MaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :daily_cycle, as: 'dailyCycle', class: Google::Apis::FileV1beta1::DailyCycle, decorator: Google::Apis::FileV1beta1::DailyCycle::Representation
      
          property :weekly_cycle, as: 'weeklyCycle', class: Google::Apis::FileV1beta1::WeeklyCycle, decorator: Google::Apis::FileV1beta1::WeeklyCycle::Representation
      
        end
      end
      
      class ManagedActiveDirectoryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :computer, as: 'computer'
          property :domain, as: 'domain'
        end
      end
      
      class NetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connect_mode, as: 'connectMode'
          collection :ip_addresses, as: 'ipAddresses'
          collection :modes, as: 'modes'
          property :network, as: 'network'
          property :psc_config, as: 'pscConfig', class: Google::Apis::FileV1beta1::PscConfig, decorator: Google::Apis::FileV1beta1::PscConfig::Representation
      
          property :reserved_ip_range, as: 'reservedIpRange'
        end
      end
      
      class NfsExportOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_mode, as: 'accessMode'
          property :anon_gid, :numeric_string => true, as: 'anonGid'
          property :anon_uid, :numeric_string => true, as: 'anonUid'
          collection :ip_ranges, as: 'ipRanges'
          property :network, as: 'network'
          collection :security_flavors, as: 'securityFlavors'
          property :squash_mode, as: 'squashMode'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::FileV1beta1::Status, decorator: Google::Apis::FileV1beta1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
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
      
      class PerformanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixed_iops, as: 'fixedIops', class: Google::Apis::FileV1beta1::FixedIops, decorator: Google::Apis::FileV1beta1::FixedIops::Representation
      
          property :iops_per_tb, as: 'iopsPerTb', class: Google::Apis::FileV1beta1::IopsPerTb, decorator: Google::Apis::FileV1beta1::IopsPerTb::Representation
      
        end
      end
      
      class PerformanceLimits
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_iops, :numeric_string => true, as: 'maxIops'
          property :max_read_iops, :numeric_string => true, as: 'maxReadIops'
          property :max_read_throughput_bps, :numeric_string => true, as: 'maxReadThroughputBps'
          property :max_write_iops, :numeric_string => true, as: 'maxWriteIops'
          property :max_write_throughput_bps, :numeric_string => true, as: 'maxWriteThroughputBps'
        end
      end
      
      class PromoteReplicaRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :peer_instance, as: 'peerInstance'
        end
      end
      
      class PscConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint_project, as: 'endpointProject'
        end
      end
      
      class ReplicaConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_active_sync_time, as: 'lastActiveSyncTime'
          property :peer_instance, as: 'peerInstance'
          property :state, as: 'state'
          collection :state_reasons, as: 'stateReasons'
        end
      end
      
      class Replication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :replicas, as: 'replicas', class: Google::Apis::FileV1beta1::ReplicaConfig, decorator: Google::Apis::FileV1beta1::ReplicaConfig::Representation
      
          property :role, as: 'role'
        end
      end
      
      class RestoreInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_share, as: 'fileShare'
          property :source_backup, as: 'sourceBackup'
          property :source_snapshot, as: 'sourceSnapshot'
        end
      end
      
      class RevertInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_snapshot_id, as: 'targetSnapshotId'
        end
      end
      
      class Schedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :duration, as: 'duration'
          property :start_time, as: 'startTime', class: Google::Apis::FileV1beta1::TimeOfDay, decorator: Google::Apis::FileV1beta1::TimeOfDay::Representation
      
        end
      end
      
      class Share
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup, as: 'backup'
          property :capacity_gb, :numeric_string => true, as: 'capacityGb'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :mount_name, as: 'mountName'
          property :name, as: 'name'
          collection :nfs_export_options, as: 'nfsExportOptions', class: Google::Apis::FileV1beta1::NfsExportOptions, decorator: Google::Apis::FileV1beta1::NfsExportOptions::Representation
      
          property :state, as: 'state'
        end
      end
      
      class Snapshot
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :filesystem_used_bytes, :numeric_string => true, as: 'filesystemUsedBytes'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          hash :tags, as: 'tags'
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
      
      class TimeOfDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
        end
      end
      
      class UpdatePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
          collection :deny_maintenance_periods, as: 'denyMaintenancePeriods', class: Google::Apis::FileV1beta1::DenyMaintenancePeriod, decorator: Google::Apis::FileV1beta1::DenyMaintenancePeriod::Representation
      
          property :window, as: 'window', class: Google::Apis::FileV1beta1::MaintenanceWindow, decorator: Google::Apis::FileV1beta1::MaintenanceWindow::Representation
      
        end
      end
      
      class WeeklyCycle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :schedule, as: 'schedule', class: Google::Apis::FileV1beta1::Schedule, decorator: Google::Apis::FileV1beta1::Schedule::Representation
      
        end
      end
    end
  end
end
