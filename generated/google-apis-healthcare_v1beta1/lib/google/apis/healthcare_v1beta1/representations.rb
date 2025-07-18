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
    module HealthcareV1beta1
      
      class AccessDeterminationLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Action
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActivateConsentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdminConsents
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzeEntitiesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzeEntitiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplyAdminConsentsErrorDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplyAdminConsentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplyAdminConsentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplyConsentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplyConsentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ArchiveUserDataMappingRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ArchiveUserDataMappingResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttributeDefinition
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
      
      class BatchGetMessagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BlobStorageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BlobStorageSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkExportGcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CharacterMaskConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CharacterMaskField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckDataAccessRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckDataAccessResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CleanDescriptorsOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CleanTextField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CleanTextTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigureSearchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Consent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConsentAccessorScope
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConsentArtifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConsentConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConsentErrors
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConsentEvaluation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConsentHeaderHandling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConsentList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConsentStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContextualDeidConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateMessageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CryptoHashConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CryptoHashField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Dataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateShiftConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateShiftField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeidentifiedStoreDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeidentifyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeidentifyDatasetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeidentifyDicomStoreRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeidentifyFhirStoreRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeidentifyOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeidentifySummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DicomConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DicomFilterConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DicomStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DicomStoreMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DicomTagConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncryptionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Entity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntityMention
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntityMentionRelationship
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EvaluateUserConsentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EvaluateUserConsentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExplainDataAccessConsentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExplainDataAccessConsentScope
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExplainDataAccessResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportDicomDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportDicomDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportMessagesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportMessagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportResourcesHistoryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportResourcesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Feature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FhirConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FhirFieldConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FhirFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FhirNotificationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FhirOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FhirStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FhirStoreMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FhirStoreMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Field
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FieldMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudHealthcareV1beta1ConsentGcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudHealthcareV1beta1ConsentPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudHealthcareV1beta1DeidentifyDeidentifyDicomStoreSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudHealthcareV1beta1DeidentifyDeidentifyFhirStoreSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudHealthcareV1beta1DeidentifyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudHealthcareV1beta1DicomBigQueryDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudHealthcareV1beta1DicomGcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudHealthcareV1beta1DicomGcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudHealthcareV1beta1DicomStreamConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudHealthcareV1beta1FhirBigQueryDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudHealthcareV1beta1FhirChangeDataCaptureConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudHealthcareV1beta1FhirExportResourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudHealthcareV1beta1FhirGcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudHealthcareV1beta1FhirGcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudHealthcareV1beta1FhirImportResourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GroupOrSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Hl7SchemaConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Hl7TypesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Hl7V2NotificationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Hl7V2Store
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Hl7V2StoreMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Hl7V2StoreMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportDicomDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportDicomDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportMessagesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportMessagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportResourcesHistoryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportResourcesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InfoTypeTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IngestMessageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IngestMessageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeepExtensionsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeepField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeepTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KmsWrappedCryptoKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinkedEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAttributeDefinitionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConsentArtifactsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConsentRevisionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConsentStoresResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConsentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDatasetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDicomStoresResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFhirStoresResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListHl7V2StoresResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMessagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUserDataMappingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Message
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NotificationConfig
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
      
      class Options
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ParsedData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ParserConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PatientId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PatientScope
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProgressCounter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PubsubDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryAccessibleDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryAccessibleDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecurseTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RedactConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegenUidTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RejectConsentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplaceWithInfoTypeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResetTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Resources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Result
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RevokeConsentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollbackFhirResourceFilteringFields
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollbackFhirResourcesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollbackFhirResourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollbackHl7MessagesFilteringFields
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollbackHl7V2MessagesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollbackHl7V2MessagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchemaConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchemaGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchemaPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchemaSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchematizedData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchResourcesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Segment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SeriesMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetBlobStorageSettingsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetBlobStorageSettingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Signature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StructuredStorageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StudyMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TagFilterList
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
      
      class TextConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextSpan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimePartitioning
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Type
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserDataMapping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VersionSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccessDeterminationLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :log_level, as: 'logLevel'
        end
      end
      
      class Action
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :clean_image_tag, as: 'cleanImageTag', class: Google::Apis::HealthcareV1beta1::ImageConfig, decorator: Google::Apis::HealthcareV1beta1::ImageConfig::Representation
      
          property :clean_text_tag, as: 'cleanTextTag', class: Google::Apis::HealthcareV1beta1::CleanTextTag, decorator: Google::Apis::HealthcareV1beta1::CleanTextTag::Representation
      
          property :delete_tag, as: 'deleteTag', class: Google::Apis::HealthcareV1beta1::DeleteTag, decorator: Google::Apis::HealthcareV1beta1::DeleteTag::Representation
      
          property :keep_tag, as: 'keepTag', class: Google::Apis::HealthcareV1beta1::KeepTag, decorator: Google::Apis::HealthcareV1beta1::KeepTag::Representation
      
          collection :queries, as: 'queries'
          property :recurse_tag, as: 'recurseTag', class: Google::Apis::HealthcareV1beta1::RecurseTag, decorator: Google::Apis::HealthcareV1beta1::RecurseTag::Representation
      
          property :regen_uid_tag, as: 'regenUidTag', class: Google::Apis::HealthcareV1beta1::RegenUidTag, decorator: Google::Apis::HealthcareV1beta1::RegenUidTag::Representation
      
          property :remove_tag, as: 'removeTag', class: Google::Apis::HealthcareV1beta1::RemoveTag, decorator: Google::Apis::HealthcareV1beta1::RemoveTag::Representation
      
          property :reset_tag, as: 'resetTag', class: Google::Apis::HealthcareV1beta1::ResetTag, decorator: Google::Apis::HealthcareV1beta1::ResetTag::Representation
      
        end
      end
      
      class ActivateConsentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consent_artifact, as: 'consentArtifact'
          property :expire_time, as: 'expireTime'
          property :ttl, as: 'ttl'
        end
      end
      
      class AdminConsents
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :names, as: 'names'
        end
      end
      
      class AnalyzeEntitiesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alternative_output_format, as: 'alternativeOutputFormat'
          property :document_content, as: 'documentContent'
          collection :licensed_vocabularies, as: 'licensedVocabularies'
        end
      end
      
      class AnalyzeEntitiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities', class: Google::Apis::HealthcareV1beta1::Entity, decorator: Google::Apis::HealthcareV1beta1::Entity::Representation
      
          collection :entity_mentions, as: 'entityMentions', class: Google::Apis::HealthcareV1beta1::EntityMention, decorator: Google::Apis::HealthcareV1beta1::EntityMention::Representation
      
          property :fhir_bundle, as: 'fhirBundle'
          collection :relationships, as: 'relationships', class: Google::Apis::HealthcareV1beta1::EntityMentionRelationship, decorator: Google::Apis::HealthcareV1beta1::EntityMentionRelationship::Representation
      
        end
      end
      
      class ApplyAdminConsentsErrorDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :consent_errors, as: 'consentErrors', class: Google::Apis::HealthcareV1beta1::ConsentErrors, decorator: Google::Apis::HealthcareV1beta1::ConsentErrors::Representation
      
          property :existing_operation_id, :numeric_string => true, as: 'existingOperationId'
        end
      end
      
      class ApplyAdminConsentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_consents_list, as: 'newConsentsList', class: Google::Apis::HealthcareV1beta1::AdminConsents, decorator: Google::Apis::HealthcareV1beta1::AdminConsents::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class ApplyAdminConsentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :affected_resources, :numeric_string => true, as: 'affectedResources'
          property :consent_apply_success, :numeric_string => true, as: 'consentApplySuccess'
          property :failed_resources, :numeric_string => true, as: 'failedResources'
        end
      end
      
      class ApplyConsentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :patient_scope, as: 'patientScope', class: Google::Apis::HealthcareV1beta1::PatientScope, decorator: Google::Apis::HealthcareV1beta1::PatientScope::Representation
      
          property :time_range, as: 'timeRange', class: Google::Apis::HealthcareV1beta1::TimeRange, decorator: Google::Apis::HealthcareV1beta1::TimeRange::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class ApplyConsentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :affected_resources, :numeric_string => true, as: 'affectedResources'
          property :consent_apply_failure, :numeric_string => true, as: 'consentApplyFailure'
          property :consent_apply_success, :numeric_string => true, as: 'consentApplySuccess'
          property :failed_resources, :numeric_string => true, as: 'failedResources'
        end
      end
      
      class ArchiveUserDataMappingRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ArchiveUserDataMappingResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Attribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_definition_id, as: 'attributeDefinitionId'
          collection :values, as: 'values'
        end
      end
      
      class AttributeDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_values, as: 'allowedValues'
          property :category, as: 'category'
          collection :consent_default_values, as: 'consentDefaultValues'
          property :data_mapping_default_value, as: 'dataMappingDefaultValue'
          property :description, as: 'description'
          property :name, as: 'name'
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::HealthcareV1beta1::AuditLogConfig, decorator: Google::Apis::HealthcareV1beta1::AuditLogConfig::Representation
      
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
      
      class BatchGetMessagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :messages, as: 'messages', class: Google::Apis::HealthcareV1beta1::Message, decorator: Google::Apis::HealthcareV1beta1::Message::Representation
      
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::HealthcareV1beta1::Expr, decorator: Google::Apis::HealthcareV1beta1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class BlobStorageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :size_bytes, :numeric_string => true, as: 'sizeBytes'
          property :storage_class, as: 'storageClass'
          property :storage_class_update_time, as: 'storageClassUpdateTime'
        end
      end
      
      class BlobStorageSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob_storage_class, as: 'blobStorageClass'
        end
      end
      
      class BulkExportGcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri_prefix, as: 'uriPrefix'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CharacterMaskConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :masking_character, as: 'maskingCharacter'
        end
      end
      
      class CharacterMaskField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CheckDataAccessRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consent_list, as: 'consentList', class: Google::Apis::HealthcareV1beta1::ConsentList, decorator: Google::Apis::HealthcareV1beta1::ConsentList::Representation
      
          property :data_id, as: 'dataId'
          hash :request_attributes, as: 'requestAttributes'
          property :response_view, as: 'responseView'
        end
      end
      
      class CheckDataAccessResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :consent_details, as: 'consentDetails', class: Google::Apis::HealthcareV1beta1::ConsentEvaluation, decorator: Google::Apis::HealthcareV1beta1::ConsentEvaluation::Representation
      
          property :consented, as: 'consented'
        end
      end
      
      class CleanDescriptorsOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CleanTextField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CleanTextTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ConfigureSearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :canonical_urls, as: 'canonicalUrls'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class Consent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consent_artifact, as: 'consentArtifact'
          property :expire_time, as: 'expireTime'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          collection :policies, as: 'policies', class: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1ConsentPolicy, decorator: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1ConsentPolicy::Representation
      
          property :revision_create_time, as: 'revisionCreateTime'
          property :revision_id, as: 'revisionId'
          property :state, as: 'state'
          property :ttl, as: 'ttl'
          property :user_id, as: 'userId'
        end
      end
      
      class ConsentAccessorScope
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :actor, as: 'actor'
          property :environment, as: 'environment'
          property :purpose, as: 'purpose'
        end
      end
      
      class ConsentArtifact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :consent_content_screenshots, as: 'consentContentScreenshots', class: Google::Apis::HealthcareV1beta1::Image, decorator: Google::Apis::HealthcareV1beta1::Image::Representation
      
          property :consent_content_version, as: 'consentContentVersion'
          property :guardian_signature, as: 'guardianSignature', class: Google::Apis::HealthcareV1beta1::Signature, decorator: Google::Apis::HealthcareV1beta1::Signature::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          property :user_id, as: 'userId'
          property :user_signature, as: 'userSignature', class: Google::Apis::HealthcareV1beta1::Signature, decorator: Google::Apis::HealthcareV1beta1::Signature::Representation
      
          property :witness_signature, as: 'witnessSignature', class: Google::Apis::HealthcareV1beta1::Signature, decorator: Google::Apis::HealthcareV1beta1::Signature::Representation
      
        end
      end
      
      class ConsentConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_determination_log_config, as: 'accessDeterminationLogConfig', class: Google::Apis::HealthcareV1beta1::AccessDeterminationLogConfig, decorator: Google::Apis::HealthcareV1beta1::AccessDeterminationLogConfig::Representation
      
          property :access_enforced, as: 'accessEnforced'
          property :consent_header_handling, as: 'consentHeaderHandling', class: Google::Apis::HealthcareV1beta1::ConsentHeaderHandling, decorator: Google::Apis::HealthcareV1beta1::ConsentHeaderHandling::Representation
      
          collection :enforced_admin_consents, as: 'enforcedAdminConsents'
          property :version, as: 'version'
        end
      end
      
      class ConsentErrors
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::HealthcareV1beta1::Status, decorator: Google::Apis::HealthcareV1beta1::Status::Representation
      
          property :name, as: 'name'
        end
      end
      
      class ConsentEvaluation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :evaluation_result, as: 'evaluationResult'
        end
      end
      
      class ConsentHeaderHandling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :profile, as: 'profile'
        end
      end
      
      class ConsentList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :consents, as: 'consents'
        end
      end
      
      class ConsentStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_consent_ttl, as: 'defaultConsentTtl'
          property :enable_consent_create_on_update, as: 'enableConsentCreateOnUpdate'
          hash :labels, as: 'labels'
          property :name, as: 'name'
        end
      end
      
      class ContextualDeidConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CreateMessageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message', class: Google::Apis::HealthcareV1beta1::Message, decorator: Google::Apis::HealthcareV1beta1::Message::Representation
      
        end
      end
      
      class CryptoHashConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crypto_key, :base64 => true, as: 'cryptoKey'
          property :kms_wrapped, as: 'kmsWrapped', class: Google::Apis::HealthcareV1beta1::KmsWrappedCryptoKey, decorator: Google::Apis::HealthcareV1beta1::KmsWrappedCryptoKey::Representation
      
        end
      end
      
      class CryptoHashField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Dataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::HealthcareV1beta1::EncryptionSpec, decorator: Google::Apis::HealthcareV1beta1::EncryptionSpec::Representation
      
          property :name, as: 'name'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class DateShiftConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crypto_key, :base64 => true, as: 'cryptoKey'
          property :kms_wrapped, as: 'kmsWrapped', class: Google::Apis::HealthcareV1beta1::KmsWrappedCryptoKey, decorator: Google::Apis::HealthcareV1beta1::KmsWrappedCryptoKey::Representation
      
        end
      end
      
      class DateShiftField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DeidentifiedStoreDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::HealthcareV1beta1::DeidentifyConfig, decorator: Google::Apis::HealthcareV1beta1::DeidentifyConfig::Representation
      
          property :store, as: 'store'
        end
      end
      
      class DeidentifyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dicom, as: 'dicom', class: Google::Apis::HealthcareV1beta1::DicomConfig, decorator: Google::Apis::HealthcareV1beta1::DicomConfig::Representation
      
          property :dicom_tag_config, as: 'dicomTagConfig', class: Google::Apis::HealthcareV1beta1::DicomTagConfig, decorator: Google::Apis::HealthcareV1beta1::DicomTagConfig::Representation
      
          property :fhir, as: 'fhir', class: Google::Apis::HealthcareV1beta1::FhirConfig, decorator: Google::Apis::HealthcareV1beta1::FhirConfig::Representation
      
          property :fhir_field_config, as: 'fhirFieldConfig', class: Google::Apis::HealthcareV1beta1::FhirFieldConfig, decorator: Google::Apis::HealthcareV1beta1::FhirFieldConfig::Representation
      
          property :image, as: 'image', class: Google::Apis::HealthcareV1beta1::ImageConfig, decorator: Google::Apis::HealthcareV1beta1::ImageConfig::Representation
      
          property :operation_metadata, as: 'operationMetadata', class: Google::Apis::HealthcareV1beta1::DeidentifyOperationMetadata, decorator: Google::Apis::HealthcareV1beta1::DeidentifyOperationMetadata::Representation
      
          property :text, as: 'text', class: Google::Apis::HealthcareV1beta1::TextConfig, decorator: Google::Apis::HealthcareV1beta1::TextConfig::Representation
      
          property :use_regional_data_processing, as: 'useRegionalDataProcessing'
        end
      end
      
      class DeidentifyDatasetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::HealthcareV1beta1::DeidentifyConfig, decorator: Google::Apis::HealthcareV1beta1::DeidentifyConfig::Representation
      
          property :destination_dataset, as: 'destinationDataset'
          property :gcs_config_uri, as: 'gcsConfigUri'
        end
      end
      
      class DeidentifyDicomStoreRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::HealthcareV1beta1::DeidentifyConfig, decorator: Google::Apis::HealthcareV1beta1::DeidentifyConfig::Representation
      
          property :destination_store, as: 'destinationStore'
          property :filter_config, as: 'filterConfig', class: Google::Apis::HealthcareV1beta1::DicomFilterConfig, decorator: Google::Apis::HealthcareV1beta1::DicomFilterConfig::Representation
      
          property :gcs_config_uri, as: 'gcsConfigUri'
        end
      end
      
      class DeidentifyFhirStoreRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::HealthcareV1beta1::DeidentifyConfig, decorator: Google::Apis::HealthcareV1beta1::DeidentifyConfig::Representation
      
          property :destination_store, as: 'destinationStore'
          property :gcs_config_uri, as: 'gcsConfigUri'
          property :resource_filter, as: 'resourceFilter', class: Google::Apis::HealthcareV1beta1::FhirFilter, decorator: Google::Apis::HealthcareV1beta1::FhirFilter::Representation
      
          property :skip_modified_resources, as: 'skipModifiedResources'
        end
      end
      
      class DeidentifyOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fhir_output, as: 'fhirOutput', class: Google::Apis::HealthcareV1beta1::FhirOutput, decorator: Google::Apis::HealthcareV1beta1::FhirOutput::Representation
      
        end
      end
      
      class DeidentifySummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DeleteTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DicomConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter_profile, as: 'filterProfile'
          property :keep_list, as: 'keepList', class: Google::Apis::HealthcareV1beta1::TagFilterList, decorator: Google::Apis::HealthcareV1beta1::TagFilterList::Representation
      
          property :remove_list, as: 'removeList', class: Google::Apis::HealthcareV1beta1::TagFilterList, decorator: Google::Apis::HealthcareV1beta1::TagFilterList::Representation
      
          property :skip_id_redaction, as: 'skipIdRedaction'
        end
      end
      
      class DicomFilterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_paths_gcs_uri, as: 'resourcePathsGcsUri'
        end
      end
      
      class DicomStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :notification_config, as: 'notificationConfig', class: Google::Apis::HealthcareV1beta1::NotificationConfig, decorator: Google::Apis::HealthcareV1beta1::NotificationConfig::Representation
      
          collection :stream_configs, as: 'streamConfigs', class: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1DicomStreamConfig, decorator: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1DicomStreamConfig::Representation
      
        end
      end
      
      class DicomStoreMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob_storage_size_bytes, :numeric_string => true, as: 'blobStorageSizeBytes'
          property :instance_count, :numeric_string => true, as: 'instanceCount'
          property :name, as: 'name'
          property :series_count, :numeric_string => true, as: 'seriesCount'
          property :structured_storage_size_bytes, :numeric_string => true, as: 'structuredStorageSizeBytes'
          property :study_count, :numeric_string => true, as: 'studyCount'
        end
      end
      
      class DicomTagConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::HealthcareV1beta1::Action, decorator: Google::Apis::HealthcareV1beta1::Action::Representation
      
          property :options, as: 'options', class: Google::Apis::HealthcareV1beta1::Options, decorator: Google::Apis::HealthcareV1beta1::Options::Representation
      
          property :profile_type, as: 'profileType'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EncryptionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class Entity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_id, as: 'entityId'
          property :preferred_term, as: 'preferredTerm'
          collection :vocabulary_codes, as: 'vocabularyCodes'
        end
      end
      
      class EntityMention
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_info, as: 'additionalInfo', class: Google::Apis::HealthcareV1beta1::Feature, decorator: Google::Apis::HealthcareV1beta1::Feature::Representation
      
          property :certainty_assessment, as: 'certaintyAssessment', class: Google::Apis::HealthcareV1beta1::Feature, decorator: Google::Apis::HealthcareV1beta1::Feature::Representation
      
          property :confidence, as: 'confidence'
          collection :linked_entities, as: 'linkedEntities', class: Google::Apis::HealthcareV1beta1::LinkedEntity, decorator: Google::Apis::HealthcareV1beta1::LinkedEntity::Representation
      
          property :mention_id, as: 'mentionId'
          property :subject, as: 'subject', class: Google::Apis::HealthcareV1beta1::Feature, decorator: Google::Apis::HealthcareV1beta1::Feature::Representation
      
          property :temporal_assessment, as: 'temporalAssessment', class: Google::Apis::HealthcareV1beta1::Feature, decorator: Google::Apis::HealthcareV1beta1::Feature::Representation
      
          property :text, as: 'text', class: Google::Apis::HealthcareV1beta1::TextSpan, decorator: Google::Apis::HealthcareV1beta1::TextSpan::Representation
      
          property :type, as: 'type'
        end
      end
      
      class EntityMentionRelationship
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :object_id_prop, as: 'objectId'
          property :subject_id, as: 'subjectId'
        end
      end
      
      class EvaluateUserConsentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consent_list, as: 'consentList', class: Google::Apis::HealthcareV1beta1::ConsentList, decorator: Google::Apis::HealthcareV1beta1::ConsentList::Representation
      
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          hash :request_attributes, as: 'requestAttributes'
          hash :resource_attributes, as: 'resourceAttributes'
          property :response_view, as: 'responseView'
          property :user_id, as: 'userId'
        end
      end
      
      class EvaluateUserConsentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :results, as: 'results', class: Google::Apis::HealthcareV1beta1::Result, decorator: Google::Apis::HealthcareV1beta1::Result::Representation
      
        end
      end
      
      class ExplainDataAccessConsentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cascade_origins, as: 'cascadeOrigins'
          property :consent_resource, as: 'consentResource'
          property :enforcement_time, as: 'enforcementTime'
          collection :matching_accessor_scopes, as: 'matchingAccessorScopes', class: Google::Apis::HealthcareV1beta1::ConsentAccessorScope, decorator: Google::Apis::HealthcareV1beta1::ConsentAccessorScope::Representation
      
          property :patient_consent_owner, as: 'patientConsentOwner'
          property :type, as: 'type'
          collection :variants, as: 'variants'
        end
      end
      
      class ExplainDataAccessConsentScope
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accessor_scope, as: 'accessorScope', class: Google::Apis::HealthcareV1beta1::ConsentAccessorScope, decorator: Google::Apis::HealthcareV1beta1::ConsentAccessorScope::Representation
      
          property :decision, as: 'decision'
          collection :enforcing_consents, as: 'enforcingConsents', class: Google::Apis::HealthcareV1beta1::ExplainDataAccessConsentInfo, decorator: Google::Apis::HealthcareV1beta1::ExplainDataAccessConsentInfo::Representation
      
          collection :exceptions, as: 'exceptions', class: Google::Apis::HealthcareV1beta1::ExplainDataAccessConsentScope, decorator: Google::Apis::HealthcareV1beta1::ExplainDataAccessConsentScope::Representation
      
        end
      end
      
      class ExplainDataAccessResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :consent_scopes, as: 'consentScopes', class: Google::Apis::HealthcareV1beta1::ExplainDataAccessConsentScope, decorator: Google::Apis::HealthcareV1beta1::ExplainDataAccessConsentScope::Representation
      
          property :warning, as: 'warning'
        end
      end
      
      class ExportDicomDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_destination, as: 'bigqueryDestination', class: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1DicomBigQueryDestination, decorator: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1DicomBigQueryDestination::Representation
      
          property :filter_config, as: 'filterConfig', class: Google::Apis::HealthcareV1beta1::DicomFilterConfig, decorator: Google::Apis::HealthcareV1beta1::DicomFilterConfig::Representation
      
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1DicomGcsDestination, decorator: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1DicomGcsDestination::Representation
      
        end
      end
      
      class ExportDicomDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ExportMessagesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :filter, as: 'filter'
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::HealthcareV1beta1::GcsDestination, decorator: Google::Apis::HealthcareV1beta1::GcsDestination::Representation
      
          property :pubsub_destination, as: 'pubsubDestination', class: Google::Apis::HealthcareV1beta1::PubsubDestination, decorator: Google::Apis::HealthcareV1beta1::PubsubDestination::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class ExportMessagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ExportResourcesHistoryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :_since, as: '_since'
          property :_type, as: '_type'
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1FhirGcsDestination, decorator: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1FhirGcsDestination::Representation
      
          property :max_resource_versions, :numeric_string => true, as: 'maxResourceVersions'
        end
      end
      
      class ExportResourcesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :_since, as: '_since'
          property :_type, as: '_type'
          property :bigquery_destination, as: 'bigqueryDestination', class: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1FhirBigQueryDestination, decorator: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1FhirBigQueryDestination::Representation
      
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1FhirGcsDestination, decorator: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1FhirGcsDestination::Representation
      
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
      
      class Feature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :value, as: 'value'
        end
      end
      
      class FhirConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_keep_extensions, as: 'defaultKeepExtensions'
          collection :field_metadata_list, as: 'fieldMetadataList', class: Google::Apis::HealthcareV1beta1::FieldMetadata, decorator: Google::Apis::HealthcareV1beta1::FieldMetadata::Representation
      
        end
      end
      
      class FhirFieldConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :field_metadata_list, as: 'fieldMetadataList', class: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata, decorator: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata::Representation
      
          property :options, as: 'options', class: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1DeidentifyOptions, decorator: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1DeidentifyOptions::Representation
      
          property :profile_type, as: 'profileType'
        end
      end
      
      class FhirFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resources, as: 'resources', class: Google::Apis::HealthcareV1beta1::Resources, decorator: Google::Apis::HealthcareV1beta1::Resources::Representation
      
        end
      end
      
      class FhirNotificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pubsub_topic, as: 'pubsubTopic'
          property :send_full_resource, as: 'sendFullResource'
          property :send_previous_resource_on_delete, as: 'sendPreviousResourceOnDelete'
        end
      end
      
      class FhirOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fhir_store, as: 'fhirStore'
        end
      end
      
      class FhirStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bulk_export_gcs_destination, as: 'bulkExportGcsDestination', class: Google::Apis::HealthcareV1beta1::BulkExportGcsDestination, decorator: Google::Apis::HealthcareV1beta1::BulkExportGcsDestination::Representation
      
          property :complex_data_type_reference_parsing, as: 'complexDataTypeReferenceParsing'
          property :consent_config, as: 'consentConfig', class: Google::Apis::HealthcareV1beta1::ConsentConfig, decorator: Google::Apis::HealthcareV1beta1::ConsentConfig::Representation
      
          property :default_search_handling_strict, as: 'defaultSearchHandlingStrict'
          property :disable_referential_integrity, as: 'disableReferentialIntegrity'
          property :disable_resource_versioning, as: 'disableResourceVersioning'
          property :enable_history_modifications, as: 'enableHistoryModifications'
          property :enable_update_create, as: 'enableUpdateCreate'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :notification_config, as: 'notificationConfig', class: Google::Apis::HealthcareV1beta1::NotificationConfig, decorator: Google::Apis::HealthcareV1beta1::NotificationConfig::Representation
      
          collection :notification_configs, as: 'notificationConfigs', class: Google::Apis::HealthcareV1beta1::FhirNotificationConfig, decorator: Google::Apis::HealthcareV1beta1::FhirNotificationConfig::Representation
      
          property :search_config, as: 'searchConfig', class: Google::Apis::HealthcareV1beta1::SearchConfig, decorator: Google::Apis::HealthcareV1beta1::SearchConfig::Representation
      
          collection :stream_configs, as: 'streamConfigs', class: Google::Apis::HealthcareV1beta1::StreamConfig, decorator: Google::Apis::HealthcareV1beta1::StreamConfig::Representation
      
          property :validation_config, as: 'validationConfig', class: Google::Apis::HealthcareV1beta1::ValidationConfig, decorator: Google::Apis::HealthcareV1beta1::ValidationConfig::Representation
      
          property :version, as: 'version'
        end
      end
      
      class FhirStoreMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :resource_type, as: 'resourceType'
          property :structured_storage_size_bytes, :numeric_string => true, as: 'structuredStorageSizeBytes'
        end
      end
      
      class FhirStoreMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metrics, as: 'metrics', class: Google::Apis::HealthcareV1beta1::FhirStoreMetric, decorator: Google::Apis::HealthcareV1beta1::FhirStoreMetric::Representation
      
          property :name, as: 'name'
        end
      end
      
      class Field
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_occurs, as: 'maxOccurs'
          property :min_occurs, as: 'minOccurs'
          property :name, as: 'name'
          property :table, as: 'table'
          property :type, as: 'type'
        end
      end
      
      class FieldMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          collection :paths, as: 'paths'
        end
      end
      
      class GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_structure, as: 'contentStructure'
          property :message_view, as: 'messageView'
          property :uri_prefix, as: 'uriPrefix'
        end
      end
      
      class GcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudHealthcareV1beta1ConsentGcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri_prefix, as: 'uriPrefix'
        end
      end
      
      class GoogleCloudHealthcareV1beta1ConsentPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorization_rule, as: 'authorizationRule', class: Google::Apis::HealthcareV1beta1::Expr, decorator: Google::Apis::HealthcareV1beta1::Expr::Representation
      
          collection :resource_attributes, as: 'resourceAttributes', class: Google::Apis::HealthcareV1beta1::Attribute, decorator: Google::Apis::HealthcareV1beta1::Attribute::Representation
      
        end
      end
      
      class GoogleCloudHealthcareV1beta1DeidentifyDeidentifyDicomStoreSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudHealthcareV1beta1DeidentifyDeidentifyFhirStoreSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudHealthcareV1beta1DeidentifyFieldMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :character_mask_field, as: 'characterMaskField', class: Google::Apis::HealthcareV1beta1::CharacterMaskField, decorator: Google::Apis::HealthcareV1beta1::CharacterMaskField::Representation
      
          property :clean_text_field, as: 'cleanTextField', class: Google::Apis::HealthcareV1beta1::CleanTextField, decorator: Google::Apis::HealthcareV1beta1::CleanTextField::Representation
      
          property :crypto_hash_field, as: 'cryptoHashField', class: Google::Apis::HealthcareV1beta1::CryptoHashField, decorator: Google::Apis::HealthcareV1beta1::CryptoHashField::Representation
      
          property :date_shift_field, as: 'dateShiftField', class: Google::Apis::HealthcareV1beta1::DateShiftField, decorator: Google::Apis::HealthcareV1beta1::DateShiftField::Representation
      
          property :keep_field, as: 'keepField', class: Google::Apis::HealthcareV1beta1::KeepField, decorator: Google::Apis::HealthcareV1beta1::KeepField::Representation
      
          collection :paths, as: 'paths'
          property :remove_field, as: 'removeField', class: Google::Apis::HealthcareV1beta1::RemoveField, decorator: Google::Apis::HealthcareV1beta1::RemoveField::Representation
      
        end
      end
      
      class GoogleCloudHealthcareV1beta1DeidentifyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :character_mask_config, as: 'characterMaskConfig', class: Google::Apis::HealthcareV1beta1::CharacterMaskConfig, decorator: Google::Apis::HealthcareV1beta1::CharacterMaskConfig::Representation
      
          property :contextual_deid, as: 'contextualDeid', class: Google::Apis::HealthcareV1beta1::ContextualDeidConfig, decorator: Google::Apis::HealthcareV1beta1::ContextualDeidConfig::Representation
      
          property :crypto_hash_config, as: 'cryptoHashConfig', class: Google::Apis::HealthcareV1beta1::CryptoHashConfig, decorator: Google::Apis::HealthcareV1beta1::CryptoHashConfig::Representation
      
          property :date_shift_config, as: 'dateShiftConfig', class: Google::Apis::HealthcareV1beta1::DateShiftConfig, decorator: Google::Apis::HealthcareV1beta1::DateShiftConfig::Representation
      
          property :keep_extensions, as: 'keepExtensions', class: Google::Apis::HealthcareV1beta1::KeepExtensionsConfig, decorator: Google::Apis::HealthcareV1beta1::KeepExtensionsConfig::Representation
      
        end
      end
      
      class GoogleCloudHealthcareV1beta1DicomBigQueryDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :force, as: 'force'
          property :table_uri, as: 'tableUri'
          property :write_disposition, as: 'writeDisposition'
        end
      end
      
      class GoogleCloudHealthcareV1beta1DicomGcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mime_type, as: 'mimeType'
          property :uri_prefix, as: 'uriPrefix'
        end
      end
      
      class GoogleCloudHealthcareV1beta1DicomGcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudHealthcareV1beta1DicomStreamConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_destination, as: 'bigqueryDestination', class: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1DicomBigQueryDestination, decorator: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1DicomBigQueryDestination::Representation
      
        end
      end
      
      class GoogleCloudHealthcareV1beta1FhirBigQueryDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :change_data_capture_config, as: 'changeDataCaptureConfig', class: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1FhirChangeDataCaptureConfig, decorator: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1FhirChangeDataCaptureConfig::Representation
      
          property :dataset_uri, as: 'datasetUri'
          property :force, as: 'force'
          property :schema_config, as: 'schemaConfig', class: Google::Apis::HealthcareV1beta1::SchemaConfig, decorator: Google::Apis::HealthcareV1beta1::SchemaConfig::Representation
      
          property :write_disposition, as: 'writeDisposition'
        end
      end
      
      class GoogleCloudHealthcareV1beta1FhirChangeDataCaptureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :history_mode, as: 'historyMode'
        end
      end
      
      class GoogleCloudHealthcareV1beta1FhirExportResourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudHealthcareV1beta1FhirGcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri_prefix, as: 'uriPrefix'
        end
      end
      
      class GoogleCloudHealthcareV1beta1FhirGcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudHealthcareV1beta1FhirImportResourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GroupOrSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :group, as: 'group', class: Google::Apis::HealthcareV1beta1::SchemaGroup, decorator: Google::Apis::HealthcareV1beta1::SchemaGroup::Representation
      
          property :segment, as: 'segment', class: Google::Apis::HealthcareV1beta1::SchemaSegment, decorator: Google::Apis::HealthcareV1beta1::SchemaSegment::Representation
      
        end
      end
      
      class Hl7SchemaConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :message_schema_configs, as: 'messageSchemaConfigs', class: Google::Apis::HealthcareV1beta1::SchemaGroup, decorator: Google::Apis::HealthcareV1beta1::SchemaGroup::Representation
      
          collection :version, as: 'version', class: Google::Apis::HealthcareV1beta1::VersionSource, decorator: Google::Apis::HealthcareV1beta1::VersionSource::Representation
      
        end
      end
      
      class Hl7TypesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :type, as: 'type', class: Google::Apis::HealthcareV1beta1::Type, decorator: Google::Apis::HealthcareV1beta1::Type::Representation
      
          collection :version, as: 'version', class: Google::Apis::HealthcareV1beta1::VersionSource, decorator: Google::Apis::HealthcareV1beta1::VersionSource::Representation
      
        end
      end
      
      class Hl7V2NotificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :pubsub_topic, as: 'pubsubTopic'
        end
      end
      
      class Hl7V2Store
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :notification_config, as: 'notificationConfig', class: Google::Apis::HealthcareV1beta1::NotificationConfig, decorator: Google::Apis::HealthcareV1beta1::NotificationConfig::Representation
      
          collection :notification_configs, as: 'notificationConfigs', class: Google::Apis::HealthcareV1beta1::Hl7V2NotificationConfig, decorator: Google::Apis::HealthcareV1beta1::Hl7V2NotificationConfig::Representation
      
          property :parser_config, as: 'parserConfig', class: Google::Apis::HealthcareV1beta1::ParserConfig, decorator: Google::Apis::HealthcareV1beta1::ParserConfig::Representation
      
          property :reject_duplicate_message, as: 'rejectDuplicateMessage'
        end
      end
      
      class Hl7V2StoreMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :message_type, as: 'messageType'
          property :structured_storage_size_bytes, :numeric_string => true, as: 'structuredStorageSizeBytes'
        end
      end
      
      class Hl7V2StoreMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metrics, as: 'metrics', class: Google::Apis::HealthcareV1beta1::Hl7V2StoreMetric, decorator: Google::Apis::HealthcareV1beta1::Hl7V2StoreMetric::Representation
      
          property :name, as: 'name'
        end
      end
      
      class HttpBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :data, :base64 => true, as: 'data'
          collection :extensions, as: 'extensions'
        end
      end
      
      class Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_uri, as: 'gcsUri'
          property :raw_bytes, :base64 => true, as: 'rawBytes'
        end
      end
      
      class ImageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_info_types, as: 'additionalInfoTypes'
          collection :exclude_info_types, as: 'excludeInfoTypes'
          property :text_redaction_mode, as: 'textRedactionMode'
        end
      end
      
      class ImportDicomDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob_storage_settings, as: 'blobStorageSettings', class: Google::Apis::HealthcareV1beta1::BlobStorageSettings, decorator: Google::Apis::HealthcareV1beta1::BlobStorageSettings::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1DicomGcsSource, decorator: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1DicomGcsSource::Representation
      
        end
      end
      
      class ImportDicomDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ImportMessagesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_source, as: 'gcsSource', class: Google::Apis::HealthcareV1beta1::GcsSource, decorator: Google::Apis::HealthcareV1beta1::GcsSource::Representation
      
        end
      end
      
      class ImportMessagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ImportResourcesHistoryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_structure, as: 'contentStructure'
          property :gcs_source, as: 'gcsSource', class: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1FhirGcsSource, decorator: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1FhirGcsSource::Representation
      
          property :max_error_count, :numeric_string => true, as: 'maxErrorCount'
        end
      end
      
      class ImportResourcesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_structure, as: 'contentStructure'
          property :gcs_source, as: 'gcsSource', class: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1FhirGcsSource, decorator: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1FhirGcsSource::Representation
      
        end
      end
      
      class InfoTypeTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :character_mask_config, as: 'characterMaskConfig', class: Google::Apis::HealthcareV1beta1::CharacterMaskConfig, decorator: Google::Apis::HealthcareV1beta1::CharacterMaskConfig::Representation
      
          property :crypto_hash_config, as: 'cryptoHashConfig', class: Google::Apis::HealthcareV1beta1::CryptoHashConfig, decorator: Google::Apis::HealthcareV1beta1::CryptoHashConfig::Representation
      
          property :date_shift_config, as: 'dateShiftConfig', class: Google::Apis::HealthcareV1beta1::DateShiftConfig, decorator: Google::Apis::HealthcareV1beta1::DateShiftConfig::Representation
      
          collection :info_types, as: 'infoTypes'
          property :redact_config, as: 'redactConfig', class: Google::Apis::HealthcareV1beta1::RedactConfig, decorator: Google::Apis::HealthcareV1beta1::RedactConfig::Representation
      
          property :replace_with_info_type_config, as: 'replaceWithInfoTypeConfig', class: Google::Apis::HealthcareV1beta1::ReplaceWithInfoTypeConfig, decorator: Google::Apis::HealthcareV1beta1::ReplaceWithInfoTypeConfig::Representation
      
        end
      end
      
      class IngestMessageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message', class: Google::Apis::HealthcareV1beta1::Message, decorator: Google::Apis::HealthcareV1beta1::Message::Representation
      
        end
      end
      
      class IngestMessageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hl7_ack, :base64 => true, as: 'hl7Ack'
          property :message, as: 'message', class: Google::Apis::HealthcareV1beta1::Message, decorator: Google::Apis::HealthcareV1beta1::Message::Representation
      
        end
      end
      
      class KeepExtensionsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class KeepField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class KeepTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class KmsWrappedCryptoKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crypto_key, as: 'cryptoKey'
          property :wrapped_key, :base64 => true, as: 'wrappedKey'
        end
      end
      
      class LinkedEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_id, as: 'entityId'
        end
      end
      
      class ListAttributeDefinitionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attribute_definitions, as: 'attributeDefinitions', class: Google::Apis::HealthcareV1beta1::AttributeDefinition, decorator: Google::Apis::HealthcareV1beta1::AttributeDefinition::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListConsentArtifactsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :consent_artifacts, as: 'consentArtifacts', class: Google::Apis::HealthcareV1beta1::ConsentArtifact, decorator: Google::Apis::HealthcareV1beta1::ConsentArtifact::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListConsentRevisionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :consents, as: 'consents', class: Google::Apis::HealthcareV1beta1::Consent, decorator: Google::Apis::HealthcareV1beta1::Consent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListConsentStoresResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :consent_stores, as: 'consentStores', class: Google::Apis::HealthcareV1beta1::ConsentStore, decorator: Google::Apis::HealthcareV1beta1::ConsentStore::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListConsentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :consents, as: 'consents', class: Google::Apis::HealthcareV1beta1::Consent, decorator: Google::Apis::HealthcareV1beta1::Consent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDatasetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :datasets, as: 'datasets', class: Google::Apis::HealthcareV1beta1::Dataset, decorator: Google::Apis::HealthcareV1beta1::Dataset::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDicomStoresResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dicom_stores, as: 'dicomStores', class: Google::Apis::HealthcareV1beta1::DicomStore, decorator: Google::Apis::HealthcareV1beta1::DicomStore::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListFhirStoresResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fhir_stores, as: 'fhirStores', class: Google::Apis::HealthcareV1beta1::FhirStore, decorator: Google::Apis::HealthcareV1beta1::FhirStore::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListHl7V2StoresResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :hl7_v2_stores, as: 'hl7V2Stores', class: Google::Apis::HealthcareV1beta1::Hl7V2Store, decorator: Google::Apis::HealthcareV1beta1::Hl7V2Store::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::HealthcareV1beta1::Location, decorator: Google::Apis::HealthcareV1beta1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMessagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :hl7_v2_messages, as: 'hl7V2Messages', class: Google::Apis::HealthcareV1beta1::Message, decorator: Google::Apis::HealthcareV1beta1::Message::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::HealthcareV1beta1::Operation, decorator: Google::Apis::HealthcareV1beta1::Operation::Representation
      
        end
      end
      
      class ListUserDataMappingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :user_data_mappings, as: 'userDataMappings', class: Google::Apis::HealthcareV1beta1::UserDataMapping, decorator: Google::Apis::HealthcareV1beta1::UserDataMapping::Representation
      
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
      
      class Message
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :data, :base64 => true, as: 'data'
          hash :labels, as: 'labels'
          property :message_type, as: 'messageType'
          property :name, as: 'name'
          property :parsed_data, as: 'parsedData', class: Google::Apis::HealthcareV1beta1::ParsedData, decorator: Google::Apis::HealthcareV1beta1::ParsedData::Representation
      
          collection :patient_ids, as: 'patientIds', class: Google::Apis::HealthcareV1beta1::PatientId, decorator: Google::Apis::HealthcareV1beta1::PatientId::Representation
      
          property :schematized_data, as: 'schematizedData', class: Google::Apis::HealthcareV1beta1::SchematizedData, decorator: Google::Apis::HealthcareV1beta1::SchematizedData::Representation
      
          property :send_facility, as: 'sendFacility'
          property :send_time, as: 'sendTime'
        end
      end
      
      class NotificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pubsub_topic, as: 'pubsubTopic'
          property :send_for_bulk_import, as: 'sendForBulkImport'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::HealthcareV1beta1::Status, decorator: Google::Apis::HealthcareV1beta1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_method_name, as: 'apiMethodName'
          property :cancel_requested, as: 'cancelRequested'
          property :counter, as: 'counter', class: Google::Apis::HealthcareV1beta1::ProgressCounter, decorator: Google::Apis::HealthcareV1beta1::ProgressCounter::Representation
      
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :logs_url, as: 'logsUrl'
        end
      end
      
      class Options
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :clean_descriptors, as: 'cleanDescriptors', class: Google::Apis::HealthcareV1beta1::CleanDescriptorsOption, decorator: Google::Apis::HealthcareV1beta1::CleanDescriptorsOption::Representation
      
          property :clean_image, as: 'cleanImage', class: Google::Apis::HealthcareV1beta1::ImageConfig, decorator: Google::Apis::HealthcareV1beta1::ImageConfig::Representation
      
          property :primary_ids, as: 'primaryIds'
        end
      end
      
      class ParsedData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :segments, as: 'segments', class: Google::Apis::HealthcareV1beta1::Segment, decorator: Google::Apis::HealthcareV1beta1::Segment::Representation
      
        end
      end
      
      class ParserConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_null_header, as: 'allowNullHeader'
          property :schema, as: 'schema', class: Google::Apis::HealthcareV1beta1::SchemaPackage, decorator: Google::Apis::HealthcareV1beta1::SchemaPackage::Representation
      
          property :segment_terminator, :base64 => true, as: 'segmentTerminator'
          property :version, as: 'version'
        end
      end
      
      class PatientId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :value, as: 'value'
        end
      end
      
      class PatientScope
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :patient_ids, as: 'patientIds'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::HealthcareV1beta1::AuditConfig, decorator: Google::Apis::HealthcareV1beta1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::HealthcareV1beta1::Binding, decorator: Google::Apis::HealthcareV1beta1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class ProgressCounter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure, :numeric_string => true, as: 'failure'
          property :pending, :numeric_string => true, as: 'pending'
          property :secondary_failure, :numeric_string => true, as: 'secondaryFailure'
          property :secondary_success, :numeric_string => true, as: 'secondarySuccess'
          property :success, :numeric_string => true, as: 'success'
        end
      end
      
      class PubsubDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pubsub_topic, as: 'pubsubTopic'
        end
      end
      
      class QueryAccessibleDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1ConsentGcsDestination, decorator: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1ConsentGcsDestination::Representation
      
          hash :request_attributes, as: 'requestAttributes'
          hash :resource_attributes, as: 'resourceAttributes'
        end
      end
      
      class QueryAccessibleDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gcs_uris, as: 'gcsUris'
        end
      end
      
      class RecurseTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RedactConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RegenUidTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RejectConsentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consent_artifact, as: 'consentArtifact'
        end
      end
      
      class RemoveField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RemoveTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ReplaceWithInfoTypeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ResetTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Resources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resources, as: 'resources'
        end
      end
      
      class Result
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :consent_details, as: 'consentDetails', class: Google::Apis::HealthcareV1beta1::ConsentEvaluation, decorator: Google::Apis::HealthcareV1beta1::ConsentEvaluation::Representation
      
          property :consented, as: 'consented'
          property :data_id, as: 'dataId'
        end
      end
      
      class RevokeConsentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consent_artifact, as: 'consentArtifact'
        end
      end
      
      class RollbackFhirResourceFilteringFields
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metadata_filter, as: 'metadataFilter'
          collection :operation_ids, as: 'operationIds'
        end
      end
      
      class RollbackFhirResourcesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :change_type, as: 'changeType'
          property :exclude_rollbacks, as: 'excludeRollbacks'
          property :filtering_fields, as: 'filteringFields', class: Google::Apis::HealthcareV1beta1::RollbackFhirResourceFilteringFields, decorator: Google::Apis::HealthcareV1beta1::RollbackFhirResourceFilteringFields::Representation
      
          property :force, as: 'force'
          property :input_gcs_object, as: 'inputGcsObject'
          property :result_gcs_bucket, as: 'resultGcsBucket'
          property :rollback_time, as: 'rollbackTime'
          collection :type, as: 'type'
        end
      end
      
      class RollbackFhirResourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fhir_store, as: 'fhirStore'
        end
      end
      
      class RollbackHl7MessagesFilteringFields
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :operation_ids, as: 'operationIds'
        end
      end
      
      class RollbackHl7V2MessagesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :change_type, as: 'changeType'
          property :exclude_rollbacks, as: 'excludeRollbacks'
          property :filtering_fields, as: 'filteringFields', class: Google::Apis::HealthcareV1beta1::RollbackHl7MessagesFilteringFields, decorator: Google::Apis::HealthcareV1beta1::RollbackHl7MessagesFilteringFields::Representation
      
          property :force, as: 'force'
          property :input_gcs_object, as: 'inputGcsObject'
          property :result_gcs_bucket, as: 'resultGcsBucket'
          property :rollback_time, as: 'rollbackTime'
        end
      end
      
      class RollbackHl7V2MessagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hl7v2_store, as: 'hl7v2Store'
        end
      end
      
      class SchemaConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_updated_partition_config, as: 'lastUpdatedPartitionConfig', class: Google::Apis::HealthcareV1beta1::TimePartitioning, decorator: Google::Apis::HealthcareV1beta1::TimePartitioning::Representation
      
          property :recursive_structure_depth, :numeric_string => true, as: 'recursiveStructureDepth'
          property :schema_type, as: 'schemaType'
        end
      end
      
      class SchemaGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :choice, as: 'choice'
          property :max_occurs, as: 'maxOccurs'
          collection :members, as: 'members', class: Google::Apis::HealthcareV1beta1::GroupOrSegment, decorator: Google::Apis::HealthcareV1beta1::GroupOrSegment::Representation
      
          property :min_occurs, as: 'minOccurs'
          property :name, as: 'name'
        end
      end
      
      class SchemaPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ignore_min_occurs, as: 'ignoreMinOccurs'
          collection :schemas, as: 'schemas', class: Google::Apis::HealthcareV1beta1::Hl7SchemaConfig, decorator: Google::Apis::HealthcareV1beta1::Hl7SchemaConfig::Representation
      
          property :schematized_parsing_type, as: 'schematizedParsingType'
          collection :types, as: 'types', class: Google::Apis::HealthcareV1beta1::Hl7TypesConfig, decorator: Google::Apis::HealthcareV1beta1::Hl7TypesConfig::Representation
      
          property :unexpected_segment_handling, as: 'unexpectedSegmentHandling'
        end
      end
      
      class SchemaSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_occurs, as: 'maxOccurs'
          property :min_occurs, as: 'minOccurs'
          property :type, as: 'type'
        end
      end
      
      class SchematizedData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, as: 'data'
          property :error, as: 'error'
        end
      end
      
      class SearchConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :search_parameters, as: 'searchParameters', class: Google::Apis::HealthcareV1beta1::SearchParameter, decorator: Google::Apis::HealthcareV1beta1::SearchParameter::Representation
      
        end
      end
      
      class SearchParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_url, as: 'canonicalUrl'
          property :parameter, as: 'parameter'
        end
      end
      
      class SearchResourcesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_type, as: 'resourceType'
        end
      end
      
      class Segment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :fields, as: 'fields'
          property :segment_id, as: 'segmentId'
          property :set_id, as: 'setId'
        end
      end
      
      class SeriesMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob_storage_size_bytes, :numeric_string => true, as: 'blobStorageSizeBytes'
          property :instance_count, :numeric_string => true, as: 'instanceCount'
          property :series, as: 'series'
          property :structured_storage_size_bytes, :numeric_string => true, as: 'structuredStorageSizeBytes'
        end
      end
      
      class SetBlobStorageSettingsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob_storage_settings, as: 'blobStorageSettings', class: Google::Apis::HealthcareV1beta1::BlobStorageSettings, decorator: Google::Apis::HealthcareV1beta1::BlobStorageSettings::Representation
      
          property :filter_config, as: 'filterConfig', class: Google::Apis::HealthcareV1beta1::DicomFilterConfig, decorator: Google::Apis::HealthcareV1beta1::DicomFilterConfig::Representation
      
        end
      end
      
      class SetBlobStorageSettingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::HealthcareV1beta1::Policy, decorator: Google::Apis::HealthcareV1beta1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class Signature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image, as: 'image', class: Google::Apis::HealthcareV1beta1::Image, decorator: Google::Apis::HealthcareV1beta1::Image::Representation
      
          hash :metadata, as: 'metadata'
          property :signature_time, as: 'signatureTime'
          property :user_id, as: 'userId'
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
      
      class StorageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob_storage_info, as: 'blobStorageInfo', class: Google::Apis::HealthcareV1beta1::BlobStorageInfo, decorator: Google::Apis::HealthcareV1beta1::BlobStorageInfo::Representation
      
          property :referenced_resource, as: 'referencedResource'
          property :structured_storage_info, as: 'structuredStorageInfo', class: Google::Apis::HealthcareV1beta1::StructuredStorageInfo, decorator: Google::Apis::HealthcareV1beta1::StructuredStorageInfo::Representation
      
        end
      end
      
      class StreamConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_destination, as: 'bigqueryDestination', class: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1FhirBigQueryDestination, decorator: Google::Apis::HealthcareV1beta1::GoogleCloudHealthcareV1beta1FhirBigQueryDestination::Representation
      
          property :deidentified_store_destination, as: 'deidentifiedStoreDestination', class: Google::Apis::HealthcareV1beta1::DeidentifiedStoreDestination, decorator: Google::Apis::HealthcareV1beta1::DeidentifiedStoreDestination::Representation
      
          collection :resource_types, as: 'resourceTypes'
        end
      end
      
      class StructuredStorageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :size_bytes, :numeric_string => true, as: 'sizeBytes'
        end
      end
      
      class StudyMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob_storage_size_bytes, :numeric_string => true, as: 'blobStorageSizeBytes'
          property :instance_count, :numeric_string => true, as: 'instanceCount'
          property :series_count, :numeric_string => true, as: 'seriesCount'
          property :structured_storage_size_bytes, :numeric_string => true, as: 'structuredStorageSizeBytes'
          property :study, as: 'study'
        end
      end
      
      class TagFilterList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tags, as: 'tags'
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
      
      class TextConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_transformations, as: 'additionalTransformations', class: Google::Apis::HealthcareV1beta1::InfoTypeTransformation, decorator: Google::Apis::HealthcareV1beta1::InfoTypeTransformation::Representation
      
          collection :exclude_info_types, as: 'excludeInfoTypes'
          property :profile_type, as: 'profileType'
          collection :transformations, as: 'transformations', class: Google::Apis::HealthcareV1beta1::InfoTypeTransformation, decorator: Google::Apis::HealthcareV1beta1::InfoTypeTransformation::Representation
      
        end
      end
      
      class TextSpan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :begin_offset, as: 'beginOffset'
          property :content, as: 'content'
        end
      end
      
      class TimePartitioning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expiration_ms, :numeric_string => true, as: 'expirationMs'
          property :type, as: 'type'
        end
      end
      
      class TimeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, as: 'end'
          property :start, as: 'start'
        end
      end
      
      class Type
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields', class: Google::Apis::HealthcareV1beta1::Field, decorator: Google::Apis::HealthcareV1beta1::Field::Representation
      
          property :name, as: 'name'
          property :primitive, as: 'primitive'
        end
      end
      
      class UserDataMapping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :archive_time, as: 'archiveTime'
          property :archived, as: 'archived'
          property :data_id, as: 'dataId'
          property :name, as: 'name'
          collection :resource_attributes, as: 'resourceAttributes', class: Google::Apis::HealthcareV1beta1::Attribute, decorator: Google::Apis::HealthcareV1beta1::Attribute::Representation
      
          property :user_id, as: 'userId'
        end
      end
      
      class ValidationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_fhirpath_validation, as: 'disableFhirpathValidation'
          property :disable_profile_validation, as: 'disableProfileValidation'
          property :disable_reference_type_validation, as: 'disableReferenceTypeValidation'
          property :disable_required_field_validation, as: 'disableRequiredFieldValidation'
          collection :enabled_implementation_guides, as: 'enabledImplementationGuides'
        end
      end
      
      class VersionSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :msh_field, as: 'mshField'
          property :value, as: 'value'
        end
      end
    end
  end
end
