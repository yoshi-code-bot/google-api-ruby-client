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
    module AnalyticshubV1beta1
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigQueryDatasetSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommercialInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataExchange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataProvider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DestinationDataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DestinationDatasetReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
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
      
      class GoogleCloudBigqueryDataexchangeV1beta1DestinationDataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudBigqueryDataexchangeV1beta1DestinationDatasetReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMarketplaceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinkedResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDataExchangesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListListingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOrgDataExchangesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Listing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Publisher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RefreshSubscriptionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestrictedExportConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubscribeDataExchangeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubscribeListingRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubscribeListingResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Subscription
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
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::AnalyticshubV1beta1::AuditLogConfig, decorator: Google::Apis::AnalyticshubV1beta1::AuditLogConfig::Representation
      
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
      
      class BigQueryDatasetSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::AnalyticshubV1beta1::Expr, decorator: Google::Apis::AnalyticshubV1beta1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CommercialInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_marketplace, as: 'cloudMarketplace', class: Google::Apis::AnalyticshubV1beta1::GoogleCloudMarketplaceInfo, decorator: Google::Apis::AnalyticshubV1beta1::GoogleCloudMarketplaceInfo::Representation
      
        end
      end
      
      class DataExchange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :documentation, as: 'documentation'
          property :icon, :base64 => true, as: 'icon'
          property :listing_count, as: 'listingCount'
          property :name, as: 'name'
          property :primary_contact, as: 'primaryContact'
        end
      end
      
      class DataProvider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :primary_contact, as: 'primaryContact'
        end
      end
      
      class DestinationDataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_reference, as: 'datasetReference', class: Google::Apis::AnalyticshubV1beta1::DestinationDatasetReference, decorator: Google::Apis::AnalyticshubV1beta1::DestinationDatasetReference::Representation
      
          property :description, as: 'description'
          property :friendly_name, as: 'friendlyName'
          hash :labels, as: 'labels'
          property :location, as: 'location'
        end
      end
      
      class DestinationDatasetReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :project_id, as: 'projectId'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
          property :options, as: 'options', class: Google::Apis::AnalyticshubV1beta1::GetPolicyOptions, decorator: Google::Apis::AnalyticshubV1beta1::GetPolicyOptions::Representation
      
        end
      end
      
      class GetPolicyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_policy_version, as: 'requestedPolicyVersion'
        end
      end
      
      class GoogleCloudBigqueryDataexchangeV1beta1DestinationDataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_reference, as: 'datasetReference', class: Google::Apis::AnalyticshubV1beta1::GoogleCloudBigqueryDataexchangeV1beta1DestinationDatasetReference, decorator: Google::Apis::AnalyticshubV1beta1::GoogleCloudBigqueryDataexchangeV1beta1DestinationDatasetReference::Representation
      
          property :description, as: 'description'
          property :friendly_name, as: 'friendlyName'
          hash :labels, as: 'labels'
          property :location, as: 'location'
        end
      end
      
      class GoogleCloudBigqueryDataexchangeV1beta1DestinationDatasetReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :project_id, as: 'projectId'
        end
      end
      
      class GoogleCloudMarketplaceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :order, as: 'order'
        end
      end
      
      class LinkedResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :linked_dataset, as: 'linkedDataset'
          property :linked_pubsub_subscription, as: 'linkedPubsubSubscription'
          property :listing, as: 'listing'
        end
      end
      
      class ListDataExchangesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_exchanges, as: 'dataExchanges', class: Google::Apis::AnalyticshubV1beta1::DataExchange, decorator: Google::Apis::AnalyticshubV1beta1::DataExchange::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListListingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :listings, as: 'listings', class: Google::Apis::AnalyticshubV1beta1::Listing, decorator: Google::Apis::AnalyticshubV1beta1::Listing::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOrgDataExchangesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_exchanges, as: 'dataExchanges', class: Google::Apis::AnalyticshubV1beta1::DataExchange, decorator: Google::Apis::AnalyticshubV1beta1::DataExchange::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Listing
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_only_metadata_sharing, as: 'allowOnlyMetadataSharing'
          property :bigquery_dataset, as: 'bigqueryDataset', class: Google::Apis::AnalyticshubV1beta1::BigQueryDatasetSource, decorator: Google::Apis::AnalyticshubV1beta1::BigQueryDatasetSource::Representation
      
          collection :categories, as: 'categories'
          property :data_provider, as: 'dataProvider', class: Google::Apis::AnalyticshubV1beta1::DataProvider, decorator: Google::Apis::AnalyticshubV1beta1::DataProvider::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :documentation, as: 'documentation'
          property :icon, :base64 => true, as: 'icon'
          property :name, as: 'name'
          property :primary_contact, as: 'primaryContact'
          property :publisher, as: 'publisher', class: Google::Apis::AnalyticshubV1beta1::Publisher, decorator: Google::Apis::AnalyticshubV1beta1::Publisher::Representation
      
          property :request_access, as: 'requestAccess'
          property :restricted_export_config, as: 'restrictedExportConfig', class: Google::Apis::AnalyticshubV1beta1::RestrictedExportConfig, decorator: Google::Apis::AnalyticshubV1beta1::RestrictedExportConfig::Representation
      
          property :state, as: 'state'
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
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::AnalyticshubV1beta1::AuditConfig, decorator: Google::Apis::AnalyticshubV1beta1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::AnalyticshubV1beta1::Binding, decorator: Google::Apis::AnalyticshubV1beta1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class Publisher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :primary_contact, as: 'primaryContact'
        end
      end
      
      class RefreshSubscriptionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subscription, as: 'subscription', class: Google::Apis::AnalyticshubV1beta1::Subscription, decorator: Google::Apis::AnalyticshubV1beta1::Subscription::Representation
      
        end
      end
      
      class RestrictedExportConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :restrict_direct_table_access, as: 'restrictDirectTableAccess'
          property :restrict_query_result, as: 'restrictQueryResult'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::AnalyticshubV1beta1::Policy, decorator: Google::Apis::AnalyticshubV1beta1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class SubscribeDataExchangeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subscription, as: 'subscription', class: Google::Apis::AnalyticshubV1beta1::Subscription, decorator: Google::Apis::AnalyticshubV1beta1::Subscription::Representation
      
        end
      end
      
      class SubscribeListingRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_dataset, as: 'destinationDataset', class: Google::Apis::AnalyticshubV1beta1::GoogleCloudBigqueryDataexchangeV1beta1DestinationDataset, decorator: Google::Apis::AnalyticshubV1beta1::GoogleCloudBigqueryDataexchangeV1beta1DestinationDataset::Representation
      
        end
      end
      
      class SubscribeListingResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Subscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commercial_info, as: 'commercialInfo', class: Google::Apis::AnalyticshubV1beta1::CommercialInfo, decorator: Google::Apis::AnalyticshubV1beta1::CommercialInfo::Representation
      
          property :creation_time, as: 'creationTime'
          property :data_exchange, as: 'dataExchange'
          property :destination_dataset, as: 'destinationDataset', class: Google::Apis::AnalyticshubV1beta1::DestinationDataset, decorator: Google::Apis::AnalyticshubV1beta1::DestinationDataset::Representation
      
          property :last_modify_time, as: 'lastModifyTime'
          hash :linked_dataset_map, as: 'linkedDatasetMap', class: Google::Apis::AnalyticshubV1beta1::LinkedResource, decorator: Google::Apis::AnalyticshubV1beta1::LinkedResource::Representation
      
          collection :linked_resources, as: 'linkedResources', class: Google::Apis::AnalyticshubV1beta1::LinkedResource, decorator: Google::Apis::AnalyticshubV1beta1::LinkedResource::Representation
      
          property :listing, as: 'listing'
          property :log_linked_dataset_query_user_email, as: 'logLinkedDatasetQueryUserEmail'
          property :name, as: 'name'
          property :organization_display_name, as: 'organizationDisplayName'
          property :organization_id, as: 'organizationId'
          property :resource_type, as: 'resourceType'
          property :state, as: 'state'
          property :subscriber_contact, as: 'subscriberContact'
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
    end
  end
end
