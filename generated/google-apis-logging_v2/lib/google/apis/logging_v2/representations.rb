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
    module LoggingV2
      
      class AppHub
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppHubApplication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppHubService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppHubWorkload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigQueryDataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigQueryOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BucketMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BucketOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CmekSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CopyLogEntriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CopyLogEntriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CopyLogEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateBucketRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateLinkRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DefaultSinkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteLinkRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Explicit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Exponential
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetPolicyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IndexConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LabelDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Linear
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Link
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinkMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBucketsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListExclusionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLogEntriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLogEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLogMetricsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLogScopesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLogsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMonitoredResourceDescriptorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRecentQueriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSavedQueriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListViewsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogEntryOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogEntrySourceLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogErrorGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogExclusion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogLine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogScope
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogSink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogSplit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoggingQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricDescriptorMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoredResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoredResourceDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoredResourceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OpsAnalyticsQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecentQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestLog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SavedQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Settings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SummaryField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SuppressionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TailLogEntriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TailLogEntriesResponse
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
      
      class UndeleteBucketRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateBucketRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WriteLogEntriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WriteLogEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppHub
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application, as: 'application', class: Google::Apis::LoggingV2::AppHubApplication, decorator: Google::Apis::LoggingV2::AppHubApplication::Representation
      
          property :service, as: 'service', class: Google::Apis::LoggingV2::AppHubService, decorator: Google::Apis::LoggingV2::AppHubService::Representation
      
          property :workload, as: 'workload', class: Google::Apis::LoggingV2::AppHubWorkload, decorator: Google::Apis::LoggingV2::AppHubWorkload::Representation
      
        end
      end
      
      class AppHubApplication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container, as: 'container'
          property :id, as: 'id'
          property :location, as: 'location'
        end
      end
      
      class AppHubService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :criticality_type, as: 'criticalityType'
          property :environment_type, as: 'environmentType'
          property :id, as: 'id'
        end
      end
      
      class AppHubWorkload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :criticality_type, as: 'criticalityType'
          property :environment_type, as: 'environmentType'
          property :id, as: 'id'
        end
      end
      
      class BigQueryDataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
        end
      end
      
      class BigQueryOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :use_partitioned_tables, as: 'usePartitionedTables'
          property :uses_timestamp_column_partitioning, as: 'usesTimestampColumnPartitioning'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::LoggingV2::Expr, decorator: Google::Apis::LoggingV2::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class BucketMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_bucket_request, as: 'createBucketRequest', class: Google::Apis::LoggingV2::CreateBucketRequest, decorator: Google::Apis::LoggingV2::CreateBucketRequest::Representation
      
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :update_bucket_request, as: 'updateBucketRequest', class: Google::Apis::LoggingV2::UpdateBucketRequest, decorator: Google::Apis::LoggingV2::UpdateBucketRequest::Representation
      
        end
      end
      
      class BucketOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :explicit_buckets, as: 'explicitBuckets', class: Google::Apis::LoggingV2::Explicit, decorator: Google::Apis::LoggingV2::Explicit::Representation
      
          property :exponential_buckets, as: 'exponentialBuckets', class: Google::Apis::LoggingV2::Exponential, decorator: Google::Apis::LoggingV2::Exponential::Representation
      
          property :linear_buckets, as: 'linearBuckets', class: Google::Apis::LoggingV2::Linear, decorator: Google::Apis::LoggingV2::Linear::Representation
      
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CmekSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
          property :kms_key_version_name, as: 'kmsKeyVersionName'
          property :name, as: 'name'
          property :service_account_id, as: 'serviceAccountId'
        end
      end
      
      class CopyLogEntriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cancellation_requested, as: 'cancellationRequested'
          property :destination, as: 'destination'
          property :end_time, as: 'endTime'
          property :progress, as: 'progress'
          property :request, as: 'request', class: Google::Apis::LoggingV2::CopyLogEntriesRequest, decorator: Google::Apis::LoggingV2::CopyLogEntriesRequest::Representation
      
          property :source, as: 'source'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :verb, as: 'verb'
          property :writer_identity, as: 'writerIdentity'
        end
      end
      
      class CopyLogEntriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination, as: 'destination'
          property :filter, as: 'filter'
          property :name, as: 'name'
        end
      end
      
      class CopyLogEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :log_entries_copied_count, :numeric_string => true, as: 'logEntriesCopiedCount'
        end
      end
      
      class CreateBucketRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket', class: Google::Apis::LoggingV2::LogBucket, decorator: Google::Apis::LoggingV2::LogBucket::Representation
      
          property :bucket_id, as: 'bucketId'
          property :parent, as: 'parent'
        end
      end
      
      class CreateLinkRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :link, as: 'link', class: Google::Apis::LoggingV2::Link, decorator: Google::Apis::LoggingV2::Link::Representation
      
          property :link_id, as: 'linkId'
          property :parent, as: 'parent'
        end
      end
      
      class DefaultSinkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exclusions, as: 'exclusions', class: Google::Apis::LoggingV2::LogExclusion, decorator: Google::Apis::LoggingV2::LogExclusion::Representation
      
          property :filter, as: 'filter'
          property :mode, as: 'mode'
        end
      end
      
      class DeleteLinkRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Explicit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bounds, as: 'bounds'
        end
      end
      
      class Exponential
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :growth_factor, as: 'growthFactor'
          property :num_finite_buckets, as: 'numFiniteBuckets'
          property :scale, as: 'scale'
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
      
      class GetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :options, as: 'options', class: Google::Apis::LoggingV2::GetPolicyOptions, decorator: Google::Apis::LoggingV2::GetPolicyOptions::Representation
      
        end
      end
      
      class GetPolicyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_policy_version, as: 'requestedPolicyVersion'
        end
      end
      
      class HttpRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_fill_bytes, :numeric_string => true, as: 'cacheFillBytes'
          property :cache_hit, as: 'cacheHit'
          property :cache_lookup, as: 'cacheLookup'
          property :cache_validated_with_origin_server, as: 'cacheValidatedWithOriginServer'
          property :latency, as: 'latency'
          property :protocol, as: 'protocol'
          property :referer, as: 'referer'
          property :remote_ip, as: 'remoteIp'
          property :request_method, as: 'requestMethod'
          property :request_size, :numeric_string => true, as: 'requestSize'
          property :request_url, as: 'requestUrl'
          property :response_size, :numeric_string => true, as: 'responseSize'
          property :server_ip, as: 'serverIp'
          property :status, as: 'status'
          property :user_agent, as: 'userAgent'
        end
      end
      
      class IndexConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :field_path, as: 'fieldPath'
          property :type, as: 'type'
        end
      end
      
      class LabelDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :key, as: 'key'
          property :value_type, as: 'valueType'
        end
      end
      
      class Linear
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_finite_buckets, as: 'numFiniteBuckets'
          property :offset, as: 'offset'
          property :width, as: 'width'
        end
      end
      
      class Link
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_dataset, as: 'bigqueryDataset', class: Google::Apis::LoggingV2::BigQueryDataset, decorator: Google::Apis::LoggingV2::BigQueryDataset::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :lifecycle_state, as: 'lifecycleState'
          property :name, as: 'name'
        end
      end
      
      class LinkMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_link_request, as: 'createLinkRequest', class: Google::Apis::LoggingV2::CreateLinkRequest, decorator: Google::Apis::LoggingV2::CreateLinkRequest::Representation
      
          property :delete_link_request, as: 'deleteLinkRequest', class: Google::Apis::LoggingV2::DeleteLinkRequest, decorator: Google::Apis::LoggingV2::DeleteLinkRequest::Representation
      
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class ListBucketsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buckets, as: 'buckets', class: Google::Apis::LoggingV2::LogBucket, decorator: Google::Apis::LoggingV2::LogBucket::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListExclusionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exclusions, as: 'exclusions', class: Google::Apis::LoggingV2::LogExclusion, decorator: Google::Apis::LoggingV2::LogExclusion::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :links, as: 'links', class: Google::Apis::LoggingV2::Link, decorator: Google::Apis::LoggingV2::Link::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::LoggingV2::Location, decorator: Google::Apis::LoggingV2::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLogEntriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :order_by, as: 'orderBy'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          collection :project_ids, as: 'projectIds'
          collection :resource_names, as: 'resourceNames'
        end
      end
      
      class ListLogEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::LoggingV2::LogEntry, decorator: Google::Apis::LoggingV2::LogEntry::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLogMetricsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metrics, as: 'metrics', class: Google::Apis::LoggingV2::LogMetric, decorator: Google::Apis::LoggingV2::LogMetric::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLogScopesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :log_scopes, as: 'logScopes', class: Google::Apis::LoggingV2::LogScope, decorator: Google::Apis::LoggingV2::LogScope::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLogsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :log_names, as: 'logNames'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMonitoredResourceDescriptorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resource_descriptors, as: 'resourceDescriptors', class: Google::Apis::LoggingV2::MonitoredResourceDescriptor, decorator: Google::Apis::LoggingV2::MonitoredResourceDescriptor::Representation
      
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::LoggingV2::Operation, decorator: Google::Apis::LoggingV2::Operation::Representation
      
        end
      end
      
      class ListRecentQueriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :recent_queries, as: 'recentQueries', class: Google::Apis::LoggingV2::RecentQuery, decorator: Google::Apis::LoggingV2::RecentQuery::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListSavedQueriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :saved_queries, as: 'savedQueries', class: Google::Apis::LoggingV2::SavedQuery, decorator: Google::Apis::LoggingV2::SavedQuery::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListSinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sinks, as: 'sinks', class: Google::Apis::LoggingV2::LogSink, decorator: Google::Apis::LoggingV2::LogSink::Representation
      
        end
      end
      
      class ListViewsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :views, as: 'views', class: Google::Apis::LoggingV2::LogView, decorator: Google::Apis::LoggingV2::LogView::Representation
      
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
      
      class LocationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :log_analytics_enabled, as: 'logAnalyticsEnabled'
        end
      end
      
      class LogBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analytics_enabled, as: 'analyticsEnabled'
          property :cmek_settings, as: 'cmekSettings', class: Google::Apis::LoggingV2::CmekSettings, decorator: Google::Apis::LoggingV2::CmekSettings::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          collection :index_configs, as: 'indexConfigs', class: Google::Apis::LoggingV2::IndexConfig, decorator: Google::Apis::LoggingV2::IndexConfig::Representation
      
          property :lifecycle_state, as: 'lifecycleState'
          property :locked, as: 'locked'
          property :name, as: 'name'
          collection :restricted_fields, as: 'restrictedFields'
          property :retention_days, as: 'retentionDays'
          property :update_time, as: 'updateTime'
        end
      end
      
      class LogEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apphub, as: 'apphub', class: Google::Apis::LoggingV2::AppHub, decorator: Google::Apis::LoggingV2::AppHub::Representation
      
          property :apphub_destination, as: 'apphubDestination', class: Google::Apis::LoggingV2::AppHub, decorator: Google::Apis::LoggingV2::AppHub::Representation
      
          collection :error_groups, as: 'errorGroups', class: Google::Apis::LoggingV2::LogErrorGroup, decorator: Google::Apis::LoggingV2::LogErrorGroup::Representation
      
          property :http_request, as: 'httpRequest', class: Google::Apis::LoggingV2::HttpRequest, decorator: Google::Apis::LoggingV2::HttpRequest::Representation
      
          property :insert_id, as: 'insertId'
          hash :json_payload, as: 'jsonPayload'
          hash :labels, as: 'labels'
          property :log_name, as: 'logName'
          property :metadata, as: 'metadata', class: Google::Apis::LoggingV2::MonitoredResourceMetadata, decorator: Google::Apis::LoggingV2::MonitoredResourceMetadata::Representation
      
          property :operation, as: 'operation', class: Google::Apis::LoggingV2::LogEntryOperation, decorator: Google::Apis::LoggingV2::LogEntryOperation::Representation
      
          hash :proto_payload, as: 'protoPayload'
          property :receive_timestamp, as: 'receiveTimestamp'
          property :resource, as: 'resource', class: Google::Apis::LoggingV2::MonitoredResource, decorator: Google::Apis::LoggingV2::MonitoredResource::Representation
      
          property :severity, as: 'severity'
          property :source_location, as: 'sourceLocation', class: Google::Apis::LoggingV2::LogEntrySourceLocation, decorator: Google::Apis::LoggingV2::LogEntrySourceLocation::Representation
      
          property :span_id, as: 'spanId'
          property :split, as: 'split', class: Google::Apis::LoggingV2::LogSplit, decorator: Google::Apis::LoggingV2::LogSplit::Representation
      
          property :text_payload, as: 'textPayload'
          property :timestamp, as: 'timestamp'
          property :trace, as: 'trace'
          property :trace_sampled, as: 'traceSampled'
        end
      end
      
      class LogEntryOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :first, as: 'first'
          property :id, as: 'id'
          property :last, as: 'last'
          property :producer, as: 'producer'
        end
      end
      
      class LogEntrySourceLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file, as: 'file'
          property :function, as: 'function'
          property :line, :numeric_string => true, as: 'line'
        end
      end
      
      class LogErrorGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      class LogExclusion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :disabled, as: 'disabled'
          property :filter, as: 'filter'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class LogLine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :log_message, as: 'logMessage'
          property :severity, as: 'severity'
          property :source_location, as: 'sourceLocation', class: Google::Apis::LoggingV2::SourceLocation, decorator: Google::Apis::LoggingV2::SourceLocation::Representation
      
          property :time, as: 'time'
        end
      end
      
      class LogMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_name, as: 'bucketName'
          property :bucket_options, as: 'bucketOptions', class: Google::Apis::LoggingV2::BucketOptions, decorator: Google::Apis::LoggingV2::BucketOptions::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :disabled, as: 'disabled'
          property :filter, as: 'filter'
          hash :label_extractors, as: 'labelExtractors'
          property :metric_descriptor, as: 'metricDescriptor', class: Google::Apis::LoggingV2::MetricDescriptor, decorator: Google::Apis::LoggingV2::MetricDescriptor::Representation
      
          property :name, as: 'name'
          property :resource_name, as: 'resourceName'
          property :update_time, as: 'updateTime'
          property :value_extractor, as: 'valueExtractor'
          property :version, as: 'version'
        end
      end
      
      class LogScope
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :name, as: 'name'
          collection :resource_names, as: 'resourceNames'
          property :update_time, as: 'updateTime'
        end
      end
      
      class LogSink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_options, as: 'bigqueryOptions', class: Google::Apis::LoggingV2::BigQueryOptions, decorator: Google::Apis::LoggingV2::BigQueryOptions::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :destination, as: 'destination'
          property :disabled, as: 'disabled'
          collection :exclusions, as: 'exclusions', class: Google::Apis::LoggingV2::LogExclusion, decorator: Google::Apis::LoggingV2::LogExclusion::Representation
      
          property :filter, as: 'filter'
          property :include_children, as: 'includeChildren'
          property :intercept_children, as: 'interceptChildren'
          property :name, as: 'name'
          property :output_version_format, as: 'outputVersionFormat'
          property :resource_name, as: 'resourceName'
          property :update_time, as: 'updateTime'
          property :writer_identity, as: 'writerIdentity'
        end
      end
      
      class LogSplit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :index, as: 'index'
          property :total_splits, as: 'totalSplits'
          property :uid, as: 'uid'
        end
      end
      
      class LogView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :filter, as: 'filter'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class LoggingQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :summary_field_end, as: 'summaryFieldEnd'
          property :summary_field_start, as: 'summaryFieldStart'
          collection :summary_fields, as: 'summaryFields', class: Google::Apis::LoggingV2::SummaryField, decorator: Google::Apis::LoggingV2::SummaryField::Representation
      
        end
      end
      
      class MetricDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :labels, as: 'labels', class: Google::Apis::LoggingV2::LabelDescriptor, decorator: Google::Apis::LoggingV2::LabelDescriptor::Representation
      
          property :launch_stage, as: 'launchStage'
          property :metadata, as: 'metadata', class: Google::Apis::LoggingV2::MetricDescriptorMetadata, decorator: Google::Apis::LoggingV2::MetricDescriptorMetadata::Representation
      
          property :metric_kind, as: 'metricKind'
          collection :monitored_resource_types, as: 'monitoredResourceTypes'
          property :name, as: 'name'
          property :type, as: 'type'
          property :unit, as: 'unit'
          property :value_type, as: 'valueType'
        end
      end
      
      class MetricDescriptorMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ingest_delay, as: 'ingestDelay'
          property :launch_stage, as: 'launchStage'
          property :sample_period, as: 'samplePeriod'
          collection :time_series_resource_hierarchy_level, as: 'timeSeriesResourceHierarchyLevel'
        end
      end
      
      class MonitoredResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          property :type, as: 'type'
        end
      end
      
      class MonitoredResourceDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :labels, as: 'labels', class: Google::Apis::LoggingV2::LabelDescriptor, decorator: Google::Apis::LoggingV2::LabelDescriptor::Representation
      
          property :launch_stage, as: 'launchStage'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class MonitoredResourceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :system_labels, as: 'systemLabels'
          hash :user_labels, as: 'userLabels'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::LoggingV2::Status, decorator: Google::Apis::LoggingV2::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OpsAnalyticsQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sql_query_text, as: 'sqlQueryText'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::LoggingV2::Binding, decorator: Google::Apis::LoggingV2::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class RecentQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_run_time, as: 'lastRunTime'
          property :logging_query, as: 'loggingQuery', class: Google::Apis::LoggingV2::LoggingQuery, decorator: Google::Apis::LoggingV2::LoggingQuery::Representation
      
          property :name, as: 'name'
          property :ops_analytics_query, as: 'opsAnalyticsQuery', class: Google::Apis::LoggingV2::OpsAnalyticsQuery, decorator: Google::Apis::LoggingV2::OpsAnalyticsQuery::Representation
      
        end
      end
      
      class RequestLog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_engine_release, as: 'appEngineRelease'
          property :app_id, as: 'appId'
          property :cost, as: 'cost'
          property :end_time, as: 'endTime'
          property :finished, as: 'finished'
          property :first, as: 'first'
          property :host, as: 'host'
          property :http_version, as: 'httpVersion'
          property :instance_id, as: 'instanceId'
          property :instance_index, as: 'instanceIndex'
          property :ip, as: 'ip'
          property :latency, as: 'latency'
          collection :line, as: 'line', class: Google::Apis::LoggingV2::LogLine, decorator: Google::Apis::LoggingV2::LogLine::Representation
      
          property :mega_cycles, :numeric_string => true, as: 'megaCycles'
          property :method_prop, as: 'method'
          property :module_id, as: 'moduleId'
          property :nickname, as: 'nickname'
          property :pending_time, as: 'pendingTime'
          property :referrer, as: 'referrer'
          property :request_id, as: 'requestId'
          property :resource, as: 'resource'
          property :response_size, :numeric_string => true, as: 'responseSize'
          collection :source_reference, as: 'sourceReference', class: Google::Apis::LoggingV2::SourceReference, decorator: Google::Apis::LoggingV2::SourceReference::Representation
      
          property :span_id, as: 'spanId'
          property :start_time, as: 'startTime'
          property :status, as: 'status'
          property :task_name, as: 'taskName'
          property :task_queue_name, as: 'taskQueueName'
          property :trace_id, as: 'traceId'
          property :trace_sampled, as: 'traceSampled'
          property :url_map_entry, as: 'urlMapEntry'
          property :user_agent, as: 'userAgent'
          property :version_id, as: 'versionId'
          property :was_loading_request, as: 'wasLoadingRequest'
        end
      end
      
      class SavedQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :logging_query, as: 'loggingQuery', class: Google::Apis::LoggingV2::LoggingQuery, decorator: Google::Apis::LoggingV2::LoggingQuery::Representation
      
          property :name, as: 'name'
          property :ops_analytics_query, as: 'opsAnalyticsQuery', class: Google::Apis::LoggingV2::OpsAnalyticsQuery, decorator: Google::Apis::LoggingV2::OpsAnalyticsQuery::Representation
      
          property :update_time, as: 'updateTime'
          property :visibility, as: 'visibility'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::LoggingV2::Policy, decorator: Google::Apis::LoggingV2::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class Settings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_sink_config, as: 'defaultSinkConfig', class: Google::Apis::LoggingV2::DefaultSinkConfig, decorator: Google::Apis::LoggingV2::DefaultSinkConfig::Representation
      
          property :disable_default_sink, as: 'disableDefaultSink'
          property :kms_key_name, as: 'kmsKeyName'
          property :kms_service_account_id, as: 'kmsServiceAccountId'
          property :logging_service_account_id, as: 'loggingServiceAccountId'
          property :name, as: 'name'
          property :storage_location, as: 'storageLocation'
        end
      end
      
      class SourceLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file, as: 'file'
          property :function_name, as: 'functionName'
          property :line, :numeric_string => true, as: 'line'
        end
      end
      
      class SourceReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :repository, as: 'repository'
          property :revision_id, as: 'revisionId'
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
      
      class SummaryField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field'
        end
      end
      
      class SuppressionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reason, as: 'reason'
          property :suppressed_count, as: 'suppressedCount'
        end
      end
      
      class TailLogEntriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :buffer_window, as: 'bufferWindow'
          property :filter, as: 'filter'
          collection :resource_names, as: 'resourceNames'
        end
      end
      
      class TailLogEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::LoggingV2::LogEntry, decorator: Google::Apis::LoggingV2::LogEntry::Representation
      
          collection :suppression_info, as: 'suppressionInfo', class: Google::Apis::LoggingV2::SuppressionInfo, decorator: Google::Apis::LoggingV2::SuppressionInfo::Representation
      
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
      
      class UndeleteBucketRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UpdateBucketRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket', class: Google::Apis::LoggingV2::LogBucket, decorator: Google::Apis::LoggingV2::LogBucket::Representation
      
          property :name, as: 'name'
          property :update_mask, as: 'updateMask'
        end
      end
      
      class WriteLogEntriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dry_run, as: 'dryRun'
          collection :entries, as: 'entries', class: Google::Apis::LoggingV2::LogEntry, decorator: Google::Apis::LoggingV2::LogEntry::Representation
      
          hash :labels, as: 'labels'
          property :log_name, as: 'logName'
          property :partial_success, as: 'partialSuccess'
          property :resource, as: 'resource', class: Google::Apis::LoggingV2::MonitoredResource, decorator: Google::Apis::LoggingV2::MonitoredResource::Representation
      
        end
      end
      
      class WriteLogEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
