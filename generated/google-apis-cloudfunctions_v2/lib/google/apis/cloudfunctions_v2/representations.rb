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
    module CloudfunctionsV2
      
      class AbortFunctionUpgradeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutomaticUpdatePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitFunctionUpgradeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DetachFunctionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventTrigger
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Function
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateDownloadUrlRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateDownloadUrlResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateUploadUrlRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateUploadUrlResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudFunctionsV2LocationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudFunctionsV2OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudFunctionsV2Stage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudFunctionsV2StateMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFunctionsResponse
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
      
      class ListRuntimesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OnDeployUpdatePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadataV1
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RedirectFunctionUpgradeTrafficRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RepoSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollbackFunctionUpgradeTrafficRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Runtime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecretEnvVar
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecretVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecretVolume
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetupFunctionUpgradeConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceProvenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AbortFunctionUpgradeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::CloudfunctionsV2::AuditLogConfig, decorator: Google::Apis::CloudfunctionsV2::AuditLogConfig::Representation
      
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
      
      class AutomaticUpdatePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::CloudfunctionsV2::Expr, decorator: Google::Apis::CloudfunctionsV2::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class BuildConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automatic_update_policy, as: 'automaticUpdatePolicy', class: Google::Apis::CloudfunctionsV2::AutomaticUpdatePolicy, decorator: Google::Apis::CloudfunctionsV2::AutomaticUpdatePolicy::Representation
      
          property :build, as: 'build'
          property :docker_registry, as: 'dockerRegistry'
          property :docker_repository, as: 'dockerRepository'
          property :entry_point, as: 'entryPoint'
          hash :environment_variables, as: 'environmentVariables'
          property :on_deploy_update_policy, as: 'onDeployUpdatePolicy', class: Google::Apis::CloudfunctionsV2::OnDeployUpdatePolicy, decorator: Google::Apis::CloudfunctionsV2::OnDeployUpdatePolicy::Representation
      
          property :runtime, as: 'runtime'
          property :service_account, as: 'serviceAccount'
          property :source, as: 'source', class: Google::Apis::CloudfunctionsV2::Source, decorator: Google::Apis::CloudfunctionsV2::Source::Representation
      
          property :source_provenance, as: 'sourceProvenance', class: Google::Apis::CloudfunctionsV2::SourceProvenance, decorator: Google::Apis::CloudfunctionsV2::SourceProvenance::Representation
      
          property :source_token, as: 'sourceToken'
          property :worker_pool, as: 'workerPool'
        end
      end
      
      class CommitFunctionUpgradeRequest
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
      
      class DetachFunctionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EventFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute, as: 'attribute'
          property :operator, as: 'operator'
          property :value, as: 'value'
        end
      end
      
      class EventTrigger
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
          collection :event_filters, as: 'eventFilters', class: Google::Apis::CloudfunctionsV2::EventFilter, decorator: Google::Apis::CloudfunctionsV2::EventFilter::Representation
      
          property :event_type, as: 'eventType'
          property :pubsub_topic, as: 'pubsubTopic'
          property :retry_policy, as: 'retryPolicy'
          property :service, as: 'service'
          property :service_account_email, as: 'serviceAccountEmail'
          property :trigger, as: 'trigger'
          property :trigger_region, as: 'triggerRegion'
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
      
      class Function
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :build_config, as: 'buildConfig', class: Google::Apis::CloudfunctionsV2::BuildConfig, decorator: Google::Apis::CloudfunctionsV2::BuildConfig::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :environment, as: 'environment'
          property :event_trigger, as: 'eventTrigger', class: Google::Apis::CloudfunctionsV2::EventTrigger, decorator: Google::Apis::CloudfunctionsV2::EventTrigger::Representation
      
          property :kms_key_name, as: 'kmsKeyName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :service_config, as: 'serviceConfig', class: Google::Apis::CloudfunctionsV2::ServiceConfig, decorator: Google::Apis::CloudfunctionsV2::ServiceConfig::Representation
      
          property :state, as: 'state'
          collection :state_messages, as: 'stateMessages', class: Google::Apis::CloudfunctionsV2::GoogleCloudFunctionsV2StateMessage, decorator: Google::Apis::CloudfunctionsV2::GoogleCloudFunctionsV2StateMessage::Representation
      
          property :update_time, as: 'updateTime'
          property :upgrade_info, as: 'upgradeInfo', class: Google::Apis::CloudfunctionsV2::UpgradeInfo, decorator: Google::Apis::CloudfunctionsV2::UpgradeInfo::Representation
      
          property :url, as: 'url'
        end
      end
      
      class GenerateDownloadUrlRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GenerateDownloadUrlResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :download_url, as: 'downloadUrl'
        end
      end
      
      class GenerateUploadUrlRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :environment, as: 'environment'
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class GenerateUploadUrlResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :storage_source, as: 'storageSource', class: Google::Apis::CloudfunctionsV2::StorageSource, decorator: Google::Apis::CloudfunctionsV2::StorageSource::Representation
      
          property :upload_url, as: 'uploadUrl'
        end
      end
      
      class GoogleCloudFunctionsV2LocationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :environments, as: 'environments'
        end
      end
      
      class GoogleCloudFunctionsV2OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :build_name, as: 'buildName'
          property :cancel_requested, as: 'cancelRequested'
          property :create_time, as: 'createTime'
          property :custom_iam_role_detected, as: 'customIamRoleDetected'
          property :end_time, as: 'endTime'
          property :operation_type, as: 'operationType'
          hash :request_resource, as: 'requestResource'
          property :source_token, as: 'sourceToken'
          collection :stages, as: 'stages', class: Google::Apis::CloudfunctionsV2::GoogleCloudFunctionsV2Stage, decorator: Google::Apis::CloudfunctionsV2::GoogleCloudFunctionsV2Stage::Representation
      
          property :status_detail, as: 'statusDetail'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class GoogleCloudFunctionsV2Stage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :name, as: 'name'
          property :resource, as: 'resource'
          property :resource_uri, as: 'resourceUri'
          property :state, as: 'state'
          collection :state_messages, as: 'stateMessages', class: Google::Apis::CloudfunctionsV2::GoogleCloudFunctionsV2StateMessage, decorator: Google::Apis::CloudfunctionsV2::GoogleCloudFunctionsV2StateMessage::Representation
      
        end
      end
      
      class GoogleCloudFunctionsV2StateMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :severity, as: 'severity'
          property :type, as: 'type'
        end
      end
      
      class ListFunctionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :functions, as: 'functions', class: Google::Apis::CloudfunctionsV2::Function, decorator: Google::Apis::CloudfunctionsV2::Function::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::CloudfunctionsV2::Location, decorator: Google::Apis::CloudfunctionsV2::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::CloudfunctionsV2::Operation, decorator: Google::Apis::CloudfunctionsV2::Operation::Representation
      
        end
      end
      
      class ListRuntimesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :runtimes, as: 'runtimes', class: Google::Apis::CloudfunctionsV2::Runtime, decorator: Google::Apis::CloudfunctionsV2::Runtime::Representation
      
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
      
      class OnDeployUpdatePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :runtime_version, as: 'runtimeVersion'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::CloudfunctionsV2::Status, decorator: Google::Apis::CloudfunctionsV2::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadataV1
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :build_id, as: 'buildId'
          property :build_name, as: 'buildName'
          hash :request, as: 'request'
          property :source_token, as: 'sourceToken'
          property :target, as: 'target'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
          property :version_id, :numeric_string => true, as: 'versionId'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::CloudfunctionsV2::AuditConfig, decorator: Google::Apis::CloudfunctionsV2::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::CloudfunctionsV2::Binding, decorator: Google::Apis::CloudfunctionsV2::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class RedirectFunctionUpgradeTrafficRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RepoSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch_name, as: 'branchName'
          property :commit_sha, as: 'commitSha'
          property :dir, as: 'dir'
          property :project_id, as: 'projectId'
          property :repo_name, as: 'repoName'
          property :tag_name, as: 'tagName'
        end
      end
      
      class RollbackFunctionUpgradeTrafficRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Runtime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :decommission_date, as: 'decommissionDate', class: Google::Apis::CloudfunctionsV2::Date, decorator: Google::Apis::CloudfunctionsV2::Date::Representation
      
          property :deprecation_date, as: 'deprecationDate', class: Google::Apis::CloudfunctionsV2::Date, decorator: Google::Apis::CloudfunctionsV2::Date::Representation
      
          property :display_name, as: 'displayName'
          property :environment, as: 'environment'
          property :name, as: 'name'
          property :stage, as: 'stage'
          collection :warnings, as: 'warnings'
        end
      end
      
      class SecretEnvVar
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :project_id, as: 'projectId'
          property :secret, as: 'secret'
          property :version, as: 'version'
        end
      end
      
      class SecretVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
          property :version, as: 'version'
        end
      end
      
      class SecretVolume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mount_path, as: 'mountPath'
          property :project_id, as: 'projectId'
          property :secret, as: 'secret'
          collection :versions, as: 'versions', class: Google::Apis::CloudfunctionsV2::SecretVersion, decorator: Google::Apis::CloudfunctionsV2::SecretVersion::Representation
      
        end
      end
      
      class ServiceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_traffic_on_latest_revision, as: 'allTrafficOnLatestRevision'
          property :available_cpu, as: 'availableCpu'
          property :available_memory, as: 'availableMemory'
          property :binary_authorization_policy, as: 'binaryAuthorizationPolicy'
          hash :environment_variables, as: 'environmentVariables'
          property :ingress_settings, as: 'ingressSettings'
          property :max_instance_count, as: 'maxInstanceCount'
          property :max_instance_request_concurrency, as: 'maxInstanceRequestConcurrency'
          property :min_instance_count, as: 'minInstanceCount'
          property :revision, as: 'revision'
          collection :secret_environment_variables, as: 'secretEnvironmentVariables', class: Google::Apis::CloudfunctionsV2::SecretEnvVar, decorator: Google::Apis::CloudfunctionsV2::SecretEnvVar::Representation
      
          collection :secret_volumes, as: 'secretVolumes', class: Google::Apis::CloudfunctionsV2::SecretVolume, decorator: Google::Apis::CloudfunctionsV2::SecretVolume::Representation
      
          property :security_level, as: 'securityLevel'
          property :service, as: 'service'
          property :service_account_email, as: 'serviceAccountEmail'
          property :timeout_seconds, as: 'timeoutSeconds'
          property :uri, as: 'uri'
          property :vpc_connector, as: 'vpcConnector'
          property :vpc_connector_egress_settings, as: 'vpcConnectorEgressSettings'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::CloudfunctionsV2::Policy, decorator: Google::Apis::CloudfunctionsV2::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class SetupFunctionUpgradeConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :trigger_service_account, as: 'triggerServiceAccount'
        end
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :git_uri, as: 'gitUri'
          property :repo_source, as: 'repoSource', class: Google::Apis::CloudfunctionsV2::RepoSource, decorator: Google::Apis::CloudfunctionsV2::RepoSource::Representation
      
          property :storage_source, as: 'storageSource', class: Google::Apis::CloudfunctionsV2::StorageSource, decorator: Google::Apis::CloudfunctionsV2::StorageSource::Representation
      
        end
      end
      
      class SourceProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :git_uri, as: 'gitUri'
          property :resolved_repo_source, as: 'resolvedRepoSource', class: Google::Apis::CloudfunctionsV2::RepoSource, decorator: Google::Apis::CloudfunctionsV2::RepoSource::Representation
      
          property :resolved_storage_source, as: 'resolvedStorageSource', class: Google::Apis::CloudfunctionsV2::StorageSource, decorator: Google::Apis::CloudfunctionsV2::StorageSource::Representation
      
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
      
      class StorageSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :generation, :numeric_string => true, as: 'generation'
          property :object, as: 'object'
          property :source_upload_url, as: 'sourceUploadUrl'
        end
      end
      
      class TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class UpgradeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :build_config, as: 'buildConfig', class: Google::Apis::CloudfunctionsV2::BuildConfig, decorator: Google::Apis::CloudfunctionsV2::BuildConfig::Representation
      
          property :event_trigger, as: 'eventTrigger', class: Google::Apis::CloudfunctionsV2::EventTrigger, decorator: Google::Apis::CloudfunctionsV2::EventTrigger::Representation
      
          property :service_config, as: 'serviceConfig', class: Google::Apis::CloudfunctionsV2::ServiceConfig, decorator: Google::Apis::CloudfunctionsV2::ServiceConfig::Representation
      
          property :upgrade_state, as: 'upgradeState'
        end
      end
    end
  end
end
