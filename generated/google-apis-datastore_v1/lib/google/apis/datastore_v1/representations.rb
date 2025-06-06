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
    module DatastoreV1
      
      class Aggregation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationResultBatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllocateIdsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllocateIdsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ArrayValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Avg
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BeginTransactionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BeginTransactionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompositeFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Count
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Entity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntityResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecutionStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExplainMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExplainOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Filter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FindNearest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDatastoreAdminV1CommonMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDatastoreAdminV1EntityFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDatastoreAdminV1ExportEntitiesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDatastoreAdminV1ExportEntitiesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDatastoreAdminV1ExportEntitiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDatastoreAdminV1ImportEntitiesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDatastoreAdminV1ImportEntitiesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDatastoreAdminV1Index
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDatastoreAdminV1IndexOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDatastoreAdminV1IndexedProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDatastoreAdminV1ListIndexesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDatastoreAdminV1MigrationProgressEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDatastoreAdminV1MigrationStateEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDatastoreAdminV1PrepareStepDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDatastoreAdminV1Progress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDatastoreAdminV1RedirectWritesStepDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDatastoreAdminV1beta1CommonMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDatastoreAdminV1beta1EntityFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDatastoreAdminV1beta1ExportEntitiesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDatastoreAdminV1beta1ExportEntitiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDatastoreAdminV1beta1ImportEntitiesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDatastoreAdminV1beta1Progress
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
      
      class GqlQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GqlQueryParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Key
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KindExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LookupRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LookupResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Mutation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MutationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartitionId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PathElement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PlanSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Projection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PropertyFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PropertyMask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PropertyOrder
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PropertyReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PropertyTransform
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Query
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryResultBatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadOnly
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadWrite
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReserveIdsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReserveIdsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollbackRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollbackResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunAggregationQueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunAggregationQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunQueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Sum
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransactionOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Value
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Aggregation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alias, as: 'alias'
          property :avg, as: 'avg', class: Google::Apis::DatastoreV1::Avg, decorator: Google::Apis::DatastoreV1::Avg::Representation
      
          property :count, as: 'count', class: Google::Apis::DatastoreV1::Count, decorator: Google::Apis::DatastoreV1::Count::Representation
      
          property :sum, as: 'sum', class: Google::Apis::DatastoreV1::Sum, decorator: Google::Apis::DatastoreV1::Sum::Representation
      
        end
      end
      
      class AggregationQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aggregations, as: 'aggregations', class: Google::Apis::DatastoreV1::Aggregation, decorator: Google::Apis::DatastoreV1::Aggregation::Representation
      
          property :nested_query, as: 'nestedQuery', class: Google::Apis::DatastoreV1::Query, decorator: Google::Apis::DatastoreV1::Query::Representation
      
        end
      end
      
      class AggregationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :aggregate_properties, as: 'aggregateProperties', class: Google::Apis::DatastoreV1::Value, decorator: Google::Apis::DatastoreV1::Value::Representation
      
        end
      end
      
      class AggregationResultBatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aggregation_results, as: 'aggregationResults', class: Google::Apis::DatastoreV1::AggregationResult, decorator: Google::Apis::DatastoreV1::AggregationResult::Representation
      
          property :more_results, as: 'moreResults'
          property :read_time, as: 'readTime'
        end
      end
      
      class AllocateIdsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_id, as: 'databaseId'
          collection :keys, as: 'keys', class: Google::Apis::DatastoreV1::Key, decorator: Google::Apis::DatastoreV1::Key::Representation
      
        end
      end
      
      class AllocateIdsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :keys, as: 'keys', class: Google::Apis::DatastoreV1::Key, decorator: Google::Apis::DatastoreV1::Key::Representation
      
        end
      end
      
      class ArrayValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values', class: Google::Apis::DatastoreV1::Value, decorator: Google::Apis::DatastoreV1::Value::Representation
      
        end
      end
      
      class Avg
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :property, as: 'property', class: Google::Apis::DatastoreV1::PropertyReference, decorator: Google::Apis::DatastoreV1::PropertyReference::Representation
      
        end
      end
      
      class BeginTransactionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_id, as: 'databaseId'
          property :transaction_options, as: 'transactionOptions', class: Google::Apis::DatastoreV1::TransactionOptions, decorator: Google::Apis::DatastoreV1::TransactionOptions::Representation
      
        end
      end
      
      class BeginTransactionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :transaction, :base64 => true, as: 'transaction'
        end
      end
      
      class CommitRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_id, as: 'databaseId'
          property :mode, as: 'mode'
          collection :mutations, as: 'mutations', class: Google::Apis::DatastoreV1::Mutation, decorator: Google::Apis::DatastoreV1::Mutation::Representation
      
          property :single_use_transaction, as: 'singleUseTransaction', class: Google::Apis::DatastoreV1::TransactionOptions, decorator: Google::Apis::DatastoreV1::TransactionOptions::Representation
      
          property :transaction, :base64 => true, as: 'transaction'
        end
      end
      
      class CommitResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commit_time, as: 'commitTime'
          property :index_updates, as: 'indexUpdates'
          collection :mutation_results, as: 'mutationResults', class: Google::Apis::DatastoreV1::MutationResult, decorator: Google::Apis::DatastoreV1::MutationResult::Representation
      
        end
      end
      
      class CompositeFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :filters, as: 'filters', class: Google::Apis::DatastoreV1::Filter, decorator: Google::Apis::DatastoreV1::Filter::Representation
      
          property :op, as: 'op'
        end
      end
      
      class Count
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :up_to, :numeric_string => true, as: 'upTo'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Entity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key', class: Google::Apis::DatastoreV1::Key, decorator: Google::Apis::DatastoreV1::Key::Representation
      
          hash :properties, as: 'properties', class: Google::Apis::DatastoreV1::Value, decorator: Google::Apis::DatastoreV1::Value::Representation
      
        end
      end
      
      class EntityResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :cursor, :base64 => true, as: 'cursor'
          property :entity, as: 'entity', class: Google::Apis::DatastoreV1::Entity, decorator: Google::Apis::DatastoreV1::Entity::Representation
      
          property :update_time, as: 'updateTime'
          property :version, :numeric_string => true, as: 'version'
        end
      end
      
      class ExecutionStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :debug_stats, as: 'debugStats'
          property :execution_duration, as: 'executionDuration'
          property :read_operations, :numeric_string => true, as: 'readOperations'
          property :results_returned, :numeric_string => true, as: 'resultsReturned'
        end
      end
      
      class ExplainMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execution_stats, as: 'executionStats', class: Google::Apis::DatastoreV1::ExecutionStats, decorator: Google::Apis::DatastoreV1::ExecutionStats::Representation
      
          property :plan_summary, as: 'planSummary', class: Google::Apis::DatastoreV1::PlanSummary, decorator: Google::Apis::DatastoreV1::PlanSummary::Representation
      
        end
      end
      
      class ExplainOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analyze, as: 'analyze'
        end
      end
      
      class Filter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :composite_filter, as: 'compositeFilter', class: Google::Apis::DatastoreV1::CompositeFilter, decorator: Google::Apis::DatastoreV1::CompositeFilter::Representation
      
          property :property_filter, as: 'propertyFilter', class: Google::Apis::DatastoreV1::PropertyFilter, decorator: Google::Apis::DatastoreV1::PropertyFilter::Representation
      
        end
      end
      
      class FindNearest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :distance_measure, as: 'distanceMeasure'
          property :distance_result_property, as: 'distanceResultProperty'
          property :distance_threshold, as: 'distanceThreshold'
          property :limit, as: 'limit'
          property :query_vector, as: 'queryVector', class: Google::Apis::DatastoreV1::Value, decorator: Google::Apis::DatastoreV1::Value::Representation
      
          property :vector_property, as: 'vectorProperty', class: Google::Apis::DatastoreV1::PropertyReference, decorator: Google::Apis::DatastoreV1::PropertyReference::Representation
      
        end
      end
      
      class GoogleDatastoreAdminV1CommonMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          hash :labels, as: 'labels'
          property :operation_type, as: 'operationType'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :migration_state, as: 'migrationState'
          property :migration_step, as: 'migrationStep'
        end
      end
      
      class GoogleDatastoreAdminV1EntityFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :kinds, as: 'kinds'
          collection :namespace_ids, as: 'namespaceIds'
        end
      end
      
      class GoogleDatastoreAdminV1ExportEntitiesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common, as: 'common', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1CommonMetadata, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1CommonMetadata::Representation
      
          property :entity_filter, as: 'entityFilter', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1EntityFilter, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1EntityFilter::Representation
      
          property :output_url_prefix, as: 'outputUrlPrefix'
          property :progress_bytes, as: 'progressBytes', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1Progress, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1Progress::Representation
      
          property :progress_entities, as: 'progressEntities', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1Progress, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1Progress::Representation
      
        end
      end
      
      class GoogleDatastoreAdminV1ExportEntitiesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_filter, as: 'entityFilter', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1EntityFilter, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1EntityFilter::Representation
      
          hash :labels, as: 'labels'
          property :output_url_prefix, as: 'outputUrlPrefix'
        end
      end
      
      class GoogleDatastoreAdminV1ExportEntitiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_url, as: 'outputUrl'
        end
      end
      
      class GoogleDatastoreAdminV1ImportEntitiesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common, as: 'common', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1CommonMetadata, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1CommonMetadata::Representation
      
          property :entity_filter, as: 'entityFilter', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1EntityFilter, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1EntityFilter::Representation
      
          property :input_url, as: 'inputUrl'
          property :progress_bytes, as: 'progressBytes', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1Progress, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1Progress::Representation
      
          property :progress_entities, as: 'progressEntities', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1Progress, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1Progress::Representation
      
        end
      end
      
      class GoogleDatastoreAdminV1ImportEntitiesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_filter, as: 'entityFilter', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1EntityFilter, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1EntityFilter::Representation
      
          property :input_url, as: 'inputUrl'
          hash :labels, as: 'labels'
        end
      end
      
      class GoogleDatastoreAdminV1Index
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ancestor, as: 'ancestor'
          property :index_id, as: 'indexId'
          property :kind, as: 'kind'
          property :project_id, as: 'projectId'
          collection :properties, as: 'properties', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1IndexedProperty, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1IndexedProperty::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleDatastoreAdminV1IndexOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common, as: 'common', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1CommonMetadata, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1CommonMetadata::Representation
      
          property :index_id, as: 'indexId'
          property :progress_entities, as: 'progressEntities', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1Progress, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1Progress::Representation
      
        end
      end
      
      class GoogleDatastoreAdminV1IndexedProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :direction, as: 'direction'
          property :name, as: 'name'
        end
      end
      
      class GoogleDatastoreAdminV1ListIndexesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :indexes, as: 'indexes', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1Index, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1Index::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleDatastoreAdminV1MigrationProgressEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prepare_step_details, as: 'prepareStepDetails', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1PrepareStepDetails, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1PrepareStepDetails::Representation
      
          property :redirect_writes_step_details, as: 'redirectWritesStepDetails', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1RedirectWritesStepDetails, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1RedirectWritesStepDetails::Representation
      
          property :step, as: 'step'
        end
      end
      
      class GoogleDatastoreAdminV1MigrationStateEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
        end
      end
      
      class GoogleDatastoreAdminV1PrepareStepDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :concurrency_mode, as: 'concurrencyMode'
        end
      end
      
      class GoogleDatastoreAdminV1Progress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :work_completed, :numeric_string => true, as: 'workCompleted'
          property :work_estimated, :numeric_string => true, as: 'workEstimated'
        end
      end
      
      class GoogleDatastoreAdminV1RedirectWritesStepDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :concurrency_mode, as: 'concurrencyMode'
        end
      end
      
      class GoogleDatastoreAdminV1beta1CommonMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          hash :labels, as: 'labels'
          property :operation_type, as: 'operationType'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class GoogleDatastoreAdminV1beta1EntityFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :kinds, as: 'kinds'
          collection :namespace_ids, as: 'namespaceIds'
        end
      end
      
      class GoogleDatastoreAdminV1beta1ExportEntitiesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common, as: 'common', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1beta1CommonMetadata, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1beta1CommonMetadata::Representation
      
          property :entity_filter, as: 'entityFilter', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1beta1EntityFilter, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1beta1EntityFilter::Representation
      
          property :output_url_prefix, as: 'outputUrlPrefix'
          property :progress_bytes, as: 'progressBytes', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1beta1Progress, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1beta1Progress::Representation
      
          property :progress_entities, as: 'progressEntities', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1beta1Progress, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1beta1Progress::Representation
      
        end
      end
      
      class GoogleDatastoreAdminV1beta1ExportEntitiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_url, as: 'outputUrl'
        end
      end
      
      class GoogleDatastoreAdminV1beta1ImportEntitiesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common, as: 'common', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1beta1CommonMetadata, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1beta1CommonMetadata::Representation
      
          property :entity_filter, as: 'entityFilter', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1beta1EntityFilter, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1beta1EntityFilter::Representation
      
          property :input_url, as: 'inputUrl'
          property :progress_bytes, as: 'progressBytes', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1beta1Progress, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1beta1Progress::Representation
      
          property :progress_entities, as: 'progressEntities', class: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1beta1Progress, decorator: Google::Apis::DatastoreV1::GoogleDatastoreAdminV1beta1Progress::Representation
      
        end
      end
      
      class GoogleDatastoreAdminV1beta1Progress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :work_completed, :numeric_string => true, as: 'workCompleted'
          property :work_estimated, :numeric_string => true, as: 'workEstimated'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DatastoreV1::GoogleLongrunningOperation, decorator: Google::Apis::DatastoreV1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DatastoreV1::Status, decorator: Google::Apis::DatastoreV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GqlQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_literals, as: 'allowLiterals'
          hash :named_bindings, as: 'namedBindings', class: Google::Apis::DatastoreV1::GqlQueryParameter, decorator: Google::Apis::DatastoreV1::GqlQueryParameter::Representation
      
          collection :positional_bindings, as: 'positionalBindings', class: Google::Apis::DatastoreV1::GqlQueryParameter, decorator: Google::Apis::DatastoreV1::GqlQueryParameter::Representation
      
          property :query_string, as: 'queryString'
        end
      end
      
      class GqlQueryParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cursor, :base64 => true, as: 'cursor'
          property :value, as: 'value', class: Google::Apis::DatastoreV1::Value, decorator: Google::Apis::DatastoreV1::Value::Representation
      
        end
      end
      
      class Key
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :partition_id, as: 'partitionId', class: Google::Apis::DatastoreV1::PartitionId, decorator: Google::Apis::DatastoreV1::PartitionId::Representation
      
          collection :path, as: 'path', class: Google::Apis::DatastoreV1::PathElement, decorator: Google::Apis::DatastoreV1::PathElement::Representation
      
        end
      end
      
      class KindExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class LatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class LookupRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_id, as: 'databaseId'
          collection :keys, as: 'keys', class: Google::Apis::DatastoreV1::Key, decorator: Google::Apis::DatastoreV1::Key::Representation
      
          property :property_mask, as: 'propertyMask', class: Google::Apis::DatastoreV1::PropertyMask, decorator: Google::Apis::DatastoreV1::PropertyMask::Representation
      
          property :read_options, as: 'readOptions', class: Google::Apis::DatastoreV1::ReadOptions, decorator: Google::Apis::DatastoreV1::ReadOptions::Representation
      
        end
      end
      
      class LookupResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deferred, as: 'deferred', class: Google::Apis::DatastoreV1::Key, decorator: Google::Apis::DatastoreV1::Key::Representation
      
          collection :found, as: 'found', class: Google::Apis::DatastoreV1::EntityResult, decorator: Google::Apis::DatastoreV1::EntityResult::Representation
      
          collection :missing, as: 'missing', class: Google::Apis::DatastoreV1::EntityResult, decorator: Google::Apis::DatastoreV1::EntityResult::Representation
      
          property :read_time, as: 'readTime'
          property :transaction, :base64 => true, as: 'transaction'
        end
      end
      
      class Mutation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_version, :numeric_string => true, as: 'baseVersion'
          property :conflict_resolution_strategy, as: 'conflictResolutionStrategy'
          property :delete, as: 'delete', class: Google::Apis::DatastoreV1::Key, decorator: Google::Apis::DatastoreV1::Key::Representation
      
          property :insert, as: 'insert', class: Google::Apis::DatastoreV1::Entity, decorator: Google::Apis::DatastoreV1::Entity::Representation
      
          property :property_mask, as: 'propertyMask', class: Google::Apis::DatastoreV1::PropertyMask, decorator: Google::Apis::DatastoreV1::PropertyMask::Representation
      
          collection :property_transforms, as: 'propertyTransforms', class: Google::Apis::DatastoreV1::PropertyTransform, decorator: Google::Apis::DatastoreV1::PropertyTransform::Representation
      
          property :update, as: 'update', class: Google::Apis::DatastoreV1::Entity, decorator: Google::Apis::DatastoreV1::Entity::Representation
      
          property :update_time, as: 'updateTime'
          property :upsert, as: 'upsert', class: Google::Apis::DatastoreV1::Entity, decorator: Google::Apis::DatastoreV1::Entity::Representation
      
        end
      end
      
      class MutationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conflict_detected, as: 'conflictDetected'
          property :create_time, as: 'createTime'
          property :key, as: 'key', class: Google::Apis::DatastoreV1::Key, decorator: Google::Apis::DatastoreV1::Key::Representation
      
          collection :transform_results, as: 'transformResults', class: Google::Apis::DatastoreV1::Value, decorator: Google::Apis::DatastoreV1::Value::Representation
      
          property :update_time, as: 'updateTime'
          property :version, :numeric_string => true, as: 'version'
        end
      end
      
      class PartitionId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_id, as: 'databaseId'
          property :namespace_id, as: 'namespaceId'
          property :project_id, as: 'projectId'
        end
      end
      
      class PathElement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      class PlanSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :indexes_used, as: 'indexesUsed'
        end
      end
      
      class Projection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :property, as: 'property', class: Google::Apis::DatastoreV1::PropertyReference, decorator: Google::Apis::DatastoreV1::PropertyReference::Representation
      
        end
      end
      
      class PropertyFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :op, as: 'op'
          property :property, as: 'property', class: Google::Apis::DatastoreV1::PropertyReference, decorator: Google::Apis::DatastoreV1::PropertyReference::Representation
      
          property :value, as: 'value', class: Google::Apis::DatastoreV1::Value, decorator: Google::Apis::DatastoreV1::Value::Representation
      
        end
      end
      
      class PropertyMask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :paths, as: 'paths'
        end
      end
      
      class PropertyOrder
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :direction, as: 'direction'
          property :property, as: 'property', class: Google::Apis::DatastoreV1::PropertyReference, decorator: Google::Apis::DatastoreV1::PropertyReference::Representation
      
        end
      end
      
      class PropertyReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class PropertyTransform
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :append_missing_elements, as: 'appendMissingElements', class: Google::Apis::DatastoreV1::ArrayValue, decorator: Google::Apis::DatastoreV1::ArrayValue::Representation
      
          property :increment, as: 'increment', class: Google::Apis::DatastoreV1::Value, decorator: Google::Apis::DatastoreV1::Value::Representation
      
          property :maximum, as: 'maximum', class: Google::Apis::DatastoreV1::Value, decorator: Google::Apis::DatastoreV1::Value::Representation
      
          property :minimum, as: 'minimum', class: Google::Apis::DatastoreV1::Value, decorator: Google::Apis::DatastoreV1::Value::Representation
      
          property :property, as: 'property'
          property :remove_all_from_array, as: 'removeAllFromArray', class: Google::Apis::DatastoreV1::ArrayValue, decorator: Google::Apis::DatastoreV1::ArrayValue::Representation
      
          property :set_to_server_value, as: 'setToServerValue'
        end
      end
      
      class Query
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :distinct_on, as: 'distinctOn', class: Google::Apis::DatastoreV1::PropertyReference, decorator: Google::Apis::DatastoreV1::PropertyReference::Representation
      
          property :end_cursor, :base64 => true, as: 'endCursor'
          property :filter, as: 'filter', class: Google::Apis::DatastoreV1::Filter, decorator: Google::Apis::DatastoreV1::Filter::Representation
      
          property :find_nearest, as: 'findNearest', class: Google::Apis::DatastoreV1::FindNearest, decorator: Google::Apis::DatastoreV1::FindNearest::Representation
      
          collection :kind, as: 'kind', class: Google::Apis::DatastoreV1::KindExpression, decorator: Google::Apis::DatastoreV1::KindExpression::Representation
      
          property :limit, as: 'limit'
          property :offset, as: 'offset'
          collection :order, as: 'order', class: Google::Apis::DatastoreV1::PropertyOrder, decorator: Google::Apis::DatastoreV1::PropertyOrder::Representation
      
          collection :projection, as: 'projection', class: Google::Apis::DatastoreV1::Projection, decorator: Google::Apis::DatastoreV1::Projection::Representation
      
          property :start_cursor, :base64 => true, as: 'startCursor'
        end
      end
      
      class QueryResultBatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_cursor, :base64 => true, as: 'endCursor'
          property :entity_result_type, as: 'entityResultType'
          collection :entity_results, as: 'entityResults', class: Google::Apis::DatastoreV1::EntityResult, decorator: Google::Apis::DatastoreV1::EntityResult::Representation
      
          property :more_results, as: 'moreResults'
          property :read_time, as: 'readTime'
          property :skipped_cursor, :base64 => true, as: 'skippedCursor'
          property :skipped_results, as: 'skippedResults'
          property :snapshot_version, :numeric_string => true, as: 'snapshotVersion'
        end
      end
      
      class ReadOnly
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :read_time, as: 'readTime'
        end
      end
      
      class ReadOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_transaction, as: 'newTransaction', class: Google::Apis::DatastoreV1::TransactionOptions, decorator: Google::Apis::DatastoreV1::TransactionOptions::Representation
      
          property :read_consistency, as: 'readConsistency'
          property :read_time, as: 'readTime'
          property :transaction, :base64 => true, as: 'transaction'
        end
      end
      
      class ReadWrite
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :previous_transaction, :base64 => true, as: 'previousTransaction'
        end
      end
      
      class ReserveIdsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_id, as: 'databaseId'
          collection :keys, as: 'keys', class: Google::Apis::DatastoreV1::Key, decorator: Google::Apis::DatastoreV1::Key::Representation
      
        end
      end
      
      class ReserveIdsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RollbackRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_id, as: 'databaseId'
          property :transaction, :base64 => true, as: 'transaction'
        end
      end
      
      class RollbackResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RunAggregationQueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_query, as: 'aggregationQuery', class: Google::Apis::DatastoreV1::AggregationQuery, decorator: Google::Apis::DatastoreV1::AggregationQuery::Representation
      
          property :database_id, as: 'databaseId'
          property :explain_options, as: 'explainOptions', class: Google::Apis::DatastoreV1::ExplainOptions, decorator: Google::Apis::DatastoreV1::ExplainOptions::Representation
      
          property :gql_query, as: 'gqlQuery', class: Google::Apis::DatastoreV1::GqlQuery, decorator: Google::Apis::DatastoreV1::GqlQuery::Representation
      
          property :partition_id, as: 'partitionId', class: Google::Apis::DatastoreV1::PartitionId, decorator: Google::Apis::DatastoreV1::PartitionId::Representation
      
          property :read_options, as: 'readOptions', class: Google::Apis::DatastoreV1::ReadOptions, decorator: Google::Apis::DatastoreV1::ReadOptions::Representation
      
        end
      end
      
      class RunAggregationQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch, as: 'batch', class: Google::Apis::DatastoreV1::AggregationResultBatch, decorator: Google::Apis::DatastoreV1::AggregationResultBatch::Representation
      
          property :explain_metrics, as: 'explainMetrics', class: Google::Apis::DatastoreV1::ExplainMetrics, decorator: Google::Apis::DatastoreV1::ExplainMetrics::Representation
      
          property :query, as: 'query', class: Google::Apis::DatastoreV1::AggregationQuery, decorator: Google::Apis::DatastoreV1::AggregationQuery::Representation
      
          property :transaction, :base64 => true, as: 'transaction'
        end
      end
      
      class RunQueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_id, as: 'databaseId'
          property :explain_options, as: 'explainOptions', class: Google::Apis::DatastoreV1::ExplainOptions, decorator: Google::Apis::DatastoreV1::ExplainOptions::Representation
      
          property :gql_query, as: 'gqlQuery', class: Google::Apis::DatastoreV1::GqlQuery, decorator: Google::Apis::DatastoreV1::GqlQuery::Representation
      
          property :partition_id, as: 'partitionId', class: Google::Apis::DatastoreV1::PartitionId, decorator: Google::Apis::DatastoreV1::PartitionId::Representation
      
          property :property_mask, as: 'propertyMask', class: Google::Apis::DatastoreV1::PropertyMask, decorator: Google::Apis::DatastoreV1::PropertyMask::Representation
      
          property :query, as: 'query', class: Google::Apis::DatastoreV1::Query, decorator: Google::Apis::DatastoreV1::Query::Representation
      
          property :read_options, as: 'readOptions', class: Google::Apis::DatastoreV1::ReadOptions, decorator: Google::Apis::DatastoreV1::ReadOptions::Representation
      
        end
      end
      
      class RunQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch, as: 'batch', class: Google::Apis::DatastoreV1::QueryResultBatch, decorator: Google::Apis::DatastoreV1::QueryResultBatch::Representation
      
          property :explain_metrics, as: 'explainMetrics', class: Google::Apis::DatastoreV1::ExplainMetrics, decorator: Google::Apis::DatastoreV1::ExplainMetrics::Representation
      
          property :query, as: 'query', class: Google::Apis::DatastoreV1::Query, decorator: Google::Apis::DatastoreV1::Query::Representation
      
          property :transaction, :base64 => true, as: 'transaction'
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
      
      class Sum
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :property, as: 'property', class: Google::Apis::DatastoreV1::PropertyReference, decorator: Google::Apis::DatastoreV1::PropertyReference::Representation
      
        end
      end
      
      class TransactionOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :read_only, as: 'readOnly', class: Google::Apis::DatastoreV1::ReadOnly, decorator: Google::Apis::DatastoreV1::ReadOnly::Representation
      
          property :read_write, as: 'readWrite', class: Google::Apis::DatastoreV1::ReadWrite, decorator: Google::Apis::DatastoreV1::ReadWrite::Representation
      
        end
      end
      
      class Value
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :array_value, as: 'arrayValue', class: Google::Apis::DatastoreV1::ArrayValue, decorator: Google::Apis::DatastoreV1::ArrayValue::Representation
      
          property :blob_value, :base64 => true, as: 'blobValue'
          property :boolean_value, as: 'booleanValue'
          property :double_value, as: 'doubleValue'
          property :entity_value, as: 'entityValue', class: Google::Apis::DatastoreV1::Entity, decorator: Google::Apis::DatastoreV1::Entity::Representation
      
          property :exclude_from_indexes, as: 'excludeFromIndexes'
          property :geo_point_value, as: 'geoPointValue', class: Google::Apis::DatastoreV1::LatLng, decorator: Google::Apis::DatastoreV1::LatLng::Representation
      
          property :integer_value, :numeric_string => true, as: 'integerValue'
          property :key_value, as: 'keyValue', class: Google::Apis::DatastoreV1::Key, decorator: Google::Apis::DatastoreV1::Key::Representation
      
          property :meaning, as: 'meaning'
          property :null_value, as: 'nullValue'
          property :string_value, as: 'stringValue'
          property :timestamp_value, as: 'timestampValue'
        end
      end
    end
  end
end
