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
    module ApigeeV1
      
      class EdgeConfigstoreBundleBadBundle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EdgeConfigstoreBundleBadBundleViolation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiHttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ApiProductAssociation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Access
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1AccessGet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1AccessLoggingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1AccessRemove
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1AccessSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ActivateNatAddressRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1AddonsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1AdjustDeveloperBalanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1AdvancedApiOpsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Alias
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1AliasRevisionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1AnalyticsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ApiCategory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ApiCategoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ApiDebugSession
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ApiDoc
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ApiDocDocumentation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ApiDocDocumentationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ApiDocResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ApiProduct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ApiProductRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ApiProxy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ApiProxyRevision
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ApiSecurityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ApiSecurityRuntimeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1App
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1AppGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1AppGroupApp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1AppGroupAppKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ArchiveDeployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1AsyncQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1AsyncQueryResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1AsyncQueryResultView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Attribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Attributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestIncludeAll
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestResourceArray
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestResourceArrayResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1BatchUpdateSecurityIncidentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1BatchUpdateSecurityIncidentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1CanaryEvaluation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1CanaryEvaluationMetricLabels
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1CertInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Certificate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1CommonNameConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ComputeEnvironmentScoresRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ComputeEnvironmentScoresRequestFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ComputeEnvironmentScoresResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ConfigVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ConnectorsPlatformConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ControlPlaneAccess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Credential
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1CreditDeveloperBalanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1CustomReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1CustomReportMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DataCollector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DataCollectorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Datastore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DatastoreConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DateRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DebugMask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DebugSession
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DebugSessionTransaction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DeleteCustomReportResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DeleteResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Deployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DeploymentChangeReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DeploymentChangeReportRoutingChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DeploymentConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DeploymentGroupConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Developer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DeveloperApp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DeveloperAppKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DeveloperBalance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DeveloperBalanceWallet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DeveloperMonetizationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DeveloperSubscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DimensionMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DisableSecurityActionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DnsZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DnsZonePeeringConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1DocumentationFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1EnableSecurityActionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1EndpointAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1EndpointChainingRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1EntityMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Environment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1EnvironmentClientIpResolutionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1EnvironmentClientIpResolutionConfigHeaderIndexAlgorithm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1EnvironmentConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1EnvironmentConfigClientIpResolutionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1EnvironmentConfigClientIpResolutionConfigHeaderIndexAlgorithm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1EnvironmentGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1EnvironmentGroupAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1EnvironmentGroupConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ExpireDeveloperSubscriptionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Export
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ExportRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1FlowHook
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1FlowHookConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1GenerateDownloadUrlRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1GenerateDownloadUrlResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1GenerateUploadUrlRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1GenerateUploadUrlResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1GetAsyncQueryResultUrlResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1GetAsyncQueryResultUrlResponseUrlInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1GetSyncAuthorizationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1GraphQlOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1GraphQlOperationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1GraphQlOperationGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1GraphqlDocumentation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1GrpcOperationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1GrpcOperationGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1IngressConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1InstanceAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1InstanceDeploymentStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1IntegrationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1KeyAliasReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1KeyValueEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1KeyValueMap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Keystore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1KeystoreConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListApiCategoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListApiDebugSessionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListApiDocsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListApiProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListApiProxiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListAppGroupAppsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListAppGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListAppsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListArchiveDeploymentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListAsyncQueriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListCustomReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListDataCollectorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListDatastoresResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListDebugSessionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListDeploymentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListDeveloperAppsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListDeveloperSubscriptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListDnsZonesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListEndpointAttachmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListEnvironmentGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListEnvironmentResourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListExportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListHybridIssuersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListInstanceAttachmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListInstancesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListKeyValueEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListNatAddressesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListOfDevelopersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListOrganizationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListRatePlansResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListSecurityActionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListSecurityIncidentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListSecurityMonitoringConditionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListSecurityProfileRevisionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListSecurityProfilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListSecurityProfilesV2Response
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListSecurityReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListSharedFlowsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListSpacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ListTraceConfigOverridesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Metadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Metric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1MetricAggregation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1MonetizationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1MoveApiProductRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1MoveApiProxyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1MoveSharedFlowRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1NatAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1NodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1OasDocumentation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1OperationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1OperationGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1OperationMetadataProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1OptimizedStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1OptimizedStatsNode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1OptimizedStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Organization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1OrganizationProjectMapping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1PodStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Point
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ProfileConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ProfileConfigAbuse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ProfileConfigAuthorization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ProfileConfigCors
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ProfileConfigCategory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ProfileConfigMtls
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ProfileConfigMediation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ProfileConfigThreat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Properties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Property
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ProvisionOrganizationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Query
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1QueryMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1QueryMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1QueryTabularStatsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1QueryTabularStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1QueryTimeSeriesStatsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1QueryTimeSeriesStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1QueryTimeSeriesStatsResponseSequence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Quota
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1RatePlan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1RateRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Reference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ReferenceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ReportInstanceStatusRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ReportInstanceStatusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ReportProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ResourceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ResourceFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ResourceFiles
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ResourceStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Result
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1RevenueShareRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1RevisionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1RoutingRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1RuntimeAddonsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1RuntimeAnalyticsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1RuntimeApiSecurityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1RuntimeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1RuntimeTraceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1RuntimeTraceConfigOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1RuntimeTraceSamplingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Schema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SchemaSchemaElement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SchemaSchemaProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Score
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ScoreComponent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ScoreComponentRecommendation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ScoreComponentRecommendationAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ScoreComponentRecommendationActionActionContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityActionAllow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityActionConditionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityActionDeny
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityActionFlag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityActionHttpHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityActionsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityAssessmentResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityAssessmentResultResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityAssessmentResultScoringResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendationRecommendation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendationRecommendationLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityIncident
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityMonitoringCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityProfileEnvironment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityProfileEnvironmentAssociation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityProfileScoringConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityProfileV2
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityProfileV2ProfileAssessmentConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityReportMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityReportQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityReportQueryMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityReportResultMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecurityReportResultView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SecuritySettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1ServiceIssuersMapping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Session
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SetAddonEnablementRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SetAddonsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SharedFlow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SharedFlowRevision
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Space
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Stats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1StatsEnvironmentStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1StatsHostStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1Subscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1SyncAuthorization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1TargetServer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1TargetServerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1TestDatastoreResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1TlsInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1TlsInfoCommonName
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1TlsInfoConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1TraceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1TraceConfigOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1TraceSamplingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1UpdateAppGroupAppKeyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1UpdateError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudApigeeV1UpdateSecurityIncidentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcPreconditionFailure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcPreconditionFailureViolation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeExpr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeMoney
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EdgeConfigstoreBundleBadBundle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :violations, as: 'violations', class: Google::Apis::ApigeeV1::EdgeConfigstoreBundleBadBundleViolation, decorator: Google::Apis::ApigeeV1::EdgeConfigstoreBundleBadBundleViolation::Representation
      
        end
      end
      
      class EdgeConfigstoreBundleBadBundleViolation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :filename, as: 'filename'
        end
      end
      
      class GoogleApiHttpBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :data, :base64 => true, as: 'data'
          collection :extensions, as: 'extensions'
        end
      end
      
      class GoogleCloudApigeeV1ApiProductAssociation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apiproduct, as: 'apiproduct'
          property :status, as: 'status'
        end
      end
      
      class GoogleCloudApigeeV1Access
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :get, as: 'Get', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AccessGet, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AccessGet::Representation
      
          property :remove, as: 'Remove', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AccessRemove, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AccessRemove::Representation
      
          property :set, as: 'Set', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AccessSet, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AccessSet::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1AccessGet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudApigeeV1AccessLoggingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudApigeeV1AccessRemove
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :success, as: 'success'
        end
      end
      
      class GoogleCloudApigeeV1AccessSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :success, as: 'success'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudApigeeV1ActivateNatAddressRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudApigeeV1AddonsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advanced_api_ops_config, as: 'advancedApiOpsConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AdvancedApiOpsConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AdvancedApiOpsConfig::Representation
      
          property :analytics_config, as: 'analyticsConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AnalyticsConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AnalyticsConfig::Representation
      
          property :api_security_config, as: 'apiSecurityConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiSecurityConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiSecurityConfig::Representation
      
          property :connectors_platform_config, as: 'connectorsPlatformConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ConnectorsPlatformConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ConnectorsPlatformConfig::Representation
      
          property :integration_config, as: 'integrationConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1IntegrationConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1IntegrationConfig::Representation
      
          property :monetization_config, as: 'monetizationConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1MonetizationConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1MonetizationConfig::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1AdjustDeveloperBalanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adjustment, as: 'adjustment', class: Google::Apis::ApigeeV1::GoogleTypeMoney, decorator: Google::Apis::ApigeeV1::GoogleTypeMoney::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1AdvancedApiOpsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class GoogleCloudApigeeV1Alias
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alias, as: 'alias'
          property :certs_info, as: 'certsInfo', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Certificate, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Certificate::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudApigeeV1AliasRevisionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudApigeeV1AnalyticsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :expire_time_millis, :numeric_string => true, as: 'expireTimeMillis'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudApigeeV1ApiCategory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
          property :site_id, as: 'siteId'
          property :update_time, :numeric_string => true, as: 'updateTime'
        end
      end
      
      class GoogleCloudApigeeV1ApiCategoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, as: 'data', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategory, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategory::Representation
      
          property :error_code, as: 'errorCode'
          property :message, as: 'message'
          property :request_id, as: 'requestId'
          property :status, as: 'status'
        end
      end
      
      class GoogleCloudApigeeV1ApiDebugSession
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_proxy_revision_id, as: 'apiProxyRevisionId'
          property :create_time, as: 'createTime'
          property :environment_id, as: 'environmentId'
          property :id, as: 'id'
        end
      end
      
      class GoogleCloudApigeeV1ApiDoc
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :anon_allowed, as: 'anonAllowed'
          property :api_product_name, as: 'apiProductName'
          collection :category_ids, as: 'categoryIds'
          property :description, as: 'description'
          property :edge_api_product_name, as: 'edgeAPIProductName'
          property :graphql_endpoint_url, as: 'graphqlEndpointUrl'
          property :graphql_schema, as: 'graphqlSchema'
          property :graphql_schema_display_name, as: 'graphqlSchemaDisplayName'
          property :id, :numeric_string => true, as: 'id'
          property :image_url, as: 'imageUrl'
          property :modified, :numeric_string => true, as: 'modified'
          property :published, as: 'published'
          property :require_callback_url, as: 'requireCallbackUrl'
          property :site_id, as: 'siteId'
          property :spec_id, as: 'specId'
          property :title, as: 'title'
          property :visibility, as: 'visibility'
        end
      end
      
      class GoogleCloudApigeeV1ApiDocDocumentation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :graphql_documentation, as: 'graphqlDocumentation', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1GraphqlDocumentation, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1GraphqlDocumentation::Representation
      
          property :oas_documentation, as: 'oasDocumentation', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1OasDocumentation, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1OasDocumentation::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ApiDocDocumentationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, as: 'data', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiDocDocumentation, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiDocDocumentation::Representation
      
          property :error_code, as: 'errorCode'
          property :message, as: 'message'
          property :request_id, as: 'requestId'
          property :status, as: 'status'
        end
      end
      
      class GoogleCloudApigeeV1ApiDocResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, as: 'data', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiDoc, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiDoc::Representation
      
          property :error_code, as: 'errorCode'
          property :message, as: 'message'
          property :request_id, as: 'requestId'
          property :status, as: 'status'
        end
      end
      
      class GoogleCloudApigeeV1ApiProduct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :api_resources, as: 'apiResources'
          property :approval_type, as: 'approvalType'
          collection :attributes, as: 'attributes', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
      
          property :created_at, :numeric_string => true, as: 'createdAt'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :environments, as: 'environments'
          property :graphql_operation_group, as: 'graphqlOperationGroup', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1GraphQlOperationGroup, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1GraphQlOperationGroup::Representation
      
          property :grpc_operation_group, as: 'grpcOperationGroup', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1GrpcOperationGroup, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1GrpcOperationGroup::Representation
      
          property :last_modified_at, :numeric_string => true, as: 'lastModifiedAt'
          property :name, as: 'name'
          property :operation_group, as: 'operationGroup', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1OperationGroup, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1OperationGroup::Representation
      
          collection :proxies, as: 'proxies'
          property :quota, as: 'quota'
          property :quota_counter_scope, as: 'quotaCounterScope'
          property :quota_interval, as: 'quotaInterval'
          property :quota_time_unit, as: 'quotaTimeUnit'
          collection :scopes, as: 'scopes'
          property :space, as: 'space'
        end
      end
      
      class GoogleCloudApigeeV1ApiProductRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apiproduct, as: 'apiproduct'
          property :status, as: 'status'
        end
      end
      
      class GoogleCloudApigeeV1ApiProxy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_proxy_type, as: 'apiProxyType'
          hash :labels, as: 'labels'
          property :latest_revision_id, as: 'latestRevisionId'
          property :meta_data, as: 'metaData', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1EntityMetadata, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1EntityMetadata::Representation
      
          property :name, as: 'name'
          property :read_only, as: 'readOnly'
          collection :revision, as: 'revision'
          property :space, as: 'space'
        end
      end
      
      class GoogleCloudApigeeV1ApiProxyRevision
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :archive, as: 'archive'
          collection :basepaths, as: 'basepaths'
          property :configuration_version, as: 'configurationVersion', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ConfigVersion, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ConfigVersion::Representation
      
          property :context_info, as: 'contextInfo'
          property :created_at, :numeric_string => true, as: 'createdAt'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          hash :entity_meta_data_as_properties, as: 'entityMetaDataAsProperties'
          property :has_extensible_policy, as: 'hasExtensiblePolicy'
          collection :integration_endpoints, as: 'integrationEndpoints'
          property :last_modified_at, :numeric_string => true, as: 'lastModifiedAt'
          property :name, as: 'name'
          collection :policies, as: 'policies'
          collection :proxies, as: 'proxies'
          collection :proxy_endpoints, as: 'proxyEndpoints'
          property :resource_files, as: 'resourceFiles', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFiles, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFiles::Representation
      
          collection :resources, as: 'resources'
          property :revision, as: 'revision'
          collection :shared_flows, as: 'sharedFlows'
          property :spec, as: 'spec'
          collection :target_endpoints, as: 'targetEndpoints'
          collection :target_servers, as: 'targetServers'
          collection :targets, as: 'targets'
          collection :teams, as: 'teams'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudApigeeV1ApiSecurityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :expires_at, :numeric_string => true, as: 'expiresAt'
        end
      end
      
      class GoogleCloudApigeeV1ApiSecurityRuntimeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :location, as: 'location'
          property :name, as: 'name'
          property :revision_id, :numeric_string => true, as: 'revisionId'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudApigeeV1App
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :api_products, as: 'apiProducts', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProductRef, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProductRef::Representation
      
          property :app_group, as: 'appGroup'
          property :app_id, as: 'appId'
          collection :attributes, as: 'attributes', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
      
          property :callback_url, as: 'callbackUrl'
          property :company_name, as: 'companyName'
          property :created_at, :numeric_string => true, as: 'createdAt'
          collection :credentials, as: 'credentials', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Credential, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Credential::Representation
      
          property :developer_email, as: 'developerEmail'
          property :developer_id, as: 'developerId'
          property :key_expires_in, :numeric_string => true, as: 'keyExpiresIn'
          property :last_modified_at, :numeric_string => true, as: 'lastModifiedAt'
          property :name, as: 'name'
          collection :scopes, as: 'scopes'
          property :status, as: 'status'
        end
      end
      
      class GoogleCloudApigeeV1AppGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_group_id, as: 'appGroupId'
          collection :attributes, as: 'attributes', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
      
          property :channel_id, as: 'channelId'
          property :channel_uri, as: 'channelUri'
          property :created_at, :numeric_string => true, as: 'createdAt'
          property :display_name, as: 'displayName'
          property :last_modified_at, :numeric_string => true, as: 'lastModifiedAt'
          property :name, as: 'name'
          property :organization, as: 'organization'
          property :status, as: 'status'
        end
      end
      
      class GoogleCloudApigeeV1AppGroupApp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :api_products, as: 'apiProducts'
          property :app_group, as: 'appGroup'
          property :app_id, as: 'appId'
          collection :attributes, as: 'attributes', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
      
          property :callback_url, as: 'callbackUrl'
          property :created_at, :numeric_string => true, as: 'createdAt'
          collection :credentials, as: 'credentials', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Credential, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Credential::Representation
      
          property :key_expires_in, :numeric_string => true, as: 'keyExpiresIn'
          property :last_modified_at, :numeric_string => true, as: 'lastModifiedAt'
          property :name, as: 'name'
          collection :scopes, as: 'scopes'
          property :status, as: 'status'
        end
      end
      
      class GoogleCloudApigeeV1AppGroupAppKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :api_products, as: 'apiProducts', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProductAssociation, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProductAssociation::Representation
      
          collection :attributes, as: 'attributes', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
      
          property :consumer_key, as: 'consumerKey'
          property :consumer_secret, as: 'consumerSecret'
          property :expires_at, :numeric_string => true, as: 'expiresAt'
          property :expires_in_seconds, :numeric_string => true, as: 'expiresInSeconds'
          property :issued_at, :numeric_string => true, as: 'issuedAt'
          collection :scopes, as: 'scopes'
          property :status, as: 'status'
        end
      end
      
      class GoogleCloudApigeeV1ArchiveDeployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :created_at, :numeric_string => true, as: 'createdAt'
          property :gcs_uri, as: 'gcsUri'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :operation, as: 'operation'
          property :updated_at, :numeric_string => true, as: 'updatedAt'
        end
      end
      
      class GoogleCloudApigeeV1AsyncQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :created, as: 'created'
          property :envgroup_hostname, as: 'envgroupHostname'
          property :error, as: 'error'
          property :execution_time, as: 'executionTime'
          property :name, as: 'name'
          property :query_params, as: 'queryParams', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryMetadata, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryMetadata::Representation
      
          property :report_definition_id, as: 'reportDefinitionId'
          property :result, as: 'result', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQueryResult, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQueryResult::Representation
      
          property :result_file_size, as: 'resultFileSize'
          property :result_rows, :numeric_string => true, as: 'resultRows'
          property :self, as: 'self'
          property :state, as: 'state'
          property :updated, as: 'updated'
        end
      end
      
      class GoogleCloudApigeeV1AsyncQueryResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expires, as: 'expires'
          property :self, as: 'self'
        end
      end
      
      class GoogleCloudApigeeV1AsyncQueryResultView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :error, as: 'error'
          property :metadata, as: 'metadata', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryMetadata, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryMetadata::Representation
      
          collection :rows, as: 'rows'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudApigeeV1Attribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudApigeeV1Attributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attribute, as: 'attribute', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include, as: 'include', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestResourceArray, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestResourceArray::Representation
      
          property :include_all_resources, as: 'includeAllResources', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestIncludeAll, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestIncludeAll::Representation
      
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :profile, as: 'profile'
          property :scope, as: 'scope'
        end
      end
      
      class GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestIncludeAll
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestResourceArray
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resources, as: 'resources', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestResourceArrayResource, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestResourceArrayResource::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestResourceArrayResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assessment_time, as: 'assessmentTime'
          property :next_page_token, as: 'nextPageToken'
          collection :security_assessment_results, as: 'securityAssessmentResults', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAssessmentResult, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAssessmentResult::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1BatchUpdateSecurityIncidentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1UpdateSecurityIncidentRequest, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1UpdateSecurityIncidentRequest::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1BatchUpdateSecurityIncidentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :security_incidents, as: 'securityIncidents', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityIncident, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityIncident::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1CanaryEvaluation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control, as: 'control'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :metric_labels, as: 'metricLabels', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1CanaryEvaluationMetricLabels, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1CanaryEvaluationMetricLabels::Representation
      
          property :name, as: 'name'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :treatment, as: 'treatment'
          property :verdict, as: 'verdict'
        end
      end
      
      class GoogleCloudApigeeV1CanaryEvaluationMetricLabels
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :env, as: 'env'
          property :instance_id, as: 'instance_id'
          property :location, as: 'location'
        end
      end
      
      class GoogleCloudApigeeV1CertInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_constraints, as: 'basicConstraints'
          property :expiry_date, :numeric_string => true, as: 'expiryDate'
          property :is_valid, as: 'isValid'
          property :issuer, as: 'issuer'
          property :public_key, as: 'publicKey'
          property :serial_number, as: 'serialNumber'
          property :sig_alg_name, as: 'sigAlgName'
          property :subject, as: 'subject'
          collection :subject_alternative_names, as: 'subjectAlternativeNames'
          property :valid_from, :numeric_string => true, as: 'validFrom'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudApigeeV1Certificate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cert_info, as: 'certInfo', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1CertInfo, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1CertInfo::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1CommonNameConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :match_wild_cards, as: 'matchWildCards'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudApigeeV1ComputeEnvironmentScoresRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :filters, as: 'filters', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ComputeEnvironmentScoresRequestFilter, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ComputeEnvironmentScoresRequestFilter::Representation
      
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :time_range, as: 'timeRange', class: Google::Apis::ApigeeV1::GoogleTypeInterval, decorator: Google::Apis::ApigeeV1::GoogleTypeInterval::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ComputeEnvironmentScoresRequestFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score_path, as: 'scorePath'
        end
      end
      
      class GoogleCloudApigeeV1ComputeEnvironmentScoresResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :scores, as: 'scores', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Score, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Score::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ConfigVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :major_version, as: 'majorVersion'
          property :minor_version, as: 'minorVersion'
        end
      end
      
      class GoogleCloudApigeeV1ConnectorsPlatformConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :expires_at, :numeric_string => true, as: 'expiresAt'
        end
      end
      
      class GoogleCloudApigeeV1ControlPlaneAccess
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :analytics_publisher_identities, as: 'analyticsPublisherIdentities'
          property :name, as: 'name'
          collection :synchronizer_identities, as: 'synchronizerIdentities'
        end
      end
      
      class GoogleCloudApigeeV1Credential
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :api_products, as: 'apiProducts', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProductRef, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProductRef::Representation
      
          collection :attributes, as: 'attributes', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
      
          property :consumer_key, as: 'consumerKey'
          property :consumer_secret, as: 'consumerSecret'
          property :expires_at, :numeric_string => true, as: 'expiresAt'
          property :issued_at, :numeric_string => true, as: 'issuedAt'
          collection :scopes, as: 'scopes'
          property :status, as: 'status'
        end
      end
      
      class GoogleCloudApigeeV1CreditDeveloperBalanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :transaction_amount, as: 'transactionAmount', class: Google::Apis::ApigeeV1::GoogleTypeMoney, decorator: Google::Apis::ApigeeV1::GoogleTypeMoney::Representation
      
          property :transaction_id, as: 'transactionId'
        end
      end
      
      class GoogleCloudApigeeV1CustomReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chart_type, as: 'chartType'
          collection :comments, as: 'comments'
          property :created_at, :numeric_string => true, as: 'createdAt'
          collection :dimensions, as: 'dimensions'
          property :display_name, as: 'displayName'
          property :environment, as: 'environment'
          property :filter, as: 'filter'
          property :from_time, as: 'fromTime'
          property :last_modified_at, :numeric_string => true, as: 'lastModifiedAt'
          property :last_viewed_at, :numeric_string => true, as: 'lastViewedAt'
          property :limit, as: 'limit'
          collection :metrics, as: 'metrics', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReportMetric, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReportMetric::Representation
      
          property :name, as: 'name'
          property :offset, as: 'offset'
          property :organization, as: 'organization'
          collection :properties, as: 'properties', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ReportProperty, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ReportProperty::Representation
      
          collection :sort_by_cols, as: 'sortByCols'
          property :sort_order, as: 'sortOrder'
          collection :tags, as: 'tags'
          property :time_unit, as: 'timeUnit'
          property :to_time, as: 'toTime'
          property :topk, as: 'topk'
        end
      end
      
      class GoogleCloudApigeeV1CustomReportMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function, as: 'function'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudApigeeV1DataCollector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :created_at, :numeric_string => true, as: 'createdAt'
          property :description, as: 'description'
          property :last_modified_at, :numeric_string => true, as: 'lastModifiedAt'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudApigeeV1DataCollectorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudApigeeV1Datastore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, :numeric_string => true, as: 'createTime'
          property :datastore_config, as: 'datastoreConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DatastoreConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DatastoreConfig::Representation
      
          property :display_name, as: 'displayName'
          property :last_update_time, :numeric_string => true, as: 'lastUpdateTime'
          property :org, as: 'org'
          property :self, as: 'self'
          property :target_type, as: 'targetType'
        end
      end
      
      class GoogleCloudApigeeV1DatastoreConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_name, as: 'bucketName'
          property :dataset_name, as: 'datasetName'
          property :path, as: 'path'
          property :project_id, as: 'projectId'
          property :table_prefix, as: 'tablePrefix'
        end
      end
      
      class GoogleCloudApigeeV1DateRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, as: 'end'
          property :start, as: 'start'
        end
      end
      
      class GoogleCloudApigeeV1DebugMask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fault_json_paths, as: 'faultJSONPaths'
          collection :fault_x_paths, as: 'faultXPaths'
          property :name, as: 'name'
          hash :namespaces, as: 'namespaces'
          collection :request_json_paths, as: 'requestJSONPaths'
          collection :request_x_paths, as: 'requestXPaths'
          collection :response_json_paths, as: 'responseJSONPaths'
          collection :response_x_paths, as: 'responseXPaths'
          collection :variables, as: 'variables'
        end
      end
      
      class GoogleCloudApigeeV1DebugSession
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
          property :create_time, as: 'createTime'
          property :filter, as: 'filter'
          property :name, as: 'name'
          property :timeout, :numeric_string => true, as: 'timeout'
          property :tracesize, as: 'tracesize'
          property :validity, as: 'validity'
        end
      end
      
      class GoogleCloudApigeeV1DebugSessionTransaction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :completed, as: 'completed'
          collection :point, as: 'point', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Point, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Point::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1DeleteCustomReportResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
        end
      end
      
      class GoogleCloudApigeeV1DeleteResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_code, as: 'errorCode'
          property :gcp_resource, as: 'gcpResource'
          property :message, as: 'message'
          property :request_id, as: 'requestId'
          property :status, as: 'status'
        end
      end
      
      class GoogleCloudApigeeV1Deployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_proxy, as: 'apiProxy'
          property :deploy_start_time, :numeric_string => true, as: 'deployStartTime'
          property :environment, as: 'environment'
          collection :errors, as: 'errors', class: Google::Apis::ApigeeV1::GoogleRpcStatus, decorator: Google::Apis::ApigeeV1::GoogleRpcStatus::Representation
      
          collection :instances, as: 'instances', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1InstanceDeploymentStatus, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1InstanceDeploymentStatus::Representation
      
          collection :pods, as: 'pods', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1PodStatus, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1PodStatus::Representation
      
          property :proxy_deployment_type, as: 'proxyDeploymentType'
          property :revision, as: 'revision'
          collection :route_conflicts, as: 'routeConflicts', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict::Representation
      
          property :service_account, as: 'serviceAccount'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudApigeeV1DeploymentChangeReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :routing_changes, as: 'routingChanges', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReportRoutingChange, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReportRoutingChange::Representation
      
          collection :routing_conflicts, as: 'routingConflicts', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict::Representation
      
          property :validation_errors, as: 'validationErrors', class: Google::Apis::ApigeeV1::GoogleRpcPreconditionFailure, decorator: Google::Apis::ApigeeV1::GoogleRpcPreconditionFailure::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1DeploymentChangeReportRoutingChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :environment_group, as: 'environmentGroup'
          property :from_deployment, as: 'fromDeployment', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment::Representation
      
          property :should_sequence_rollout, as: 'shouldSequenceRollout'
          property :to_deployment, as: 'toDeployment', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conflicting_deployment, as: 'conflictingDeployment', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment::Representation
      
          property :description, as: 'description'
          property :environment_group, as: 'environmentGroup'
        end
      end
      
      class GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_proxy, as: 'apiProxy'
          property :basepath, as: 'basepath'
          property :environment, as: 'environment'
          property :revision, as: 'revision'
        end
      end
      
      class GoogleCloudApigeeV1DeploymentConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          property :base_path, as: 'basePath'
          collection :deployment_groups, as: 'deploymentGroups'
          hash :endpoints, as: 'endpoints'
          property :location, as: 'location'
          property :name, as: 'name'
          property :proxy_uid, as: 'proxyUid'
          property :service_account, as: 'serviceAccount'
          property :uid, as: 'uid'
        end
      end
      
      class GoogleCloudApigeeV1DeploymentGroupConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment_group_type, as: 'deploymentGroupType'
          property :name, as: 'name'
          property :revision_id, :numeric_string => true, as: 'revisionId'
          property :uid, as: 'uid'
        end
      end
      
      class GoogleCloudApigeeV1Developer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_type, as: 'accessType'
          property :app_family, as: 'appFamily'
          collection :apps, as: 'apps'
          collection :attributes, as: 'attributes', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
      
          collection :companies, as: 'companies'
          property :created_at, :numeric_string => true, as: 'createdAt'
          property :developer_id, as: 'developerId'
          property :email, as: 'email'
          property :first_name, as: 'firstName'
          property :last_modified_at, :numeric_string => true, as: 'lastModifiedAt'
          property :last_name, as: 'lastName'
          property :organization_name, as: 'organizationName'
          property :status, as: 'status'
          property :user_name, as: 'userName'
        end
      end
      
      class GoogleCloudApigeeV1DeveloperApp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :api_products, as: 'apiProducts'
          property :app_family, as: 'appFamily'
          property :app_id, as: 'appId'
          collection :attributes, as: 'attributes', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
      
          property :callback_url, as: 'callbackUrl'
          property :created_at, :numeric_string => true, as: 'createdAt'
          collection :credentials, as: 'credentials', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Credential, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Credential::Representation
      
          property :developer_id, as: 'developerId'
          property :key_expires_in, :numeric_string => true, as: 'keyExpiresIn'
          property :last_modified_at, :numeric_string => true, as: 'lastModifiedAt'
          property :name, as: 'name'
          collection :scopes, as: 'scopes'
          property :status, as: 'status'
        end
      end
      
      class GoogleCloudApigeeV1DeveloperAppKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :api_products, as: 'apiProducts'
          collection :attributes, as: 'attributes', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
      
          property :consumer_key, as: 'consumerKey'
          property :consumer_secret, as: 'consumerSecret'
          property :expires_at, :numeric_string => true, as: 'expiresAt'
          property :expires_in_seconds, :numeric_string => true, as: 'expiresInSeconds'
          property :issued_at, :numeric_string => true, as: 'issuedAt'
          collection :scopes, as: 'scopes'
          property :status, as: 'status'
        end
      end
      
      class GoogleCloudApigeeV1DeveloperBalance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :wallets, as: 'wallets', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperBalanceWallet, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperBalanceWallet::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1DeveloperBalanceWallet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :balance, as: 'balance', class: Google::Apis::ApigeeV1::GoogleTypeMoney, decorator: Google::Apis::ApigeeV1::GoogleTypeMoney::Representation
      
          property :last_credit_time, :numeric_string => true, as: 'lastCreditTime'
        end
      end
      
      class GoogleCloudApigeeV1DeveloperMonetizationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing_type, as: 'billingType'
        end
      end
      
      class GoogleCloudApigeeV1DeveloperSubscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apiproduct, as: 'apiproduct'
          property :created_at, :numeric_string => true, as: 'createdAt'
          property :end_time, :numeric_string => true, as: 'endTime'
          property :last_modified_at, :numeric_string => true, as: 'lastModifiedAt'
          property :name, as: 'name'
          property :start_time, :numeric_string => true, as: 'startTime'
        end
      end
      
      class GoogleCloudApigeeV1DimensionMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :individual_names, as: 'individualNames'
          collection :metrics, as: 'metrics', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Metric, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Metric::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudApigeeV1DisableSecurityActionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudApigeeV1DnsZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :domain, as: 'domain'
          property :name, as: 'name'
          property :peering_config, as: 'peeringConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DnsZonePeeringConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DnsZonePeeringConfig::Representation
      
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudApigeeV1DnsZonePeeringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_network_id, as: 'targetNetworkId'
          property :target_project_id, as: 'targetProjectId'
        end
      end
      
      class GoogleCloudApigeeV1DocumentationFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contents, :base64 => true, as: 'contents'
          property :display_name, as: 'displayName'
        end
      end
      
      class GoogleCloudApigeeV1EnableSecurityActionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudApigeeV1EndpointAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_state, as: 'connectionState'
          property :host, as: 'host'
          property :location, as: 'location'
          property :name, as: 'name'
          property :service_attachment, as: 'serviceAttachment'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudApigeeV1EndpointChainingRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment_group, as: 'deploymentGroup'
          collection :proxy_ids, as: 'proxyIds'
        end
      end
      
      class GoogleCloudApigeeV1EntityMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :created_at, :numeric_string => true, as: 'createdAt'
          property :last_modified_at, :numeric_string => true, as: 'lastModifiedAt'
          property :sub_type, as: 'subType'
        end
      end
      
      class GoogleCloudApigeeV1Environment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_proxy_type, as: 'apiProxyType'
          property :client_ip_resolution_config, as: 'clientIpResolutionConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentClientIpResolutionConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentClientIpResolutionConfig::Representation
      
          property :created_at, :numeric_string => true, as: 'createdAt'
          property :deployment_type, as: 'deploymentType'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :forward_proxy_uri, as: 'forwardProxyUri'
          property :has_attached_flow_hooks, as: 'hasAttachedFlowHooks'
          property :last_modified_at, :numeric_string => true, as: 'lastModifiedAt'
          property :name, as: 'name'
          property :node_config, as: 'nodeConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1NodeConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1NodeConfig::Representation
      
          property :properties, as: 'properties', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Properties, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Properties::Representation
      
          property :state, as: 'state'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudApigeeV1EnvironmentClientIpResolutionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header_index_algorithm, as: 'headerIndexAlgorithm', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentClientIpResolutionConfigHeaderIndexAlgorithm, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentClientIpResolutionConfigHeaderIndexAlgorithm::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1EnvironmentClientIpResolutionConfigHeaderIndexAlgorithm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_header_index, as: 'ipHeaderIndex'
          property :ip_header_name, as: 'ipHeaderName'
        end
      end
      
      class GoogleCloudApigeeV1EnvironmentConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :addons_config, as: 'addonsConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeAddonsConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeAddonsConfig::Representation
      
          property :arc_config_location, as: 'arcConfigLocation'
          property :client_ip_resolution_config, as: 'clientIpResolutionConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentConfigClientIpResolutionConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentConfigClientIpResolutionConfig::Representation
      
          property :create_time, as: 'createTime'
          collection :data_collectors, as: 'dataCollectors', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DataCollectorConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DataCollectorConfig::Representation
      
          property :debug_mask, as: 'debugMask', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugMask, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugMask::Representation
      
          collection :deployment_groups, as: 'deploymentGroups', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentGroupConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentGroupConfig::Representation
      
          collection :deployments, as: 'deployments', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentConfig::Representation
      
          property :env_scoped_revision_id, :numeric_string => true, as: 'envScopedRevisionId'
          hash :feature_flags, as: 'featureFlags'
          collection :flowhooks, as: 'flowhooks', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1FlowHookConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1FlowHookConfig::Representation
      
          property :forward_proxy_uri, as: 'forwardProxyUri'
          property :gateway_config_location, as: 'gatewayConfigLocation'
          collection :keystores, as: 'keystores', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeystoreConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeystoreConfig::Representation
      
          property :name, as: 'name'
          property :provider, as: 'provider'
          property :pubsub_topic, as: 'pubsubTopic'
          collection :resource_references, as: 'resourceReferences', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ReferenceConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ReferenceConfig::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceConfig::Representation
      
          property :revision_id, :numeric_string => true, as: 'revisionId'
          property :sequence_number, :numeric_string => true, as: 'sequenceNumber'
          collection :targets, as: 'targets', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServerConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServerConfig::Representation
      
          property :trace_config, as: 'traceConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeTraceConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeTraceConfig::Representation
      
          property :uid, as: 'uid'
        end
      end
      
      class GoogleCloudApigeeV1EnvironmentConfigClientIpResolutionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header_index_algorithm, as: 'headerIndexAlgorithm', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentConfigClientIpResolutionConfigHeaderIndexAlgorithm, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentConfigClientIpResolutionConfigHeaderIndexAlgorithm::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1EnvironmentConfigClientIpResolutionConfigHeaderIndexAlgorithm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_header_index, as: 'ipHeaderIndex'
          property :ip_header_name, as: 'ipHeaderName'
        end
      end
      
      class GoogleCloudApigeeV1EnvironmentGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :created_at, :numeric_string => true, as: 'createdAt'
          collection :hostnames, as: 'hostnames'
          property :last_modified_at, :numeric_string => true, as: 'lastModifiedAt'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudApigeeV1EnvironmentGroupAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :created_at, :numeric_string => true, as: 'createdAt'
          property :environment, as: 'environment'
          property :environment_group_id, as: 'environmentGroupId'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudApigeeV1EnvironmentGroupConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :endpoint_chaining_rules, as: 'endpointChainingRules', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1EndpointChainingRule, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1EndpointChainingRule::Representation
      
          collection :hostnames, as: 'hostnames'
          property :location, as: 'location'
          property :name, as: 'name'
          property :revision_id, :numeric_string => true, as: 'revisionId'
          collection :routing_rules, as: 'routingRules', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RoutingRule, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RoutingRule::Representation
      
          property :uid, as: 'uid'
        end
      end
      
      class GoogleCloudApigeeV1ExpireDeveloperSubscriptionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudApigeeV1Export
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :created, as: 'created'
          property :datastore_name, as: 'datastoreName'
          property :description, as: 'description'
          property :error, as: 'error'
          property :execution_time, as: 'executionTime'
          property :name, as: 'name'
          property :self, as: 'self'
          property :state, as: 'state'
          property :updated, as: 'updated'
        end
      end
      
      class GoogleCloudApigeeV1ExportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :csv_delimiter, as: 'csvDelimiter'
          property :datastore_name, as: 'datastoreName'
          property :date_range, as: 'dateRange', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DateRange, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DateRange::Representation
      
          property :description, as: 'description'
          property :name, as: 'name'
          property :output_format, as: 'outputFormat'
        end
      end
      
      class GoogleCloudApigeeV1FlowHook
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :continue_on_error, as: 'continueOnError'
          property :description, as: 'description'
          property :flow_hook_point, as: 'flowHookPoint'
          property :shared_flow, as: 'sharedFlow'
        end
      end
      
      class GoogleCloudApigeeV1FlowHookConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :continue_on_error, as: 'continueOnError'
          property :name, as: 'name'
          property :shared_flow_name, as: 'sharedFlowName'
        end
      end
      
      class GoogleCloudApigeeV1GenerateDownloadUrlRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudApigeeV1GenerateDownloadUrlResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :download_uri, as: 'downloadUri'
        end
      end
      
      class GoogleCloudApigeeV1GenerateUploadUrlRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudApigeeV1GenerateUploadUrlResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :upload_uri, as: 'uploadUri'
        end
      end
      
      class GoogleCloudApigeeV1GetAsyncQueryResultUrlResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :urls, as: 'urls', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1GetAsyncQueryResultUrlResponseUrlInfo, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1GetAsyncQueryResultUrlResponseUrlInfo::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1GetAsyncQueryResultUrlResponseUrlInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :md5, as: 'md5'
          property :size_bytes, :numeric_string => true, as: 'sizeBytes'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudApigeeV1GetSyncAuthorizationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudApigeeV1GraphQlOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation, as: 'operation'
          collection :operation_types, as: 'operationTypes'
        end
      end
      
      class GoogleCloudApigeeV1GraphQlOperationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_source, as: 'apiSource'
          collection :attributes, as: 'attributes', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
      
          collection :operations, as: 'operations', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1GraphQlOperation, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1GraphQlOperation::Representation
      
          property :quota, as: 'quota', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Quota, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Quota::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1GraphQlOperationGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_config_type, as: 'operationConfigType'
          collection :operation_configs, as: 'operationConfigs', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1GraphQlOperationConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1GraphQlOperationConfig::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1GraphqlDocumentation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint_uri, as: 'endpointUri'
          property :schema, as: 'schema', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DocumentationFile, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DocumentationFile::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1GrpcOperationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_source, as: 'apiSource'
          collection :attributes, as: 'attributes', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
      
          collection :methods_prop, as: 'methods'
          property :quota, as: 'quota', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Quota, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Quota::Representation
      
          property :service, as: 'service'
        end
      end
      
      class GoogleCloudApigeeV1GrpcOperationGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :operation_configs, as: 'operationConfigs', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1GrpcOperationConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1GrpcOperationConfig::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1IngressConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :environment_groups, as: 'environmentGroups', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroupConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroupConfig::Representation
      
          property :name, as: 'name'
          property :revision_create_time, as: 'revisionCreateTime'
          property :revision_id, :numeric_string => true, as: 'revisionId'
          property :uid, as: 'uid'
        end
      end
      
      class GoogleCloudApigeeV1Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_logging_config, as: 'accessLoggingConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AccessLoggingConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AccessLoggingConfig::Representation
      
          collection :consumer_accept_list, as: 'consumerAcceptList'
          property :created_at, :numeric_string => true, as: 'createdAt'
          property :description, as: 'description'
          property :disk_encryption_key_name, as: 'diskEncryptionKeyName'
          property :display_name, as: 'displayName'
          property :host, as: 'host'
          property :ip_range, as: 'ipRange'
          property :last_modified_at, :numeric_string => true, as: 'lastModifiedAt'
          property :location, as: 'location'
          property :name, as: 'name'
          property :peering_cidr_range, as: 'peeringCidrRange'
          property :port, as: 'port'
          property :runtime_version, as: 'runtimeVersion'
          property :service_attachment, as: 'serviceAttachment'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudApigeeV1InstanceAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :created_at, :numeric_string => true, as: 'createdAt'
          property :environment, as: 'environment'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudApigeeV1InstanceDeploymentStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deployed_revisions, as: 'deployedRevisions', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision::Representation
      
          collection :deployed_routes, as: 'deployedRoutes', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute::Representation
      
          property :instance, as: 'instance'
        end
      end
      
      class GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :percentage, as: 'percentage'
          property :revision, as: 'revision'
        end
      end
      
      class GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basepath, as: 'basepath'
          property :envgroup, as: 'envgroup'
          property :environment, as: 'environment'
          property :percentage, as: 'percentage'
        end
      end
      
      class GoogleCloudApigeeV1IntegrationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class GoogleCloudApigeeV1KeyAliasReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alias_id, as: 'aliasId'
          property :reference, as: 'reference'
        end
      end
      
      class GoogleCloudApigeeV1KeyValueEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudApigeeV1KeyValueMap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encrypted, as: 'encrypted'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudApigeeV1Keystore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aliases, as: 'aliases'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudApigeeV1KeystoreConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aliases, as: 'aliases', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AliasRevisionConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AliasRevisionConfig::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudApigeeV1ListApiCategoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data, as: 'data', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategory, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategory::Representation
      
          property :error_code, as: 'errorCode'
          property :message, as: 'message'
          property :request_id, as: 'requestId'
          property :status, as: 'status'
        end
      end
      
      class GoogleCloudApigeeV1ListApiDebugSessionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sessions, as: 'sessions', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiDebugSession, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiDebugSession::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListApiDocsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data, as: 'data', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiDoc, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiDoc::Representation
      
          property :error_code, as: 'errorCode'
          property :message, as: 'message'
          property :next_page_token, as: 'nextPageToken'
          property :request_id, as: 'requestId'
          property :status, as: 'status'
        end
      end
      
      class GoogleCloudApigeeV1ListApiProductsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :api_product, as: 'apiProduct', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListApiProxiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :proxies, as: 'proxies', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxy, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxy::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListAppGroupAppsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app_group_apps, as: 'appGroupApps', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupApp, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupApp::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudApigeeV1ListAppGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app_groups, as: 'appGroups', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroup, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroup::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleCloudApigeeV1ListAppsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app, as: 'app', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1App, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1App::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleCloudApigeeV1ListArchiveDeploymentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :archive_deployments, as: 'archiveDeployments', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ArchiveDeployment, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ArchiveDeployment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudApigeeV1ListAsyncQueriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :queries, as: 'queries', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQuery, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQuery::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListCustomReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :qualifier, as: 'qualifier', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReport, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReport::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListDataCollectorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_collectors, as: 'dataCollectors', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DataCollector, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DataCollector::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudApigeeV1ListDatastoresResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :datastores, as: 'datastores', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Datastore, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Datastore::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListDebugSessionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sessions, as: 'sessions', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Session, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Session::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListDeploymentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deployments, as: 'deployments', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListDeveloperAppsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app, as: 'app', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListDeveloperSubscriptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :developer_subscriptions, as: 'developerSubscriptions', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperSubscription, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperSubscription::Representation
      
          property :next_start_key, as: 'nextStartKey'
        end
      end
      
      class GoogleCloudApigeeV1ListDnsZonesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dns_zones, as: 'dnsZones', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DnsZone, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DnsZone::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudApigeeV1ListEndpointAttachmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :endpoint_attachments, as: 'endpointAttachments', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1EndpointAttachment, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1EndpointAttachment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :environment_group_attachments, as: 'environmentGroupAttachments', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroupAttachment, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroupAttachment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudApigeeV1ListEnvironmentGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :environment_groups, as: 'environmentGroups', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroup, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroup::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudApigeeV1ListEnvironmentResourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resource_file, as: 'resourceFile', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFile, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFile::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListExportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exports, as: 'exports', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Export, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Export::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListHybridIssuersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :issuers, as: 'issuers', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ServiceIssuersMapping, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ServiceIssuersMapping::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListInstanceAttachmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attachments, as: 'attachments', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1InstanceAttachment, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1InstanceAttachment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudApigeeV1ListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Instance, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Instance::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudApigeeV1ListKeyValueEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :key_value_entries, as: 'keyValueEntries', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudApigeeV1ListNatAddressesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :nat_addresses, as: 'natAddresses', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1NatAddress, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1NatAddress::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudApigeeV1ListOfDevelopersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :developer, as: 'developer', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListOrganizationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :organizations, as: 'organizations', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1OrganizationProjectMapping, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1OrganizationProjectMapping::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListRatePlansResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_start_key, as: 'nextStartKey'
          collection :rate_plans, as: 'ratePlans', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RatePlan, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RatePlan::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListSecurityActionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :security_actions, as: 'securityActions', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAction, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAction::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListSecurityIncidentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :security_incidents, as: 'securityIncidents', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityIncident, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityIncident::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListSecurityMonitoringConditionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :security_monitoring_conditions, as: 'securityMonitoringConditions', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityMonitoringCondition, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityMonitoringCondition::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListSecurityProfileRevisionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :security_profiles, as: 'securityProfiles', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfile, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfile::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListSecurityProfilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :security_profiles, as: 'securityProfiles', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfile, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfile::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListSecurityProfilesV2Response
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :security_profiles_v2, as: 'securityProfilesV2', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfileV2, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfileV2::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListSecurityReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :security_reports, as: 'securityReports', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReport, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReport::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListSharedFlowsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :shared_flows, as: 'sharedFlows', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlow, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlow::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListSpacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :spaces, as: 'spaces', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Space, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Space::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ListTraceConfigOverridesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :trace_config_overrides, as: 'traceConfigOverrides', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfigOverride, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfigOverride::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1Metadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors'
          collection :notices, as: 'notices'
        end
      end
      
      class GoogleCloudApigeeV1Metric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudApigeeV1MetricAggregation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation, as: 'aggregation'
          property :name, as: 'name'
          property :order, as: 'order'
        end
      end
      
      class GoogleCloudApigeeV1MonetizationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class GoogleCloudApigeeV1MoveApiProductRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :space, as: 'space'
        end
      end
      
      class GoogleCloudApigeeV1MoveApiProxyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :space, as: 'space'
        end
      end
      
      class GoogleCloudApigeeV1MoveSharedFlowRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :space, as: 'space'
        end
      end
      
      class GoogleCloudApigeeV1NatAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_address, as: 'ipAddress'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudApigeeV1NodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_aggregate_node_count, :numeric_string => true, as: 'currentAggregateNodeCount'
          property :max_node_count, :numeric_string => true, as: 'maxNodeCount'
          property :min_node_count, :numeric_string => true, as: 'minNodeCount'
        end
      end
      
      class GoogleCloudApigeeV1OasDocumentation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :format, as: 'format'
          property :spec, as: 'spec', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DocumentationFile, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DocumentationFile::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :methods_prop, as: 'methods'
          property :resource, as: 'resource'
        end
      end
      
      class GoogleCloudApigeeV1OperationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_source, as: 'apiSource'
          collection :attributes, as: 'attributes', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
      
          collection :operations, as: 'operations', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Operation, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Operation::Representation
      
          property :quota, as: 'quota', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Quota, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Quota::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1OperationGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_config_type, as: 'operationConfigType'
          collection :operation_configs, as: 'operationConfigs', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1OperationConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1OperationConfig::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_type, as: 'operationType'
          property :progress, as: 'progress', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1OperationMetadataProgress, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1OperationMetadataProgress::Representation
      
          property :state, as: 'state'
          property :target_resource_name, as: 'targetResourceName'
          collection :warnings, as: 'warnings'
        end
      end
      
      class GoogleCloudApigeeV1OperationMetadataProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          hash :details, as: 'details'
          property :percent_done, as: 'percentDone'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudApigeeV1OptimizedStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response, as: 'Response', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1OptimizedStatsResponse, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1OptimizedStatsResponse::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1OptimizedStatsNode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data, as: 'data'
        end
      end
      
      class GoogleCloudApigeeV1OptimizedStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :time_unit, as: 'TimeUnit'
          property :meta_data, as: 'metaData', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Metadata, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Metadata::Representation
      
          property :result_truncated, as: 'resultTruncated'
          property :stats, as: 'stats', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1OptimizedStatsNode, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1OptimizedStatsNode::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1Organization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :addons_config, as: 'addonsConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AddonsConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AddonsConfig::Representation
      
          property :analytics_region, as: 'analyticsRegion'
          property :api_consumer_data_encryption_key_name, as: 'apiConsumerDataEncryptionKeyName'
          property :api_consumer_data_location, as: 'apiConsumerDataLocation'
          property :apigee_project_id, as: 'apigeeProjectId'
          collection :attributes, as: 'attributes'
          property :authorized_network, as: 'authorizedNetwork'
          property :billing_type, as: 'billingType'
          property :ca_certificate, :base64 => true, as: 'caCertificate'
          property :control_plane_encryption_key_name, as: 'controlPlaneEncryptionKeyName'
          property :created_at, :numeric_string => true, as: 'createdAt'
          property :customer_name, as: 'customerName'
          property :description, as: 'description'
          property :disable_vpc_peering, as: 'disableVpcPeering'
          property :display_name, as: 'displayName'
          collection :environments, as: 'environments'
          property :expires_at, :numeric_string => true, as: 'expiresAt'
          property :last_modified_at, :numeric_string => true, as: 'lastModifiedAt'
          property :name, as: 'name'
          property :network_egress_restricted, as: 'networkEgressRestricted'
          property :portal_disabled, as: 'portalDisabled'
          property :project_id, as: 'projectId'
          property :properties, as: 'properties', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Properties, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Properties::Representation
      
          property :runtime_database_encryption_key_name, as: 'runtimeDatabaseEncryptionKeyName'
          property :runtime_type, as: 'runtimeType'
          property :state, as: 'state'
          property :subscription_plan, as: 'subscriptionPlan'
          property :subscription_type, as: 'subscriptionType'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudApigeeV1OrganizationProjectMapping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          property :organization, as: 'organization'
          property :project_id, as: 'projectId'
          collection :project_ids, as: 'projectIds'
        end
      end
      
      class GoogleCloudApigeeV1PodStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_version, as: 'appVersion'
          property :deployment_status, as: 'deploymentStatus'
          property :deployment_status_time, :numeric_string => true, as: 'deploymentStatusTime'
          property :deployment_time, :numeric_string => true, as: 'deploymentTime'
          property :pod_name, as: 'podName'
          property :pod_status, as: 'podStatus'
          property :pod_status_time, :numeric_string => true, as: 'podStatusTime'
          property :status_code, as: 'statusCode'
          property :status_code_details, as: 'statusCodeDetails'
        end
      end
      
      class GoogleCloudApigeeV1Point
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :results, as: 'results', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Result, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Result::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ProfileConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfigCategory, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfigCategory::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ProfileConfigAbuse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudApigeeV1ProfileConfigAuthorization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudApigeeV1ProfileConfigCors
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudApigeeV1ProfileConfigCategory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :abuse, as: 'abuse', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfigAbuse, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfigAbuse::Representation
      
          property :authorization, as: 'authorization', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfigAuthorization, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfigAuthorization::Representation
      
          property :cors, as: 'cors', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfigCors, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfigCors::Representation
      
          property :mediation, as: 'mediation', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfigMediation, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfigMediation::Representation
      
          property :mtls, as: 'mtls', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfigMtls, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfigMtls::Representation
      
          property :threat, as: 'threat', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfigThreat, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfigThreat::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ProfileConfigMtls
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudApigeeV1ProfileConfigMediation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudApigeeV1ProfileConfigThreat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudApigeeV1Properties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :property, as: 'property', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Property, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Property::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1Property
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudApigeeV1ProvisionOrganizationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analytics_region, as: 'analyticsRegion'
          property :authorized_network, as: 'authorizedNetwork'
          property :disable_vpc_peering, as: 'disableVpcPeering'
          property :runtime_location, as: 'runtimeLocation'
        end
      end
      
      class GoogleCloudApigeeV1Query
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :csv_delimiter, as: 'csvDelimiter'
          collection :dimensions, as: 'dimensions'
          property :envgroup_hostname, as: 'envgroupHostname'
          property :filter, as: 'filter'
          property :group_by_time_unit, as: 'groupByTimeUnit'
          property :limit, as: 'limit'
          collection :metrics, as: 'metrics', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryMetric, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryMetric::Representation
      
          property :name, as: 'name'
          property :output_format, as: 'outputFormat'
          property :report_definition_id, as: 'reportDefinitionId'
          property :time_range, as: 'timeRange'
        end
      end
      
      class GoogleCloudApigeeV1QueryMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimensions, as: 'dimensions'
          property :end_timestamp, as: 'endTimestamp'
          collection :metrics, as: 'metrics'
          property :output_format, as: 'outputFormat'
          property :start_timestamp, as: 'startTimestamp'
          property :time_unit, as: 'timeUnit'
        end
      end
      
      class GoogleCloudApigeeV1QueryMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alias, as: 'alias'
          property :function, as: 'function'
          property :name, as: 'name'
          property :operator, as: 'operator'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudApigeeV1QueryTabularStatsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimensions, as: 'dimensions'
          property :filter, as: 'filter'
          collection :metrics, as: 'metrics', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1MetricAggregation, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1MetricAggregation::Representation
      
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :time_range, as: 'timeRange', class: Google::Apis::ApigeeV1::GoogleTypeInterval, decorator: Google::Apis::ApigeeV1::GoogleTypeInterval::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1QueryTabularStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns'
          property :next_page_token, as: 'nextPageToken'
          collection :values, as: 'values', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
        end
      end
      
      class GoogleCloudApigeeV1QueryTimeSeriesStatsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimensions, as: 'dimensions'
          property :filter, as: 'filter'
          collection :metrics, as: 'metrics', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1MetricAggregation, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1MetricAggregation::Representation
      
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :time_range, as: 'timeRange', class: Google::Apis::ApigeeV1::GoogleTypeInterval, decorator: Google::Apis::ApigeeV1::GoogleTypeInterval::Representation
      
          property :timestamp_order, as: 'timestampOrder'
          property :window_size, as: 'windowSize'
        end
      end
      
      class GoogleCloudApigeeV1QueryTimeSeriesStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns'
          property :next_page_token, as: 'nextPageToken'
          collection :values, as: 'values', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryTimeSeriesStatsResponseSequence, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryTimeSeriesStatsResponseSequence::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1QueryTimeSeriesStatsResponseSequence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :dimensions, as: 'dimensions'
          collection :points, as: 'points', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
        end
      end
      
      class GoogleCloudApigeeV1Quota
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interval, as: 'interval'
          property :limit, as: 'limit'
          property :time_unit, as: 'timeUnit'
        end
      end
      
      class GoogleCloudApigeeV1RatePlan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apiproduct, as: 'apiproduct'
          property :billing_period, as: 'billingPeriod'
          collection :consumption_pricing_rates, as: 'consumptionPricingRates', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RateRange, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RateRange::Representation
      
          property :consumption_pricing_type, as: 'consumptionPricingType'
          property :created_at, :numeric_string => true, as: 'createdAt'
          property :currency_code, as: 'currencyCode'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :end_time, :numeric_string => true, as: 'endTime'
          property :fixed_fee_frequency, as: 'fixedFeeFrequency'
          property :fixed_recurring_fee, as: 'fixedRecurringFee', class: Google::Apis::ApigeeV1::GoogleTypeMoney, decorator: Google::Apis::ApigeeV1::GoogleTypeMoney::Representation
      
          property :last_modified_at, :numeric_string => true, as: 'lastModifiedAt'
          property :name, as: 'name'
          property :payment_funding_model, as: 'paymentFundingModel'
          collection :revenue_share_rates, as: 'revenueShareRates', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RevenueShareRange, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RevenueShareRange::Representation
      
          property :revenue_share_type, as: 'revenueShareType'
          property :setup_fee, as: 'setupFee', class: Google::Apis::ApigeeV1::GoogleTypeMoney, decorator: Google::Apis::ApigeeV1::GoogleTypeMoney::Representation
      
          property :start_time, :numeric_string => true, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudApigeeV1RateRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, :numeric_string => true, as: 'end'
          property :fee, as: 'fee', class: Google::Apis::ApigeeV1::GoogleTypeMoney, decorator: Google::Apis::ApigeeV1::GoogleTypeMoney::Representation
      
          property :start, :numeric_string => true, as: 'start'
        end
      end
      
      class GoogleCloudApigeeV1Reference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :name, as: 'name'
          property :refers, as: 'refers'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class GoogleCloudApigeeV1ReferenceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :resource_name, as: 'resourceName'
        end
      end
      
      class GoogleCloudApigeeV1ReportInstanceStatusRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_uid, as: 'instanceUid'
          property :report_time, as: 'reportTime'
          collection :resources, as: 'resources', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceStatus, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceStatus::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ReportInstanceStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudApigeeV1ReportProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :property, as: 'property'
          collection :value, as: 'value', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ResourceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudApigeeV1ResourceFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudApigeeV1ResourceFiles
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resource_file, as: 'resourceFile', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFile, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFile::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ResourceStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource'
          collection :revisions, as: 'revisions', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RevisionStatus, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RevisionStatus::Representation
      
          property :total_replicas, as: 'totalReplicas'
          property :uid, as: 'uid'
        end
      end
      
      class GoogleCloudApigeeV1Result
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_result, as: 'ActionResult'
          collection :access_list, as: 'accessList', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Access, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Access::Representation
      
          property :content, as: 'content'
          collection :headers, as: 'headers', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Property, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Property::Representation
      
          property :properties, as: 'properties', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Properties, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Properties::Representation
      
          property :reason_phrase, as: 'reasonPhrase'
          property :status_code, as: 'statusCode'
          property :timestamp, as: 'timestamp'
          property :u_ri, as: 'uRI'
          property :verb, as: 'verb'
        end
      end
      
      class GoogleCloudApigeeV1RevenueShareRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, :numeric_string => true, as: 'end'
          property :share_percentage, as: 'sharePercentage'
          property :start, :numeric_string => true, as: 'start'
        end
      end
      
      class GoogleCloudApigeeV1RevisionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1UpdateError, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1UpdateError::Representation
      
          property :json_spec, as: 'jsonSpec'
          property :replicas, as: 'replicas'
          property :revision_id, as: 'revisionId'
        end
      end
      
      class GoogleCloudApigeeV1RoutingRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basepath, as: 'basepath'
          property :deployment_group, as: 'deploymentGroup'
          property :env_group_revision, :numeric_string => true, as: 'envGroupRevision'
          property :environment, as: 'environment'
          collection :other_targets, as: 'otherTargets'
          property :receiver, as: 'receiver'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudApigeeV1RuntimeAddonsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analytics_config, as: 'analyticsConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeAnalyticsConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeAnalyticsConfig::Representation
      
          property :api_security_config, as: 'apiSecurityConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeApiSecurityConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeApiSecurityConfig::Representation
      
          property :name, as: 'name'
          property :revision_id, as: 'revisionId'
          property :uid, as: 'uid'
        end
      end
      
      class GoogleCloudApigeeV1RuntimeAnalyticsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing_pipeline_enabled, as: 'billingPipelineEnabled'
          property :enabled, as: 'enabled'
        end
      end
      
      class GoogleCloudApigeeV1RuntimeApiSecurityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class GoogleCloudApigeeV1RuntimeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analytics_bucket, as: 'analyticsBucket'
          property :name, as: 'name'
          property :tenant_project_id, as: 'tenantProjectId'
          property :trace_bucket, as: 'traceBucket'
        end
      end
      
      class GoogleCloudApigeeV1RuntimeTraceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint, as: 'endpoint'
          property :exporter, as: 'exporter'
          property :name, as: 'name'
          collection :overrides, as: 'overrides', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeTraceConfigOverride, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeTraceConfigOverride::Representation
      
          property :revision_create_time, as: 'revisionCreateTime'
          property :revision_id, as: 'revisionId'
          property :sampling_config, as: 'samplingConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeTraceSamplingConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeTraceSamplingConfig::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1RuntimeTraceConfigOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_proxy, as: 'apiProxy'
          property :name, as: 'name'
          property :revision_create_time, as: 'revisionCreateTime'
          property :revision_id, as: 'revisionId'
          property :sampling_config, as: 'samplingConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeTraceSamplingConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeTraceSamplingConfig::Representation
      
          property :uid, as: 'uid'
        end
      end
      
      class GoogleCloudApigeeV1RuntimeTraceSamplingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sampler, as: 'sampler'
          property :sampling_rate, as: 'samplingRate'
        end
      end
      
      class GoogleCloudApigeeV1Schema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimensions, as: 'dimensions', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SchemaSchemaElement, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SchemaSchemaElement::Representation
      
          collection :meta, as: 'meta'
          collection :metrics, as: 'metrics', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SchemaSchemaElement, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SchemaSchemaElement::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1SchemaSchemaElement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :properties, as: 'properties', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SchemaSchemaProperty, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SchemaSchemaProperty::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1SchemaSchemaProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :custom, as: 'custom'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudApigeeV1Score
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :component, as: 'component', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ScoreComponent, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ScoreComponent::Representation
      
          collection :subcomponents, as: 'subcomponents', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ScoreComponent, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ScoreComponent::Representation
      
          property :time_range, as: 'timeRange', class: Google::Apis::ApigeeV1::GoogleTypeInterval, decorator: Google::Apis::ApigeeV1::GoogleTypeInterval::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1ScoreComponent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :calculate_time, as: 'calculateTime'
          property :data_capture_time, as: 'dataCaptureTime'
          collection :drilldown_paths, as: 'drilldownPaths'
          collection :recommendations, as: 'recommendations', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ScoreComponentRecommendation, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ScoreComponentRecommendation::Representation
      
          property :score, as: 'score'
          property :score_path, as: 'scorePath'
        end
      end
      
      class GoogleCloudApigeeV1ScoreComponentRecommendation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ScoreComponentRecommendationAction, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ScoreComponentRecommendationAction::Representation
      
          property :description, as: 'description'
          property :impact, as: 'impact'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudApigeeV1ScoreComponentRecommendationAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_context, as: 'actionContext', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ScoreComponentRecommendationActionActionContext, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ScoreComponentRecommendationActionActionContext::Representation
      
          property :description, as: 'description'
        end
      end
      
      class GoogleCloudApigeeV1ScoreComponentRecommendationActionActionContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :documentation_link, as: 'documentationLink'
        end
      end
      
      class GoogleCloudApigeeV1SecurityAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow, as: 'allow', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionAllow, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionAllow::Representation
      
          collection :api_proxies, as: 'apiProxies'
          property :condition_config, as: 'conditionConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionConditionConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionConditionConfig::Representation
      
          property :create_time, as: 'createTime'
          property :deny, as: 'deny', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionDeny, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionDeny::Representation
      
          property :description, as: 'description'
          property :expire_time, as: 'expireTime'
          property :flag, as: 'flag', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionFlag, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionFlag::Representation
      
          property :name, as: 'name'
          property :state, as: 'state'
          property :ttl, as: 'ttl'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudApigeeV1SecurityActionAllow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudApigeeV1SecurityActionConditionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_tokens, as: 'accessTokens'
          collection :api_keys, as: 'apiKeys'
          collection :api_products, as: 'apiProducts'
          collection :asns, as: 'asns'
          collection :bot_reasons, as: 'botReasons'
          collection :developer_apps, as: 'developerApps'
          collection :developers, as: 'developers'
          collection :http_methods, as: 'httpMethods'
          collection :ip_address_ranges, as: 'ipAddressRanges'
          collection :region_codes, as: 'regionCodes'
          collection :user_agents, as: 'userAgents'
        end
      end
      
      class GoogleCloudApigeeV1SecurityActionDeny
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_code, as: 'responseCode'
        end
      end
      
      class GoogleCloudApigeeV1SecurityActionFlag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :headers, as: 'headers', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionHttpHeader, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionHttpHeader::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1SecurityActionHttpHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudApigeeV1SecurityActionsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudApigeeV1SecurityAssessmentResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :error, as: 'error', class: Google::Apis::ApigeeV1::GoogleRpcStatus, decorator: Google::Apis::ApigeeV1::GoogleRpcStatus::Representation
      
          property :resource, as: 'resource', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAssessmentResultResource, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAssessmentResultResource::Representation
      
          property :scoring_result, as: 'scoringResult', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAssessmentResultScoringResult, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAssessmentResultScoringResult::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1SecurityAssessmentResultResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :resource_revision_id, as: 'resourceRevisionId'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudApigeeV1SecurityAssessmentResultScoringResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :assessment_recommendations, as: 'assessmentRecommendations', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendation, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendation::Representation
      
          property :data_update_time, as: 'dataUpdateTime'
          hash :failed_assessment_per_weight, as: 'failedAssessmentPerWeight'
          property :score, as: 'score'
          property :severity, as: 'severity'
        end
      end
      
      class GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          collection :recommendations, as: 'recommendations', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendationRecommendation, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendationRecommendation::Representation
      
          property :score_impact, as: 'scoreImpact'
          property :verdict, as: 'verdict'
          property :weight, as: 'weight'
        end
      end
      
      class GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendationRecommendation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :link, as: 'link', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendationRecommendationLink, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendationRecommendationLink::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1SecurityAssessmentResultScoringResultAssessmentRecommendationRecommendationLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudApigeeV1SecurityIncident
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detection_types, as: 'detectionTypes'
          property :display_name, as: 'displayName'
          property :first_detected_time, as: 'firstDetectedTime'
          property :last_detected_time, as: 'lastDetectedTime'
          property :last_observability_change_time, as: 'lastObservabilityChangeTime'
          property :name, as: 'name'
          property :observability, as: 'observability'
          property :risk_level, as: 'riskLevel'
          property :traffic_count, :numeric_string => true, as: 'trafficCount'
        end
      end
      
      class GoogleCloudApigeeV1SecurityMonitoringCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :include, as: 'include', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestResourceArray, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestResourceArray::Representation
      
          property :include_all_resources, as: 'includeAllResources', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestIncludeAll, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1BatchComputeSecurityAssessmentResultsRequestIncludeAll::Representation
      
          property :name, as: 'name'
          property :profile, as: 'profile'
          property :scope, as: 'scope'
          property :total_deployed_resources, as: 'totalDeployedResources'
          property :total_monitored_resources, as: 'totalMonitoredResources'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudApigeeV1SecurityProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :environments, as: 'environments', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfileEnvironment, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfileEnvironment::Representation
      
          property :max_score, as: 'maxScore'
          property :min_score, as: 'minScore'
          property :name, as: 'name'
          property :profile_config, as: 'profileConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProfileConfig::Representation
      
          property :revision_create_time, as: 'revisionCreateTime'
          property :revision_id, :numeric_string => true, as: 'revisionId'
          property :revision_publish_time, as: 'revisionPublishTime'
          property :revision_update_time, as: 'revisionUpdateTime'
          collection :scoring_configs, as: 'scoringConfigs', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfileScoringConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfileScoringConfig::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1SecurityProfileEnvironment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attach_time, as: 'attachTime'
          property :environment, as: 'environment'
        end
      end
      
      class GoogleCloudApigeeV1SecurityProfileEnvironmentAssociation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attach_time, as: 'attachTime'
          property :name, as: 'name'
          property :security_profile_revision_id, :numeric_string => true, as: 'securityProfileRevisionId'
        end
      end
      
      class GoogleCloudApigeeV1SecurityProfileScoringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :score_path, as: 'scorePath'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudApigeeV1SecurityProfileV2
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :google_defined, as: 'googleDefined'
          property :name, as: 'name'
          hash :profile_assessment_configs, as: 'profileAssessmentConfigs', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfileV2ProfileAssessmentConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfileV2ProfileAssessmentConfig::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudApigeeV1SecurityProfileV2ProfileAssessmentConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :weight, as: 'weight'
        end
      end
      
      class GoogleCloudApigeeV1SecurityReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :created, as: 'created'
          property :display_name, as: 'displayName'
          property :envgroup_hostname, as: 'envgroupHostname'
          property :error, as: 'error'
          property :execution_time, as: 'executionTime'
          property :query_params, as: 'queryParams', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportMetadata, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportMetadata::Representation
      
          property :report_definition_id, as: 'reportDefinitionId'
          property :result, as: 'result', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportResultMetadata, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportResultMetadata::Representation
      
          property :result_file_size, as: 'resultFileSize'
          property :result_rows, :numeric_string => true, as: 'resultRows'
          property :self, as: 'self'
          property :state, as: 'state'
          property :updated, as: 'updated'
        end
      end
      
      class GoogleCloudApigeeV1SecurityReportMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimensions, as: 'dimensions'
          property :end_timestamp, as: 'endTimestamp'
          collection :metrics, as: 'metrics'
          property :mime_type, as: 'mimeType'
          property :start_timestamp, as: 'startTimestamp'
          property :time_unit, as: 'timeUnit'
        end
      end
      
      class GoogleCloudApigeeV1SecurityReportQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :csv_delimiter, as: 'csvDelimiter'
          collection :dimensions, as: 'dimensions'
          property :display_name, as: 'displayName'
          property :envgroup_hostname, as: 'envgroupHostname'
          property :filter, as: 'filter'
          property :group_by_time_unit, as: 'groupByTimeUnit'
          property :limit, as: 'limit'
          collection :metrics, as: 'metrics', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportQueryMetric, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportQueryMetric::Representation
      
          property :mime_type, as: 'mimeType'
          property :report_definition_id, as: 'reportDefinitionId'
          property :time_range, as: 'timeRange'
        end
      end
      
      class GoogleCloudApigeeV1SecurityReportQueryMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_function, as: 'aggregationFunction'
          property :alias, as: 'alias'
          property :name, as: 'name'
          property :operator, as: 'operator'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudApigeeV1SecurityReportResultMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expires, as: 'expires'
          property :self, as: 'self'
        end
      end
      
      class GoogleCloudApigeeV1SecurityReportResultView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :error, as: 'error'
          property :metadata, as: 'metadata', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportMetadata, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportMetadata::Representation
      
          collection :rows, as: 'rows'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudApigeeV1SecuritySettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ml_retraining_feedback_enabled, as: 'mlRetrainingFeedbackEnabled'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudApigeeV1ServiceIssuersMapping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :email_ids, as: 'emailIds'
          property :service, as: 'service'
        end
      end
      
      class GoogleCloudApigeeV1Session
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :timestamp_ms, :numeric_string => true, as: 'timestampMs'
        end
      end
      
      class GoogleCloudApigeeV1SetAddonEnablementRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analytics_enabled, as: 'analyticsEnabled'
          property :api_security_enabled, as: 'apiSecurityEnabled'
        end
      end
      
      class GoogleCloudApigeeV1SetAddonsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :addons_config, as: 'addonsConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AddonsConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AddonsConfig::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1SharedFlow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latest_revision_id, as: 'latestRevisionId'
          property :meta_data, as: 'metaData', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1EntityMetadata, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1EntityMetadata::Representation
      
          property :name, as: 'name'
          collection :revision, as: 'revision'
          property :space, as: 'space'
        end
      end
      
      class GoogleCloudApigeeV1SharedFlowRevision
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :configuration_version, as: 'configurationVersion', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ConfigVersion, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ConfigVersion::Representation
      
          property :context_info, as: 'contextInfo'
          property :created_at, :numeric_string => true, as: 'createdAt'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          hash :entity_meta_data_as_properties, as: 'entityMetaDataAsProperties'
          property :last_modified_at, :numeric_string => true, as: 'lastModifiedAt'
          property :name, as: 'name'
          collection :policies, as: 'policies'
          property :resource_files, as: 'resourceFiles', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFiles, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFiles::Representation
      
          collection :resources, as: 'resources'
          property :revision, as: 'revision'
          collection :shared_flows, as: 'sharedFlows'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudApigeeV1Space
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudApigeeV1Stats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :environments, as: 'environments', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1StatsEnvironmentStats, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1StatsEnvironmentStats::Representation
      
          collection :hosts, as: 'hosts', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1StatsHostStats, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1StatsHostStats::Representation
      
          property :meta_data, as: 'metaData', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Metadata, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Metadata::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1StatsEnvironmentStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimensions, as: 'dimensions', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DimensionMetric, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DimensionMetric::Representation
      
          collection :metrics, as: 'metrics', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Metric, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Metric::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudApigeeV1StatsHostStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimensions, as: 'dimensions', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DimensionMetric, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1DimensionMetric::Representation
      
          collection :metrics, as: 'metrics', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Metric, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1Metric::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudApigeeV1Subscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudApigeeV1SyncAuthorization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, :base64 => true, as: 'etag'
          collection :identities, as: 'identities'
        end
      end
      
      class GoogleCloudApigeeV1TargetServer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :host, as: 'host'
          property :is_enabled, as: 'isEnabled'
          property :name, as: 'name'
          property :port, as: 'port'
          property :protocol, as: 'protocol'
          property :s_sl_info, as: 'sSLInfo', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1TlsInfo, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1TlsInfo::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1TargetServerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :host, as: 'host'
          property :name, as: 'name'
          property :port, as: 'port'
          property :protocol, as: 'protocol'
          property :tls_info, as: 'tlsInfo', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1TlsInfoConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1TlsInfoConfig::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1TestDatastoreResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudApigeeV1TlsInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ciphers, as: 'ciphers'
          property :client_auth_enabled, as: 'clientAuthEnabled'
          property :common_name, as: 'commonName', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1TlsInfoCommonName, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1TlsInfoCommonName::Representation
      
          property :enabled, as: 'enabled'
          property :enforce, as: 'enforce'
          property :ignore_validation_errors, as: 'ignoreValidationErrors'
          property :key_alias, as: 'keyAlias'
          property :key_store, as: 'keyStore'
          collection :protocols, as: 'protocols'
          property :trust_store, as: 'trustStore'
        end
      end
      
      class GoogleCloudApigeeV1TlsInfoCommonName
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
          property :wildcard_match, as: 'wildcardMatch'
        end
      end
      
      class GoogleCloudApigeeV1TlsInfoConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ciphers, as: 'ciphers'
          property :client_auth_enabled, as: 'clientAuthEnabled'
          property :common_name, as: 'commonName', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1CommonNameConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1CommonNameConfig::Representation
      
          property :enabled, as: 'enabled'
          property :enforce, as: 'enforce'
          property :ignore_validation_errors, as: 'ignoreValidationErrors'
          property :key_alias, as: 'keyAlias'
          property :key_alias_reference, as: 'keyAliasReference', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyAliasReference, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyAliasReference::Representation
      
          collection :protocols, as: 'protocols'
          property :trust_store, as: 'trustStore'
        end
      end
      
      class GoogleCloudApigeeV1TraceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint, as: 'endpoint'
          property :exporter, as: 'exporter'
          property :sampling_config, as: 'samplingConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceSamplingConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceSamplingConfig::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1TraceConfigOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_proxy, as: 'apiProxy'
          property :name, as: 'name'
          property :sampling_config, as: 'samplingConfig', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceSamplingConfig, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceSamplingConfig::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1TraceSamplingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sampler, as: 'sampler'
          property :sampling_rate, as: 'samplingRate'
        end
      end
      
      class GoogleCloudApigeeV1UpdateAppGroupAppKeyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          collection :api_products, as: 'apiProducts'
          property :app_group_app_key, as: 'appGroupAppKey', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey::Representation
      
        end
      end
      
      class GoogleCloudApigeeV1UpdateError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :message, as: 'message'
          property :resource, as: 'resource'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudApigeeV1UpdateSecurityIncidentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :security_incident, as: 'securityIncident', class: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityIncident, decorator: Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityIncident::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleIamV1AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::ApigeeV1::GoogleIamV1AuditLogConfig, decorator: Google::Apis::ApigeeV1::GoogleIamV1AuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class GoogleIamV1AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class GoogleIamV1Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::ApigeeV1::GoogleTypeExpr, decorator: Google::Apis::ApigeeV1::GoogleTypeExpr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class GoogleIamV1Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::ApigeeV1::GoogleIamV1AuditConfig, decorator: Google::Apis::ApigeeV1::GoogleIamV1AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::ApigeeV1::GoogleIamV1Binding, decorator: Google::Apis::ApigeeV1::GoogleIamV1Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class GoogleIamV1SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::ApigeeV1::GoogleIamV1Policy, decorator: Google::Apis::ApigeeV1::GoogleIamV1Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleIamV1TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class GoogleIamV1TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::ApigeeV1::GoogleLongrunningOperation, decorator: Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ApigeeV1::GoogleRpcStatus, decorator: Google::Apis::ApigeeV1::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleRpcPreconditionFailure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :violations, as: 'violations', class: Google::Apis::ApigeeV1::GoogleRpcPreconditionFailureViolation, decorator: Google::Apis::ApigeeV1::GoogleRpcPreconditionFailureViolation::Representation
      
        end
      end
      
      class GoogleRpcPreconditionFailureViolation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :subject, as: 'subject'
          property :type, as: 'type'
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class GoogleTypeExpr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class GoogleTypeInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleTypeMoney
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :nanos, as: 'nanos'
          property :units, :numeric_string => true, as: 'units'
        end
      end
    end
  end
end
