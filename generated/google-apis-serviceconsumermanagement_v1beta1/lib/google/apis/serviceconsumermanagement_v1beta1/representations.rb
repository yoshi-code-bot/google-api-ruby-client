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
    module ServiceconsumermanagementV1beta1
      
      class Api
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Aspect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthProvider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthRequirement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Authentication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthenticationRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Backend
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchingConfigProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchingDescriptorProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchingSettingsProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Billing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BillingDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientLibrarySettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommonLanguageSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Context
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContextRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Control
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CppSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomErrorRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomHttpPattern
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Documentation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DocumentationRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DotnetSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Endpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Enum
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnumValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExperimentalFeatures
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Field
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FieldPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Http
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JavaSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JwtLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LabelDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Logging
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoggingDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LongRunning
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MethodProp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MethodPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MethodSettings
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
      
      class MetricRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Mixin
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoredResourceDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Monitoring
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoringDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OAuthRequirements
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Option
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Page
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PhpSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Publishing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PythonSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Quota
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuotaLimit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RubySettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SelectiveGapicGeneration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Service
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SystemParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SystemParameterRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SystemParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Type
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Usage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UsageRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1Beta1BatchCreateProducerOverridesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1Beta1ConsumerQuotaLimit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1Beta1ConsumerQuotaMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1Beta1DisableConsumerResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1Beta1EnableConsumerResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1Beta1GenerateServiceIdentityResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1Beta1ImportProducerOverridesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1Beta1ImportProducerOverridesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1Beta1ImportProducerQuotaPoliciesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1Beta1ImportProducerQuotaPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1Beta1ListConsumerQuotaMetricsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1Beta1ListProducerOverridesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1Beta1ListProducerQuotaPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1Beta1OverrideInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1Beta1PolicyInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1Beta1ProducerQuotaPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1Beta1QuotaBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1Beta1QuotaOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1Beta1RefreshConsumerResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1Beta1RolloutInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1Beta1ServiceIdentity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1beta1AddVisibilityLabelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1beta1DefaultIdentity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1beta1DisableConsumerResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1beta1EnableConsumerResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1beta1GenerateDefaultIdentityResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1beta1GenerateServiceAccountResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1beta1RefreshConsumerResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1beta1RemoveVisibilityLabelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class V1beta1ServiceAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Api
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :methods_prop, as: 'methods', class: Google::Apis::ServiceconsumermanagementV1beta1::MethodProp, decorator: Google::Apis::ServiceconsumermanagementV1beta1::MethodProp::Representation
      
          collection :mixins, as: 'mixins', class: Google::Apis::ServiceconsumermanagementV1beta1::Mixin, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Mixin::Representation
      
          property :name, as: 'name'
          collection :options, as: 'options', class: Google::Apis::ServiceconsumermanagementV1beta1::Option, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Option::Representation
      
          property :source_context, as: 'sourceContext', class: Google::Apis::ServiceconsumermanagementV1beta1::SourceContext, decorator: Google::Apis::ServiceconsumermanagementV1beta1::SourceContext::Representation
      
          property :syntax, as: 'syntax'
          property :version, as: 'version'
        end
      end
      
      class Aspect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          hash :spec, as: 'spec'
        end
      end
      
      class AuthProvider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audiences, as: 'audiences'
          property :authorization_url, as: 'authorizationUrl'
          property :id, as: 'id'
          property :issuer, as: 'issuer'
          property :jwks_uri, as: 'jwksUri'
          collection :jwt_locations, as: 'jwtLocations', class: Google::Apis::ServiceconsumermanagementV1beta1::JwtLocation, decorator: Google::Apis::ServiceconsumermanagementV1beta1::JwtLocation::Representation
      
        end
      end
      
      class AuthRequirement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audiences, as: 'audiences'
          property :provider_id, as: 'providerId'
        end
      end
      
      class Authentication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :providers, as: 'providers', class: Google::Apis::ServiceconsumermanagementV1beta1::AuthProvider, decorator: Google::Apis::ServiceconsumermanagementV1beta1::AuthProvider::Representation
      
          collection :rules, as: 'rules', class: Google::Apis::ServiceconsumermanagementV1beta1::AuthenticationRule, decorator: Google::Apis::ServiceconsumermanagementV1beta1::AuthenticationRule::Representation
      
        end
      end
      
      class AuthenticationRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_without_credential, as: 'allowWithoutCredential'
          property :oauth, as: 'oauth', class: Google::Apis::ServiceconsumermanagementV1beta1::OAuthRequirements, decorator: Google::Apis::ServiceconsumermanagementV1beta1::OAuthRequirements::Representation
      
          collection :requirements, as: 'requirements', class: Google::Apis::ServiceconsumermanagementV1beta1::AuthRequirement, decorator: Google::Apis::ServiceconsumermanagementV1beta1::AuthRequirement::Representation
      
          property :selector, as: 'selector'
        end
      end
      
      class Backend
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules, as: 'rules', class: Google::Apis::ServiceconsumermanagementV1beta1::BackendRule, decorator: Google::Apis::ServiceconsumermanagementV1beta1::BackendRule::Representation
      
        end
      end
      
      class BackendRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :deadline, as: 'deadline'
          property :disable_auth, as: 'disableAuth'
          property :jwt_audience, as: 'jwtAudience'
          property :load_balancing_policy, as: 'loadBalancingPolicy'
          property :min_deadline, as: 'minDeadline'
          property :operation_deadline, as: 'operationDeadline'
          hash :overrides_by_request_protocol, as: 'overridesByRequestProtocol', class: Google::Apis::ServiceconsumermanagementV1beta1::BackendRule, decorator: Google::Apis::ServiceconsumermanagementV1beta1::BackendRule::Representation
      
          property :path_translation, as: 'pathTranslation'
          property :protocol, as: 'protocol'
          property :selector, as: 'selector'
        end
      end
      
      class BatchingConfigProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_descriptor, as: 'batchDescriptor', class: Google::Apis::ServiceconsumermanagementV1beta1::BatchingDescriptorProto, decorator: Google::Apis::ServiceconsumermanagementV1beta1::BatchingDescriptorProto::Representation
      
          property :thresholds, as: 'thresholds', class: Google::Apis::ServiceconsumermanagementV1beta1::BatchingSettingsProto, decorator: Google::Apis::ServiceconsumermanagementV1beta1::BatchingSettingsProto::Representation
      
        end
      end
      
      class BatchingDescriptorProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batched_field, as: 'batchedField'
          collection :discriminator_fields, as: 'discriminatorFields'
          property :subresponse_field, as: 'subresponseField'
        end
      end
      
      class BatchingSettingsProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delay_threshold, as: 'delayThreshold'
          property :element_count_limit, as: 'elementCountLimit'
          property :element_count_threshold, as: 'elementCountThreshold'
          property :flow_control_byte_limit, as: 'flowControlByteLimit'
          property :flow_control_element_limit, as: 'flowControlElementLimit'
          property :flow_control_limit_exceeded_behavior, as: 'flowControlLimitExceededBehavior'
          property :request_byte_limit, as: 'requestByteLimit'
          property :request_byte_threshold, :numeric_string => true, as: 'requestByteThreshold'
        end
      end
      
      class Billing
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :consumer_destinations, as: 'consumerDestinations', class: Google::Apis::ServiceconsumermanagementV1beta1::BillingDestination, decorator: Google::Apis::ServiceconsumermanagementV1beta1::BillingDestination::Representation
      
        end
      end
      
      class BillingDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metrics, as: 'metrics'
          property :monitored_resource, as: 'monitoredResource'
        end
      end
      
      class ClientLibrarySettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpp_settings, as: 'cppSettings', class: Google::Apis::ServiceconsumermanagementV1beta1::CppSettings, decorator: Google::Apis::ServiceconsumermanagementV1beta1::CppSettings::Representation
      
          property :dotnet_settings, as: 'dotnetSettings', class: Google::Apis::ServiceconsumermanagementV1beta1::DotnetSettings, decorator: Google::Apis::ServiceconsumermanagementV1beta1::DotnetSettings::Representation
      
          property :go_settings, as: 'goSettings', class: Google::Apis::ServiceconsumermanagementV1beta1::GoSettings, decorator: Google::Apis::ServiceconsumermanagementV1beta1::GoSettings::Representation
      
          property :java_settings, as: 'javaSettings', class: Google::Apis::ServiceconsumermanagementV1beta1::JavaSettings, decorator: Google::Apis::ServiceconsumermanagementV1beta1::JavaSettings::Representation
      
          property :launch_stage, as: 'launchStage'
          property :node_settings, as: 'nodeSettings', class: Google::Apis::ServiceconsumermanagementV1beta1::NodeSettings, decorator: Google::Apis::ServiceconsumermanagementV1beta1::NodeSettings::Representation
      
          property :php_settings, as: 'phpSettings', class: Google::Apis::ServiceconsumermanagementV1beta1::PhpSettings, decorator: Google::Apis::ServiceconsumermanagementV1beta1::PhpSettings::Representation
      
          property :python_settings, as: 'pythonSettings', class: Google::Apis::ServiceconsumermanagementV1beta1::PythonSettings, decorator: Google::Apis::ServiceconsumermanagementV1beta1::PythonSettings::Representation
      
          property :rest_numeric_enums, as: 'restNumericEnums'
          property :ruby_settings, as: 'rubySettings', class: Google::Apis::ServiceconsumermanagementV1beta1::RubySettings, decorator: Google::Apis::ServiceconsumermanagementV1beta1::RubySettings::Representation
      
          property :version, as: 'version'
        end
      end
      
      class CommonLanguageSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :destinations, as: 'destinations'
          property :reference_docs_uri, as: 'referenceDocsUri'
          property :selective_gapic_generation, as: 'selectiveGapicGeneration', class: Google::Apis::ServiceconsumermanagementV1beta1::SelectiveGapicGeneration, decorator: Google::Apis::ServiceconsumermanagementV1beta1::SelectiveGapicGeneration::Representation
      
        end
      end
      
      class Context
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules, as: 'rules', class: Google::Apis::ServiceconsumermanagementV1beta1::ContextRule, decorator: Google::Apis::ServiceconsumermanagementV1beta1::ContextRule::Representation
      
        end
      end
      
      class ContextRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_request_extensions, as: 'allowedRequestExtensions'
          collection :allowed_response_extensions, as: 'allowedResponseExtensions'
          collection :provided, as: 'provided'
          collection :requested, as: 'requested'
          property :selector, as: 'selector'
        end
      end
      
      class Control
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :environment, as: 'environment'
          collection :method_policies, as: 'methodPolicies', class: Google::Apis::ServiceconsumermanagementV1beta1::MethodPolicy, decorator: Google::Apis::ServiceconsumermanagementV1beta1::MethodPolicy::Representation
      
        end
      end
      
      class CppSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common, as: 'common', class: Google::Apis::ServiceconsumermanagementV1beta1::CommonLanguageSettings, decorator: Google::Apis::ServiceconsumermanagementV1beta1::CommonLanguageSettings::Representation
      
        end
      end
      
      class CustomError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules, as: 'rules', class: Google::Apis::ServiceconsumermanagementV1beta1::CustomErrorRule, decorator: Google::Apis::ServiceconsumermanagementV1beta1::CustomErrorRule::Representation
      
          collection :types, as: 'types'
        end
      end
      
      class CustomErrorRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_error_type, as: 'isErrorType'
          property :selector, as: 'selector'
        end
      end
      
      class CustomHttpPattern
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :path, as: 'path'
        end
      end
      
      class Documentation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_iam_info, as: 'additionalIamInfo'
          property :documentation_root_url, as: 'documentationRootUrl'
          property :overview, as: 'overview'
          collection :pages, as: 'pages', class: Google::Apis::ServiceconsumermanagementV1beta1::Page, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Page::Representation
      
          collection :rules, as: 'rules', class: Google::Apis::ServiceconsumermanagementV1beta1::DocumentationRule, decorator: Google::Apis::ServiceconsumermanagementV1beta1::DocumentationRule::Representation
      
          collection :section_overrides, as: 'sectionOverrides', class: Google::Apis::ServiceconsumermanagementV1beta1::Page, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Page::Representation
      
          property :service_root_url, as: 'serviceRootUrl'
          property :summary, as: 'summary'
        end
      end
      
      class DocumentationRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deprecation_description, as: 'deprecationDescription'
          property :description, as: 'description'
          property :disable_replacement_words, as: 'disableReplacementWords'
          property :selector, as: 'selector'
        end
      end
      
      class DotnetSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common, as: 'common', class: Google::Apis::ServiceconsumermanagementV1beta1::CommonLanguageSettings, decorator: Google::Apis::ServiceconsumermanagementV1beta1::CommonLanguageSettings::Representation
      
          collection :forced_namespace_aliases, as: 'forcedNamespaceAliases'
          collection :handwritten_signatures, as: 'handwrittenSignatures'
          collection :ignored_resources, as: 'ignoredResources'
          hash :renamed_resources, as: 'renamedResources'
          hash :renamed_services, as: 'renamedServices'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Endpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aliases, as: 'aliases'
          property :allow_cors, as: 'allowCors'
          property :name, as: 'name'
          property :target, as: 'target'
        end
      end
      
      class Enum
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :edition, as: 'edition'
          collection :enumvalue, as: 'enumvalue', class: Google::Apis::ServiceconsumermanagementV1beta1::EnumValue, decorator: Google::Apis::ServiceconsumermanagementV1beta1::EnumValue::Representation
      
          property :name, as: 'name'
          collection :options, as: 'options', class: Google::Apis::ServiceconsumermanagementV1beta1::Option, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Option::Representation
      
          property :source_context, as: 'sourceContext', class: Google::Apis::ServiceconsumermanagementV1beta1::SourceContext, decorator: Google::Apis::ServiceconsumermanagementV1beta1::SourceContext::Representation
      
          property :syntax, as: 'syntax'
        end
      end
      
      class EnumValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :number, as: 'number'
          collection :options, as: 'options', class: Google::Apis::ServiceconsumermanagementV1beta1::Option, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Option::Representation
      
        end
      end
      
      class ExperimentalFeatures
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :protobuf_pythonic_types_enabled, as: 'protobufPythonicTypesEnabled'
          property :rest_async_io_enabled, as: 'restAsyncIoEnabled'
          property :unversioned_package_disabled, as: 'unversionedPackageDisabled'
        end
      end
      
      class Field
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cardinality, as: 'cardinality'
          property :default_value, as: 'defaultValue'
          property :json_name, as: 'jsonName'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :number, as: 'number'
          property :oneof_index, as: 'oneofIndex'
          collection :options, as: 'options', class: Google::Apis::ServiceconsumermanagementV1beta1::Option, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Option::Representation
      
          property :packed, as: 'packed'
          property :type_url, as: 'typeUrl'
        end
      end
      
      class FieldPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_permission, as: 'resourcePermission'
          property :resource_type, as: 'resourceType'
          property :selector, as: 'selector'
        end
      end
      
      class GoSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common, as: 'common', class: Google::Apis::ServiceconsumermanagementV1beta1::CommonLanguageSettings, decorator: Google::Apis::ServiceconsumermanagementV1beta1::CommonLanguageSettings::Representation
      
          hash :renamed_services, as: 'renamedServices'
        end
      end
      
      class Http
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fully_decode_reserved_expansion, as: 'fullyDecodeReservedExpansion'
          collection :rules, as: 'rules', class: Google::Apis::ServiceconsumermanagementV1beta1::HttpRule, decorator: Google::Apis::ServiceconsumermanagementV1beta1::HttpRule::Representation
      
        end
      end
      
      class HttpRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_bindings, as: 'additionalBindings', class: Google::Apis::ServiceconsumermanagementV1beta1::HttpRule, decorator: Google::Apis::ServiceconsumermanagementV1beta1::HttpRule::Representation
      
          property :body, as: 'body'
          property :custom, as: 'custom', class: Google::Apis::ServiceconsumermanagementV1beta1::CustomHttpPattern, decorator: Google::Apis::ServiceconsumermanagementV1beta1::CustomHttpPattern::Representation
      
          property :delete, as: 'delete'
          property :get, as: 'get'
          property :patch, as: 'patch'
          property :post, as: 'post'
          property :put, as: 'put'
          property :response_body, as: 'responseBody'
          property :selector, as: 'selector'
        end
      end
      
      class JavaSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common, as: 'common', class: Google::Apis::ServiceconsumermanagementV1beta1::CommonLanguageSettings, decorator: Google::Apis::ServiceconsumermanagementV1beta1::CommonLanguageSettings::Representation
      
          property :library_package, as: 'libraryPackage'
          hash :service_class_names, as: 'serviceClassNames'
        end
      end
      
      class JwtLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cookie, as: 'cookie'
          property :header, as: 'header'
          property :query, as: 'query'
          property :value_prefix, as: 'valuePrefix'
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
      
      class LogDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :labels, as: 'labels', class: Google::Apis::ServiceconsumermanagementV1beta1::LabelDescriptor, decorator: Google::Apis::ServiceconsumermanagementV1beta1::LabelDescriptor::Representation
      
          property :name, as: 'name'
        end
      end
      
      class Logging
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :consumer_destinations, as: 'consumerDestinations', class: Google::Apis::ServiceconsumermanagementV1beta1::LoggingDestination, decorator: Google::Apis::ServiceconsumermanagementV1beta1::LoggingDestination::Representation
      
          collection :producer_destinations, as: 'producerDestinations', class: Google::Apis::ServiceconsumermanagementV1beta1::LoggingDestination, decorator: Google::Apis::ServiceconsumermanagementV1beta1::LoggingDestination::Representation
      
        end
      end
      
      class LoggingDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :logs, as: 'logs'
          property :monitored_resource, as: 'monitoredResource'
        end
      end
      
      class LongRunning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :initial_poll_delay, as: 'initialPollDelay'
          property :max_poll_delay, as: 'maxPollDelay'
          property :poll_delay_multiplier, as: 'pollDelayMultiplier'
          property :total_poll_timeout, as: 'totalPollTimeout'
        end
      end
      
      class MethodProp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :options, as: 'options', class: Google::Apis::ServiceconsumermanagementV1beta1::Option, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Option::Representation
      
          property :request_streaming, as: 'requestStreaming'
          property :request_type_url, as: 'requestTypeUrl'
          property :response_streaming, as: 'responseStreaming'
          property :response_type_url, as: 'responseTypeUrl'
          property :syntax, as: 'syntax'
        end
      end
      
      class MethodPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :request_policies, as: 'requestPolicies', class: Google::Apis::ServiceconsumermanagementV1beta1::FieldPolicy, decorator: Google::Apis::ServiceconsumermanagementV1beta1::FieldPolicy::Representation
      
          property :selector, as: 'selector'
        end
      end
      
      class MethodSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auto_populated_fields, as: 'autoPopulatedFields'
          property :batching, as: 'batching', class: Google::Apis::ServiceconsumermanagementV1beta1::BatchingConfigProto, decorator: Google::Apis::ServiceconsumermanagementV1beta1::BatchingConfigProto::Representation
      
          property :long_running, as: 'longRunning', class: Google::Apis::ServiceconsumermanagementV1beta1::LongRunning, decorator: Google::Apis::ServiceconsumermanagementV1beta1::LongRunning::Representation
      
          property :selector, as: 'selector'
        end
      end
      
      class MetricDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :labels, as: 'labels', class: Google::Apis::ServiceconsumermanagementV1beta1::LabelDescriptor, decorator: Google::Apis::ServiceconsumermanagementV1beta1::LabelDescriptor::Representation
      
          property :launch_stage, as: 'launchStage'
          property :metadata, as: 'metadata', class: Google::Apis::ServiceconsumermanagementV1beta1::MetricDescriptorMetadata, decorator: Google::Apis::ServiceconsumermanagementV1beta1::MetricDescriptorMetadata::Representation
      
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
      
      class MetricRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :metric_costs, as: 'metricCosts'
          property :selector, as: 'selector'
        end
      end
      
      class Mixin
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :root, as: 'root'
        end
      end
      
      class MonitoredResourceDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :labels, as: 'labels', class: Google::Apis::ServiceconsumermanagementV1beta1::LabelDescriptor, decorator: Google::Apis::ServiceconsumermanagementV1beta1::LabelDescriptor::Representation
      
          property :launch_stage, as: 'launchStage'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class Monitoring
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :consumer_destinations, as: 'consumerDestinations', class: Google::Apis::ServiceconsumermanagementV1beta1::MonitoringDestination, decorator: Google::Apis::ServiceconsumermanagementV1beta1::MonitoringDestination::Representation
      
          collection :producer_destinations, as: 'producerDestinations', class: Google::Apis::ServiceconsumermanagementV1beta1::MonitoringDestination, decorator: Google::Apis::ServiceconsumermanagementV1beta1::MonitoringDestination::Representation
      
        end
      end
      
      class MonitoringDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metrics, as: 'metrics'
          property :monitored_resource, as: 'monitoredResource'
        end
      end
      
      class NodeSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common, as: 'common', class: Google::Apis::ServiceconsumermanagementV1beta1::CommonLanguageSettings, decorator: Google::Apis::ServiceconsumermanagementV1beta1::CommonLanguageSettings::Representation
      
        end
      end
      
      class OAuthRequirements
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_scopes, as: 'canonicalScopes'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ServiceconsumermanagementV1beta1::Status, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class Option
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          hash :value, as: 'value'
        end
      end
      
      class Page
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :name, as: 'name'
          collection :subpages, as: 'subpages', class: Google::Apis::ServiceconsumermanagementV1beta1::Page, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Page::Representation
      
        end
      end
      
      class PhpSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common, as: 'common', class: Google::Apis::ServiceconsumermanagementV1beta1::CommonLanguageSettings, decorator: Google::Apis::ServiceconsumermanagementV1beta1::CommonLanguageSettings::Representation
      
        end
      end
      
      class Publishing
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_short_name, as: 'apiShortName'
          collection :codeowner_github_teams, as: 'codeownerGithubTeams'
          property :doc_tag_prefix, as: 'docTagPrefix'
          property :documentation_uri, as: 'documentationUri'
          property :github_label, as: 'githubLabel'
          collection :library_settings, as: 'librarySettings', class: Google::Apis::ServiceconsumermanagementV1beta1::ClientLibrarySettings, decorator: Google::Apis::ServiceconsumermanagementV1beta1::ClientLibrarySettings::Representation
      
          collection :method_settings, as: 'methodSettings', class: Google::Apis::ServiceconsumermanagementV1beta1::MethodSettings, decorator: Google::Apis::ServiceconsumermanagementV1beta1::MethodSettings::Representation
      
          property :new_issue_uri, as: 'newIssueUri'
          property :organization, as: 'organization'
          property :proto_reference_documentation_uri, as: 'protoReferenceDocumentationUri'
          property :rest_reference_documentation_uri, as: 'restReferenceDocumentationUri'
        end
      end
      
      class PythonSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common, as: 'common', class: Google::Apis::ServiceconsumermanagementV1beta1::CommonLanguageSettings, decorator: Google::Apis::ServiceconsumermanagementV1beta1::CommonLanguageSettings::Representation
      
          property :experimental_features, as: 'experimentalFeatures', class: Google::Apis::ServiceconsumermanagementV1beta1::ExperimentalFeatures, decorator: Google::Apis::ServiceconsumermanagementV1beta1::ExperimentalFeatures::Representation
      
        end
      end
      
      class Quota
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :limits, as: 'limits', class: Google::Apis::ServiceconsumermanagementV1beta1::QuotaLimit, decorator: Google::Apis::ServiceconsumermanagementV1beta1::QuotaLimit::Representation
      
          collection :metric_rules, as: 'metricRules', class: Google::Apis::ServiceconsumermanagementV1beta1::MetricRule, decorator: Google::Apis::ServiceconsumermanagementV1beta1::MetricRule::Representation
      
        end
      end
      
      class QuotaLimit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_limit, :numeric_string => true, as: 'defaultLimit'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :duration, as: 'duration'
          property :free_tier, :numeric_string => true, as: 'freeTier'
          property :max_limit, :numeric_string => true, as: 'maxLimit'
          property :metric, as: 'metric'
          property :name, as: 'name'
          property :unit, as: 'unit'
          hash :values, as: 'values'
        end
      end
      
      class RubySettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common, as: 'common', class: Google::Apis::ServiceconsumermanagementV1beta1::CommonLanguageSettings, decorator: Google::Apis::ServiceconsumermanagementV1beta1::CommonLanguageSettings::Representation
      
        end
      end
      
      class SelectiveGapicGeneration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generate_omitted_as_internal, as: 'generateOmittedAsInternal'
          collection :methods_prop, as: 'methods'
        end
      end
      
      class Service
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :apis, as: 'apis', class: Google::Apis::ServiceconsumermanagementV1beta1::Api, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Api::Representation
      
          collection :aspects, as: 'aspects', class: Google::Apis::ServiceconsumermanagementV1beta1::Aspect, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Aspect::Representation
      
          property :authentication, as: 'authentication', class: Google::Apis::ServiceconsumermanagementV1beta1::Authentication, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Authentication::Representation
      
          property :backend, as: 'backend', class: Google::Apis::ServiceconsumermanagementV1beta1::Backend, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Backend::Representation
      
          property :billing, as: 'billing', class: Google::Apis::ServiceconsumermanagementV1beta1::Billing, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Billing::Representation
      
          property :config_version, as: 'configVersion'
          property :context, as: 'context', class: Google::Apis::ServiceconsumermanagementV1beta1::Context, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Context::Representation
      
          property :control, as: 'control', class: Google::Apis::ServiceconsumermanagementV1beta1::Control, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Control::Representation
      
          property :custom_error, as: 'customError', class: Google::Apis::ServiceconsumermanagementV1beta1::CustomError, decorator: Google::Apis::ServiceconsumermanagementV1beta1::CustomError::Representation
      
          property :documentation, as: 'documentation', class: Google::Apis::ServiceconsumermanagementV1beta1::Documentation, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Documentation::Representation
      
          collection :endpoints, as: 'endpoints', class: Google::Apis::ServiceconsumermanagementV1beta1::Endpoint, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Endpoint::Representation
      
          collection :enums, as: 'enums', class: Google::Apis::ServiceconsumermanagementV1beta1::Enum, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Enum::Representation
      
          property :http, as: 'http', class: Google::Apis::ServiceconsumermanagementV1beta1::Http, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Http::Representation
      
          property :id, as: 'id'
          property :logging, as: 'logging', class: Google::Apis::ServiceconsumermanagementV1beta1::Logging, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Logging::Representation
      
          collection :logs, as: 'logs', class: Google::Apis::ServiceconsumermanagementV1beta1::LogDescriptor, decorator: Google::Apis::ServiceconsumermanagementV1beta1::LogDescriptor::Representation
      
          collection :metrics, as: 'metrics', class: Google::Apis::ServiceconsumermanagementV1beta1::MetricDescriptor, decorator: Google::Apis::ServiceconsumermanagementV1beta1::MetricDescriptor::Representation
      
          collection :monitored_resources, as: 'monitoredResources', class: Google::Apis::ServiceconsumermanagementV1beta1::MonitoredResourceDescriptor, decorator: Google::Apis::ServiceconsumermanagementV1beta1::MonitoredResourceDescriptor::Representation
      
          property :monitoring, as: 'monitoring', class: Google::Apis::ServiceconsumermanagementV1beta1::Monitoring, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Monitoring::Representation
      
          property :name, as: 'name'
          property :producer_project_id, as: 'producerProjectId'
          property :publishing, as: 'publishing', class: Google::Apis::ServiceconsumermanagementV1beta1::Publishing, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Publishing::Representation
      
          property :quota, as: 'quota', class: Google::Apis::ServiceconsumermanagementV1beta1::Quota, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Quota::Representation
      
          property :source_info, as: 'sourceInfo', class: Google::Apis::ServiceconsumermanagementV1beta1::SourceInfo, decorator: Google::Apis::ServiceconsumermanagementV1beta1::SourceInfo::Representation
      
          property :system_parameters, as: 'systemParameters', class: Google::Apis::ServiceconsumermanagementV1beta1::SystemParameters, decorator: Google::Apis::ServiceconsumermanagementV1beta1::SystemParameters::Representation
      
          collection :system_types, as: 'systemTypes', class: Google::Apis::ServiceconsumermanagementV1beta1::Type, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Type::Representation
      
          property :title, as: 'title'
          collection :types, as: 'types', class: Google::Apis::ServiceconsumermanagementV1beta1::Type, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Type::Representation
      
          property :usage, as: 'usage', class: Google::Apis::ServiceconsumermanagementV1beta1::Usage, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Usage::Representation
      
        end
      end
      
      class SourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_name, as: 'fileName'
        end
      end
      
      class SourceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :source_files, as: 'sourceFiles'
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
      
      class SystemParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_header, as: 'httpHeader'
          property :name, as: 'name'
          property :url_query_parameter, as: 'urlQueryParameter'
        end
      end
      
      class SystemParameterRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :parameters, as: 'parameters', class: Google::Apis::ServiceconsumermanagementV1beta1::SystemParameter, decorator: Google::Apis::ServiceconsumermanagementV1beta1::SystemParameter::Representation
      
          property :selector, as: 'selector'
        end
      end
      
      class SystemParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules, as: 'rules', class: Google::Apis::ServiceconsumermanagementV1beta1::SystemParameterRule, decorator: Google::Apis::ServiceconsumermanagementV1beta1::SystemParameterRule::Representation
      
        end
      end
      
      class Type
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :edition, as: 'edition'
          collection :fields, as: 'fields', class: Google::Apis::ServiceconsumermanagementV1beta1::Field, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Field::Representation
      
          property :name, as: 'name'
          collection :oneofs, as: 'oneofs'
          collection :options, as: 'options', class: Google::Apis::ServiceconsumermanagementV1beta1::Option, decorator: Google::Apis::ServiceconsumermanagementV1beta1::Option::Representation
      
          property :source_context, as: 'sourceContext', class: Google::Apis::ServiceconsumermanagementV1beta1::SourceContext, decorator: Google::Apis::ServiceconsumermanagementV1beta1::SourceContext::Representation
      
          property :syntax, as: 'syntax'
        end
      end
      
      class Usage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :producer_notification_channel, as: 'producerNotificationChannel'
          collection :requirements, as: 'requirements'
          collection :rules, as: 'rules', class: Google::Apis::ServiceconsumermanagementV1beta1::UsageRule, decorator: Google::Apis::ServiceconsumermanagementV1beta1::UsageRule::Representation
      
        end
      end
      
      class UsageRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_unregistered_calls, as: 'allowUnregisteredCalls'
          property :selector, as: 'selector'
          property :skip_service_control, as: 'skipServiceControl'
        end
      end
      
      class V1Beta1BatchCreateProducerOverridesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :overrides, as: 'overrides', class: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1QuotaOverride, decorator: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1QuotaOverride::Representation
      
        end
      end
      
      class V1Beta1ConsumerQuotaLimit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_precise, as: 'isPrecise'
          property :metric, as: 'metric'
          property :name, as: 'name'
          collection :quota_buckets, as: 'quotaBuckets', class: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1QuotaBucket, decorator: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1QuotaBucket::Representation
      
          collection :supported_locations, as: 'supportedLocations'
          property :unit, as: 'unit'
        end
      end
      
      class V1Beta1ConsumerQuotaMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :consumer_quota_limits, as: 'consumerQuotaLimits', class: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ConsumerQuotaLimit, decorator: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ConsumerQuotaLimit::Representation
      
          collection :descendant_consumer_quota_limits, as: 'descendantConsumerQuotaLimits', class: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ConsumerQuotaLimit, decorator: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ConsumerQuotaLimit::Representation
      
          property :display_name, as: 'displayName'
          property :metric, as: 'metric'
          property :name, as: 'name'
          property :unit, as: 'unit'
        end
      end
      
      class V1Beta1DisableConsumerResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class V1Beta1EnableConsumerResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class V1Beta1GenerateServiceIdentityResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :identity, as: 'identity', class: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ServiceIdentity, decorator: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ServiceIdentity::Representation
      
        end
      end
      
      class V1Beta1ImportProducerOverridesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :force, as: 'force'
          property :force_justification, as: 'forceJustification'
          collection :force_only, as: 'forceOnly'
          property :inline_source, as: 'inlineSource', class: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1OverrideInlineSource, decorator: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1OverrideInlineSource::Representation
      
        end
      end
      
      class V1Beta1ImportProducerOverridesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :overrides, as: 'overrides', class: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1QuotaOverride, decorator: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1QuotaOverride::Representation
      
        end
      end
      
      class V1Beta1ImportProducerQuotaPoliciesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :force, as: 'force'
          property :force_justification, as: 'forceJustification'
          property :force_skip_quota_usage_check, as: 'forceSkipQuotaUsageCheck'
          property :inline_source, as: 'inlineSource', class: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1PolicyInlineSource, decorator: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1PolicyInlineSource::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class V1Beta1ImportProducerQuotaPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :policies, as: 'policies', class: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ProducerQuotaPolicy, decorator: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ProducerQuotaPolicy::Representation
      
        end
      end
      
      class V1Beta1ListConsumerQuotaMetricsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metrics, as: 'metrics', class: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ConsumerQuotaMetric, decorator: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ConsumerQuotaMetric::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class V1Beta1ListProducerOverridesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :overrides, as: 'overrides', class: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1QuotaOverride, decorator: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1QuotaOverride::Representation
      
        end
      end
      
      class V1Beta1ListProducerQuotaPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :producer_quota_policies, as: 'producerQuotaPolicies', class: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ProducerQuotaPolicy, decorator: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ProducerQuotaPolicy::Representation
      
        end
      end
      
      class V1Beta1OverrideInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :overrides, as: 'overrides', class: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1QuotaOverride, decorator: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1QuotaOverride::Representation
      
        end
      end
      
      class V1Beta1PolicyInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :policies, as: 'policies', class: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ProducerQuotaPolicy, decorator: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ProducerQuotaPolicy::Representation
      
        end
      end
      
      class V1Beta1ProducerQuotaPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container, as: 'container'
          hash :dimensions, as: 'dimensions'
          property :metric, as: 'metric'
          property :name, as: 'name'
          property :policy_value, :numeric_string => true, as: 'policyValue'
          property :unit, as: 'unit'
        end
      end
      
      class V1Beta1QuotaBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_override, as: 'adminOverride', class: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1QuotaOverride, decorator: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1QuotaOverride::Representation
      
          property :consumer_override, as: 'consumerOverride', class: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1QuotaOverride, decorator: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1QuotaOverride::Representation
      
          property :default_limit, :numeric_string => true, as: 'defaultLimit'
          hash :dimensions, as: 'dimensions'
          property :effective_limit, :numeric_string => true, as: 'effectiveLimit'
          property :producer_override, as: 'producerOverride', class: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1QuotaOverride, decorator: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1QuotaOverride::Representation
      
          property :producer_quota_policy, as: 'producerQuotaPolicy', class: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ProducerQuotaPolicy, decorator: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ProducerQuotaPolicy::Representation
      
          property :rollout_info, as: 'rolloutInfo', class: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1RolloutInfo, decorator: Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1RolloutInfo::Representation
      
        end
      end
      
      class V1Beta1QuotaOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_override_ancestor, as: 'adminOverrideAncestor'
          hash :dimensions, as: 'dimensions'
          property :metric, as: 'metric'
          property :name, as: 'name'
          property :override_value, :numeric_string => true, as: 'overrideValue'
          property :unit, as: 'unit'
        end
      end
      
      class V1Beta1RefreshConsumerResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class V1Beta1RolloutInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_limit_ongoing_rollout, as: 'defaultLimitOngoingRollout'
        end
      end
      
      class V1Beta1ServiceIdentity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :name, as: 'name'
          property :tag, as: 'tag'
          property :unique_id, as: 'uniqueId'
        end
      end
      
      class V1beta1AddVisibilityLabelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :labels, as: 'labels'
        end
      end
      
      class V1beta1DefaultIdentity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :name, as: 'name'
          property :tag, as: 'tag'
          property :unique_id, as: 'uniqueId'
        end
      end
      
      class V1beta1DisableConsumerResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class V1beta1EnableConsumerResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class V1beta1GenerateDefaultIdentityResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attach_status, as: 'attachStatus'
          property :identity, as: 'identity', class: Google::Apis::ServiceconsumermanagementV1beta1::V1beta1DefaultIdentity, decorator: Google::Apis::ServiceconsumermanagementV1beta1::V1beta1DefaultIdentity::Representation
      
          property :role, as: 'role'
        end
      end
      
      class V1beta1GenerateServiceAccountResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account', class: Google::Apis::ServiceconsumermanagementV1beta1::V1beta1ServiceAccount, decorator: Google::Apis::ServiceconsumermanagementV1beta1::V1beta1ServiceAccount::Representation
      
        end
      end
      
      class V1beta1RefreshConsumerResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class V1beta1RemoveVisibilityLabelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :labels, as: 'labels'
        end
      end
      
      class V1beta1ServiceAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :iam_account_name, as: 'iamAccountName'
          property :name, as: 'name'
          property :tag, as: 'tag'
          property :unique_id, as: 'uniqueId'
        end
      end
    end
  end
end
