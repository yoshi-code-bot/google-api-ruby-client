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
    module LookerV1
      
      class AdminSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomDomain
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
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncryptionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportEncryptionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportMetadataEncryptionKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceBackup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInstanceBackupsResponse
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
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OAuthConfig
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
      
      class PscConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestartInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAttachment
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
      
      class UserMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdminSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_email_domains, as: 'allowedEmailDomains'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CustomDomain
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          property :state, as: 'state'
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
          property :end_date, as: 'endDate', class: Google::Apis::LookerV1::Date, decorator: Google::Apis::LookerV1::Date::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::LookerV1::Date, decorator: Google::Apis::LookerV1::Date::Representation
      
          property :time, as: 'time', class: Google::Apis::LookerV1::TimeOfDay, decorator: Google::Apis::LookerV1::TimeOfDay::Representation
      
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
          property :kms_key_name_version, as: 'kmsKeyNameVersion'
          property :kms_key_state, as: 'kmsKeyState'
        end
      end
      
      class ExportEncryptionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class ExportInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::LookerV1::ExportEncryptionConfig, decorator: Google::Apis::LookerV1::ExportEncryptionConfig::Representation
      
          property :gcs_uri, as: 'gcsUri'
        end
      end
      
      class ExportMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :export_encryption_key, as: 'exportEncryptionKey', class: Google::Apis::LookerV1::ExportMetadataEncryptionKey, decorator: Google::Apis::LookerV1::ExportMetadataEncryptionKey::Representation
      
          collection :file_paths, as: 'filePaths'
          property :looker_encryption_key, as: 'lookerEncryptionKey'
          property :looker_instance, as: 'lookerInstance'
          property :looker_platform_edition, as: 'lookerPlatformEdition'
          property :looker_version, as: 'lookerVersion'
          property :source, as: 'source'
        end
      end
      
      class ExportMetadataEncryptionKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cmek, as: 'cmek'
          property :version, as: 'version'
        end
      end
      
      class ImportInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_uri, as: 'gcsUri'
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_settings, as: 'adminSettings', class: Google::Apis::LookerV1::AdminSettings, decorator: Google::Apis::LookerV1::AdminSettings::Representation
      
          property :consumer_network, as: 'consumerNetwork'
          property :create_time, as: 'createTime'
          property :custom_domain, as: 'customDomain', class: Google::Apis::LookerV1::CustomDomain, decorator: Google::Apis::LookerV1::CustomDomain::Representation
      
          property :deny_maintenance_period, as: 'denyMaintenancePeriod', class: Google::Apis::LookerV1::DenyMaintenancePeriod, decorator: Google::Apis::LookerV1::DenyMaintenancePeriod::Representation
      
          property :egress_public_ip, as: 'egressPublicIp'
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::LookerV1::EncryptionConfig, decorator: Google::Apis::LookerV1::EncryptionConfig::Representation
      
          property :fips_enabled, as: 'fipsEnabled'
          property :gemini_enabled, as: 'geminiEnabled'
          property :ingress_private_ip, as: 'ingressPrivateIp'
          property :ingress_public_ip, as: 'ingressPublicIp'
          property :last_deny_maintenance_period, as: 'lastDenyMaintenancePeriod', class: Google::Apis::LookerV1::DenyMaintenancePeriod, decorator: Google::Apis::LookerV1::DenyMaintenancePeriod::Representation
      
          property :linked_lsp_project_number, :numeric_string => true, as: 'linkedLspProjectNumber'
          property :looker_uri, as: 'lookerUri'
          property :looker_version, as: 'lookerVersion'
          property :maintenance_schedule, as: 'maintenanceSchedule', class: Google::Apis::LookerV1::MaintenanceSchedule, decorator: Google::Apis::LookerV1::MaintenanceSchedule::Representation
      
          property :maintenance_window, as: 'maintenanceWindow', class: Google::Apis::LookerV1::MaintenanceWindow, decorator: Google::Apis::LookerV1::MaintenanceWindow::Representation
      
          property :name, as: 'name'
          property :oauth_config, as: 'oauthConfig', class: Google::Apis::LookerV1::OAuthConfig, decorator: Google::Apis::LookerV1::OAuthConfig::Representation
      
          property :platform_edition, as: 'platformEdition'
          property :private_ip_enabled, as: 'privateIpEnabled'
          property :psc_config, as: 'pscConfig', class: Google::Apis::LookerV1::PscConfig, decorator: Google::Apis::LookerV1::PscConfig::Representation
      
          property :psc_enabled, as: 'pscEnabled'
          property :public_ip_enabled, as: 'publicIpEnabled'
          property :reserved_range, as: 'reservedRange'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          property :user_metadata, as: 'userMetadata', class: Google::Apis::LookerV1::UserMetadata, decorator: Google::Apis::LookerV1::UserMetadata::Representation
      
        end
      end
      
      class InstanceBackup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::LookerV1::EncryptionConfig, decorator: Google::Apis::LookerV1::EncryptionConfig::Representation
      
          property :expire_time, as: 'expireTime'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class ListInstanceBackupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instance_backups, as: 'instanceBackups', class: Google::Apis::LookerV1::InstanceBackup, decorator: Google::Apis::LookerV1::InstanceBackup::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::LookerV1::Instance, decorator: Google::Apis::LookerV1::Instance::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::LookerV1::Location, decorator: Google::Apis::LookerV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::LookerV1::Operation, decorator: Google::Apis::LookerV1::Operation::Representation
      
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
      
      class MaintenanceSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class MaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day_of_week, as: 'dayOfWeek'
          property :start_time, as: 'startTime', class: Google::Apis::LookerV1::TimeOfDay, decorator: Google::Apis::LookerV1::TimeOfDay::Representation
      
        end
      end
      
      class OAuthConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::LookerV1::Status, decorator: Google::Apis::LookerV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class PscConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_vpcs, as: 'allowedVpcs'
          property :looker_service_attachment_uri, as: 'lookerServiceAttachmentUri'
          collection :service_attachments, as: 'serviceAttachments', class: Google::Apis::LookerV1::ServiceAttachment, decorator: Google::Apis::LookerV1::ServiceAttachment::Representation
      
        end
      end
      
      class RestartInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RestoreInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup, as: 'backup'
        end
      end
      
      class ServiceAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_status, as: 'connectionStatus'
          property :local_fqdn, as: 'localFqdn'
          collection :local_fqdns, as: 'localFqdns'
          property :target_service_attachment_uri, as: 'targetServiceAttachmentUri'
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
      
      class UserMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_developer_user_count, as: 'additionalDeveloperUserCount'
          property :additional_standard_user_count, as: 'additionalStandardUserCount'
          property :additional_viewer_user_count, as: 'additionalViewerUserCount'
        end
      end
    end
  end
end
