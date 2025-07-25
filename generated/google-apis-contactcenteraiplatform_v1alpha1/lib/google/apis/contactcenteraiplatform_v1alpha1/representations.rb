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
    module ContactcenteraiplatformV1alpha1
      
      class AdminUser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Component
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContactCenter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContactCenterQuota
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Critical
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Early
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudCommonOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListContactCentersResponse
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
      
      class Normal
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
      
      class PrivateAccess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PscSetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Quota
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SamlParams
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
      
      class UrIs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WeeklySchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdminUser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :family_name, as: 'familyName'
          property :given_name, as: 'givenName'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Component
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :service_attachment_names, as: 'serviceAttachmentNames'
        end
      end
      
      class ContactCenter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_user, as: 'adminUser', class: Google::Apis::ContactcenteraiplatformV1alpha1::AdminUser, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::AdminUser::Representation
      
          property :advanced_reporting_enabled, as: 'advancedReportingEnabled'
          property :ccaip_managed_users, as: 'ccaipManagedUsers'
          property :create_time, as: 'createTime'
          property :critical, as: 'critical', class: Google::Apis::ContactcenteraiplatformV1alpha1::Critical, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::Critical::Representation
      
          property :customer_domain_prefix, as: 'customerDomainPrefix'
          property :display_name, as: 'displayName'
          property :early, as: 'early', class: Google::Apis::ContactcenteraiplatformV1alpha1::Early, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::Early::Representation
      
          property :instance_config, as: 'instanceConfig', class: Google::Apis::ContactcenteraiplatformV1alpha1::InstanceConfig, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::InstanceConfig::Representation
      
          property :kms_key, as: 'kmsKey'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :normal, as: 'normal', class: Google::Apis::ContactcenteraiplatformV1alpha1::Normal, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::Normal::Representation
      
          property :private_access, as: 'privateAccess', class: Google::Apis::ContactcenteraiplatformV1alpha1::PrivateAccess, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::PrivateAccess::Representation
      
          collection :private_components, as: 'privateComponents'
          property :release_version, as: 'releaseVersion'
          property :saml_params, as: 'samlParams', class: Google::Apis::ContactcenteraiplatformV1alpha1::SamlParams, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::SamlParams::Representation
      
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          property :uris, as: 'uris', class: Google::Apis::ContactcenteraiplatformV1alpha1::UrIs, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::UrIs::Representation
      
          property :user_email, as: 'userEmail'
        end
      end
      
      class ContactCenterQuota
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contact_center_count_limit, as: 'contactCenterCountLimit'
          property :contact_center_count_sum, as: 'contactCenterCountSum'
          collection :quotas, as: 'quotas', class: Google::Apis::ContactcenteraiplatformV1alpha1::Quota, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::Quota::Representation
      
        end
      end
      
      class Critical
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :peak_hours, as: 'peakHours', class: Google::Apis::ContactcenteraiplatformV1alpha1::WeeklySchedule, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::WeeklySchedule::Representation
      
        end
      end
      
      class Early
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudCommonOperationMetadata
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
      
      class InstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_size, as: 'instanceSize'
        end
      end
      
      class ListContactCentersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contact_centers, as: 'contactCenters', class: Google::Apis::ContactcenteraiplatformV1alpha1::ContactCenter, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::ContactCenter::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::ContactcenteraiplatformV1alpha1::Location, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::ContactcenteraiplatformV1alpha1::Operation, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::Operation::Representation
      
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
      
      class Normal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ContactcenteraiplatformV1alpha1::Status, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :contact_center, as: 'contactCenter', class: Google::Apis::ContactcenteraiplatformV1alpha1::ContactCenter, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::ContactCenter::Representation
      
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class PrivateAccess
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :egress_settings, as: 'egressSettings', class: Google::Apis::ContactcenteraiplatformV1alpha1::Component, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::Component::Representation
      
          collection :ingress_settings, as: 'ingressSettings', class: Google::Apis::ContactcenteraiplatformV1alpha1::Component, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::Component::Representation
      
          property :psc_setting, as: 'pscSetting', class: Google::Apis::ContactcenteraiplatformV1alpha1::PscSetting, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::PscSetting::Representation
      
        end
      end
      
      class PscSetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_consumer_project_ids, as: 'allowedConsumerProjectIds'
          collection :producer_project_ids, as: 'producerProjectIds'
        end
      end
      
      class Quota
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contact_center_count_limit, as: 'contactCenterCountLimit'
          property :contact_center_count_sum, as: 'contactCenterCountSum'
          property :contact_center_instance_size, as: 'contactCenterInstanceSize'
        end
      end
      
      class SamlParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :authentication_contexts, as: 'authenticationContexts'
          property :certificate, as: 'certificate'
          property :email_mapping, as: 'emailMapping'
          property :entity_id, as: 'entityId'
          property :sso_uri, as: 'ssoUri'
          property :user_email, as: 'userEmail'
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
      
      class UrIs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chat_bot_uri, as: 'chatBotUri'
          property :media_uri, as: 'mediaUri'
          property :root_uri, as: 'rootUri'
          property :virtual_agent_streaming_service_uri, as: 'virtualAgentStreamingServiceUri'
        end
      end
      
      class WeeklySchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :days, as: 'days'
          property :duration, as: 'duration'
          property :end_time, as: 'endTime', class: Google::Apis::ContactcenteraiplatformV1alpha1::TimeOfDay, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::TimeOfDay::Representation
      
          property :start_time, as: 'startTime', class: Google::Apis::ContactcenteraiplatformV1alpha1::TimeOfDay, decorator: Google::Apis::ContactcenteraiplatformV1alpha1::TimeOfDay::Representation
      
        end
      end
    end
  end
end
