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
    module DataplexV1
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Action
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ActionFailedSecurityPolicyApply
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ActionIncompatibleDataSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ActionInvalidDataFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ActionInvalidDataOrganization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ActionInvalidDataPartition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ActionMissingData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ActionMissingResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ActionUnauthorizedResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Aspect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AspectSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AspectType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AspectTypeAuthorization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AspectTypeMetadataTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AspectTypeMetadataTemplateAnnotations
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AspectTypeMetadataTemplateConstraints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AspectTypeMetadataTemplateEnumValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Asset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AssetDiscoverySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AssetDiscoveryStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AssetDiscoveryStatusStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AssetResourceSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AssetResourceStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AssetSecurityStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1AssetStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1BusinessGlossaryEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1CancelJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1CancelMetadataJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Content
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ContentNotebook
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ContentSqlScript
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataAccessSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataAttributeBinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataAttributeBindingPath
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataDiscoveryResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataDiscoveryResultBigQueryPublishing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataDiscoveryResultScanStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataDiscoverySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataDiscoverySpecBigQueryPublishingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataDiscoverySpecStorageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataDiscoverySpecStorageConfigCsvOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataDiscoverySpecStorageConfigJsonOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataProfileResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataProfileResultPostScanActionsResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataProfileResultPostScanActionsResultBigQueryExportResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataProfileResultProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataProfileResultProfileField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataProfileSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataProfileSpecPostScanActions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataProfileSpecSelectedFields
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualityColumnResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualityDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualityDimensionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualityResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualityResultPostScanActionsResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualityResultPostScanActionsResultBigQueryExportResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualityRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualityRuleNonNullExpectation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualityRuleRangeExpectation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualityRuleRegexExpectation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualityRuleResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualityRuleSetExpectation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualityRuleSqlAssertion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualityScanRuleResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualitySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualitySpecPostScanActions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualitySpecPostScanActionsJobEndTrigger
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualitySpecPostScanActionsJobFailureTrigger
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualitySpecPostScanActionsNotificationReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualitySpecPostScanActionsRecipients
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataQualitySpecPostScanActionsScoreThresholdTrigger
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataScan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataScanCatalogPublishingStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataScanEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataScanEventDataProfileAppliedConfigs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataScanEventDataProfileResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataScanEventDataQualityAppliedConfigs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataScanEventDataQualityResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataScanEventPostScanActionsResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataScanEventPostScanActionsResultBigQueryExportResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataScanExecutionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataScanExecutionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataScanJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DataTaxonomy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DiscoveryEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DiscoveryEventActionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DiscoveryEventConfigDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DiscoveryEventEntityDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DiscoveryEventPartitionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1DiscoveryEventTableDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EncryptionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EncryptionConfigFailureDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Entity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EntityCompatibilityStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Entry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EntryGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EntryLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EntryLinkEntryReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EntryLinkEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EntrySource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EntrySourceAncestor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EntryType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EntryTypeAspectInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EntryTypeAuthorization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Environment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EnvironmentEndpoints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EnvironmentInfrastructureSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EnvironmentSessionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1EnvironmentSessionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1GenerateDataQualityRulesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1GenerateDataQualityRulesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Glossary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1GlossaryCategory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1GlossaryTerm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1GovernanceEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1GovernanceEventEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ImportItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1JobEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Lake
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1LakeMetastore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1LakeMetastoreStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListActionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListAspectTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListAssetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListContentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListDataAttributeBindingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListDataAttributesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListDataScanJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListDataScansResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListDataTaxonomiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListEncryptionConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListEntitiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListEntryGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListEntryTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListEnvironmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListGlossariesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListGlossaryCategoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListGlossaryTermsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListLakesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListMetadataJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListPartitionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListSessionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListTasksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ListZonesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1MetadataJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1MetadataJobExportJobResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1MetadataJobExportJobSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1MetadataJobExportJobSpecExportJobScope
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1MetadataJobImportJobResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1MetadataJobImportJobSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1MetadataJobImportJobSpecImportJobScope
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1MetadataJobStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Partition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ResourceAccessSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1RunDataScanRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1RunDataScanResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1RunTaskRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1RunTaskResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ScannedData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ScannedDataIncrementalField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Schema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1SchemaPartitionField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1SchemaSchemaField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1SearchEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1SearchEntriesResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1SearchEntriesResultSnippets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Session
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1SessionEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1SessionEventQueryDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1StorageAccess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1StorageFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1StorageFormatCsvOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1StorageFormatIcebergOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1StorageFormatJsonOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Task
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1TaskExecutionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1TaskExecutionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1TaskInfrastructureSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1TaskNotebookTaskConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1TaskSparkTaskConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1TaskTriggerSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Trigger
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1TriggerOnDemand
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1TriggerSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1Zone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ZoneDiscoverySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDataplexV1ZoneResourceSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudLocationListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudLocationLocation
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
      
      class GoogleLongrunningCancelOperationRequest
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
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeExpr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDataplexV1Action
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset, as: 'asset'
          property :category, as: 'category'
          collection :data_locations, as: 'dataLocations'
          property :detect_time, as: 'detectTime'
          property :failed_security_policy_apply, as: 'failedSecurityPolicyApply', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionFailedSecurityPolicyApply, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionFailedSecurityPolicyApply::Representation
      
          property :incompatible_data_schema, as: 'incompatibleDataSchema', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionIncompatibleDataSchema, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionIncompatibleDataSchema::Representation
      
          property :invalid_data_format, as: 'invalidDataFormat', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionInvalidDataFormat, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionInvalidDataFormat::Representation
      
          property :invalid_data_organization, as: 'invalidDataOrganization', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionInvalidDataOrganization, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionInvalidDataOrganization::Representation
      
          property :invalid_data_partition, as: 'invalidDataPartition', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionInvalidDataPartition, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionInvalidDataPartition::Representation
      
          property :issue, as: 'issue'
          property :lake, as: 'lake'
          property :missing_data, as: 'missingData', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionMissingData, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionMissingData::Representation
      
          property :missing_resource, as: 'missingResource', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionMissingResource, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionMissingResource::Representation
      
          property :name, as: 'name'
          property :unauthorized_resource, as: 'unauthorizedResource', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionUnauthorizedResource, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionUnauthorizedResource::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class GoogleCloudDataplexV1ActionFailedSecurityPolicyApply
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset, as: 'asset'
        end
      end
      
      class GoogleCloudDataplexV1ActionIncompatibleDataSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :existing_schema, as: 'existingSchema'
          property :new_schema, as: 'newSchema'
          collection :sampled_data_locations, as: 'sampledDataLocations'
          property :schema_change, as: 'schemaChange'
          property :table, as: 'table'
        end
      end
      
      class GoogleCloudDataplexV1ActionInvalidDataFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expected_format, as: 'expectedFormat'
          property :new_format, as: 'newFormat'
          collection :sampled_data_locations, as: 'sampledDataLocations'
        end
      end
      
      class GoogleCloudDataplexV1ActionInvalidDataOrganization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDataplexV1ActionInvalidDataPartition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expected_structure, as: 'expectedStructure'
        end
      end
      
      class GoogleCloudDataplexV1ActionMissingData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDataplexV1ActionMissingResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDataplexV1ActionUnauthorizedResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDataplexV1Aspect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aspect_source, as: 'aspectSource', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectSource, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectSource::Representation
      
          property :aspect_type, as: 'aspectType'
          property :create_time, as: 'createTime'
          hash :data, as: 'data'
          property :path, as: 'path'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1AspectSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :data_version, as: 'dataVersion'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1AspectType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorization, as: 'authorization', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeAuthorization, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeAuthorization::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :metadata_template, as: 'metadataTemplate', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeMetadataTemplate, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeMetadataTemplate::Representation
      
          property :name, as: 'name'
          property :transfer_status, as: 'transferStatus'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1AspectTypeAuthorization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alternate_use_permission, as: 'alternateUsePermission'
        end
      end
      
      class GoogleCloudDataplexV1AspectTypeMetadataTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotations, as: 'annotations', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeMetadataTemplateAnnotations, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeMetadataTemplateAnnotations::Representation
      
          property :array_items, as: 'arrayItems', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeMetadataTemplate, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeMetadataTemplate::Representation
      
          property :constraints, as: 'constraints', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeMetadataTemplateConstraints, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeMetadataTemplateConstraints::Representation
      
          collection :enum_values, as: 'enumValues', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeMetadataTemplateEnumValue, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeMetadataTemplateEnumValue::Representation
      
          property :index, as: 'index'
          property :map_items, as: 'mapItems', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeMetadataTemplate, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeMetadataTemplate::Representation
      
          property :name, as: 'name'
          collection :record_fields, as: 'recordFields', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeMetadataTemplate, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeMetadataTemplate::Representation
      
          property :type, as: 'type'
          property :type_id, as: 'typeId'
          property :type_ref, as: 'typeRef'
        end
      end
      
      class GoogleCloudDataplexV1AspectTypeMetadataTemplateAnnotations
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deprecated, as: 'deprecated'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :display_order, as: 'displayOrder'
          property :string_type, as: 'stringType'
          collection :string_values, as: 'stringValues'
        end
      end
      
      class GoogleCloudDataplexV1AspectTypeMetadataTemplateConstraints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :required, as: 'required'
        end
      end
      
      class GoogleCloudDataplexV1AspectTypeMetadataTemplateEnumValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deprecated, as: 'deprecated'
          property :index, as: 'index'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDataplexV1Asset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :discovery_spec, as: 'discoverySpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoverySpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoverySpec::Representation
      
          property :discovery_status, as: 'discoveryStatus', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoveryStatus, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoveryStatus::Representation
      
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :resource_spec, as: 'resourceSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetResourceSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetResourceSpec::Representation
      
          property :resource_status, as: 'resourceStatus', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetResourceStatus, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetResourceStatus::Representation
      
          property :security_status, as: 'securityStatus', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetSecurityStatus, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetSecurityStatus::Representation
      
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1AssetDiscoverySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :csv_options, as: 'csvOptions', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions::Representation
      
          property :enabled, as: 'enabled'
          collection :exclude_patterns, as: 'excludePatterns'
          collection :include_patterns, as: 'includePatterns'
          property :json_options, as: 'jsonOptions', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions::Representation
      
          property :schedule, as: 'schedule'
        end
      end
      
      class GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delimiter, as: 'delimiter'
          property :disable_type_inference, as: 'disableTypeInference'
          property :encoding, as: 'encoding'
          property :header_rows, as: 'headerRows'
        end
      end
      
      class GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_type_inference, as: 'disableTypeInference'
          property :encoding, as: 'encoding'
        end
      end
      
      class GoogleCloudDataplexV1AssetDiscoveryStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_run_duration, as: 'lastRunDuration'
          property :last_run_time, as: 'lastRunTime'
          property :message, as: 'message'
          property :state, as: 'state'
          property :stats, as: 'stats', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoveryStatusStats, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoveryStatusStats::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1AssetDiscoveryStatusStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_items, :numeric_string => true, as: 'dataItems'
          property :data_size, :numeric_string => true, as: 'dataSize'
          property :filesets, :numeric_string => true, as: 'filesets'
          property :tables, :numeric_string => true, as: 'tables'
        end
      end
      
      class GoogleCloudDataplexV1AssetResourceSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :read_access_mode, as: 'readAccessMode'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDataplexV1AssetResourceStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :managed_access_identity, as: 'managedAccessIdentity'
          property :message, as: 'message'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1AssetSecurityStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1AssetStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_assets, as: 'activeAssets'
          property :security_policy_applying_assets, as: 'securityPolicyApplyingAssets'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1BusinessGlossaryEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_type, as: 'eventType'
          property :message, as: 'message'
          property :resource, as: 'resource'
        end
      end
      
      class GoogleCloudDataplexV1CancelJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDataplexV1CancelMetadataJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDataplexV1Content
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :data_text, as: 'dataText'
          property :description, as: 'description'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :notebook, as: 'notebook', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ContentNotebook, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ContentNotebook::Representation
      
          property :path, as: 'path'
          property :sql_script, as: 'sqlScript', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ContentSqlScript, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ContentSqlScript::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1ContentNotebook
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kernel_type, as: 'kernelType'
        end
      end
      
      class GoogleCloudDataplexV1ContentSqlScript
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :engine, as: 'engine'
        end
      end
      
      class GoogleCloudDataplexV1DataAccessSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :readers, as: 'readers'
        end
      end
      
      class GoogleCloudDataplexV1DataAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_count, as: 'attributeCount'
          property :create_time, as: 'createTime'
          property :data_access_spec, as: 'dataAccessSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAccessSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAccessSpec::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :parent_id, as: 'parentId'
          property :resource_access_spec, as: 'resourceAccessSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ResourceAccessSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ResourceAccessSpec::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1DataAttributeBinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attributes, as: 'attributes'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          collection :paths, as: 'paths', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttributeBindingPath, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttributeBindingPath::Representation
      
          property :resource, as: 'resource'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1DataAttributeBindingPath
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attributes, as: 'attributes'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDataplexV1DataDiscoveryResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_publishing, as: 'bigqueryPublishing', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoveryResultBigQueryPublishing, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoveryResultBigQueryPublishing::Representation
      
          property :scan_statistics, as: 'scanStatistics', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoveryResultScanStatistics, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoveryResultScanStatistics::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1DataDiscoveryResultBigQueryPublishing
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset'
          property :location, as: 'location'
        end
      end
      
      class GoogleCloudDataplexV1DataDiscoveryResultScanStatistics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_processed_bytes, :numeric_string => true, as: 'dataProcessedBytes'
          property :files_excluded, as: 'filesExcluded'
          property :filesets_created, as: 'filesetsCreated'
          property :filesets_deleted, as: 'filesetsDeleted'
          property :filesets_updated, as: 'filesetsUpdated'
          property :scanned_file_count, as: 'scannedFileCount'
          property :tables_created, as: 'tablesCreated'
          property :tables_deleted, as: 'tablesDeleted'
          property :tables_updated, as: 'tablesUpdated'
        end
      end
      
      class GoogleCloudDataplexV1DataDiscoverySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_publishing_config, as: 'bigqueryPublishingConfig', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoverySpecBigQueryPublishingConfig, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoverySpecBigQueryPublishingConfig::Representation
      
          property :storage_config, as: 'storageConfig', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoverySpecStorageConfig, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoverySpecStorageConfig::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1DataDiscoverySpecBigQueryPublishingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection, as: 'connection'
          property :location, as: 'location'
          property :project, as: 'project'
          property :table_type, as: 'tableType'
        end
      end
      
      class GoogleCloudDataplexV1DataDiscoverySpecStorageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :csv_options, as: 'csvOptions', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoverySpecStorageConfigCsvOptions, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoverySpecStorageConfigCsvOptions::Representation
      
          collection :exclude_patterns, as: 'excludePatterns'
          collection :include_patterns, as: 'includePatterns'
          property :json_options, as: 'jsonOptions', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoverySpecStorageConfigJsonOptions, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoverySpecStorageConfigJsonOptions::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1DataDiscoverySpecStorageConfigCsvOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delimiter, as: 'delimiter'
          property :encoding, as: 'encoding'
          property :header_rows, as: 'headerRows'
          property :quote, as: 'quote'
          property :type_inference_disabled, as: 'typeInferenceDisabled'
        end
      end
      
      class GoogleCloudDataplexV1DataDiscoverySpecStorageConfigJsonOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoding, as: 'encoding'
          property :type_inference_disabled, as: 'typeInferenceDisabled'
        end
      end
      
      class GoogleCloudDataplexV1DataProfileResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :post_scan_actions_result, as: 'postScanActionsResult', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultPostScanActionsResult, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultPostScanActionsResult::Representation
      
          property :profile, as: 'profile', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfile, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfile::Representation
      
          property :row_count, :numeric_string => true, as: 'rowCount'
          property :scanned_data, as: 'scannedData', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ScannedData, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ScannedData::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1DataProfileResultPostScanActionsResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_export_result, as: 'bigqueryExportResult', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultPostScanActionsResultBigQueryExportResult, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultPostScanActionsResultBigQueryExportResult::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1DataProfileResultPostScanActionsResultBigQueryExportResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDataplexV1DataProfileResultProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfileField, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfileField::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1DataProfileResultProfileField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
          property :name, as: 'name'
          property :profile, as: 'profile', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :distinct_ratio, as: 'distinctRatio'
          property :double_profile, as: 'doubleProfile', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo::Representation
      
          property :integer_profile, as: 'integerProfile', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo::Representation
      
          property :null_ratio, as: 'nullRatio'
          property :string_profile, as: 'stringProfile', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo::Representation
      
          collection :top_n_values, as: 'topNValues', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average, as: 'average'
          property :max, as: 'max'
          property :min, as: 'min'
          collection :quartiles, as: 'quartiles'
          property :standard_deviation, as: 'standardDeviation'
        end
      end
      
      class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average, as: 'average'
          property :max, :numeric_string => true, as: 'max'
          property :min, :numeric_string => true, as: 'min'
          collection :quartiles, as: 'quartiles'
          property :standard_deviation, as: 'standardDeviation'
        end
      end
      
      class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_length, as: 'averageLength'
          property :max_length, :numeric_string => true, as: 'maxLength'
          property :min_length, :numeric_string => true, as: 'minLength'
        end
      end
      
      class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :ratio, as: 'ratio'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDataplexV1DataProfileSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclude_fields, as: 'excludeFields', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileSpecSelectedFields, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileSpecSelectedFields::Representation
      
          property :include_fields, as: 'includeFields', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileSpecSelectedFields, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileSpecSelectedFields::Representation
      
          property :post_scan_actions, as: 'postScanActions', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileSpecPostScanActions, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileSpecPostScanActions::Representation
      
          property :row_filter, as: 'rowFilter'
          property :sampling_percent, as: 'samplingPercent'
        end
      end
      
      class GoogleCloudDataplexV1DataProfileSpecPostScanActions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_export, as: 'bigqueryExport', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExport, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExport::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :results_table, as: 'resultsTable'
        end
      end
      
      class GoogleCloudDataplexV1DataProfileSpecSelectedFields
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :field_names, as: 'fieldNames'
        end
      end
      
      class GoogleCloudDataplexV1DataQualityColumnResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column, as: 'column'
          collection :dimensions, as: 'dimensions', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityDimensionResult, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityDimensionResult::Representation
      
          property :passed, as: 'passed'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudDataplexV1DataQualityDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDataplexV1DataQualityDimensionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension, as: 'dimension', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityDimension, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityDimension::Representation
      
          property :passed, as: 'passed'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudDataplexV1DataQualityResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :catalog_publishing_status, as: 'catalogPublishingStatus', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanCatalogPublishingStatus, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanCatalogPublishingStatus::Representation
      
          collection :columns, as: 'columns', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityColumnResult, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityColumnResult::Representation
      
          collection :dimensions, as: 'dimensions', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityDimensionResult, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityDimensionResult::Representation
      
          property :passed, as: 'passed'
          property :post_scan_actions_result, as: 'postScanActionsResult', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityResultPostScanActionsResult, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityResultPostScanActionsResult::Representation
      
          property :row_count, :numeric_string => true, as: 'rowCount'
          collection :rules, as: 'rules', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleResult, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleResult::Representation
      
          property :scanned_data, as: 'scannedData', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ScannedData, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ScannedData::Representation
      
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudDataplexV1DataQualityResultPostScanActionsResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_export_result, as: 'bigqueryExportResult', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityResultPostScanActionsResultBigQueryExportResult, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityResultPostScanActionsResultBigQueryExportResult::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1DataQualityResultPostScanActionsResultBigQueryExportResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDataplexV1DataQualityRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column, as: 'column'
          property :description, as: 'description'
          property :dimension, as: 'dimension'
          property :ignore_null, as: 'ignoreNull'
          property :name, as: 'name'
          property :non_null_expectation, as: 'nonNullExpectation', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleNonNullExpectation, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleNonNullExpectation::Representation
      
          property :range_expectation, as: 'rangeExpectation', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleRangeExpectation, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleRangeExpectation::Representation
      
          property :regex_expectation, as: 'regexExpectation', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleRegexExpectation, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleRegexExpectation::Representation
      
          property :row_condition_expectation, as: 'rowConditionExpectation', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation::Representation
      
          property :set_expectation, as: 'setExpectation', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleSetExpectation, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleSetExpectation::Representation
      
          property :sql_assertion, as: 'sqlAssertion', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleSqlAssertion, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleSqlAssertion::Representation
      
          property :statistic_range_expectation, as: 'statisticRangeExpectation', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation::Representation
      
          property :suspended, as: 'suspended'
          property :table_condition_expectation, as: 'tableConditionExpectation', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation::Representation
      
          property :threshold, as: 'threshold'
          property :uniqueness_expectation, as: 'uniquenessExpectation', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1DataQualityRuleNonNullExpectation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDataplexV1DataQualityRuleRangeExpectation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_value, as: 'maxValue'
          property :min_value, as: 'minValue'
          property :strict_max_enabled, as: 'strictMaxEnabled'
          property :strict_min_enabled, as: 'strictMinEnabled'
        end
      end
      
      class GoogleCloudDataplexV1DataQualityRuleRegexExpectation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :regex, as: 'regex'
        end
      end
      
      class GoogleCloudDataplexV1DataQualityRuleResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assertion_row_count, :numeric_string => true, as: 'assertionRowCount'
          property :evaluated_count, :numeric_string => true, as: 'evaluatedCount'
          property :failing_rows_query, as: 'failingRowsQuery'
          property :null_count, :numeric_string => true, as: 'nullCount'
          property :pass_ratio, as: 'passRatio'
          property :passed, as: 'passed'
          property :passed_count, :numeric_string => true, as: 'passedCount'
          property :rule, as: 'rule', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRule, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRule::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sql_expression, as: 'sqlExpression'
        end
      end
      
      class GoogleCloudDataplexV1DataQualityRuleSetExpectation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudDataplexV1DataQualityRuleSqlAssertion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sql_statement, as: 'sqlStatement'
        end
      end
      
      class GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_value, as: 'maxValue'
          property :min_value, as: 'minValue'
          property :statistic, as: 'statistic'
          property :strict_max_enabled, as: 'strictMaxEnabled'
          property :strict_min_enabled, as: 'strictMinEnabled'
        end
      end
      
      class GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sql_expression, as: 'sqlExpression'
        end
      end
      
      class GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDataplexV1DataQualityScanRuleResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assertion_row_count, :numeric_string => true, as: 'assertionRowCount'
          property :column, as: 'column'
          property :data_source, as: 'dataSource'
          property :evaluated_row_count, :numeric_string => true, as: 'evaluatedRowCount'
          property :evalution_type, as: 'evalutionType'
          property :job_id, as: 'jobId'
          property :null_row_count, :numeric_string => true, as: 'nullRowCount'
          property :passed_row_count, :numeric_string => true, as: 'passedRowCount'
          property :result, as: 'result'
          property :rule_dimension, as: 'ruleDimension'
          property :rule_name, as: 'ruleName'
          property :rule_type, as: 'ruleType'
          property :threshold_percent, as: 'thresholdPercent'
        end
      end
      
      class GoogleCloudDataplexV1DataQualitySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :catalog_publishing_enabled, as: 'catalogPublishingEnabled'
          property :post_scan_actions, as: 'postScanActions', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpecPostScanActions, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpecPostScanActions::Representation
      
          property :row_filter, as: 'rowFilter'
          collection :rules, as: 'rules', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRule, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRule::Representation
      
          property :sampling_percent, as: 'samplingPercent'
        end
      end
      
      class GoogleCloudDataplexV1DataQualitySpecPostScanActions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_export, as: 'bigqueryExport', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExport, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExport::Representation
      
          property :notification_report, as: 'notificationReport', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpecPostScanActionsNotificationReport, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpecPostScanActionsNotificationReport::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :results_table, as: 'resultsTable'
        end
      end
      
      class GoogleCloudDataplexV1DataQualitySpecPostScanActionsJobEndTrigger
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDataplexV1DataQualitySpecPostScanActionsJobFailureTrigger
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDataplexV1DataQualitySpecPostScanActionsNotificationReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job_end_trigger, as: 'jobEndTrigger', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpecPostScanActionsJobEndTrigger, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpecPostScanActionsJobEndTrigger::Representation
      
          property :job_failure_trigger, as: 'jobFailureTrigger', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpecPostScanActionsJobFailureTrigger, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpecPostScanActionsJobFailureTrigger::Representation
      
          property :recipients, as: 'recipients', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpecPostScanActionsRecipients, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpecPostScanActionsRecipients::Representation
      
          property :score_threshold_trigger, as: 'scoreThresholdTrigger', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpecPostScanActionsScoreThresholdTrigger, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpecPostScanActionsScoreThresholdTrigger::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1DataQualitySpecPostScanActionsRecipients
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :emails, as: 'emails'
        end
      end
      
      class GoogleCloudDataplexV1DataQualitySpecPostScanActionsScoreThresholdTrigger
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score_threshold, as: 'scoreThreshold'
        end
      end
      
      class GoogleCloudDataplexV1DataScan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :data, as: 'data', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataSource, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataSource::Representation
      
          property :data_discovery_result, as: 'dataDiscoveryResult', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoveryResult, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoveryResult::Representation
      
          property :data_discovery_spec, as: 'dataDiscoverySpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoverySpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoverySpec::Representation
      
          property :data_profile_result, as: 'dataProfileResult', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResult, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResult::Representation
      
          property :data_profile_spec, as: 'dataProfileSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileSpec::Representation
      
          property :data_quality_result, as: 'dataQualityResult', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityResult, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityResult::Representation
      
          property :data_quality_spec, as: 'dataQualitySpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpec::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :execution_spec, as: 'executionSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanExecutionSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanExecutionSpec::Representation
      
          property :execution_status, as: 'executionStatus', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanExecutionStatus, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanExecutionStatus::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :type, as: 'type'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1DataScanCatalogPublishingStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDataplexV1DataScanEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :catalog_publishing_status, as: 'catalogPublishingStatus', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanCatalogPublishingStatus, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanCatalogPublishingStatus::Representation
      
          property :create_time, as: 'createTime'
          property :data_profile, as: 'dataProfile', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventDataProfileResult, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventDataProfileResult::Representation
      
          property :data_profile_configs, as: 'dataProfileConfigs', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventDataProfileAppliedConfigs, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventDataProfileAppliedConfigs::Representation
      
          property :data_quality, as: 'dataQuality', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventDataQualityResult, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventDataQualityResult::Representation
      
          property :data_quality_configs, as: 'dataQualityConfigs', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventDataQualityAppliedConfigs, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventDataQualityAppliedConfigs::Representation
      
          property :data_source, as: 'dataSource'
          property :end_time, as: 'endTime'
          property :job_id, as: 'jobId'
          property :message, as: 'message'
          property :post_scan_actions_result, as: 'postScanActionsResult', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventPostScanActionsResult, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventPostScanActionsResult::Representation
      
          property :scope, as: 'scope'
          property :spec_version, as: 'specVersion'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :trigger, as: 'trigger'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDataplexV1DataScanEventDataProfileAppliedConfigs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_filter_applied, as: 'columnFilterApplied'
          property :row_filter_applied, as: 'rowFilterApplied'
          property :sampling_percent, as: 'samplingPercent'
        end
      end
      
      class GoogleCloudDataplexV1DataScanEventDataProfileResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :row_count, :numeric_string => true, as: 'rowCount'
        end
      end
      
      class GoogleCloudDataplexV1DataScanEventDataQualityAppliedConfigs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :row_filter_applied, as: 'rowFilterApplied'
          property :sampling_percent, as: 'samplingPercent'
        end
      end
      
      class GoogleCloudDataplexV1DataScanEventDataQualityResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :column_score, as: 'columnScore'
          hash :dimension_passed, as: 'dimensionPassed'
          hash :dimension_score, as: 'dimensionScore'
          property :passed, as: 'passed'
          property :row_count, :numeric_string => true, as: 'rowCount'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudDataplexV1DataScanEventPostScanActionsResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_export_result, as: 'bigqueryExportResult', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventPostScanActionsResultBigQueryExportResult, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventPostScanActionsResultBigQueryExportResult::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1DataScanEventPostScanActionsResultBigQueryExportResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDataplexV1DataScanExecutionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field'
          property :trigger, as: 'trigger', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Trigger, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Trigger::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1DataScanExecutionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latest_job_create_time, as: 'latestJobCreateTime'
          property :latest_job_end_time, as: 'latestJobEndTime'
          property :latest_job_start_time, as: 'latestJobStartTime'
        end
      end
      
      class GoogleCloudDataplexV1DataScanJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :data_discovery_result, as: 'dataDiscoveryResult', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoveryResult, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoveryResult::Representation
      
          property :data_discovery_spec, as: 'dataDiscoverySpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoverySpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoverySpec::Representation
      
          property :data_profile_result, as: 'dataProfileResult', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResult, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResult::Representation
      
          property :data_profile_spec, as: 'dataProfileSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileSpec::Representation
      
          property :data_quality_result, as: 'dataQualityResult', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityResult, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityResult::Representation
      
          property :data_quality_spec, as: 'dataQualitySpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpec::Representation
      
          property :end_time, as: 'endTime'
          property :message, as: 'message'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :type, as: 'type'
          property :uid, as: 'uid'
        end
      end
      
      class GoogleCloudDataplexV1DataSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity, as: 'entity'
          property :resource, as: 'resource'
        end
      end
      
      class GoogleCloudDataplexV1DataTaxonomy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_count, as: 'attributeCount'
          property :class_count, as: 'classCount'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1DiscoveryEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DiscoveryEventActionDetails, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DiscoveryEventActionDetails::Representation
      
          property :asset_id, as: 'assetId'
          property :config, as: 'config', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DiscoveryEventConfigDetails, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DiscoveryEventConfigDetails::Representation
      
          property :data_location, as: 'dataLocation'
          property :datascan_id, as: 'datascanId'
          property :entity, as: 'entity', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DiscoveryEventEntityDetails, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DiscoveryEventEntityDetails::Representation
      
          property :lake_id, as: 'lakeId'
          property :message, as: 'message'
          property :partition, as: 'partition', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DiscoveryEventPartitionDetails, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DiscoveryEventPartitionDetails::Representation
      
          property :table, as: 'table', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DiscoveryEventTableDetails, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DiscoveryEventTableDetails::Representation
      
          property :type, as: 'type'
          property :zone_id, as: 'zoneId'
        end
      end
      
      class GoogleCloudDataplexV1DiscoveryEventActionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :issue, as: 'issue'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDataplexV1DiscoveryEventConfigDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :parameters, as: 'parameters'
        end
      end
      
      class GoogleCloudDataplexV1DiscoveryEventEntityDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity, as: 'entity'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDataplexV1DiscoveryEventPartitionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity, as: 'entity'
          property :partition, as: 'partition'
          collection :sampled_data_locations, as: 'sampledDataLocations'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDataplexV1DiscoveryEventTableDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :table, as: 'table'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDataplexV1EncryptionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :encryption_state, as: 'encryptionState'
          property :etag, as: 'etag'
          property :failure_details, as: 'failureDetails', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EncryptionConfigFailureDetails, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EncryptionConfigFailureDetails::Representation
      
          property :key, as: 'key'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1EncryptionConfigFailureDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_code, as: 'errorCode'
          property :error_message, as: 'errorMessage'
        end
      end
      
      class GoogleCloudDataplexV1Entity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access, as: 'access', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1StorageAccess, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1StorageAccess::Representation
      
          property :asset, as: 'asset'
          property :catalog_entry, as: 'catalogEntry'
          property :compatibility, as: 'compatibility', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntityCompatibilityStatus, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntityCompatibilityStatus::Representation
      
          property :create_time, as: 'createTime'
          property :data_path, as: 'dataPath'
          property :data_path_pattern, as: 'dataPathPattern'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :format, as: 'format', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1StorageFormat, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1StorageFormat::Representation
      
          property :id, as: 'id'
          property :name, as: 'name'
          property :schema, as: 'schema', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Schema, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Schema::Representation
      
          property :system, as: 'system'
          property :type, as: 'type'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1EntityCompatibilityStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery, as: 'bigquery', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility::Representation
      
          property :hive_metastore, as: 'hiveMetastore', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compatible, as: 'compatible'
          property :reason, as: 'reason'
        end
      end
      
      class GoogleCloudDataplexV1Entry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :aspects, as: 'aspects', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Aspect, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Aspect::Representation
      
          property :create_time, as: 'createTime'
          property :entry_source, as: 'entrySource', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntrySource, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntrySource::Representation
      
          property :entry_type, as: 'entryType'
          property :fully_qualified_name, as: 'fullyQualifiedName'
          property :name, as: 'name'
          property :parent_entry, as: 'parentEntry'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1EntryGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :transfer_status, as: 'transferStatus'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1EntryLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :entry_link_type, as: 'entryLinkType'
          collection :entry_references, as: 'entryReferences', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryLinkEntryReference, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryLinkEntryReference::Representation
      
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1EntryLinkEntryReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :path, as: 'path'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDataplexV1EntryLinkEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_type, as: 'eventType'
          property :message, as: 'message'
          property :resource, as: 'resource'
        end
      end
      
      class GoogleCloudDataplexV1EntrySource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ancestors, as: 'ancestors', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntrySourceAncestor, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntrySourceAncestor::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location, as: 'location'
          property :platform, as: 'platform'
          property :resource, as: 'resource'
          property :system, as: 'system'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1EntrySourceAncestor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDataplexV1EntryType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorization, as: 'authorization', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryTypeAuthorization, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryTypeAuthorization::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :platform, as: 'platform'
          collection :required_aspects, as: 'requiredAspects', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryTypeAspectInfo, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryTypeAspectInfo::Representation
      
          property :system, as: 'system'
          collection :type_aliases, as: 'typeAliases'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1EntryTypeAspectInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDataplexV1EntryTypeAuthorization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alternate_use_permission, as: 'alternateUsePermission'
        end
      end
      
      class GoogleCloudDataplexV1Environment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :endpoints, as: 'endpoints', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentEndpoints, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentEndpoints::Representation
      
          property :infrastructure_spec, as: 'infrastructureSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentInfrastructureSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentInfrastructureSpec::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :session_spec, as: 'sessionSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentSessionSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentSessionSpec::Representation
      
          property :session_status, as: 'sessionStatus', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentSessionStatus, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentSessionStatus::Representation
      
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1EnvironmentEndpoints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :notebooks, as: 'notebooks'
          property :sql, as: 'sql'
        end
      end
      
      class GoogleCloudDataplexV1EnvironmentInfrastructureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compute, as: 'compute', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources::Representation
      
          property :os_image, as: 'osImage', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_size_gb, as: 'diskSizeGb'
          property :max_node_count, as: 'maxNodeCount'
          property :node_count, as: 'nodeCount'
        end
      end
      
      class GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_version, as: 'imageVersion'
          collection :java_libraries, as: 'javaLibraries'
          hash :properties, as: 'properties'
          collection :python_packages, as: 'pythonPackages'
        end
      end
      
      class GoogleCloudDataplexV1EnvironmentSessionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_fast_startup, as: 'enableFastStartup'
          property :max_idle_duration, as: 'maxIdleDuration'
        end
      end
      
      class GoogleCloudDataplexV1EnvironmentSessionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active, as: 'active'
        end
      end
      
      class GoogleCloudDataplexV1GenerateDataQualityRulesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDataplexV1GenerateDataQualityRulesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rule, as: 'rule', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRule, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRule::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1Glossary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category_count, as: 'categoryCount'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :term_count, as: 'termCount'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1GlossaryCategory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :parent, as: 'parent'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1GlossaryTerm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :parent, as: 'parent'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1GovernanceEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity, as: 'entity', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1GovernanceEventEntity, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1GovernanceEventEntity::Representation
      
          property :event_type, as: 'eventType'
          property :message, as: 'message'
        end
      end
      
      class GoogleCloudDataplexV1GovernanceEventEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity, as: 'entity'
          property :entity_type, as: 'entityType'
        end
      end
      
      class GoogleCloudDataplexV1ImportItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aspect_keys, as: 'aspectKeys'
          property :entry, as: 'entry', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry::Representation
      
          property :entry_link, as: 'entryLink', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryLink, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryLink::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleCloudDataplexV1Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :execution_spec, as: 'executionSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskExecutionSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskExecutionSpec::Representation
      
          hash :labels, as: 'labels'
          property :message, as: 'message'
          property :name, as: 'name'
          property :retry_count, as: 'retryCount'
          property :service, as: 'service'
          property :service_job, as: 'serviceJob'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :trigger, as: 'trigger'
          property :uid, as: 'uid'
        end
      end
      
      class GoogleCloudDataplexV1JobEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :execution_trigger, as: 'executionTrigger'
          property :job_id, as: 'jobId'
          property :message, as: 'message'
          property :retries, as: 'retries'
          property :service, as: 'service'
          property :service_job, as: 'serviceJob'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDataplexV1Lake
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset_status, as: 'assetStatus', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetStatus, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetStatus::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :metastore, as: 'metastore', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1LakeMetastore, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1LakeMetastore::Representation
      
          property :metastore_status, as: 'metastoreStatus', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1LakeMetastoreStatus, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1LakeMetastoreStatus::Representation
      
          property :name, as: 'name'
          property :service_account, as: 'serviceAccount'
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1LakeMetastore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service'
        end
      end
      
      class GoogleCloudDataplexV1LakeMetastoreStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint, as: 'endpoint'
          property :message, as: 'message'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1ListActionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Action, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Action::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDataplexV1ListAspectTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aspect_types, as: 'aspectTypes', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectType, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectType::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable_locations, as: 'unreachableLocations'
        end
      end
      
      class GoogleCloudDataplexV1ListAssetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assets, as: 'assets', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Asset, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Asset::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDataplexV1ListContentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :content, as: 'content', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Content, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Content::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDataplexV1ListDataAttributeBindingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_attribute_bindings, as: 'dataAttributeBindings', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttributeBinding, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttributeBinding::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable_locations, as: 'unreachableLocations'
        end
      end
      
      class GoogleCloudDataplexV1ListDataAttributesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_attributes, as: 'dataAttributes', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttribute, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttribute::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable_locations, as: 'unreachableLocations'
        end
      end
      
      class GoogleCloudDataplexV1ListDataScanJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_scan_jobs, as: 'dataScanJobs', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanJob, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanJob::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDataplexV1ListDataScansResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_scans, as: 'dataScans', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScan, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScan::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class GoogleCloudDataplexV1ListDataTaxonomiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_taxonomies, as: 'dataTaxonomies', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataTaxonomy, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataTaxonomy::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable_locations, as: 'unreachableLocations'
        end
      end
      
      class GoogleCloudDataplexV1ListEncryptionConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :encryption_configs, as: 'encryptionConfigs', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EncryptionConfig, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EncryptionConfig::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable_locations, as: 'unreachableLocations'
        end
      end
      
      class GoogleCloudDataplexV1ListEntitiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Entity, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Entity::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDataplexV1ListEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDataplexV1ListEntryGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entry_groups, as: 'entryGroups', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryGroup, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryGroup::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable_locations, as: 'unreachableLocations'
        end
      end
      
      class GoogleCloudDataplexV1ListEntryTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entry_types, as: 'entryTypes', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryType, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryType::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable_locations, as: 'unreachableLocations'
        end
      end
      
      class GoogleCloudDataplexV1ListEnvironmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :environments, as: 'environments', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Environment, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Environment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDataplexV1ListGlossariesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :glossaries, as: 'glossaries', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Glossary, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Glossary::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable_locations, as: 'unreachableLocations'
        end
      end
      
      class GoogleCloudDataplexV1ListGlossaryCategoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryCategory, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryCategory::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable_locations, as: 'unreachableLocations'
        end
      end
      
      class GoogleCloudDataplexV1ListGlossaryTermsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :terms, as: 'terms', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryTerm, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryTerm::Representation
      
          collection :unreachable_locations, as: 'unreachableLocations'
        end
      end
      
      class GoogleCloudDataplexV1ListJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Job, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Job::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDataplexV1ListLakesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :lakes, as: 'lakes', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Lake, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Lake::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable_locations, as: 'unreachableLocations'
        end
      end
      
      class GoogleCloudDataplexV1ListMetadataJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metadata_jobs, as: 'metadataJobs', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJob, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJob::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable_locations, as: 'unreachableLocations'
        end
      end
      
      class GoogleCloudDataplexV1ListPartitionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :partitions, as: 'partitions', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Partition, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Partition::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1ListSessionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sessions, as: 'sessions', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Session, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Session::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1ListTasksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tasks, as: 'tasks', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Task, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Task::Representation
      
          collection :unreachable_locations, as: 'unreachableLocations'
        end
      end
      
      class GoogleCloudDataplexV1ListZonesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :zones, as: 'zones', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Zone, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Zone::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1MetadataJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :export_result, as: 'exportResult', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJobExportJobResult, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJobExportJobResult::Representation
      
          property :export_spec, as: 'exportSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJobExportJobSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJobExportJobSpec::Representation
      
          property :import_result, as: 'importResult', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJobImportJobResult, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJobImportJobResult::Representation
      
          property :import_spec, as: 'importSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJobImportJobSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJobImportJobSpec::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :status, as: 'status', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJobStatus, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJobStatus::Representation
      
          property :type, as: 'type'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1MetadataJobExportJobResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message, as: 'errorMessage'
          property :exported_entries, :numeric_string => true, as: 'exportedEntries'
        end
      end
      
      class GoogleCloudDataplexV1MetadataJobExportJobSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_path, as: 'outputPath'
          property :scope, as: 'scope', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJobExportJobSpecExportJobScope, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJobExportJobSpecExportJobScope::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1MetadataJobExportJobSpecExportJobScope
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aspect_types, as: 'aspectTypes'
          collection :entry_groups, as: 'entryGroups'
          collection :entry_types, as: 'entryTypes'
          property :organization_level, as: 'organizationLevel'
          collection :projects, as: 'projects'
        end
      end
      
      class GoogleCloudDataplexV1MetadataJobImportJobResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :created_entries, :numeric_string => true, as: 'createdEntries'
          property :created_entry_links, :numeric_string => true, as: 'createdEntryLinks'
          property :deleted_entries, :numeric_string => true, as: 'deletedEntries'
          property :deleted_entry_links, :numeric_string => true, as: 'deletedEntryLinks'
          property :recreated_entries, :numeric_string => true, as: 'recreatedEntries'
          property :unchanged_entries, :numeric_string => true, as: 'unchangedEntries'
          property :unchanged_entry_links, :numeric_string => true, as: 'unchangedEntryLinks'
          property :update_time, as: 'updateTime'
          property :updated_entries, :numeric_string => true, as: 'updatedEntries'
        end
      end
      
      class GoogleCloudDataplexV1MetadataJobImportJobSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aspect_sync_mode, as: 'aspectSyncMode'
          property :entry_sync_mode, as: 'entrySyncMode'
          property :log_level, as: 'logLevel'
          property :scope, as: 'scope', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJobImportJobSpecImportJobScope, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJobImportJobSpecImportJobScope::Representation
      
          property :source_create_time, as: 'sourceCreateTime'
          property :source_storage_uri, as: 'sourceStorageUri'
        end
      end
      
      class GoogleCloudDataplexV1MetadataJobImportJobSpecImportJobScope
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aspect_types, as: 'aspectTypes'
          collection :entry_groups, as: 'entryGroups'
          collection :entry_link_types, as: 'entryLinkTypes'
          collection :entry_types, as: 'entryTypes'
          collection :glossaries, as: 'glossaries'
          collection :referenced_entry_scopes, as: 'referencedEntryScopes'
        end
      end
      
      class GoogleCloudDataplexV1MetadataJobStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :completion_percent, as: 'completionPercent'
          property :message, as: 'message'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1OperationMetadata
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
      
      class GoogleCloudDataplexV1Partition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :location, as: 'location'
          property :name, as: 'name'
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudDataplexV1ResourceAccessSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :owners, as: 'owners'
          collection :readers, as: 'readers'
          collection :writers, as: 'writers'
        end
      end
      
      class GoogleCloudDataplexV1RunDataScanRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDataplexV1RunDataScanResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job, as: 'job', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanJob, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanJob::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1RunTaskRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :args, as: 'args'
          hash :labels, as: 'labels'
        end
      end
      
      class GoogleCloudDataplexV1RunTaskResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job, as: 'job', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Job, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Job::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1ScannedData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :incremental_field, as: 'incrementalField', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ScannedDataIncrementalField, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ScannedDataIncrementalField::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1ScannedDataIncrementalField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, as: 'end'
          property :field, as: 'field'
          property :start, as: 'start'
        end
      end
      
      class GoogleCloudDataplexV1Schema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1SchemaSchemaField, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1SchemaSchemaField::Representation
      
          collection :partition_fields, as: 'partitionFields', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1SchemaPartitionField, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1SchemaPartitionField::Representation
      
          property :partition_style, as: 'partitionStyle'
          property :user_managed, as: 'userManaged'
        end
      end
      
      class GoogleCloudDataplexV1SchemaPartitionField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDataplexV1SchemaSchemaField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :fields, as: 'fields', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1SchemaSchemaField, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1SchemaSchemaField::Representation
      
          property :mode, as: 'mode'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDataplexV1SearchEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :results, as: 'results', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1SearchEntriesResult, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1SearchEntriesResult::Representation
      
          property :total_size, as: 'totalSize'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class GoogleCloudDataplexV1SearchEntriesResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataplex_entry, as: 'dataplexEntry', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry::Representation
      
          property :linked_resource, as: 'linkedResource'
          property :snippets, as: 'snippets', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1SearchEntriesResultSnippets, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1SearchEntriesResultSnippets::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1SearchEntriesResultSnippets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataplex_entry, as: 'dataplexEntry', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1Session
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :state, as: 'state'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudDataplexV1SessionEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_succeeded, as: 'eventSucceeded'
          property :fast_startup_enabled, as: 'fastStartupEnabled'
          property :message, as: 'message'
          property :query, as: 'query', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1SessionEventQueryDetail, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1SessionEventQueryDetail::Representation
      
          property :session_id, as: 'sessionId'
          property :type, as: 'type'
          property :unassigned_duration, as: 'unassignedDuration'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudDataplexV1SessionEventQueryDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_processed_bytes, :numeric_string => true, as: 'dataProcessedBytes'
          property :duration, as: 'duration'
          property :engine, as: 'engine'
          property :query_id, as: 'queryId'
          property :query_text, as: 'queryText'
          property :result_size_bytes, :numeric_string => true, as: 'resultSizeBytes'
        end
      end
      
      class GoogleCloudDataplexV1StorageAccess
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :read, as: 'read'
        end
      end
      
      class GoogleCloudDataplexV1StorageFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compression_format, as: 'compressionFormat'
          property :csv, as: 'csv', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1StorageFormatCsvOptions, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1StorageFormatCsvOptions::Representation
      
          property :format, as: 'format'
          property :iceberg, as: 'iceberg', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1StorageFormatIcebergOptions, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1StorageFormatIcebergOptions::Representation
      
          property :json, as: 'json', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1StorageFormatJsonOptions, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1StorageFormatJsonOptions::Representation
      
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDataplexV1StorageFormatCsvOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delimiter, as: 'delimiter'
          property :encoding, as: 'encoding'
          property :header_rows, as: 'headerRows'
          property :quote, as: 'quote'
        end
      end
      
      class GoogleCloudDataplexV1StorageFormatIcebergOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metadata_location, as: 'metadataLocation'
        end
      end
      
      class GoogleCloudDataplexV1StorageFormatJsonOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoding, as: 'encoding'
        end
      end
      
      class GoogleCloudDataplexV1Task
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :execution_spec, as: 'executionSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskExecutionSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskExecutionSpec::Representation
      
          property :execution_status, as: 'executionStatus', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskExecutionStatus, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskExecutionStatus::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :notebook, as: 'notebook', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskNotebookTaskConfig, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskNotebookTaskConfig::Representation
      
          property :spark, as: 'spark', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskSparkTaskConfig, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskSparkTaskConfig::Representation
      
          property :state, as: 'state'
          property :trigger_spec, as: 'triggerSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskTriggerSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskTriggerSpec::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1TaskExecutionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :args, as: 'args'
          property :kms_key, as: 'kmsKey'
          property :max_job_execution_lifetime, as: 'maxJobExecutionLifetime'
          property :project, as: 'project'
          property :service_account, as: 'serviceAccount'
        end
      end
      
      class GoogleCloudDataplexV1TaskExecutionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latest_job, as: 'latestJob', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1Job, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1Job::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1TaskInfrastructureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch, as: 'batch', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources::Representation
      
          property :container_image, as: 'containerImage', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime::Representation
      
          property :vpc_network, as: 'vpcNetwork', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :executors_count, as: 'executorsCount'
          property :max_executors_count, as: 'maxExecutorsCount'
        end
      end
      
      class GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image, as: 'image'
          collection :java_jars, as: 'javaJars'
          hash :properties, as: 'properties'
          collection :python_packages, as: 'pythonPackages'
        end
      end
      
      class GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network, as: 'network'
          collection :network_tags, as: 'networkTags'
          property :sub_network, as: 'subNetwork'
        end
      end
      
      class GoogleCloudDataplexV1TaskNotebookTaskConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :archive_uris, as: 'archiveUris'
          collection :file_uris, as: 'fileUris'
          property :infrastructure_spec, as: 'infrastructureSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpec::Representation
      
          property :notebook, as: 'notebook'
        end
      end
      
      class GoogleCloudDataplexV1TaskSparkTaskConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :archive_uris, as: 'archiveUris'
          collection :file_uris, as: 'fileUris'
          property :infrastructure_spec, as: 'infrastructureSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpec::Representation
      
          property :main_class, as: 'mainClass'
          property :main_jar_file_uri, as: 'mainJarFileUri'
          property :python_script_file, as: 'pythonScriptFile'
          property :sql_script, as: 'sqlScript'
          property :sql_script_file, as: 'sqlScriptFile'
        end
      end
      
      class GoogleCloudDataplexV1TaskTriggerSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
          property :max_retries, as: 'maxRetries'
          property :schedule, as: 'schedule'
          property :start_time, as: 'startTime'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDataplexV1Trigger
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :on_demand, as: 'onDemand', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1TriggerOnDemand, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1TriggerOnDemand::Representation
      
          property :schedule, as: 'schedule', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1TriggerSchedule, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1TriggerSchedule::Representation
      
        end
      end
      
      class GoogleCloudDataplexV1TriggerOnDemand
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDataplexV1TriggerSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cron, as: 'cron'
        end
      end
      
      class GoogleCloudDataplexV1Zone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset_status, as: 'assetStatus', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetStatus, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetStatus::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :discovery_spec, as: 'discoverySpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ZoneDiscoverySpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ZoneDiscoverySpec::Representation
      
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :resource_spec, as: 'resourceSpec', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ZoneResourceSpec, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ZoneResourceSpec::Representation
      
          property :state, as: 'state'
          property :type, as: 'type'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDataplexV1ZoneDiscoverySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :csv_options, as: 'csvOptions', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions::Representation
      
          property :enabled, as: 'enabled'
          collection :exclude_patterns, as: 'excludePatterns'
          collection :include_patterns, as: 'includePatterns'
          property :json_options, as: 'jsonOptions', class: Google::Apis::DataplexV1::GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions, decorator: Google::Apis::DataplexV1::GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions::Representation
      
          property :schedule, as: 'schedule'
        end
      end
      
      class GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delimiter, as: 'delimiter'
          property :disable_type_inference, as: 'disableTypeInference'
          property :encoding, as: 'encoding'
          property :header_rows, as: 'headerRows'
        end
      end
      
      class GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_type_inference, as: 'disableTypeInference'
          property :encoding, as: 'encoding'
        end
      end
      
      class GoogleCloudDataplexV1ZoneResourceSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location_type, as: 'locationType'
        end
      end
      
      class GoogleCloudLocationListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::DataplexV1::GoogleCloudLocationLocation, decorator: Google::Apis::DataplexV1::GoogleCloudLocationLocation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudLocationLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class GoogleIamV1AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::DataplexV1::GoogleIamV1AuditLogConfig, decorator: Google::Apis::DataplexV1::GoogleIamV1AuditLogConfig::Representation
      
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
          property :condition, as: 'condition', class: Google::Apis::DataplexV1::GoogleTypeExpr, decorator: Google::Apis::DataplexV1::GoogleTypeExpr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class GoogleIamV1Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::DataplexV1::GoogleIamV1AuditConfig, decorator: Google::Apis::DataplexV1::GoogleIamV1AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::DataplexV1::GoogleIamV1Binding, decorator: Google::Apis::DataplexV1::GoogleIamV1Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class GoogleIamV1SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::DataplexV1::GoogleIamV1Policy, decorator: Google::Apis::DataplexV1::GoogleIamV1Policy::Representation
      
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
      
      class GoogleLongrunningCancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DataplexV1::GoogleLongrunningOperation, decorator: Google::Apis::DataplexV1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DataplexV1::GoogleRpcStatus, decorator: Google::Apis::DataplexV1::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
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
    end
  end
end
