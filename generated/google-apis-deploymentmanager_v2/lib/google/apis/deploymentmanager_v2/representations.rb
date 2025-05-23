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
    module DeploymentmanagerV2
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkInsertOperationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DebugInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Deployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeploymentLabelEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeploymentUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeploymentUpdateLabelEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeploymentsCancelPreviewRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDeploymentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeploymentsStopRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ErrorInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GlobalSetPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Help
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HelpLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesBulkInsertOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalizedMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Manifest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListManifestsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Error
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Error
            class Representation < Google::Apis::Core::JsonRepresentation; end
            
            class ErrorDetail
              class Representation < Google::Apis::Core::JsonRepresentation; end
            
              include Google::Apis::Core::JsonObjectSupport
            end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuotaExceededInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Resource
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceAccessControl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Error
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Error
            class Representation < Google::Apis::Core::JsonRepresentation; end
            
            class ErrorDetail
              class Representation < Google::Apis::Core::JsonRepresentation; end
            
              include Google::Apis::Core::JsonObjectSupport
            end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class Warning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListResourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetAutoscalerLinkOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetCommonInstanceMetadataOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Type
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::DeploymentmanagerV2::AuditLogConfig, decorator: Google::Apis::DeploymentmanagerV2::AuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::DeploymentmanagerV2::Expr, decorator: Google::Apis::DeploymentmanagerV2::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class BulkInsertOperationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :created_vm_count, as: 'createdVmCount'
          property :deleted_vm_count, as: 'deletedVmCount'
          property :failed_to_create_vm_count, as: 'failedToCreateVmCount'
          property :status, as: 'status'
          property :target_vm_count, as: 'targetVmCount'
        end
      end
      
      class ConfigFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
        end
      end
      
      class DebugInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detail, as: 'detail'
          collection :stack_entries, as: 'stackEntries'
        end
      end
      
      class Deployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :id, :numeric_string => true, as: 'id'
          property :insert_time, as: 'insertTime'
          collection :labels, as: 'labels', class: Google::Apis::DeploymentmanagerV2::DeploymentLabelEntry, decorator: Google::Apis::DeploymentmanagerV2::DeploymentLabelEntry::Representation
      
          property :manifest, as: 'manifest'
          property :name, as: 'name'
          property :operation, as: 'operation', class: Google::Apis::DeploymentmanagerV2::Operation, decorator: Google::Apis::DeploymentmanagerV2::Operation::Representation
      
          property :self_link, as: 'selfLink'
          property :target, as: 'target', class: Google::Apis::DeploymentmanagerV2::TargetConfiguration, decorator: Google::Apis::DeploymentmanagerV2::TargetConfiguration::Representation
      
          property :update, as: 'update', class: Google::Apis::DeploymentmanagerV2::DeploymentUpdate, decorator: Google::Apis::DeploymentmanagerV2::DeploymentUpdate::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class DeploymentLabelEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class DeploymentUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :labels, as: 'labels', class: Google::Apis::DeploymentmanagerV2::DeploymentUpdateLabelEntry, decorator: Google::Apis::DeploymentmanagerV2::DeploymentUpdateLabelEntry::Representation
      
          property :manifest, as: 'manifest'
        end
      end
      
      class DeploymentUpdateLabelEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class DeploymentsCancelPreviewRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fingerprint, :base64 => true, as: 'fingerprint'
        end
      end
      
      class ListDeploymentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deployments, as: 'deployments', class: Google::Apis::DeploymentmanagerV2::Deployment, decorator: Google::Apis::DeploymentmanagerV2::Deployment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class DeploymentsStopRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fingerprint, :base64 => true, as: 'fingerprint'
        end
      end
      
      class ErrorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          hash :metadatas, as: 'metadatas'
          property :reason, as: 'reason'
        end
      end
      
      class Expr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class GlobalSetPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::DeploymentmanagerV2::Binding, decorator: Google::Apis::DeploymentmanagerV2::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :policy, as: 'policy', class: Google::Apis::DeploymentmanagerV2::Policy, decorator: Google::Apis::DeploymentmanagerV2::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class Help
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :links, as: 'links', class: Google::Apis::DeploymentmanagerV2::HelpLink, decorator: Google::Apis::DeploymentmanagerV2::HelpLink::Representation
      
        end
      end
      
      class HelpLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :url, as: 'url'
        end
      end
      
      class ImportFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :name, as: 'name'
        end
      end
      
      class InstancesBulkInsertOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :machine_type, as: 'machineType'
          hash :per_location_status, as: 'perLocationStatus', class: Google::Apis::DeploymentmanagerV2::BulkInsertOperationStatus, decorator: Google::Apis::DeploymentmanagerV2::BulkInsertOperationStatus::Representation
      
        end
      end
      
      class LocalizedMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :locale, as: 'locale'
          property :message, as: 'message'
        end
      end
      
      class Manifest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::DeploymentmanagerV2::ConfigFile, decorator: Google::Apis::DeploymentmanagerV2::ConfigFile::Representation
      
          property :expanded_config, as: 'expandedConfig'
          property :id, :numeric_string => true, as: 'id'
          collection :imports, as: 'imports', class: Google::Apis::DeploymentmanagerV2::ImportFile, decorator: Google::Apis::DeploymentmanagerV2::ImportFile::Representation
      
          property :insert_time, as: 'insertTime'
          property :layout, as: 'layout'
          property :manifest_size_bytes, :numeric_string => true, as: 'manifestSizeBytes'
          property :manifest_size_limit_bytes, :numeric_string => true, as: 'manifestSizeLimitBytes'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
        end
      end
      
      class ListManifestsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :manifests, as: 'manifests', class: Google::Apis::DeploymentmanagerV2::Manifest, decorator: Google::Apis::DeploymentmanagerV2::Manifest::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_operation_id, as: 'clientOperationId'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::DeploymentmanagerV2::Operation::Error, decorator: Google::Apis::DeploymentmanagerV2::Operation::Error::Representation
      
          property :http_error_message, as: 'httpErrorMessage'
          property :http_error_status_code, as: 'httpErrorStatusCode'
          property :id, :numeric_string => true, as: 'id'
          property :insert_time, as: 'insertTime'
          property :instances_bulk_insert_operation_metadata, as: 'instancesBulkInsertOperationMetadata', class: Google::Apis::DeploymentmanagerV2::InstancesBulkInsertOperationMetadata, decorator: Google::Apis::DeploymentmanagerV2::InstancesBulkInsertOperationMetadata::Representation
      
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :operation_group_id, as: 'operationGroupId'
          property :operation_type, as: 'operationType'
          property :progress, as: 'progress'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :self_link_with_id, as: 'selfLinkWithId'
          property :set_autoscaler_link_operation_metadata, as: 'setAutoscalerLinkOperationMetadata', class: Google::Apis::DeploymentmanagerV2::SetAutoscalerLinkOperationMetadata, decorator: Google::Apis::DeploymentmanagerV2::SetAutoscalerLinkOperationMetadata::Representation
      
          property :set_common_instance_metadata_operation_metadata, as: 'setCommonInstanceMetadataOperationMetadata', class: Google::Apis::DeploymentmanagerV2::SetCommonInstanceMetadataOperationMetadata, decorator: Google::Apis::DeploymentmanagerV2::SetCommonInstanceMetadataOperationMetadata::Representation
      
          property :start_time, as: 'startTime'
          property :status, as: 'status'
          property :status_message, as: 'statusMessage'
          property :target_id, :numeric_string => true, as: 'targetId'
          property :target_link, as: 'targetLink'
          property :user, as: 'user'
          collection :warnings, as: 'warnings', class: Google::Apis::DeploymentmanagerV2::Operation::Warning, decorator: Google::Apis::DeploymentmanagerV2::Operation::Warning::Representation
      
          property :zone, as: 'zone'
        end
        
        class Error
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :errors, as: 'errors', class: Google::Apis::DeploymentmanagerV2::Operation::Error::Error, decorator: Google::Apis::DeploymentmanagerV2::Operation::Error::Error::Representation
        
          end
          
          class Error
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              collection :arguments, as: 'arguments'
              property :code, as: 'code'
              property :debug_info, as: 'debugInfo', class: Google::Apis::DeploymentmanagerV2::DebugInfo, decorator: Google::Apis::DeploymentmanagerV2::DebugInfo::Representation
          
              collection :error_details, as: 'errorDetails', class: Google::Apis::DeploymentmanagerV2::Operation::Error::Error::ErrorDetail, decorator: Google::Apis::DeploymentmanagerV2::Operation::Error::Error::ErrorDetail::Representation
          
              property :location, as: 'location'
              property :message, as: 'message'
            end
            
            class ErrorDetail
              # @private
              class Representation < Google::Apis::Core::JsonRepresentation
                property :error_info, as: 'errorInfo', class: Google::Apis::DeploymentmanagerV2::ErrorInfo, decorator: Google::Apis::DeploymentmanagerV2::ErrorInfo::Representation
            
                property :help, as: 'help', class: Google::Apis::DeploymentmanagerV2::Help, decorator: Google::Apis::DeploymentmanagerV2::Help::Representation
            
                property :localized_message, as: 'localizedMessage', class: Google::Apis::DeploymentmanagerV2::LocalizedMessage, decorator: Google::Apis::DeploymentmanagerV2::LocalizedMessage::Representation
            
                property :quota_info, as: 'quotaInfo', class: Google::Apis::DeploymentmanagerV2::QuotaExceededInfo, decorator: Google::Apis::DeploymentmanagerV2::QuotaExceededInfo::Representation
            
              end
            end
          end
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::DeploymentmanagerV2::Operation::Warning::Datum, decorator: Google::Apis::DeploymentmanagerV2::Operation::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DeploymentmanagerV2::Operation, decorator: Google::Apis::DeploymentmanagerV2::Operation::Representation
      
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::DeploymentmanagerV2::AuditConfig, decorator: Google::Apis::DeploymentmanagerV2::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::DeploymentmanagerV2::Binding, decorator: Google::Apis::DeploymentmanagerV2::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class QuotaExceededInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :dimensions, as: 'dimensions'
          property :future_limit, as: 'futureLimit'
          property :limit, as: 'limit'
          property :limit_name, as: 'limitName'
          property :metric_name, as: 'metricName'
          property :rollout_status, as: 'rolloutStatus'
        end
      end
      
      class Resource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_control, as: 'accessControl', class: Google::Apis::DeploymentmanagerV2::ResourceAccessControl, decorator: Google::Apis::DeploymentmanagerV2::ResourceAccessControl::Representation
      
          property :final_properties, as: 'finalProperties'
          property :id, :numeric_string => true, as: 'id'
          property :insert_time, as: 'insertTime'
          property :manifest, as: 'manifest'
          property :name, as: 'name'
          property :properties, as: 'properties'
          property :type, as: 'type'
          property :update, as: 'update', class: Google::Apis::DeploymentmanagerV2::ResourceUpdate, decorator: Google::Apis::DeploymentmanagerV2::ResourceUpdate::Representation
      
          property :update_time, as: 'updateTime'
          property :url, as: 'url'
          collection :warnings, as: 'warnings', class: Google::Apis::DeploymentmanagerV2::Resource::Warning, decorator: Google::Apis::DeploymentmanagerV2::Resource::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::DeploymentmanagerV2::Resource::Warning::Datum, decorator: Google::Apis::DeploymentmanagerV2::Resource::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class ResourceAccessControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcp_iam_policy, as: 'gcpIamPolicy'
        end
      end
      
      class ResourceUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_control, as: 'accessControl', class: Google::Apis::DeploymentmanagerV2::ResourceAccessControl, decorator: Google::Apis::DeploymentmanagerV2::ResourceAccessControl::Representation
      
          property :error, as: 'error', class: Google::Apis::DeploymentmanagerV2::ResourceUpdate::Error, decorator: Google::Apis::DeploymentmanagerV2::ResourceUpdate::Error::Representation
      
          property :final_properties, as: 'finalProperties'
          property :intent, as: 'intent'
          property :manifest, as: 'manifest'
          property :properties, as: 'properties'
          property :state, as: 'state'
          collection :warnings, as: 'warnings', class: Google::Apis::DeploymentmanagerV2::ResourceUpdate::Warning, decorator: Google::Apis::DeploymentmanagerV2::ResourceUpdate::Warning::Representation
      
        end
        
        class Error
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :errors, as: 'errors', class: Google::Apis::DeploymentmanagerV2::ResourceUpdate::Error::Error, decorator: Google::Apis::DeploymentmanagerV2::ResourceUpdate::Error::Error::Representation
        
          end
          
          class Error
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              collection :arguments, as: 'arguments'
              property :code, as: 'code'
              property :debug_info, as: 'debugInfo', class: Google::Apis::DeploymentmanagerV2::DebugInfo, decorator: Google::Apis::DeploymentmanagerV2::DebugInfo::Representation
          
              collection :error_details, as: 'errorDetails', class: Google::Apis::DeploymentmanagerV2::ResourceUpdate::Error::Error::ErrorDetail, decorator: Google::Apis::DeploymentmanagerV2::ResourceUpdate::Error::Error::ErrorDetail::Representation
          
              property :location, as: 'location'
              property :message, as: 'message'
            end
            
            class ErrorDetail
              # @private
              class Representation < Google::Apis::Core::JsonRepresentation
                property :error_info, as: 'errorInfo', class: Google::Apis::DeploymentmanagerV2::ErrorInfo, decorator: Google::Apis::DeploymentmanagerV2::ErrorInfo::Representation
            
                property :help, as: 'help', class: Google::Apis::DeploymentmanagerV2::Help, decorator: Google::Apis::DeploymentmanagerV2::Help::Representation
            
                property :localized_message, as: 'localizedMessage', class: Google::Apis::DeploymentmanagerV2::LocalizedMessage, decorator: Google::Apis::DeploymentmanagerV2::LocalizedMessage::Representation
            
                property :quota_info, as: 'quotaInfo', class: Google::Apis::DeploymentmanagerV2::QuotaExceededInfo, decorator: Google::Apis::DeploymentmanagerV2::QuotaExceededInfo::Representation
            
              end
            end
          end
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::DeploymentmanagerV2::ResourceUpdate::Warning::Datum, decorator: Google::Apis::DeploymentmanagerV2::ResourceUpdate::Warning::Datum::Representation
        
            property :message, as: 'message'
          end
          
          class Datum
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :key, as: 'key'
              property :value, as: 'value'
            end
          end
        end
      end
      
      class ListResourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::DeploymentmanagerV2::Resource, decorator: Google::Apis::DeploymentmanagerV2::Resource::Representation
      
        end
      end
      
      class SetAutoscalerLinkOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :zonal_igm_ids, as: 'zonalIgmIds'
        end
      end
      
      class SetCommonInstanceMetadataOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_operation_id, as: 'clientOperationId'
          hash :per_location_operations, as: 'perLocationOperations', class: Google::Apis::DeploymentmanagerV2::SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo, decorator: Google::Apis::DeploymentmanagerV2::SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo::Representation
      
        end
      end
      
      class SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::DeploymentmanagerV2::Status, decorator: Google::Apis::DeploymentmanagerV2::Status::Representation
      
          property :state, as: 'state'
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
      
      class TargetConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::DeploymentmanagerV2::ConfigFile, decorator: Google::Apis::DeploymentmanagerV2::ConfigFile::Representation
      
          collection :imports, as: 'imports', class: Google::Apis::DeploymentmanagerV2::ImportFile, decorator: Google::Apis::DeploymentmanagerV2::ImportFile::Representation
      
        end
      end
      
      class TestPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TestPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class Type
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, :numeric_string => true, as: 'id'
          property :insert_time, as: 'insertTime'
          property :name, as: 'name'
          property :operation, as: 'operation', class: Google::Apis::DeploymentmanagerV2::Operation, decorator: Google::Apis::DeploymentmanagerV2::Operation::Representation
      
          property :self_link, as: 'selfLink'
        end
      end
      
      class ListTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :types, as: 'types', class: Google::Apis::DeploymentmanagerV2::Type, decorator: Google::Apis::DeploymentmanagerV2::Type::Representation
      
        end
      end
    end
  end
end
