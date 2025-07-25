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
    module ComputeBeta
      
      class Awsv4Signature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcceleratorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcceleratorType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcceleratorTypeAggregatedList
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
      
      class AcceleratorTypeList
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
      
      class AcceleratorTypesScopedList
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
      
      class AccessConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Address
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddressAggregatedList
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
      
      class AddressList
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
      
      class AddressesScopedList
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
      
      class AdvancedMachineFeatures
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AliasIpRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllocationAggregateReservation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllocationAggregateReservationReservedResourceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllocationAggregateReservationReservedResourceInfoAccelerator
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllocationReservationSharingPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllocationResourceStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllocationResourceStatusSpecificSkuAllocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllocationSpecificSkuAllocationAllocatedInstancePropertiesReservedDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllocationSpecificSkuAllocationReservedInstanceProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllocationSpecificSkuReservation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttachedDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttachedDiskInitializeParams
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
      
      class Autoscaler
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalerAggregatedList
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
      
      class AutoscalerList
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
      
      class AutoscalerStatusDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalersScopedList
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
      
      class AutoscalingPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalingPolicyCpuUtilization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalingPolicyCustomMetricUtilization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalingPolicyLoadBalancingUtilization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalingPolicyScaleDownControl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalingPolicyScaleInControl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoscalingPolicyScalingSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Backend
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendBucketCdnPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendBucketCdnPolicyBypassCacheOnRequestHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendBucketCdnPolicyCacheKeyPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendBucketCdnPolicyNegativeCachingPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendBucketList
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
      
      class BackendBucketListUsable
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
      
      class BackendBucketUsedBy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendCustomMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceAggregatedList
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
      
      class BackendServiceCdnPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceCdnPolicyBypassCacheOnRequestHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceCdnPolicyNegativeCachingPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceConnectionTrackingPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceCustomMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceDynamicForwarding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceDynamicForwardingIpPortSelection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceFailoverPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceGroupHealth
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceHaPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceHaPolicyLeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceHaPolicyLeaderNetworkEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceHttpCookie
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceIap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceList
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
      
      class BackendServiceListUsable
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
      
      class BackendServiceLocalityLoadBalancingPolicyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceLocalityLoadBalancingPolicyConfigPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceNetworkPassThroughLbTrafficPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceTlsSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceTlsSettingsSubjectAltName
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServiceUsedBy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServicesGetEffectiveSecurityPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackendServicesScopedList
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
      
      class BfdPacket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BfdStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BfdStatusPacketCounts
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BgpRoute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BgpRouteAsPath
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BgpRouteNetworkLayerReachabilityInformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkInsertDiskResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkInsertInstanceResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkInsertInstanceResourcePerInstanceProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkInsertOperationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkSetLabelsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BulkZoneSetLabelsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BundledLocalSsds
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CacheInvalidationRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CacheKeyPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CalendarModeAdviceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CalendarModeAdviceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CalendarModeRecommendation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CircuitBreakers
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Commitment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitmentAggregatedList
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
      
      class CommitmentList
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
      
      class CommitmentResourceStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitmentsScopedList
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
      
      class ConfidentialInstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectionDraining
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConsistentHashLoadBalancerSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConsistentHashLoadBalancerSettingsHttpCookie
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CorsPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CrossSiteNetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CrossSiteNetworkList
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
      
      class CustomErrorResponsePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomErrorResponsePolicyCustomErrorResponseRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerEncryptionKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerEncryptionKeyProtectedDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeprecationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Disk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskAggregatedList
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
      
      class DiskAsyncReplication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskAsyncReplicationList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskInstantiationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskList
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
      
      class DiskMoveRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskResourceStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskResourceStatusAsyncReplicationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskSettingsAccessLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskSettingsAccessLocationAccessLocationPreference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskTypeAggregatedList
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
      
      class DiskTypeList
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
      
      class DiskTypesScopedList
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
      
      class DisksAddResourcePoliciesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisksRemoveResourcePoliciesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisksResizeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisksScopedList
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
      
      class DisksStartAsyncReplicationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisksStopGroupAsyncReplicationResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisplayDevice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DistributionPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DistributionPolicyZoneConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Duration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ErrorInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExchangedPeeringRoute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExchangedPeeringRoutesList
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
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExternalVpnGateway
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExternalVpnGatewayInterface
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExternalVpnGatewayList
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
      
      class FileContentBuffer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Firewall
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Allowed
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
        
        class Denied
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FirewallList
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
      
      class FirewallLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FirewallParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FirewallPoliciesListAssociationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FirewallPoliciesScopedList
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
      
      class FirewallPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FirewallPolicyAssociation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FirewallPolicyList
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
      
      class FirewallPolicyRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FirewallPolicyRuleMatcher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FirewallPolicyRuleMatcherLayer4Config
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FirewallPolicyRuleSecureTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FixedOrPercent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlexibleTimeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ForwardingRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ForwardingRuleAggregatedList
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
      
      class ForwardingRuleList
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
      
      class ForwardingRuleReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ForwardingRuleServiceDirectoryRegistration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ForwardingRulesScopedList
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
      
      class FutureReservation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FutureReservationCommitmentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FutureReservationSpecificSkuProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FutureReservationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FutureReservationStatusExistingMatchingUsageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FutureReservationStatusLastKnownGoodState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FutureReservationStatusLastKnownGoodStateFutureReservationSpecs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FutureReservationStatusSpecificSkuProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FutureReservationTimeWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FutureReservationsAggregatedListResponse
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
      
      class FutureReservationsListResponse
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
      
      class FutureReservationsScopedList
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
      
      class FutureResourcesRecommendation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FutureResourcesRecommendationOtherLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FutureResourcesSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FutureResourcesSpecAggregateResources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FutureResourcesSpecLocalSsdPartition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FutureResourcesSpecLocationPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FutureResourcesSpecLocationPolicyLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FutureResourcesSpecSpecificSkuResources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FutureResourcesSpecTargetResources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrpcHealthCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrpctlsHealthCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GlobalAddressesMoveRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GlobalNetworkEndpointGroupsAttachEndpointsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GlobalNetworkEndpointGroupsDetachEndpointsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GlobalOrganizationSetPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GlobalSetLabelsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GlobalSetPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GroupMaintenanceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestAttributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestAttributesEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestAttributesValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestOsFeature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Http2HealthCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpHealthCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpsHealthCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HealthCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HealthCheckList
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
      
      class HealthCheckLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HealthCheckReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HealthCheckService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HealthCheckServiceReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HealthCheckServicesList
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
      
      class HealthChecksAggregatedList
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
      
      class HealthChecksScopedList
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
      
      class HealthStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HealthStatusForNetworkEndpoint
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
      
      class HostRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpFaultAbort
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpFaultDelay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpFaultInjection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpFilterConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpHeaderAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpHeaderMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpHeaderOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpHealthCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpHealthCheckList
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
      
      class HttpQueryParameterMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRedirectAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRetryPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRouteAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRouteRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRouteRuleMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpsHealthCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpsHealthCheckList
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
      
      class Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class RawDisk
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageFamilyView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageList
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
      
      class InitialStateConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceAggregatedList
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
      
      class InstanceConsumptionData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceConsumptionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupAggregatedList
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
      
      class InstanceGroupList
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
      
      class InstanceGroupManager
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerActionsSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerAggregatedList
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
      
      class InstanceGroupManagerAllInstancesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerAutoHealingPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerInstanceFlexibilityPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerInstanceFlexibilityPolicyProvisioningModelMix
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerInstanceLifecyclePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerInstanceLifecyclePolicyOnRepair
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerList
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
      
      class InstanceGroupManagerParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerResizeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerResizeRequestStatus
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
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerResizeRequestStatusLastAttempt
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
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerResizeRequestsListResponse
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
      
      class InstanceGroupManagerResourcePolicies
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerStandbyPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerStatusAllInstancesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerStatusBulkInstanceOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerStatusBulkInstanceOperationLastProgressCheck
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
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerStatusStateful
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerStatusStatefulPerInstanceConfigs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerStatusVersionTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerTargetSizePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerUpdatePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagerVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersAbandonInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersApplyUpdatesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersCreateInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersDeleteInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersDeletePerInstanceConfigsReq
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersListErrorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersListManagedInstancesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersListPerInstanceConfigsResp
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
      
      class InstanceGroupManagersPatchPerInstanceConfigsReq
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersRecreateInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersResizeAdvancedRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersResumeInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersScopedList
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
      
      class InstanceGroupManagersSetAutoHealingRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersSetInstanceTemplateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersSetTargetPoolsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersStartInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersStopInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersSuspendInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupManagersUpdatePerInstanceConfigsReq
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupsAddInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupsListInstances
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
      
      class InstanceGroupsListInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupsRemoveInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupsScopedList
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
      
      class InstanceGroupsSetNamedPortsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceList
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
      
      class InstanceListReferrers
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
      
      class InstanceManagedByIgmError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceManagedByIgmErrorInstanceActionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceManagedByIgmErrorManagedInstanceError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MoveInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancePropertiesPatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceSettingsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceTemplateAggregatedList
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
      
      class InstanceTemplateList
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
      
      class InstanceTemplatesScopedList
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
      
      class InstanceWithNamedPorts
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesAddResourcePoliciesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesBulkInsertOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesGetEffectiveFirewallsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesGetEffectiveFirewallsResponseOrganizationFirewallPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesRemoveResourcePoliciesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesReportHostAsFaultyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesReportHostAsFaultyRequestFaultReason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesResumeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesScopedList
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
      
      class InstancesSetLabelsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesSetMachineResourcesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesSetMachineTypeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesSetMinCpuPlatformRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesSetNameRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesSetSecurityPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesSetServiceAccountRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancesStartWithEncryptionKeyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstantSnapshot
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstantSnapshotAggregatedList
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
      
      class InstantSnapshotList
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
      
      class InstantSnapshotResourceStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstantSnapshotsScopedList
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
      
      class Int64RangeMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Interconnect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectApplicationAwareInterconnect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectApplicationAwareInterconnectBandwidthPercentage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectApplicationAwareInterconnectBandwidthPercentagePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectApplicationAwareInterconnectStrictPriorityPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectAttachmentAggregatedList
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
      
      class InterconnectAttachmentConfigurationConstraints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectAttachmentConfigurationConstraintsBgpPeerAsnRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectAttachmentGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectAttachmentGroupAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectAttachmentGroupConfigured
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectAttachmentGroupConfiguredAvailabilitySla
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectAttachmentGroupConfiguredAvailabilitySlaIntendedSlaBlockers
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectAttachmentGroupIntent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectAttachmentGroupLogicalStructure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectAttachmentGroupLogicalStructureRegion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectAttachmentGroupLogicalStructureRegionMetro
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectAttachmentGroupLogicalStructureRegionMetroFacility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectAttachmentGroupLogicalStructureRegionMetroFacilityZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectAttachmentGroupsGetOperationalStatusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectAttachmentGroupsListResponse
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
      
      class InterconnectAttachmentGroupsOperationalStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectAttachmentGroupsOperationalStatusAttachmentStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectAttachmentList
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
      
      class InterconnectAttachmentPartnerMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectAttachmentPrivateInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectAttachmentsScopedList
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
      
      class InterconnectCircuitInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectDiagnostics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectDiagnosticsArpEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectDiagnosticsLinkLacpStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectDiagnosticsLinkOpticalPower
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectDiagnosticsLinkStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectDiagnosticsMacsecStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectGroupConfigured
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectGroupConfiguredTopologyCapability
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectGroupConfiguredTopologyCapabilityIntendedCapabilityBlockers
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectGroupIntent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectGroupInterconnect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectGroupPhysicalStructure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectGroupPhysicalStructureMetros
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectGroupPhysicalStructureMetrosFacilities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectGroupPhysicalStructureMetrosFacilitiesZones
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectGroupsCreateMembers
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectGroupsCreateMembersInterconnectInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectGroupsCreateMembersRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectGroupsGetOperationalStatusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectGroupsListResponse
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
      
      class InterconnectGroupsOperationalStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectGroupsOperationalStatusInterconnectStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectList
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
      
      class InterconnectLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectLocationCrossSiteInterconnectInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectLocationList
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
      
      class InterconnectLocationRegionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectMacsec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectMacsecConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectMacsecConfigPreSharedKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectMacsecPreSharedKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectOutageNotification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectRemoteLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectRemoteLocationConstraints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectRemoteLocationConstraintsSubnetLengthRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectRemoteLocationList
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
      
      class InterconnectRemoteLocationPermittedConnections
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectsGetDiagnosticsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterconnectsGetMacsecConfigResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class License
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LicenseCode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LicenseCodeLicenseAlias
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LicenseResourceCommitment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LicenseResourceRequirements
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LicensesListResponse
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
      
      class LocalDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalizedMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationPolicyLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationPolicyLocationConstraints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MachineImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MachineImageList
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
      
      class MachineType
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Accelerator
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MachineTypeAggregatedList
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
      
      class MachineTypeList
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
      
      class MachineTypesScopedList
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
      
      class ManagedInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedInstanceAllInstancesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedInstanceInstanceHealth
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedInstanceLastAttempt
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Errors
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
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedInstancePropertiesFromFlexibilityPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedInstanceVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Metadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Item
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetadataFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetadataFilterLabelMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultiMig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultiMigResourcePolicies
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultiMigsList
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
      
      class NamedPort
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NatIpInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NatIpInfoNatIpInfoMapping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NatIpInfoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Network
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkAttachmentAggregatedList
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
      
      class NetworkAttachmentConnectedEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkAttachmentList
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
      
      class NetworkAttachmentsScopedList
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
      
      class NetworkEdgeSecurityService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkEdgeSecurityServiceAggregatedList
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
      
      class NetworkEdgeSecurityServicesScopedList
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
      
      class NetworkEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkEndpointGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkEndpointGroupAggregatedList
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
      
      class NetworkEndpointGroupAppEngine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkEndpointGroupCloudFunction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkEndpointGroupCloudRun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkEndpointGroupLbNetworkEndpointGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkEndpointGroupList
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
      
      class NetworkEndpointGroupPscData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkEndpointGroupServerlessDeployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkEndpointGroupsAttachEndpointsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkEndpointGroupsDetachEndpointsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkEndpointGroupsListEndpointsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkEndpointGroupsListEndpointsRequestNetworkEndpointFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkEndpointGroupsListNetworkEndpoints
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
      
      class NetworkEndpointGroupsScopedList
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
      
      class NetworkEndpointWithHealthStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkFirewallPolicyAggregatedList
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
      
      class NetworkInterface
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkList
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
      
      class NetworkParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkPeering
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkPeeringConnectionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkPeeringConnectionStatusConsensusState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkPeeringConnectionStatusTrafficConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkPerformanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkProfileLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkProfileNetworkFeatures
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkProfilesListResponse
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
      
      class NetworkRoutingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworksAddPeeringRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworksGetEffectiveFirewallsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworksGetEffectiveFirewallsResponseOrganizationFirewallPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworksRemovePeeringRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworksRequestRemovePeeringRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworksUpdatePeeringRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeGroupAggregatedList
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
      
      class NodeGroupAutoscalingPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeGroupList
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
      
      class NodeGroupMaintenanceWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeGroupNode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeGroupsAddNodesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeGroupsDeleteNodesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeGroupsListNodes
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
      
      class NodeGroupsPerformMaintenanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeGroupsScopedList
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
      
      class NodeGroupsSetNodeTemplateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeGroupsSimulateMaintenanceEventRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeTemplateAggregatedList
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
      
      class NodeTemplateList
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
      
      class NodeTemplateNodeTypeFlexibility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeTemplatesScopedList
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
      
      class NodeType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeTypeAggregatedList
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
      
      class NodeTypeList
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
      
      class NodeTypesScopedList
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
      
      class NotificationEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NotificationEndpointGrpcSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NotificationEndpointList
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
      
      class OperationAggregatedList
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
      
      class OperationList
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
      
      class OperationsScopedList
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
      
      class OrganizationSecurityPoliciesListAssociationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OutlierDetection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PacketIntervals
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PacketMirroring
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PacketMirroringAggregatedList
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
      
      class PacketMirroringFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PacketMirroringForwardingRuleInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PacketMirroringList
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
      
      class PacketMirroringMirroredResourceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PacketMirroringMirroredResourceInfoInstanceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PacketMirroringMirroredResourceInfoSubnetInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PacketMirroringNetworkInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PacketMirroringsScopedList
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
      
      class PartnerMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PathMatcher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PathRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PerInstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreconfiguredWafSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreservedState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreservedStatePreservedDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreservedStatePreservedNetworkIp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreservedStatePreservedNetworkIpIpAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreviewFeature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreviewFeatureList
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
      
      class PreviewFeatureRolloutOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreviewFeatureRolloutOperationRolloutInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreviewFeatureRolloutOperationRolloutStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreviewFeatureRolloutOperationRolloutStatusRolloutMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreviewFeatureStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreviewFeatureStatusReleaseStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Project
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProjectsDisableXpnResourceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProjectsEnableXpnResourceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProjectsGetXpnResources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProjectsListXpnHostsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProjectsSetCloudArmorTierRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProjectsSetDefaultNetworkTierRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProjectsSetManagedProtectionTierRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublicAdvertisedPrefix
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublicAdvertisedPrefixList
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
      
      class PublicAdvertisedPrefixPublicDelegatedPrefix
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublicDelegatedPrefix
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublicDelegatedPrefixAggregatedList
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
      
      class PublicDelegatedPrefixList
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
      
      class PublicDelegatedPrefixPublicDelegatedSubPrefix
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublicDelegatedPrefixesScopedList
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
      
      class Quota
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuotaExceededInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Region
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class QuotaStatusWarning
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class Datum
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionAddressesMoveRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionAutoscalerList
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
      
      class RegionCommitmentsUpdateReservationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionDiskTypeList
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
      
      class RegionDisksAddResourcePoliciesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionDisksRemoveResourcePoliciesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionDisksResizeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionDisksStartAsyncReplicationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupList
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
      
      class RegionInstanceGroupManagerDeleteInstanceConfigReq
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagerList
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
      
      class RegionInstanceGroupManagerPatchInstanceConfigReq
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagerResizeRequestsListResponse
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
      
      class RegionInstanceGroupManagerUpdateInstanceConfigReq
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagersAbandonInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagersApplyUpdatesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagersCreateInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagersDeleteInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagersListErrorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagersListInstanceConfigsResp
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
      
      class RegionInstanceGroupManagersListInstancesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagersRecreateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagersResizeAdvancedRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagersResumeInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagersSetAutoHealingRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagersSetTargetPoolsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagersSetTemplateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagersStartInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagersStopInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupManagersSuspendInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupsListInstances
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
      
      class RegionInstanceGroupsListInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionInstanceGroupsSetNamedPortsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionList
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
      
      class RegionNetworkEndpointGroupsAttachEndpointsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionNetworkEndpointGroupsDetachEndpointsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponseEffectiveFirewallPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionSetLabelsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionSetPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionTargetHttpsProxiesSetSslCertificatesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionUrlMapsValidateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestMirrorPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reservation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReservationAffinity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReservationAggregatedList
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
      
      class ReservationBlock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReservationBlockPhysicalTopology
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReservationBlockPhysicalTopologyInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReservationBlockPhysicalTopologyInstancePhysicalHostTopology
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReservationBlocksGetResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReservationBlocksListResponse
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
      
      class ReservationList
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
      
      class ReservationSubBlock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReservationSubBlockPhysicalTopology
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReservationSubBlocksGetResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReservationSubBlocksListResponse
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
      
      class ReservationsBlocksPerformMaintenanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReservationsPerformMaintenanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReservationsResizeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReservationsScopedList
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
      
      class ResourceCommitment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceGroupReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourcePoliciesScopedList
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
      
      class ResourcePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourcePolicyAggregatedList
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
      
      class ResourcePolicyDailyCycle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourcePolicyDiskConsistencyGroupPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourcePolicyGroupPlacementPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourcePolicyHourlyCycle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourcePolicyInstanceSchedulePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourcePolicyInstanceSchedulePolicySchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourcePolicyList
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
      
      class ResourcePolicyResourceStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourcePolicyResourceStatusInstanceSchedulePolicyStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourcePolicySnapshotSchedulePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourcePolicySnapshotSchedulePolicyRetentionPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourcePolicySnapshotSchedulePolicySchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourcePolicySnapshotSchedulePolicySnapshotProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourcePolicyWeeklyCycle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourcePolicyWeeklyCycleDayOfWeek
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourcePolicyWorkloadPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceStatusPhysicalHostTopology
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceStatusScheduling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceStatusShutdownDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RolloutPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Route
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
      
      class RouteAsPath
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouteList
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
      
      class RouteParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RoutePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RoutePolicyPolicyTerm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Router
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterAdvertisedIpRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterAggregatedList
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
      
      class RouterBgp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterBgpPeer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterBgpPeerBfd
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterBgpPeerCustomLearnedIpRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterInterface
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterList
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
      
      class RouterMd5AuthenticationKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterNat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterNatLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterNatRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterNatRuleAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterNatSubnetworkToNat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterNatSubnetworkToNat64
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterStatusBgpPeerStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterStatusNatStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterStatusNatStatusNatRuleStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouterStatusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RoutersGetRoutePolicyResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RoutersListBgpRoutes
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
      
      class RoutersListRoutePolicies
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
      
      class RoutersPreviewResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RoutersScopedList
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
      
      class SslHealthCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SavedAttachedDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SavedDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScalingScheduleStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Scheduling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchedulingGracefulShutdown
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchedulingNodeAffinity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchedulingOnInstanceStopAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Screenshot
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPoliciesAggregatedList
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
      
      class SecurityPoliciesListPreconfiguredExpressionSetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPoliciesScopedList
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
      
      class SecurityPoliciesWafConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyAdaptiveProtectionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyAdvancedOptionsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyAdvancedOptionsConfigJsonCustomConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyAssociation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyDdosProtectionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyList
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
      
      class SecurityPolicyRecaptchaOptionsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyRuleHttpHeaderAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyRuleHttpHeaderActionHttpHeaderOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyRuleMatcher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyRuleMatcherConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyRuleMatcherConfigLayer4Config
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyRuleMatcherExprOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyRuleMatcherExprOptionsRecaptchaOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyRuleNetworkMatcher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyRulePreconfiguredWafConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyRulePreconfiguredWafConfigExclusion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyRuleRateLimitOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyRuleRateLimitOptionsThreshold
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyRuleRedirectOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPolicyUserDefinedField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecuritySettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SerialPortOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServerBinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAttachmentAggregatedList
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
      
      class ServiceAttachmentConnectedEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAttachmentConsumerProjectLimit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAttachmentList
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
      
      class ServiceAttachmentTunnelingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAttachmentsScopedList
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
      
      class SetCommonInstanceMetadataOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShareSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShareSettingsProjectConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShieldedInstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShieldedInstanceIdentity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShieldedInstanceIdentityEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShieldedInstanceIntegrityPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShieldedVmConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShieldedVmIdentity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShieldedVmIdentityEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShieldedVmIntegrityPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SignedUrlKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Snapshot
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SnapshotAggregatedList
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
      
      class SnapshotList
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
      
      class SnapshotSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SnapshotSettingsAccessLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SnapshotSettingsAccessLocationAccessLocationPreference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SnapshotSettingsStorageLocationSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SnapshotSettingsStorageLocationSettingsStorageLocationPreference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SnapshotsScopedList
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
      
      class SourceDiskEncryptionKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceInstanceParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceInstanceProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslCertificate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslCertificateAggregatedList
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
      
      class SslCertificateList
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
      
      class SslCertificateManagedSslCertificate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslCertificateSelfManagedSslCertificate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslCertificatesScopedList
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
      
      class SslPoliciesAggregatedList
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
      
      class SslPoliciesList
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
      
      class SslPoliciesListAvailableFeaturesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SslPoliciesScopedList
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
      
      class SslPolicy
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
      
      class SslPolicyReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StatefulPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StatefulPolicyPreservedState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StatefulPolicyPreservedStateDiskDevice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StatefulPolicyPreservedStateNetworkIp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StoragePool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StoragePoolAggregatedList
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
      
      class StoragePoolDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StoragePoolList
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
      
      class StoragePoolListDisks
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
      
      class StoragePoolResourceStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StoragePoolType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StoragePoolTypeAggregatedList
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
      
      class StoragePoolTypeList
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
      
      class StoragePoolTypesScopedList
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
      
      class StoragePoolsScopedList
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
      
      class StructuredEntries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Subnetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubnetworkAggregatedList
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
      
      class SubnetworkList
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
      
      class SubnetworkLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubnetworkParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubnetworkSecondaryRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubnetworksExpandIpCidrRangeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubnetworksScopedList
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
      
      class SubnetworksScopedWarning
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
      
      class SubnetworksSetPrivateIpGoogleAccessRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Subsetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TcpHealthCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Tags
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetGrpcProxy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetGrpcProxyList
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
      
      class TargetHttpProxiesScopedList
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
      
      class TargetHttpProxy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetHttpProxyAggregatedList
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
      
      class TargetHttpProxyList
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
      
      class TargetHttpsProxiesScopedList
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
      
      class TargetHttpsProxiesSetCertificateMapRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetHttpsProxiesSetQuicOverrideRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetHttpsProxiesSetSslCertificatesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetHttpsProxy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetHttpsProxyAggregatedList
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
      
      class TargetHttpsProxyList
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
      
      class TargetInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetInstanceAggregatedList
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
      
      class TargetInstanceList
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
      
      class TargetInstancesScopedList
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
      
      class TargetPool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetPoolAggregatedList
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
      
      class TargetPoolInstanceHealth
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetPoolList
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
      
      class AddTargetPoolsHealthCheckRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddTargetPoolsInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveTargetPoolsHealthCheckRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveTargetPoolsInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetPoolsScopedList
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
      
      class TargetReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetSslProxiesSetBackendServiceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetSslProxiesSetCertificateMapRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetSslProxiesSetProxyHeaderRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetSslProxiesSetSslCertificatesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetSslProxy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetSslProxyList
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
      
      class TargetTcpProxiesScopedList
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
      
      class TargetTcpProxiesSetBackendServiceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetTcpProxiesSetProxyHeaderRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetTcpProxy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetTcpProxyAggregatedList
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
      
      class TargetTcpProxyList
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
      
      class TargetVpnGateway
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetVpnGatewayAggregatedList
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
      
      class TargetVpnGatewayList
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
      
      class TargetVpnGatewaysScopedList
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
      
      class TestFailure
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
      
      class Uint128
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpcomingMaintenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlMap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlMapList
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
      
      class UrlMapReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlMapTest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlMapTestHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlMapValidationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlMapsAggregatedList
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
      
      class UrlMapsScopedList
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
      
      class ValidateUrlMapsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateUrlMapsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlRewrite
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UsableSubnetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UsableSubnetworkSecondaryRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UsableSubnetworksAggregatedList
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
      
      class UsageExportLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmEndpointNatMappings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmEndpointNatMappingsInterfaceNatMappings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmEndpointNatMappingsInterfaceNatMappingsNatRuleMappings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmEndpointNatMappingsList
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
      
      class VpnGateway
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpnGatewayAggregatedList
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
      
      class VpnGatewayList
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
      
      class VpnGatewayStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpnGatewayStatusHighAvailabilityRequirementState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpnGatewayStatusTunnel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpnGatewayStatusVpnConnection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpnGatewayVpnGatewayInterface
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpnGatewaysGetStatusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpnGatewaysScopedList
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
      
      class VpnTunnel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpnTunnelAggregatedList
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
      
      class VpnTunnelCipherSuite
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpnTunnelList
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
      
      class VpnTunnelPhase1Algorithms
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpnTunnelPhase2Algorithms
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpnTunnelsScopedList
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
      
      class WafExpressionSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WafExpressionSetExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WeightedBackendService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Wire
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WireEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WireGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WireGroupEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WireGroupEndpointInterconnect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WireGroupList
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
      
      class WireGroupProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WireGroupTopology
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WireGroupTopologyEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WireProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpnHostList
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
      
      class XpnResourceId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Zone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ZoneList
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
      
      class ZoneSetLabelsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ZoneSetPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Awsv4Signature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_key, as: 'accessKey'
          property :access_key_id, as: 'accessKeyId'
          property :access_key_version, as: 'accessKeyVersion'
          property :origin_region, as: 'originRegion'
        end
      end
      
      class AcceleratorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accelerator_count, as: 'acceleratorCount'
          property :accelerator_type, as: 'acceleratorType'
        end
      end
      
      class AcceleratorType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :deprecated, as: 'deprecated', class: Google::Apis::ComputeBeta::DeprecationStatus, decorator: Google::Apis::ComputeBeta::DeprecationStatus::Representation
      
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :maximum_cards_per_instance, as: 'maximumCardsPerInstance'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
          property :zone, as: 'zone'
        end
      end
      
      class AcceleratorTypeAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::AcceleratorTypesScopedList, decorator: Google::Apis::ComputeBeta::AcceleratorTypesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::AcceleratorTypeAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::AcceleratorTypeAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::AcceleratorTypeAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::AcceleratorTypeAggregatedList::Warning::Datum::Representation
        
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
      
      class AcceleratorTypeList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::AcceleratorType, decorator: Google::Apis::ComputeBeta::AcceleratorType::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::AcceleratorTypeList::Warning, decorator: Google::Apis::ComputeBeta::AcceleratorTypeList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::AcceleratorTypeList::Warning::Datum, decorator: Google::Apis::ComputeBeta::AcceleratorTypeList::Warning::Datum::Representation
        
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
      
      class AcceleratorTypesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accelerator_types, as: 'acceleratorTypes', class: Google::Apis::ComputeBeta::AcceleratorType, decorator: Google::Apis::ComputeBeta::AcceleratorType::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::AcceleratorTypesScopedList::Warning, decorator: Google::Apis::ComputeBeta::AcceleratorTypesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::AcceleratorTypesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::AcceleratorTypesScopedList::Warning::Datum::Representation
        
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
      
      class AccessConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_ipv6, as: 'externalIpv6'
          property :external_ipv6_prefix_length, as: 'externalIpv6PrefixLength'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :nat_ip, as: 'natIP'
          property :network_tier, as: 'networkTier'
          property :public_ptr_domain_name, as: 'publicPtrDomainName'
          property :security_policy, as: 'securityPolicy'
          property :set_public_ptr, as: 'setPublicPtr'
          property :type, as: 'type'
        end
      end
      
      class Address
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :address_type, as: 'addressType'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          property :ip_version, as: 'ipVersion'
          property :ipv6_endpoint_type, as: 'ipv6EndpointType'
          property :kind, as: 'kind'
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :network, as: 'network'
          property :network_tier, as: 'networkTier'
          property :prefix_length, as: 'prefixLength'
          property :purpose, as: 'purpose'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :status, as: 'status'
          property :subnetwork, as: 'subnetwork'
          collection :users, as: 'users'
        end
      end
      
      class AddressAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::AddressesScopedList, decorator: Google::Apis::ComputeBeta::AddressesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::AddressAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::AddressAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::AddressAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::AddressAggregatedList::Warning::Datum::Representation
        
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
      
      class AddressList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Address, decorator: Google::Apis::ComputeBeta::Address::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::AddressList::Warning, decorator: Google::Apis::ComputeBeta::AddressList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::AddressList::Warning::Datum, decorator: Google::Apis::ComputeBeta::AddressList::Warning::Datum::Representation
        
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
      
      class AddressesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :addresses, as: 'addresses', class: Google::Apis::ComputeBeta::Address, decorator: Google::Apis::ComputeBeta::Address::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::AddressesScopedList::Warning, decorator: Google::Apis::ComputeBeta::AddressesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::AddressesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::AddressesScopedList::Warning::Datum::Representation
        
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
      
      class AdvancedMachineFeatures
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_nested_virtualization, as: 'enableNestedVirtualization'
          property :enable_uefi_networking, as: 'enableUefiNetworking'
          property :performance_monitoring_unit, as: 'performanceMonitoringUnit'
          property :threads_per_core, as: 'threadsPerCore'
          property :turbo_mode, as: 'turboMode'
          property :visible_core_count, as: 'visibleCoreCount'
        end
      end
      
      class AliasIpRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_cidr_range, as: 'ipCidrRange'
          property :subnetwork_range_name, as: 'subnetworkRangeName'
        end
      end
      
      class AllocationAggregateReservation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :in_use_resources, as: 'inUseResources', class: Google::Apis::ComputeBeta::AllocationAggregateReservationReservedResourceInfo, decorator: Google::Apis::ComputeBeta::AllocationAggregateReservationReservedResourceInfo::Representation
      
          collection :reserved_resources, as: 'reservedResources', class: Google::Apis::ComputeBeta::AllocationAggregateReservationReservedResourceInfo, decorator: Google::Apis::ComputeBeta::AllocationAggregateReservationReservedResourceInfo::Representation
      
          property :vm_family, as: 'vmFamily'
          property :workload_type, as: 'workloadType'
        end
      end
      
      class AllocationAggregateReservationReservedResourceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accelerator, as: 'accelerator', class: Google::Apis::ComputeBeta::AllocationAggregateReservationReservedResourceInfoAccelerator, decorator: Google::Apis::ComputeBeta::AllocationAggregateReservationReservedResourceInfoAccelerator::Representation
      
        end
      end
      
      class AllocationAggregateReservationReservedResourceInfoAccelerator
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accelerator_count, as: 'acceleratorCount'
          property :accelerator_type, as: 'acceleratorType'
        end
      end
      
      class AllocationReservationSharingPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_share_type, as: 'serviceShareType'
        end
      end
      
      class AllocationResourceStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reservation_block_count, as: 'reservationBlockCount'
          property :reservation_maintenance, as: 'reservationMaintenance', class: Google::Apis::ComputeBeta::GroupMaintenanceInfo, decorator: Google::Apis::ComputeBeta::GroupMaintenanceInfo::Representation
      
          property :specific_sku_allocation, as: 'specificSkuAllocation', class: Google::Apis::ComputeBeta::AllocationResourceStatusSpecificSkuAllocation, decorator: Google::Apis::ComputeBeta::AllocationResourceStatusSpecificSkuAllocation::Representation
      
        end
      end
      
      class AllocationResourceStatusSpecificSkuAllocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_instance_template_id, as: 'sourceInstanceTemplateId'
          hash :utilizations, as: 'utilizations'
        end
      end
      
      class AllocationSpecificSkuAllocationAllocatedInstancePropertiesReservedDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
          property :interface, as: 'interface'
        end
      end
      
      class AllocationSpecificSkuAllocationReservedInstanceProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :guest_accelerators, as: 'guestAccelerators', class: Google::Apis::ComputeBeta::AcceleratorConfig, decorator: Google::Apis::ComputeBeta::AcceleratorConfig::Representation
      
          collection :local_ssds, as: 'localSsds', class: Google::Apis::ComputeBeta::AllocationSpecificSkuAllocationAllocatedInstancePropertiesReservedDisk, decorator: Google::Apis::ComputeBeta::AllocationSpecificSkuAllocationAllocatedInstancePropertiesReservedDisk::Representation
      
          property :location_hint, as: 'locationHint'
          property :machine_type, as: 'machineType'
          property :maintenance_freeze_duration_hours, as: 'maintenanceFreezeDurationHours'
          property :maintenance_interval, as: 'maintenanceInterval'
          property :min_cpu_platform, as: 'minCpuPlatform'
        end
      end
      
      class AllocationSpecificSkuReservation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assured_count, :numeric_string => true, as: 'assuredCount'
          property :count, :numeric_string => true, as: 'count'
          property :in_use_count, :numeric_string => true, as: 'inUseCount'
          property :instance_properties, as: 'instanceProperties', class: Google::Apis::ComputeBeta::AllocationSpecificSkuAllocationReservedInstanceProperties, decorator: Google::Apis::ComputeBeta::AllocationSpecificSkuAllocationReservedInstanceProperties::Representation
      
          property :source_instance_template, as: 'sourceInstanceTemplate'
        end
      end
      
      class AttachedDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :auto_delete, as: 'autoDelete'
          property :boot, as: 'boot'
          property :device_name, as: 'deviceName'
          property :disk_encryption_key, as: 'diskEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
          property :force_attach, as: 'forceAttach'
          collection :guest_os_features, as: 'guestOsFeatures', class: Google::Apis::ComputeBeta::GuestOsFeature, decorator: Google::Apis::ComputeBeta::GuestOsFeature::Representation
      
          property :index, as: 'index'
          property :initialize_params, as: 'initializeParams', class: Google::Apis::ComputeBeta::AttachedDiskInitializeParams, decorator: Google::Apis::ComputeBeta::AttachedDiskInitializeParams::Representation
      
          property :interface, as: 'interface'
          property :kind, as: 'kind'
          collection :licenses, as: 'licenses'
          property :locked, as: 'locked'
          property :mode, as: 'mode'
          property :saved_state, as: 'savedState'
          property :shielded_instance_initial_state, as: 'shieldedInstanceInitialState', class: Google::Apis::ComputeBeta::InitialStateConfig, decorator: Google::Apis::ComputeBeta::InitialStateConfig::Representation
      
          property :source, as: 'source'
          property :type, as: 'type'
          collection :user_licenses, as: 'userLicenses'
        end
      end
      
      class AttachedDiskInitializeParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :description, as: 'description'
          property :disk_name, as: 'diskName'
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
          property :disk_type, as: 'diskType'
          property :enable_confidential_compute, as: 'enableConfidentialCompute'
          collection :guest_os_features, as: 'guestOsFeatures', class: Google::Apis::ComputeBeta::GuestOsFeature, decorator: Google::Apis::ComputeBeta::GuestOsFeature::Representation
      
          hash :labels, as: 'labels'
          collection :licenses, as: 'licenses'
          property :multi_writer, as: 'multiWriter'
          property :on_update_action, as: 'onUpdateAction'
          property :provisioned_iops, :numeric_string => true, as: 'provisionedIops'
          property :provisioned_throughput, :numeric_string => true, as: 'provisionedThroughput'
          collection :replica_zones, as: 'replicaZones'
          hash :resource_manager_tags, as: 'resourceManagerTags'
          collection :resource_policies, as: 'resourcePolicies'
          property :source_image, as: 'sourceImage'
          property :source_image_encryption_key, as: 'sourceImageEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :source_instant_snapshot, as: 'sourceInstantSnapshot'
          property :source_snapshot, as: 'sourceSnapshot'
          property :source_snapshot_encryption_key, as: 'sourceSnapshotEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :storage_pool, as: 'storagePool'
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::ComputeBeta::AuditLogConfig, decorator: Google::Apis::ComputeBeta::AuditLogConfig::Representation
      
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
      
      class Autoscaler
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autoscaling_policy, as: 'autoscalingPolicy', class: Google::Apis::ComputeBeta::AutoscalingPolicy, decorator: Google::Apis::ComputeBeta::AutoscalingPolicy::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :recommended_size, as: 'recommendedSize'
          property :region, as: 'region'
          hash :scaling_schedule_status, as: 'scalingScheduleStatus', class: Google::Apis::ComputeBeta::ScalingScheduleStatus, decorator: Google::Apis::ComputeBeta::ScalingScheduleStatus::Representation
      
          property :self_link, as: 'selfLink'
          property :status, as: 'status'
          collection :status_details, as: 'statusDetails', class: Google::Apis::ComputeBeta::AutoscalerStatusDetails, decorator: Google::Apis::ComputeBeta::AutoscalerStatusDetails::Representation
      
          property :target, as: 'target'
          property :zone, as: 'zone'
        end
      end
      
      class AutoscalerAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::AutoscalersScopedList, decorator: Google::Apis::ComputeBeta::AutoscalersScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::AutoscalerAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::AutoscalerAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::AutoscalerAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::AutoscalerAggregatedList::Warning::Datum::Representation
        
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
      
      class AutoscalerList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Autoscaler, decorator: Google::Apis::ComputeBeta::Autoscaler::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::AutoscalerList::Warning, decorator: Google::Apis::ComputeBeta::AutoscalerList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::AutoscalerList::Warning::Datum, decorator: Google::Apis::ComputeBeta::AutoscalerList::Warning::Datum::Representation
        
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
      
      class AutoscalerStatusDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :type, as: 'type'
        end
      end
      
      class AutoscalersScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :autoscalers, as: 'autoscalers', class: Google::Apis::ComputeBeta::Autoscaler, decorator: Google::Apis::ComputeBeta::Autoscaler::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::AutoscalersScopedList::Warning, decorator: Google::Apis::ComputeBeta::AutoscalersScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::AutoscalersScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::AutoscalersScopedList::Warning::Datum::Representation
        
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
      
      class AutoscalingPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cool_down_period_sec, as: 'coolDownPeriodSec'
          property :cpu_utilization, as: 'cpuUtilization', class: Google::Apis::ComputeBeta::AutoscalingPolicyCpuUtilization, decorator: Google::Apis::ComputeBeta::AutoscalingPolicyCpuUtilization::Representation
      
          collection :custom_metric_utilizations, as: 'customMetricUtilizations', class: Google::Apis::ComputeBeta::AutoscalingPolicyCustomMetricUtilization, decorator: Google::Apis::ComputeBeta::AutoscalingPolicyCustomMetricUtilization::Representation
      
          property :load_balancing_utilization, as: 'loadBalancingUtilization', class: Google::Apis::ComputeBeta::AutoscalingPolicyLoadBalancingUtilization, decorator: Google::Apis::ComputeBeta::AutoscalingPolicyLoadBalancingUtilization::Representation
      
          property :max_num_replicas, as: 'maxNumReplicas'
          property :min_num_replicas, as: 'minNumReplicas'
          property :mode, as: 'mode'
          property :scale_down_control, as: 'scaleDownControl', class: Google::Apis::ComputeBeta::AutoscalingPolicyScaleDownControl, decorator: Google::Apis::ComputeBeta::AutoscalingPolicyScaleDownControl::Representation
      
          property :scale_in_control, as: 'scaleInControl', class: Google::Apis::ComputeBeta::AutoscalingPolicyScaleInControl, decorator: Google::Apis::ComputeBeta::AutoscalingPolicyScaleInControl::Representation
      
          hash :scaling_schedules, as: 'scalingSchedules', class: Google::Apis::ComputeBeta::AutoscalingPolicyScalingSchedule, decorator: Google::Apis::ComputeBeta::AutoscalingPolicyScalingSchedule::Representation
      
        end
      end
      
      class AutoscalingPolicyCpuUtilization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :predictive_method, as: 'predictiveMethod'
          property :utilization_target, as: 'utilizationTarget'
        end
      end
      
      class AutoscalingPolicyCustomMetricUtilization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :metric, as: 'metric'
          property :single_instance_assignment, as: 'singleInstanceAssignment'
          property :utilization_target, as: 'utilizationTarget'
          property :utilization_target_type, as: 'utilizationTargetType'
        end
      end
      
      class AutoscalingPolicyLoadBalancingUtilization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :utilization_target, as: 'utilizationTarget'
        end
      end
      
      class AutoscalingPolicyScaleDownControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_scaled_down_replicas, as: 'maxScaledDownReplicas', class: Google::Apis::ComputeBeta::FixedOrPercent, decorator: Google::Apis::ComputeBeta::FixedOrPercent::Representation
      
          property :time_window_sec, as: 'timeWindowSec'
        end
      end
      
      class AutoscalingPolicyScaleInControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_scaled_in_replicas, as: 'maxScaledInReplicas', class: Google::Apis::ComputeBeta::FixedOrPercent, decorator: Google::Apis::ComputeBeta::FixedOrPercent::Representation
      
          property :time_window_sec, as: 'timeWindowSec'
        end
      end
      
      class AutoscalingPolicyScalingSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :disabled, as: 'disabled'
          property :duration_sec, as: 'durationSec'
          property :min_required_replicas, as: 'minRequiredReplicas'
          property :schedule, as: 'schedule'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class Backend
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :balancing_mode, as: 'balancingMode'
          property :capacity_scaler, as: 'capacityScaler'
          collection :custom_metrics, as: 'customMetrics', class: Google::Apis::ComputeBeta::BackendCustomMetric, decorator: Google::Apis::ComputeBeta::BackendCustomMetric::Representation
      
          property :description, as: 'description'
          property :failover, as: 'failover'
          property :group, as: 'group'
          property :max_connections, as: 'maxConnections'
          property :max_connections_per_endpoint, as: 'maxConnectionsPerEndpoint'
          property :max_connections_per_instance, as: 'maxConnectionsPerInstance'
          property :max_rate, as: 'maxRate'
          property :max_rate_per_endpoint, as: 'maxRatePerEndpoint'
          property :max_rate_per_instance, as: 'maxRatePerInstance'
          property :max_utilization, as: 'maxUtilization'
          property :preference, as: 'preference'
        end
      end
      
      class BackendBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_name, as: 'bucketName'
          property :cdn_policy, as: 'cdnPolicy', class: Google::Apis::ComputeBeta::BackendBucketCdnPolicy, decorator: Google::Apis::ComputeBeta::BackendBucketCdnPolicy::Representation
      
          property :compression_mode, as: 'compressionMode'
          property :creation_timestamp, as: 'creationTimestamp'
          collection :custom_response_headers, as: 'customResponseHeaders'
          property :description, as: 'description'
          property :edge_security_policy, as: 'edgeSecurityPolicy'
          property :enable_cdn, as: 'enableCdn'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :load_balancing_scheme, as: 'loadBalancingScheme'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
          collection :used_by, as: 'usedBy', class: Google::Apis::ComputeBeta::BackendBucketUsedBy, decorator: Google::Apis::ComputeBeta::BackendBucketUsedBy::Representation
      
        end
      end
      
      class BackendBucketCdnPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bypass_cache_on_request_headers, as: 'bypassCacheOnRequestHeaders', class: Google::Apis::ComputeBeta::BackendBucketCdnPolicyBypassCacheOnRequestHeader, decorator: Google::Apis::ComputeBeta::BackendBucketCdnPolicyBypassCacheOnRequestHeader::Representation
      
          property :cache_key_policy, as: 'cacheKeyPolicy', class: Google::Apis::ComputeBeta::BackendBucketCdnPolicyCacheKeyPolicy, decorator: Google::Apis::ComputeBeta::BackendBucketCdnPolicyCacheKeyPolicy::Representation
      
          property :cache_mode, as: 'cacheMode'
          property :client_ttl, as: 'clientTtl'
          property :default_ttl, as: 'defaultTtl'
          property :max_ttl, as: 'maxTtl'
          property :negative_caching, as: 'negativeCaching'
          collection :negative_caching_policy, as: 'negativeCachingPolicy', class: Google::Apis::ComputeBeta::BackendBucketCdnPolicyNegativeCachingPolicy, decorator: Google::Apis::ComputeBeta::BackendBucketCdnPolicyNegativeCachingPolicy::Representation
      
          property :request_coalescing, as: 'requestCoalescing'
          property :serve_while_stale, as: 'serveWhileStale'
          property :signed_url_cache_max_age_sec, :numeric_string => true, as: 'signedUrlCacheMaxAgeSec'
          collection :signed_url_key_names, as: 'signedUrlKeyNames'
        end
      end
      
      class BackendBucketCdnPolicyBypassCacheOnRequestHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header_name, as: 'headerName'
        end
      end
      
      class BackendBucketCdnPolicyCacheKeyPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :include_http_headers, as: 'includeHttpHeaders'
          collection :query_string_whitelist, as: 'queryStringWhitelist'
        end
      end
      
      class BackendBucketCdnPolicyNegativeCachingPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :ttl, as: 'ttl'
        end
      end
      
      class BackendBucketList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::BackendBucket, decorator: Google::Apis::ComputeBeta::BackendBucket::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::BackendBucketList::Warning, decorator: Google::Apis::ComputeBeta::BackendBucketList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::BackendBucketList::Warning::Datum, decorator: Google::Apis::ComputeBeta::BackendBucketList::Warning::Datum::Representation
        
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
      
      class BackendBucketListUsable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::BackendBucket, decorator: Google::Apis::ComputeBeta::BackendBucket::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::BackendBucketListUsable::Warning, decorator: Google::Apis::ComputeBeta::BackendBucketListUsable::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::BackendBucketListUsable::Warning::Datum, decorator: Google::Apis::ComputeBeta::BackendBucketListUsable::Warning::Datum::Representation
        
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
      
      class BackendBucketUsedBy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reference, as: 'reference'
        end
      end
      
      class BackendCustomMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dry_run, as: 'dryRun'
          property :max_utilization, as: 'maxUtilization'
          property :name, as: 'name'
        end
      end
      
      class BackendService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :affinity_cookie_ttl_sec, as: 'affinityCookieTtlSec'
          collection :backends, as: 'backends', class: Google::Apis::ComputeBeta::Backend, decorator: Google::Apis::ComputeBeta::Backend::Representation
      
          property :cdn_policy, as: 'cdnPolicy', class: Google::Apis::ComputeBeta::BackendServiceCdnPolicy, decorator: Google::Apis::ComputeBeta::BackendServiceCdnPolicy::Representation
      
          property :circuit_breakers, as: 'circuitBreakers', class: Google::Apis::ComputeBeta::CircuitBreakers, decorator: Google::Apis::ComputeBeta::CircuitBreakers::Representation
      
          property :compression_mode, as: 'compressionMode'
          property :connection_draining, as: 'connectionDraining', class: Google::Apis::ComputeBeta::ConnectionDraining, decorator: Google::Apis::ComputeBeta::ConnectionDraining::Representation
      
          property :connection_tracking_policy, as: 'connectionTrackingPolicy', class: Google::Apis::ComputeBeta::BackendServiceConnectionTrackingPolicy, decorator: Google::Apis::ComputeBeta::BackendServiceConnectionTrackingPolicy::Representation
      
          property :consistent_hash, as: 'consistentHash', class: Google::Apis::ComputeBeta::ConsistentHashLoadBalancerSettings, decorator: Google::Apis::ComputeBeta::ConsistentHashLoadBalancerSettings::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          collection :custom_metrics, as: 'customMetrics', class: Google::Apis::ComputeBeta::BackendServiceCustomMetric, decorator: Google::Apis::ComputeBeta::BackendServiceCustomMetric::Representation
      
          collection :custom_request_headers, as: 'customRequestHeaders'
          collection :custom_response_headers, as: 'customResponseHeaders'
          property :description, as: 'description'
          property :dynamic_forwarding, as: 'dynamicForwarding', class: Google::Apis::ComputeBeta::BackendServiceDynamicForwarding, decorator: Google::Apis::ComputeBeta::BackendServiceDynamicForwarding::Representation
      
          property :edge_security_policy, as: 'edgeSecurityPolicy'
          property :enable_cdn, as: 'enableCDN'
          property :external_managed_migration_state, as: 'externalManagedMigrationState'
          property :external_managed_migration_testing_percentage, as: 'externalManagedMigrationTestingPercentage'
          property :failover_policy, as: 'failoverPolicy', class: Google::Apis::ComputeBeta::BackendServiceFailoverPolicy, decorator: Google::Apis::ComputeBeta::BackendServiceFailoverPolicy::Representation
      
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :ha_policy, as: 'haPolicy', class: Google::Apis::ComputeBeta::BackendServiceHaPolicy, decorator: Google::Apis::ComputeBeta::BackendServiceHaPolicy::Representation
      
          collection :health_checks, as: 'healthChecks'
          property :iap, as: 'iap', class: Google::Apis::ComputeBeta::BackendServiceIap, decorator: Google::Apis::ComputeBeta::BackendServiceIap::Representation
      
          property :id, :numeric_string => true, as: 'id'
          property :ip_address_selection_policy, as: 'ipAddressSelectionPolicy'
          property :kind, as: 'kind'
          property :load_balancing_scheme, as: 'loadBalancingScheme'
          collection :locality_lb_policies, as: 'localityLbPolicies', class: Google::Apis::ComputeBeta::BackendServiceLocalityLoadBalancingPolicyConfig, decorator: Google::Apis::ComputeBeta::BackendServiceLocalityLoadBalancingPolicyConfig::Representation
      
          property :locality_lb_policy, as: 'localityLbPolicy'
          property :log_config, as: 'logConfig', class: Google::Apis::ComputeBeta::BackendServiceLogConfig, decorator: Google::Apis::ComputeBeta::BackendServiceLogConfig::Representation
      
          property :max_stream_duration, as: 'maxStreamDuration', class: Google::Apis::ComputeBeta::Duration, decorator: Google::Apis::ComputeBeta::Duration::Representation
      
          hash :metadatas, as: 'metadatas'
          property :name, as: 'name'
          property :network, as: 'network'
          property :network_pass_through_lb_traffic_policy, as: 'networkPassThroughLbTrafficPolicy', class: Google::Apis::ComputeBeta::BackendServiceNetworkPassThroughLbTrafficPolicy, decorator: Google::Apis::ComputeBeta::BackendServiceNetworkPassThroughLbTrafficPolicy::Representation
      
          property :outlier_detection, as: 'outlierDetection', class: Google::Apis::ComputeBeta::OutlierDetection, decorator: Google::Apis::ComputeBeta::OutlierDetection::Representation
      
          property :port, as: 'port'
          property :port_name, as: 'portName'
          property :protocol, as: 'protocol'
          property :region, as: 'region'
          property :security_policy, as: 'securityPolicy'
          property :security_settings, as: 'securitySettings', class: Google::Apis::ComputeBeta::SecuritySettings, decorator: Google::Apis::ComputeBeta::SecuritySettings::Representation
      
          property :self_link, as: 'selfLink'
          collection :service_bindings, as: 'serviceBindings'
          property :service_lb_policy, as: 'serviceLbPolicy'
          property :session_affinity, as: 'sessionAffinity'
          property :strong_session_affinity_cookie, as: 'strongSessionAffinityCookie', class: Google::Apis::ComputeBeta::BackendServiceHttpCookie, decorator: Google::Apis::ComputeBeta::BackendServiceHttpCookie::Representation
      
          property :subsetting, as: 'subsetting', class: Google::Apis::ComputeBeta::Subsetting, decorator: Google::Apis::ComputeBeta::Subsetting::Representation
      
          property :timeout_sec, as: 'timeoutSec'
          property :tls_settings, as: 'tlsSettings', class: Google::Apis::ComputeBeta::BackendServiceTlsSettings, decorator: Google::Apis::ComputeBeta::BackendServiceTlsSettings::Representation
      
          collection :used_by, as: 'usedBy', class: Google::Apis::ComputeBeta::BackendServiceUsedBy, decorator: Google::Apis::ComputeBeta::BackendServiceUsedBy::Representation
      
        end
      end
      
      class BackendServiceAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::BackendServicesScopedList, decorator: Google::Apis::ComputeBeta::BackendServicesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::BackendServiceAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::BackendServiceAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::BackendServiceAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::BackendServiceAggregatedList::Warning::Datum::Representation
        
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
      
      class BackendServiceCdnPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bypass_cache_on_request_headers, as: 'bypassCacheOnRequestHeaders', class: Google::Apis::ComputeBeta::BackendServiceCdnPolicyBypassCacheOnRequestHeader, decorator: Google::Apis::ComputeBeta::BackendServiceCdnPolicyBypassCacheOnRequestHeader::Representation
      
          property :cache_key_policy, as: 'cacheKeyPolicy', class: Google::Apis::ComputeBeta::CacheKeyPolicy, decorator: Google::Apis::ComputeBeta::CacheKeyPolicy::Representation
      
          property :cache_mode, as: 'cacheMode'
          property :client_ttl, as: 'clientTtl'
          property :default_ttl, as: 'defaultTtl'
          property :max_ttl, as: 'maxTtl'
          property :negative_caching, as: 'negativeCaching'
          collection :negative_caching_policy, as: 'negativeCachingPolicy', class: Google::Apis::ComputeBeta::BackendServiceCdnPolicyNegativeCachingPolicy, decorator: Google::Apis::ComputeBeta::BackendServiceCdnPolicyNegativeCachingPolicy::Representation
      
          property :request_coalescing, as: 'requestCoalescing'
          property :serve_while_stale, as: 'serveWhileStale'
          property :signed_url_cache_max_age_sec, :numeric_string => true, as: 'signedUrlCacheMaxAgeSec'
          collection :signed_url_key_names, as: 'signedUrlKeyNames'
        end
      end
      
      class BackendServiceCdnPolicyBypassCacheOnRequestHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header_name, as: 'headerName'
        end
      end
      
      class BackendServiceCdnPolicyNegativeCachingPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :ttl, as: 'ttl'
        end
      end
      
      class BackendServiceConnectionTrackingPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_persistence_on_unhealthy_backends, as: 'connectionPersistenceOnUnhealthyBackends'
          property :enable_strong_affinity, as: 'enableStrongAffinity'
          property :idle_timeout_sec, as: 'idleTimeoutSec'
          property :tracking_mode, as: 'trackingMode'
        end
      end
      
      class BackendServiceCustomMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dry_run, as: 'dryRun'
          property :name, as: 'name'
        end
      end
      
      class BackendServiceDynamicForwarding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_port_selection, as: 'ipPortSelection', class: Google::Apis::ComputeBeta::BackendServiceDynamicForwardingIpPortSelection, decorator: Google::Apis::ComputeBeta::BackendServiceDynamicForwardingIpPortSelection::Representation
      
        end
      end
      
      class BackendServiceDynamicForwardingIpPortSelection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class BackendServiceFailoverPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_connection_drain_on_failover, as: 'disableConnectionDrainOnFailover'
          property :drop_traffic_if_unhealthy, as: 'dropTrafficIfUnhealthy'
          property :failover_ratio, as: 'failoverRatio'
        end
      end
      
      class BackendServiceGroupHealth
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          collection :health_status, as: 'healthStatus', class: Google::Apis::ComputeBeta::HealthStatus, decorator: Google::Apis::ComputeBeta::HealthStatus::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class BackendServiceHaPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fast_ip_move, as: 'fastIPMove'
          property :leader, as: 'leader', class: Google::Apis::ComputeBeta::BackendServiceHaPolicyLeader, decorator: Google::Apis::ComputeBeta::BackendServiceHaPolicyLeader::Representation
      
        end
      end
      
      class BackendServiceHaPolicyLeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backend_group, as: 'backendGroup'
          property :network_endpoint, as: 'networkEndpoint', class: Google::Apis::ComputeBeta::BackendServiceHaPolicyLeaderNetworkEndpoint, decorator: Google::Apis::ComputeBeta::BackendServiceHaPolicyLeaderNetworkEndpoint::Representation
      
        end
      end
      
      class BackendServiceHaPolicyLeaderNetworkEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance'
        end
      end
      
      class BackendServiceHttpCookie
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :path, as: 'path'
          property :ttl, as: 'ttl', class: Google::Apis::ComputeBeta::Duration, decorator: Google::Apis::ComputeBeta::Duration::Representation
      
        end
      end
      
      class BackendServiceIap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :oauth2_client_id, as: 'oauth2ClientId'
          property :oauth2_client_secret, as: 'oauth2ClientSecret'
          property :oauth2_client_secret_sha256, as: 'oauth2ClientSecretSha256'
        end
      end
      
      class BackendServiceList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::BackendService, decorator: Google::Apis::ComputeBeta::BackendService::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::BackendServiceList::Warning, decorator: Google::Apis::ComputeBeta::BackendServiceList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::BackendServiceList::Warning::Datum, decorator: Google::Apis::ComputeBeta::BackendServiceList::Warning::Datum::Representation
        
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
      
      class BackendServiceListUsable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::BackendService, decorator: Google::Apis::ComputeBeta::BackendService::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::BackendServiceListUsable::Warning, decorator: Google::Apis::ComputeBeta::BackendServiceListUsable::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::BackendServiceListUsable::Warning::Datum, decorator: Google::Apis::ComputeBeta::BackendServiceListUsable::Warning::Datum::Representation
        
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
      
      class BackendServiceLocalityLoadBalancingPolicyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_policy, as: 'customPolicy', class: Google::Apis::ComputeBeta::BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicy, decorator: Google::Apis::ComputeBeta::BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicy::Representation
      
          property :policy, as: 'policy', class: Google::Apis::ComputeBeta::BackendServiceLocalityLoadBalancingPolicyConfigPolicy, decorator: Google::Apis::ComputeBeta::BackendServiceLocalityLoadBalancingPolicyConfigPolicy::Representation
      
        end
      end
      
      class BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, as: 'data'
          property :name, as: 'name'
        end
      end
      
      class BackendServiceLocalityLoadBalancingPolicyConfigPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class BackendServiceLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable, as: 'enable'
          collection :optional_fields, as: 'optionalFields'
          property :optional_mode, as: 'optionalMode'
          property :sample_rate, as: 'sampleRate'
        end
      end
      
      class BackendServiceNetworkPassThroughLbTrafficPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :zonal_affinity, as: 'zonalAffinity', class: Google::Apis::ComputeBeta::BackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity, decorator: Google::Apis::ComputeBeta::BackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity::Representation
      
        end
      end
      
      class BackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :spillover, as: 'spillover'
          property :spillover_ratio, as: 'spilloverRatio'
        end
      end
      
      class BackendServiceReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backend_service, as: 'backendService'
        end
      end
      
      class BackendServiceTlsSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authentication_config, as: 'authenticationConfig'
          property :sni, as: 'sni'
          collection :subject_alt_names, as: 'subjectAltNames', class: Google::Apis::ComputeBeta::BackendServiceTlsSettingsSubjectAltName, decorator: Google::Apis::ComputeBeta::BackendServiceTlsSettingsSubjectAltName::Representation
      
        end
      end
      
      class BackendServiceTlsSettingsSubjectAltName
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dns_name, as: 'dnsName'
          property :uniform_resource_identifier, as: 'uniformResourceIdentifier'
        end
      end
      
      class BackendServiceUsedBy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reference, as: 'reference'
        end
      end
      
      class BackendServicesGetEffectiveSecurityPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :security_policies, as: 'securityPolicies', class: Google::Apis::ComputeBeta::SecurityPolicy, decorator: Google::Apis::ComputeBeta::SecurityPolicy::Representation
      
        end
      end
      
      class BackendServicesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backend_services, as: 'backendServices', class: Google::Apis::ComputeBeta::BackendService, decorator: Google::Apis::ComputeBeta::BackendService::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::BackendServicesScopedList::Warning, decorator: Google::Apis::ComputeBeta::BackendServicesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::BackendServicesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::BackendServicesScopedList::Warning::Datum::Representation
        
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
      
      class BfdPacket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authentication_present, as: 'authenticationPresent'
          property :control_plane_independent, as: 'controlPlaneIndependent'
          property :demand, as: 'demand'
          property :diagnostic, as: 'diagnostic'
          property :final, as: 'final'
          property :length, as: 'length'
          property :min_echo_rx_interval_ms, as: 'minEchoRxIntervalMs'
          property :min_rx_interval_ms, as: 'minRxIntervalMs'
          property :min_tx_interval_ms, as: 'minTxIntervalMs'
          property :multiplier, as: 'multiplier'
          property :multipoint, as: 'multipoint'
          property :my_discriminator, as: 'myDiscriminator'
          property :poll, as: 'poll'
          property :state, as: 'state'
          property :version, as: 'version'
          property :your_discriminator, as: 'yourDiscriminator'
        end
      end
      
      class BfdStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bfd_session_initialization_mode, as: 'bfdSessionInitializationMode'
          property :config_update_timestamp_micros, :numeric_string => true, as: 'configUpdateTimestampMicros'
          property :control_packet_counts, as: 'controlPacketCounts', class: Google::Apis::ComputeBeta::BfdStatusPacketCounts, decorator: Google::Apis::ComputeBeta::BfdStatusPacketCounts::Representation
      
          collection :control_packet_intervals, as: 'controlPacketIntervals', class: Google::Apis::ComputeBeta::PacketIntervals, decorator: Google::Apis::ComputeBeta::PacketIntervals::Representation
      
          property :local_diagnostic, as: 'localDiagnostic'
          property :local_state, as: 'localState'
          property :negotiated_local_control_tx_interval_ms, as: 'negotiatedLocalControlTxIntervalMs'
          property :rx_packet, as: 'rxPacket', class: Google::Apis::ComputeBeta::BfdPacket, decorator: Google::Apis::ComputeBeta::BfdPacket::Representation
      
          property :tx_packet, as: 'txPacket', class: Google::Apis::ComputeBeta::BfdPacket, decorator: Google::Apis::ComputeBeta::BfdPacket::Representation
      
          property :uptime_ms, :numeric_string => true, as: 'uptimeMs'
        end
      end
      
      class BfdStatusPacketCounts
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_rx, as: 'numRx'
          property :num_rx_rejected, as: 'numRxRejected'
          property :num_rx_successful, as: 'numRxSuccessful'
          property :num_tx, as: 'numTx'
        end
      end
      
      class BgpRoute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :as_paths, as: 'asPaths', class: Google::Apis::ComputeBeta::BgpRouteAsPath, decorator: Google::Apis::ComputeBeta::BgpRouteAsPath::Representation
      
          collection :communities, as: 'communities'
          property :destination, as: 'destination', class: Google::Apis::ComputeBeta::BgpRouteNetworkLayerReachabilityInformation, decorator: Google::Apis::ComputeBeta::BgpRouteNetworkLayerReachabilityInformation::Representation
      
          property :med, as: 'med'
          property :origin, as: 'origin'
        end
      end
      
      class BgpRouteAsPath
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :asns, as: 'asns'
          property :type, as: 'type'
        end
      end
      
      class BgpRouteNetworkLayerReachabilityInformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path_id, as: 'pathId'
          property :prefix, as: 'prefix'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::ComputeBeta::Expr, decorator: Google::Apis::ComputeBeta::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class BulkInsertDiskResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_consistency_group_policy, as: 'sourceConsistencyGroupPolicy'
        end
      end
      
      class BulkInsertInstanceResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :instance_properties, as: 'instanceProperties', class: Google::Apis::ComputeBeta::InstanceProperties, decorator: Google::Apis::ComputeBeta::InstanceProperties::Representation
      
          property :location_policy, as: 'locationPolicy', class: Google::Apis::ComputeBeta::LocationPolicy, decorator: Google::Apis::ComputeBeta::LocationPolicy::Representation
      
          property :min_count, :numeric_string => true, as: 'minCount'
          property :name_pattern, as: 'namePattern'
          hash :per_instance_properties, as: 'perInstanceProperties', class: Google::Apis::ComputeBeta::BulkInsertInstanceResourcePerInstanceProperties, decorator: Google::Apis::ComputeBeta::BulkInsertInstanceResourcePerInstanceProperties::Representation
      
          property :source_instance_template, as: 'sourceInstanceTemplate'
        end
      end
      
      class BulkInsertInstanceResourcePerInstanceProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hostname, as: 'hostname'
          property :name, as: 'name'
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
      
      class BulkSetLabelsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
        end
      end
      
      class BulkZoneSetLabelsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::ComputeBeta::BulkSetLabelsRequest, decorator: Google::Apis::ComputeBeta::BulkSetLabelsRequest::Representation
      
        end
      end
      
      class BundledLocalSsds
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_interface, as: 'defaultInterface'
          property :partition_count, as: 'partitionCount'
        end
      end
      
      class CacheInvalidationRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cache_tags, as: 'cacheTags'
          property :host, as: 'host'
          property :path, as: 'path'
        end
      end
      
      class CacheKeyPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_host, as: 'includeHost'
          collection :include_http_headers, as: 'includeHttpHeaders'
          collection :include_named_cookies, as: 'includeNamedCookies'
          property :include_protocol, as: 'includeProtocol'
          property :include_query_string, as: 'includeQueryString'
          collection :query_string_blacklist, as: 'queryStringBlacklist'
          collection :query_string_whitelist, as: 'queryStringWhitelist'
        end
      end
      
      class CalendarModeAdviceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :future_resources_specs, as: 'futureResourcesSpecs', class: Google::Apis::ComputeBeta::FutureResourcesSpec, decorator: Google::Apis::ComputeBeta::FutureResourcesSpec::Representation
      
        end
      end
      
      class CalendarModeAdviceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :recommendations, as: 'recommendations', class: Google::Apis::ComputeBeta::CalendarModeRecommendation, decorator: Google::Apis::ComputeBeta::CalendarModeRecommendation::Representation
      
        end
      end
      
      class CalendarModeRecommendation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :recommendations_per_spec, as: 'recommendationsPerSpec', class: Google::Apis::ComputeBeta::FutureResourcesRecommendation, decorator: Google::Apis::ComputeBeta::FutureResourcesRecommendation::Representation
      
        end
      end
      
      class CircuitBreakers
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connect_timeout, as: 'connectTimeout', class: Google::Apis::ComputeBeta::Duration, decorator: Google::Apis::ComputeBeta::Duration::Representation
      
          property :max_connections, as: 'maxConnections'
          property :max_pending_requests, as: 'maxPendingRequests'
          property :max_requests, as: 'maxRequests'
          property :max_requests_per_connection, as: 'maxRequestsPerConnection'
          property :max_retries, as: 'maxRetries'
        end
      end
      
      class Commitment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_renew, as: 'autoRenew'
          property :category, as: 'category'
          property :creation_timestamp, as: 'creationTimestamp'
          property :custom_end_timestamp, as: 'customEndTimestamp'
          property :description, as: 'description'
          property :end_timestamp, as: 'endTimestamp'
          collection :existing_reservations, as: 'existingReservations'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :license_resource, as: 'licenseResource', class: Google::Apis::ComputeBeta::LicenseResourceCommitment, decorator: Google::Apis::ComputeBeta::LicenseResourceCommitment::Representation
      
          collection :merge_source_commitments, as: 'mergeSourceCommitments'
          property :name, as: 'name'
          property :plan, as: 'plan'
          property :region, as: 'region'
          collection :reservations, as: 'reservations', class: Google::Apis::ComputeBeta::Reservation, decorator: Google::Apis::ComputeBeta::Reservation::Representation
      
          property :resource_status, as: 'resourceStatus', class: Google::Apis::ComputeBeta::CommitmentResourceStatus, decorator: Google::Apis::ComputeBeta::CommitmentResourceStatus::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::ComputeBeta::ResourceCommitment, decorator: Google::Apis::ComputeBeta::ResourceCommitment::Representation
      
          property :self_link, as: 'selfLink'
          property :split_source_commitment, as: 'splitSourceCommitment'
          property :start_timestamp, as: 'startTimestamp'
          property :status, as: 'status'
          property :status_message, as: 'statusMessage'
          property :type, as: 'type'
        end
      end
      
      class CommitmentAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::CommitmentsScopedList, decorator: Google::Apis::ComputeBeta::CommitmentsScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::CommitmentAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::CommitmentAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::CommitmentAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::CommitmentAggregatedList::Warning::Datum::Representation
        
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
      
      class CommitmentList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Commitment, decorator: Google::Apis::ComputeBeta::Commitment::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::CommitmentList::Warning, decorator: Google::Apis::ComputeBeta::CommitmentList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::CommitmentList::Warning::Datum, decorator: Google::Apis::ComputeBeta::CommitmentList::Warning::Datum::Representation
        
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
      
      class CommitmentResourceStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_term_eligibility_end_timestamp, as: 'customTermEligibilityEndTimestamp'
        end
      end
      
      class CommitmentsScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :commitments, as: 'commitments', class: Google::Apis::ComputeBeta::Commitment, decorator: Google::Apis::ComputeBeta::Commitment::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::CommitmentsScopedList::Warning, decorator: Google::Apis::ComputeBeta::CommitmentsScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::CommitmentsScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::CommitmentsScopedList::Warning::Datum::Representation
        
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
      
      class ConfidentialInstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidential_instance_type, as: 'confidentialInstanceType'
          property :enable_confidential_compute, as: 'enableConfidentialCompute'
        end
      end
      
      class ConnectionDraining
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :draining_timeout_sec, as: 'drainingTimeoutSec'
        end
      end
      
      class ConsistentHashLoadBalancerSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_cookie, as: 'httpCookie', class: Google::Apis::ComputeBeta::ConsistentHashLoadBalancerSettingsHttpCookie, decorator: Google::Apis::ComputeBeta::ConsistentHashLoadBalancerSettingsHttpCookie::Representation
      
          property :http_header_name, as: 'httpHeaderName'
          property :minimum_ring_size, :numeric_string => true, as: 'minimumRingSize'
        end
      end
      
      class ConsistentHashLoadBalancerSettingsHttpCookie
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :path, as: 'path'
          property :ttl, as: 'ttl', class: Google::Apis::ComputeBeta::Duration, decorator: Google::Apis::ComputeBeta::Duration::Representation
      
        end
      end
      
      class CorsPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_credentials, as: 'allowCredentials'
          collection :allow_headers, as: 'allowHeaders'
          collection :allow_methods, as: 'allowMethods'
          collection :allow_origin_regexes, as: 'allowOriginRegexes'
          collection :allow_origins, as: 'allowOrigins'
          property :disabled, as: 'disabled'
          collection :expose_headers, as: 'exposeHeaders'
          property :max_age, as: 'maxAge'
        end
      end
      
      class CrossSiteNetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
        end
      end
      
      class CrossSiteNetworkList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::CrossSiteNetwork, decorator: Google::Apis::ComputeBeta::CrossSiteNetwork::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::CrossSiteNetworkList::Warning, decorator: Google::Apis::ComputeBeta::CrossSiteNetworkList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::CrossSiteNetworkList::Warning::Datum, decorator: Google::Apis::ComputeBeta::CrossSiteNetworkList::Warning::Datum::Representation
        
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
      
      class CustomErrorResponsePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_response_rules, as: 'errorResponseRules', class: Google::Apis::ComputeBeta::CustomErrorResponsePolicyCustomErrorResponseRule, decorator: Google::Apis::ComputeBeta::CustomErrorResponsePolicyCustomErrorResponseRule::Representation
      
          property :error_service, as: 'errorService'
        end
      end
      
      class CustomErrorResponsePolicyCustomErrorResponseRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :match_response_codes, as: 'matchResponseCodes'
          property :override_response_code, as: 'overrideResponseCode'
          property :path, as: 'path'
        end
      end
      
      class CustomerEncryptionKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
          property :kms_key_service_account, as: 'kmsKeyServiceAccount'
          property :raw_key, as: 'rawKey'
          property :rsa_encrypted_key, as: 'rsaEncryptedKey'
          property :sha256, as: 'sha256'
        end
      end
      
      class CustomerEncryptionKeyProtectedDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_encryption_key, as: 'diskEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :source, as: 'source'
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
      
      class DeprecationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deleted, as: 'deleted'
          property :deprecated, as: 'deprecated'
          property :obsolete, as: 'obsolete'
          property :replacement, as: 'replacement'
          property :state, as: 'state'
          property :state_override, as: 'stateOverride', class: Google::Apis::ComputeBeta::RolloutPolicy, decorator: Google::Apis::ComputeBeta::RolloutPolicy::Representation
      
        end
      end
      
      class Disk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_mode, as: 'accessMode'
          property :architecture, as: 'architecture'
          property :async_primary_disk, as: 'asyncPrimaryDisk', class: Google::Apis::ComputeBeta::DiskAsyncReplication, decorator: Google::Apis::ComputeBeta::DiskAsyncReplication::Representation
      
          hash :async_secondary_disks, as: 'asyncSecondaryDisks', class: Google::Apis::ComputeBeta::DiskAsyncReplicationList, decorator: Google::Apis::ComputeBeta::DiskAsyncReplicationList::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :disk_encryption_key, as: 'diskEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :enable_confidential_compute, as: 'enableConfidentialCompute'
          property :erase_windows_vss_signature, as: 'eraseWindowsVssSignature'
          collection :guest_os_features, as: 'guestOsFeatures', class: Google::Apis::ComputeBeta::GuestOsFeature, decorator: Google::Apis::ComputeBeta::GuestOsFeature::Representation
      
          property :id, :numeric_string => true, as: 'id'
          property :interface, as: 'interface'
          property :kind, as: 'kind'
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
          property :last_attach_timestamp, as: 'lastAttachTimestamp'
          property :last_detach_timestamp, as: 'lastDetachTimestamp'
          collection :license_codes, as: 'licenseCodes'
          collection :licenses, as: 'licenses'
          property :location_hint, as: 'locationHint'
          property :locked, as: 'locked'
          property :multi_writer, as: 'multiWriter'
          property :name, as: 'name'
          property :options, as: 'options'
          property :params, as: 'params', class: Google::Apis::ComputeBeta::DiskParams, decorator: Google::Apis::ComputeBeta::DiskParams::Representation
      
          property :physical_block_size_bytes, :numeric_string => true, as: 'physicalBlockSizeBytes'
          property :provisioned_iops, :numeric_string => true, as: 'provisionedIops'
          property :provisioned_throughput, :numeric_string => true, as: 'provisionedThroughput'
          property :region, as: 'region'
          collection :replica_zones, as: 'replicaZones'
          collection :resource_policies, as: 'resourcePolicies'
          property :resource_status, as: 'resourceStatus', class: Google::Apis::ComputeBeta::DiskResourceStatus, decorator: Google::Apis::ComputeBeta::DiskResourceStatus::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :self_link, as: 'selfLink'
          property :size_gb, :numeric_string => true, as: 'sizeGb'
          property :source_consistency_group_policy, as: 'sourceConsistencyGroupPolicy'
          property :source_consistency_group_policy_id, as: 'sourceConsistencyGroupPolicyId'
          property :source_disk, as: 'sourceDisk'
          property :source_disk_id, as: 'sourceDiskId'
          property :source_image, as: 'sourceImage'
          property :source_image_encryption_key, as: 'sourceImageEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :source_image_id, as: 'sourceImageId'
          property :source_instant_snapshot, as: 'sourceInstantSnapshot'
          property :source_instant_snapshot_id, as: 'sourceInstantSnapshotId'
          property :source_snapshot, as: 'sourceSnapshot'
          property :source_snapshot_encryption_key, as: 'sourceSnapshotEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :source_snapshot_id, as: 'sourceSnapshotId'
          property :source_storage_object, as: 'sourceStorageObject'
          property :status, as: 'status'
          property :storage_pool, as: 'storagePool'
          property :storage_type, as: 'storageType'
          property :type, as: 'type'
          collection :user_licenses, as: 'userLicenses'
          collection :users, as: 'users'
          property :zone, as: 'zone'
        end
      end
      
      class DiskAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::DisksScopedList, decorator: Google::Apis::ComputeBeta::DisksScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::DiskAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::DiskAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::DiskAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::DiskAggregatedList::Warning::Datum::Representation
        
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
      
      class DiskAsyncReplication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consistency_group_policy, as: 'consistencyGroupPolicy'
          property :consistency_group_policy_id, as: 'consistencyGroupPolicyId'
          property :disk, as: 'disk'
          property :disk_id, as: 'diskId'
        end
      end
      
      class DiskAsyncReplicationList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :async_replication_disk, as: 'asyncReplicationDisk', class: Google::Apis::ComputeBeta::DiskAsyncReplication, decorator: Google::Apis::ComputeBeta::DiskAsyncReplication::Representation
      
        end
      end
      
      class DiskInstantiationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_delete, as: 'autoDelete'
          property :custom_image, as: 'customImage'
          property :device_name, as: 'deviceName'
          property :instantiate_from, as: 'instantiateFrom'
        end
      end
      
      class DiskList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Disk, decorator: Google::Apis::ComputeBeta::Disk::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::DiskList::Warning, decorator: Google::Apis::ComputeBeta::DiskList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::DiskList::Warning::Datum, decorator: Google::Apis::ComputeBeta::DiskList::Warning::Datum::Representation
        
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
      
      class DiskMoveRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_zone, as: 'destinationZone'
          property :target_disk, as: 'targetDisk'
        end
      end
      
      class DiskParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :resource_manager_tags, as: 'resourceManagerTags'
        end
      end
      
      class DiskResourceStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :async_primary_disk, as: 'asyncPrimaryDisk', class: Google::Apis::ComputeBeta::DiskResourceStatusAsyncReplicationStatus, decorator: Google::Apis::ComputeBeta::DiskResourceStatusAsyncReplicationStatus::Representation
      
          hash :async_secondary_disks, as: 'asyncSecondaryDisks', class: Google::Apis::ComputeBeta::DiskResourceStatusAsyncReplicationStatus, decorator: Google::Apis::ComputeBeta::DiskResourceStatusAsyncReplicationStatus::Representation
      
        end
      end
      
      class DiskResourceStatusAsyncReplicationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
        end
      end
      
      class DiskSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_location, as: 'accessLocation', class: Google::Apis::ComputeBeta::DiskSettingsAccessLocation, decorator: Google::Apis::ComputeBeta::DiskSettingsAccessLocation::Representation
      
        end
      end
      
      class DiskSettingsAccessLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :locations, as: 'locations', class: Google::Apis::ComputeBeta::DiskSettingsAccessLocationAccessLocationPreference, decorator: Google::Apis::ComputeBeta::DiskSettingsAccessLocationAccessLocationPreference::Representation
      
          property :policy, as: 'policy'
        end
      end
      
      class DiskSettingsAccessLocationAccessLocationPreference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :region, as: 'region'
        end
      end
      
      class DiskType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :default_disk_size_gb, :numeric_string => true, as: 'defaultDiskSizeGb'
          property :deprecated, as: 'deprecated', class: Google::Apis::ComputeBeta::DeprecationStatus, decorator: Google::Apis::ComputeBeta::DeprecationStatus::Representation
      
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :valid_disk_size, as: 'validDiskSize'
          property :zone, as: 'zone'
        end
      end
      
      class DiskTypeAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::DiskTypesScopedList, decorator: Google::Apis::ComputeBeta::DiskTypesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::DiskTypeAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::DiskTypeAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::DiskTypeAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::DiskTypeAggregatedList::Warning::Datum::Representation
        
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
      
      class DiskTypeList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::DiskType, decorator: Google::Apis::ComputeBeta::DiskType::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::DiskTypeList::Warning, decorator: Google::Apis::ComputeBeta::DiskTypeList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::DiskTypeList::Warning::Datum, decorator: Google::Apis::ComputeBeta::DiskTypeList::Warning::Datum::Representation
        
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
      
      class DiskTypesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :disk_types, as: 'diskTypes', class: Google::Apis::ComputeBeta::DiskType, decorator: Google::Apis::ComputeBeta::DiskType::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::DiskTypesScopedList::Warning, decorator: Google::Apis::ComputeBeta::DiskTypesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::DiskTypesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::DiskTypesScopedList::Warning::Datum::Representation
        
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
      
      class DisksAddResourcePoliciesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resource_policies, as: 'resourcePolicies'
        end
      end
      
      class DisksRemoveResourcePoliciesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resource_policies, as: 'resourcePolicies'
        end
      end
      
      class DisksResizeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :size_gb, :numeric_string => true, as: 'sizeGb'
        end
      end
      
      class DisksScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :disks, as: 'disks', class: Google::Apis::ComputeBeta::Disk, decorator: Google::Apis::ComputeBeta::Disk::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::DisksScopedList::Warning, decorator: Google::Apis::ComputeBeta::DisksScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::DisksScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::DisksScopedList::Warning::Datum::Representation
        
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
      
      class DisksStartAsyncReplicationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :async_secondary_disk, as: 'asyncSecondaryDisk'
        end
      end
      
      class DisksStopGroupAsyncReplicationResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_policy, as: 'resourcePolicy'
        end
      end
      
      class DisplayDevice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_display, as: 'enableDisplay'
        end
      end
      
      class DistributionPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_shape, as: 'targetShape'
          collection :zones, as: 'zones', class: Google::Apis::ComputeBeta::DistributionPolicyZoneConfiguration, decorator: Google::Apis::ComputeBeta::DistributionPolicyZoneConfiguration::Representation
      
        end
      end
      
      class DistributionPolicyZoneConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :zone, as: 'zone'
        end
      end
      
      class Duration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :nanos, as: 'nanos'
          property :seconds, :numeric_string => true, as: 'seconds'
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
      
      class ExchangedPeeringRoute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dest_range, as: 'destRange'
          property :imported, as: 'imported'
          property :next_hop_region, as: 'nextHopRegion'
          property :priority, as: 'priority'
          property :type, as: 'type'
        end
      end
      
      class ExchangedPeeringRoutesList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::ExchangedPeeringRoute, decorator: Google::Apis::ComputeBeta::ExchangedPeeringRoute::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::ExchangedPeeringRoutesList::Warning, decorator: Google::Apis::ComputeBeta::ExchangedPeeringRoutesList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::ExchangedPeeringRoutesList::Warning::Datum, decorator: Google::Apis::ComputeBeta::ExchangedPeeringRoutesList::Warning::Datum::Representation
        
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
      
      class Expr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class ExternalVpnGateway
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          collection :interfaces, as: 'interfaces', class: Google::Apis::ComputeBeta::ExternalVpnGatewayInterface, decorator: Google::Apis::ComputeBeta::ExternalVpnGatewayInterface::Representation
      
          property :kind, as: 'kind'
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :redundancy_type, as: 'redundancyType'
          property :self_link, as: 'selfLink'
        end
      end
      
      class ExternalVpnGatewayInterface
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :ip_address, as: 'ipAddress'
          property :ipv6_address, as: 'ipv6Address'
        end
      end
      
      class ExternalVpnGatewayList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::ExternalVpnGateway, decorator: Google::Apis::ComputeBeta::ExternalVpnGateway::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::ExternalVpnGatewayList::Warning, decorator: Google::Apis::ComputeBeta::ExternalVpnGatewayList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::ExternalVpnGatewayList::Warning::Datum, decorator: Google::Apis::ComputeBeta::ExternalVpnGatewayList::Warning::Datum::Representation
        
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
      
      class FileContentBuffer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
          property :file_type, as: 'fileType'
        end
      end
      
      class Firewall
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed, as: 'allowed', class: Google::Apis::ComputeBeta::Firewall::Allowed, decorator: Google::Apis::ComputeBeta::Firewall::Allowed::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          collection :denied, as: 'denied', class: Google::Apis::ComputeBeta::Firewall::Denied, decorator: Google::Apis::ComputeBeta::Firewall::Denied::Representation
      
          property :description, as: 'description'
          collection :destination_ranges, as: 'destinationRanges'
          property :direction, as: 'direction'
          property :disabled, as: 'disabled'
          property :enable_logging, as: 'enableLogging'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :log_config, as: 'logConfig', class: Google::Apis::ComputeBeta::FirewallLogConfig, decorator: Google::Apis::ComputeBeta::FirewallLogConfig::Representation
      
          property :name, as: 'name'
          property :network, as: 'network'
          property :params, as: 'params', class: Google::Apis::ComputeBeta::FirewallParams, decorator: Google::Apis::ComputeBeta::FirewallParams::Representation
      
          property :priority, as: 'priority'
          property :self_link, as: 'selfLink'
          collection :source_ranges, as: 'sourceRanges'
          collection :source_service_accounts, as: 'sourceServiceAccounts'
          collection :source_tags, as: 'sourceTags'
          collection :target_service_accounts, as: 'targetServiceAccounts'
          collection :target_tags, as: 'targetTags'
        end
        
        class Allowed
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :ip_protocol, as: 'IPProtocol'
            collection :ports, as: 'ports'
          end
        end
        
        class Denied
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :ip_protocol, as: 'IPProtocol'
            collection :ports, as: 'ports'
          end
        end
      end
      
      class FirewallList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Firewall, decorator: Google::Apis::ComputeBeta::Firewall::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::FirewallList::Warning, decorator: Google::Apis::ComputeBeta::FirewallList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::FirewallList::Warning::Datum, decorator: Google::Apis::ComputeBeta::FirewallList::Warning::Datum::Representation
        
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
      
      class FirewallLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable, as: 'enable'
          property :metadata, as: 'metadata'
        end
      end
      
      class FirewallParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :resource_manager_tags, as: 'resourceManagerTags'
        end
      end
      
      class FirewallPoliciesListAssociationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :associations, as: 'associations', class: Google::Apis::ComputeBeta::FirewallPolicyAssociation, decorator: Google::Apis::ComputeBeta::FirewallPolicyAssociation::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class FirewallPoliciesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :firewall_policies, as: 'firewallPolicies', class: Google::Apis::ComputeBeta::FirewallPolicy, decorator: Google::Apis::ComputeBeta::FirewallPolicy::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::FirewallPoliciesScopedList::Warning, decorator: Google::Apis::ComputeBeta::FirewallPoliciesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::FirewallPoliciesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::FirewallPoliciesScopedList::Warning::Datum::Representation
        
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
      
      class FirewallPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :associations, as: 'associations', class: Google::Apis::ComputeBeta::FirewallPolicyAssociation, decorator: Google::Apis::ComputeBeta::FirewallPolicyAssociation::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          collection :packet_mirroring_rules, as: 'packetMirroringRules', class: Google::Apis::ComputeBeta::FirewallPolicyRule, decorator: Google::Apis::ComputeBeta::FirewallPolicyRule::Representation
      
          property :parent, as: 'parent'
          property :policy_type, as: 'policyType'
          property :region, as: 'region'
          property :rule_tuple_count, as: 'ruleTupleCount'
          collection :rules, as: 'rules', class: Google::Apis::ComputeBeta::FirewallPolicyRule, decorator: Google::Apis::ComputeBeta::FirewallPolicyRule::Representation
      
          property :self_link, as: 'selfLink'
          property :self_link_with_id, as: 'selfLinkWithId'
          property :short_name, as: 'shortName'
        end
      end
      
      class FirewallPolicyAssociation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attachment_target, as: 'attachmentTarget'
          property :display_name, as: 'displayName'
          property :firewall_policy_id, as: 'firewallPolicyId'
          property :name, as: 'name'
          property :priority, as: 'priority'
          property :short_name, as: 'shortName'
        end
      end
      
      class FirewallPolicyList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::FirewallPolicy, decorator: Google::Apis::ComputeBeta::FirewallPolicy::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::FirewallPolicyList::Warning, decorator: Google::Apis::ComputeBeta::FirewallPolicyList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::FirewallPolicyList::Warning::Datum, decorator: Google::Apis::ComputeBeta::FirewallPolicyList::Warning::Datum::Representation
        
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
      
      class FirewallPolicyRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :description, as: 'description'
          property :direction, as: 'direction'
          property :disabled, as: 'disabled'
          property :enable_logging, as: 'enableLogging'
          property :kind, as: 'kind'
          property :match, as: 'match', class: Google::Apis::ComputeBeta::FirewallPolicyRuleMatcher, decorator: Google::Apis::ComputeBeta::FirewallPolicyRuleMatcher::Representation
      
          property :priority, as: 'priority'
          property :rule_name, as: 'ruleName'
          property :rule_tuple_count, as: 'ruleTupleCount'
          property :security_profile_group, as: 'securityProfileGroup'
          collection :target_resources, as: 'targetResources'
          collection :target_secure_tags, as: 'targetSecureTags', class: Google::Apis::ComputeBeta::FirewallPolicyRuleSecureTag, decorator: Google::Apis::ComputeBeta::FirewallPolicyRuleSecureTag::Representation
      
          collection :target_service_accounts, as: 'targetServiceAccounts'
          property :tls_inspect, as: 'tlsInspect'
        end
      end
      
      class FirewallPolicyRuleMatcher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dest_address_groups, as: 'destAddressGroups'
          collection :dest_fqdns, as: 'destFqdns'
          collection :dest_ip_ranges, as: 'destIpRanges'
          property :dest_network_scope, as: 'destNetworkScope'
          property :dest_network_type, as: 'destNetworkType'
          collection :dest_region_codes, as: 'destRegionCodes'
          collection :dest_threat_intelligences, as: 'destThreatIntelligences'
          collection :layer4_configs, as: 'layer4Configs', class: Google::Apis::ComputeBeta::FirewallPolicyRuleMatcherLayer4Config, decorator: Google::Apis::ComputeBeta::FirewallPolicyRuleMatcherLayer4Config::Representation
      
          collection :src_address_groups, as: 'srcAddressGroups'
          collection :src_fqdns, as: 'srcFqdns'
          collection :src_ip_ranges, as: 'srcIpRanges'
          property :src_network_scope, as: 'srcNetworkScope'
          property :src_network_type, as: 'srcNetworkType'
          collection :src_networks, as: 'srcNetworks'
          collection :src_region_codes, as: 'srcRegionCodes'
          collection :src_secure_tags, as: 'srcSecureTags', class: Google::Apis::ComputeBeta::FirewallPolicyRuleSecureTag, decorator: Google::Apis::ComputeBeta::FirewallPolicyRuleSecureTag::Representation
      
          collection :src_threat_intelligences, as: 'srcThreatIntelligences'
        end
      end
      
      class FirewallPolicyRuleMatcherLayer4Config
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_protocol, as: 'ipProtocol'
          collection :ports, as: 'ports'
        end
      end
      
      class FirewallPolicyRuleSecureTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class FixedOrPercent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :calculated, as: 'calculated'
          property :fixed, as: 'fixed'
          property :percent, as: 'percent'
        end
      end
      
      class FlexibleTimeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time_not_earlier_than, as: 'endTimeNotEarlierThan'
          property :end_time_not_later_than, as: 'endTimeNotLaterThan'
          property :max_duration, as: 'maxDuration'
          property :min_duration, as: 'minDuration'
          property :start_time_not_earlier_than, as: 'startTimeNotEarlierThan'
          property :start_time_not_later_than, as: 'startTimeNotLaterThan'
        end
      end
      
      class ForwardingRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_address, as: 'IPAddress'
          property :ip_protocol, as: 'IPProtocol'
          property :all_ports, as: 'allPorts'
          property :allow_global_access, as: 'allowGlobalAccess'
          property :allow_psc_global_access, as: 'allowPscGlobalAccess'
          property :allow_psc_packet_injection, as: 'allowPscPacketInjection'
          property :backend_service, as: 'backendService'
          property :base_forwarding_rule, as: 'baseForwardingRule'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :external_managed_backend_bucket_migration_state, as: 'externalManagedBackendBucketMigrationState'
          property :external_managed_backend_bucket_migration_testing_percentage, as: 'externalManagedBackendBucketMigrationTestingPercentage'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :id, :numeric_string => true, as: 'id'
          property :ip_collection, as: 'ipCollection'
          property :ip_version, as: 'ipVersion'
          property :is_mirroring_collector, as: 'isMirroringCollector'
          property :kind, as: 'kind'
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
          property :load_balancing_scheme, as: 'loadBalancingScheme'
          collection :metadata_filters, as: 'metadataFilters', class: Google::Apis::ComputeBeta::MetadataFilter, decorator: Google::Apis::ComputeBeta::MetadataFilter::Representation
      
          property :name, as: 'name'
          property :network, as: 'network'
          property :network_tier, as: 'networkTier'
          property :no_automate_dns_zone, as: 'noAutomateDnsZone'
          property :port_range, as: 'portRange'
          collection :ports, as: 'ports'
          property :psc_connection_id, :numeric_string => true, as: 'pscConnectionId'
          property :psc_connection_status, as: 'pscConnectionStatus'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :self_link_with_id, as: 'selfLinkWithId'
          collection :service_directory_registrations, as: 'serviceDirectoryRegistrations', class: Google::Apis::ComputeBeta::ForwardingRuleServiceDirectoryRegistration, decorator: Google::Apis::ComputeBeta::ForwardingRuleServiceDirectoryRegistration::Representation
      
          property :service_label, as: 'serviceLabel'
          property :service_name, as: 'serviceName'
          collection :source_ip_ranges, as: 'sourceIpRanges'
          property :subnetwork, as: 'subnetwork'
          property :target, as: 'target'
        end
      end
      
      class ForwardingRuleAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::ForwardingRulesScopedList, decorator: Google::Apis::ComputeBeta::ForwardingRulesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::ForwardingRuleAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::ForwardingRuleAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::ForwardingRuleAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::ForwardingRuleAggregatedList::Warning::Datum::Representation
        
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
      
      class ForwardingRuleList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::ForwardingRule, decorator: Google::Apis::ComputeBeta::ForwardingRule::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::ForwardingRuleList::Warning, decorator: Google::Apis::ComputeBeta::ForwardingRuleList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::ForwardingRuleList::Warning::Datum, decorator: Google::Apis::ComputeBeta::ForwardingRuleList::Warning::Datum::Representation
        
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
      
      class ForwardingRuleReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :forwarding_rule, as: 'forwardingRule'
        end
      end
      
      class ForwardingRuleServiceDirectoryRegistration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :namespace, as: 'namespace'
          property :service, as: 'service'
          property :service_directory_region, as: 'serviceDirectoryRegion'
        end
      end
      
      class ForwardingRulesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :forwarding_rules, as: 'forwardingRules', class: Google::Apis::ComputeBeta::ForwardingRule, decorator: Google::Apis::ComputeBeta::ForwardingRule::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::ForwardingRulesScopedList::Warning, decorator: Google::Apis::ComputeBeta::ForwardingRulesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::ForwardingRulesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::ForwardingRulesScopedList::Warning::Datum::Representation
        
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
      
      class FutureReservation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregate_reservation, as: 'aggregateReservation', class: Google::Apis::ComputeBeta::AllocationAggregateReservation, decorator: Google::Apis::ComputeBeta::AllocationAggregateReservation::Representation
      
          property :auto_created_reservations_delete_time, as: 'autoCreatedReservationsDeleteTime'
          property :auto_created_reservations_duration, as: 'autoCreatedReservationsDuration', class: Google::Apis::ComputeBeta::Duration, decorator: Google::Apis::ComputeBeta::Duration::Representation
      
          property :auto_delete_auto_created_reservations, as: 'autoDeleteAutoCreatedReservations'
          property :commitment_info, as: 'commitmentInfo', class: Google::Apis::ComputeBeta::FutureReservationCommitmentInfo, decorator: Google::Apis::ComputeBeta::FutureReservationCommitmentInfo::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          property :deployment_type, as: 'deploymentType'
          property :description, as: 'description'
          property :enable_emergent_maintenance, as: 'enableEmergentMaintenance'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :name_prefix, as: 'namePrefix'
          property :planning_status, as: 'planningStatus'
          property :reservation_mode, as: 'reservationMode'
          property :reservation_name, as: 'reservationName'
          property :scheduling_type, as: 'schedulingType'
          property :self_link, as: 'selfLink'
          property :self_link_with_id, as: 'selfLinkWithId'
          property :share_settings, as: 'shareSettings', class: Google::Apis::ComputeBeta::ShareSettings, decorator: Google::Apis::ComputeBeta::ShareSettings::Representation
      
          property :specific_reservation_required, as: 'specificReservationRequired'
          property :specific_sku_properties, as: 'specificSkuProperties', class: Google::Apis::ComputeBeta::FutureReservationSpecificSkuProperties, decorator: Google::Apis::ComputeBeta::FutureReservationSpecificSkuProperties::Representation
      
          property :status, as: 'status', class: Google::Apis::ComputeBeta::FutureReservationStatus, decorator: Google::Apis::ComputeBeta::FutureReservationStatus::Representation
      
          property :time_window, as: 'timeWindow', class: Google::Apis::ComputeBeta::FutureReservationTimeWindow, decorator: Google::Apis::ComputeBeta::FutureReservationTimeWindow::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class FutureReservationCommitmentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commitment_name, as: 'commitmentName'
          property :commitment_plan, as: 'commitmentPlan'
          property :previous_commitment_terms, as: 'previousCommitmentTerms'
        end
      end
      
      class FutureReservationSpecificSkuProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_properties, as: 'instanceProperties', class: Google::Apis::ComputeBeta::AllocationSpecificSkuAllocationReservedInstanceProperties, decorator: Google::Apis::ComputeBeta::AllocationSpecificSkuAllocationReservedInstanceProperties::Representation
      
          property :source_instance_template, as: 'sourceInstanceTemplate'
          property :total_count, :numeric_string => true, as: 'totalCount'
        end
      end
      
      class FutureReservationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amendment_status, as: 'amendmentStatus'
          collection :auto_created_reservations, as: 'autoCreatedReservations'
          property :existing_matching_usage_info, as: 'existingMatchingUsageInfo', class: Google::Apis::ComputeBeta::FutureReservationStatusExistingMatchingUsageInfo, decorator: Google::Apis::ComputeBeta::FutureReservationStatusExistingMatchingUsageInfo::Representation
      
          property :fulfilled_count, :numeric_string => true, as: 'fulfilledCount'
          property :last_known_good_state, as: 'lastKnownGoodState', class: Google::Apis::ComputeBeta::FutureReservationStatusLastKnownGoodState, decorator: Google::Apis::ComputeBeta::FutureReservationStatusLastKnownGoodState::Representation
      
          property :lock_time, as: 'lockTime'
          property :procurement_status, as: 'procurementStatus'
          property :specific_sku_properties, as: 'specificSkuProperties', class: Google::Apis::ComputeBeta::FutureReservationStatusSpecificSkuProperties, decorator: Google::Apis::ComputeBeta::FutureReservationStatusSpecificSkuProperties::Representation
      
        end
      end
      
      class FutureReservationStatusExistingMatchingUsageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :timestamp, as: 'timestamp'
        end
      end
      
      class FutureReservationStatusLastKnownGoodState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :existing_matching_usage_info, as: 'existingMatchingUsageInfo', class: Google::Apis::ComputeBeta::FutureReservationStatusExistingMatchingUsageInfo, decorator: Google::Apis::ComputeBeta::FutureReservationStatusExistingMatchingUsageInfo::Representation
      
          property :future_reservation_specs, as: 'futureReservationSpecs', class: Google::Apis::ComputeBeta::FutureReservationStatusLastKnownGoodStateFutureReservationSpecs, decorator: Google::Apis::ComputeBeta::FutureReservationStatusLastKnownGoodStateFutureReservationSpecs::Representation
      
          property :lock_time, as: 'lockTime'
          property :name_prefix, as: 'namePrefix'
          property :procurement_status, as: 'procurementStatus'
        end
      end
      
      class FutureReservationStatusLastKnownGoodStateFutureReservationSpecs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :share_settings, as: 'shareSettings', class: Google::Apis::ComputeBeta::ShareSettings, decorator: Google::Apis::ComputeBeta::ShareSettings::Representation
      
          property :specific_sku_properties, as: 'specificSkuProperties', class: Google::Apis::ComputeBeta::FutureReservationSpecificSkuProperties, decorator: Google::Apis::ComputeBeta::FutureReservationSpecificSkuProperties::Representation
      
          property :time_window, as: 'timeWindow', class: Google::Apis::ComputeBeta::FutureReservationTimeWindow, decorator: Google::Apis::ComputeBeta::FutureReservationTimeWindow::Representation
      
        end
      end
      
      class FutureReservationStatusSpecificSkuProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_instance_template_id, as: 'sourceInstanceTemplateId'
        end
      end
      
      class FutureReservationTimeWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration', class: Google::Apis::ComputeBeta::Duration, decorator: Google::Apis::ComputeBeta::Duration::Representation
      
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class FutureReservationsAggregatedListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::FutureReservationsScopedList, decorator: Google::Apis::ComputeBeta::FutureReservationsScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::FutureReservationsAggregatedListResponse::Warning, decorator: Google::Apis::ComputeBeta::FutureReservationsAggregatedListResponse::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::FutureReservationsAggregatedListResponse::Warning::Datum, decorator: Google::Apis::ComputeBeta::FutureReservationsAggregatedListResponse::Warning::Datum::Representation
        
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
      
      class FutureReservationsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::FutureReservation, decorator: Google::Apis::ComputeBeta::FutureReservation::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::FutureReservationsListResponse::Warning, decorator: Google::Apis::ComputeBeta::FutureReservationsListResponse::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::FutureReservationsListResponse::Warning::Datum, decorator: Google::Apis::ComputeBeta::FutureReservationsListResponse::Warning::Datum::Representation
        
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
      
      class FutureReservationsScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :future_reservations, as: 'futureReservations', class: Google::Apis::ComputeBeta::FutureReservation, decorator: Google::Apis::ComputeBeta::FutureReservation::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::FutureReservationsScopedList::Warning, decorator: Google::Apis::ComputeBeta::FutureReservationsScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::FutureReservationsScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::FutureReservationsScopedList::Warning::Datum::Representation
        
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
      
      class FutureResourcesRecommendation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :location, as: 'location'
          hash :other_locations, as: 'otherLocations', class: Google::Apis::ComputeBeta::FutureResourcesRecommendationOtherLocation, decorator: Google::Apis::ComputeBeta::FutureResourcesRecommendationOtherLocation::Representation
      
          property :recommendation_id, as: 'recommendationId'
          property :recommendation_type, as: 'recommendationType'
          property :start_time, as: 'startTime'
        end
      end
      
      class FutureResourcesRecommendationOtherLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :details, as: 'details'
          property :status, as: 'status'
        end
      end
      
      class FutureResourcesSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment_type, as: 'deploymentType'
          property :location_policy, as: 'locationPolicy', class: Google::Apis::ComputeBeta::FutureResourcesSpecLocationPolicy, decorator: Google::Apis::ComputeBeta::FutureResourcesSpecLocationPolicy::Representation
      
          property :target_resources, as: 'targetResources', class: Google::Apis::ComputeBeta::FutureResourcesSpecTargetResources, decorator: Google::Apis::ComputeBeta::FutureResourcesSpecTargetResources::Representation
      
          property :time_range_spec, as: 'timeRangeSpec', class: Google::Apis::ComputeBeta::FlexibleTimeRange, decorator: Google::Apis::ComputeBeta::FlexibleTimeRange::Representation
      
        end
      end
      
      class FutureResourcesSpecAggregateResources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accelerator_count, :numeric_string => true, as: 'acceleratorCount'
          property :vm_family, as: 'vmFamily'
          property :workload_type, as: 'workloadType'
        end
      end
      
      class FutureResourcesSpecLocalSsdPartition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_interface, as: 'diskInterface'
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
        end
      end
      
      class FutureResourcesSpecLocationPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :locations, as: 'locations', class: Google::Apis::ComputeBeta::FutureResourcesSpecLocationPolicyLocation, decorator: Google::Apis::ComputeBeta::FutureResourcesSpecLocationPolicyLocation::Representation
      
        end
      end
      
      class FutureResourcesSpecLocationPolicyLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :preference, as: 'preference'
        end
      end
      
      class FutureResourcesSpecSpecificSkuResources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_count, :numeric_string => true, as: 'instanceCount'
          collection :local_ssd_partitions, as: 'localSsdPartitions', class: Google::Apis::ComputeBeta::FutureResourcesSpecLocalSsdPartition, decorator: Google::Apis::ComputeBeta::FutureResourcesSpecLocalSsdPartition::Representation
      
          property :machine_type, as: 'machineType'
        end
      end
      
      class FutureResourcesSpecTargetResources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregate_resources, as: 'aggregateResources', class: Google::Apis::ComputeBeta::FutureResourcesSpecAggregateResources, decorator: Google::Apis::ComputeBeta::FutureResourcesSpecAggregateResources::Representation
      
          property :specific_sku_resources, as: 'specificSkuResources', class: Google::Apis::ComputeBeta::FutureResourcesSpecSpecificSkuResources, decorator: Google::Apis::ComputeBeta::FutureResourcesSpecSpecificSkuResources::Representation
      
        end
      end
      
      class GrpcHealthCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :grpc_service_name, as: 'grpcServiceName'
          property :port, as: 'port'
          property :port_name, as: 'portName'
          property :port_specification, as: 'portSpecification'
        end
      end
      
      class GrpctlsHealthCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :grpc_service_name, as: 'grpcServiceName'
          property :port, as: 'port'
          property :port_specification, as: 'portSpecification'
        end
      end
      
      class GlobalAddressesMoveRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :destination_address, as: 'destinationAddress'
        end
      end
      
      class GlobalNetworkEndpointGroupsAttachEndpointsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :network_endpoints, as: 'networkEndpoints', class: Google::Apis::ComputeBeta::NetworkEndpoint, decorator: Google::Apis::ComputeBeta::NetworkEndpoint::Representation
      
        end
      end
      
      class GlobalNetworkEndpointGroupsDetachEndpointsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :network_endpoints, as: 'networkEndpoints', class: Google::Apis::ComputeBeta::NetworkEndpoint, decorator: Google::Apis::ComputeBeta::NetworkEndpoint::Representation
      
        end
      end
      
      class GlobalOrganizationSetPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::ComputeBeta::Binding, decorator: Google::Apis::ComputeBeta::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :policy, as: 'policy', class: Google::Apis::ComputeBeta::Policy, decorator: Google::Apis::ComputeBeta::Policy::Representation
      
        end
      end
      
      class GlobalSetLabelsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
        end
      end
      
      class GlobalSetPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::ComputeBeta::Binding, decorator: Google::Apis::ComputeBeta::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :policy, as: 'policy', class: Google::Apis::ComputeBeta::Policy, decorator: Google::Apis::ComputeBeta::Policy::Representation
      
        end
      end
      
      class GroupMaintenanceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_maintenance_ongoing_count, as: 'instanceMaintenanceOngoingCount'
          property :instance_maintenance_pending_count, as: 'instanceMaintenancePendingCount'
          property :maintenance_ongoing_count, as: 'maintenanceOngoingCount'
          property :maintenance_pending_count, as: 'maintenancePendingCount'
          property :scheduling_type, as: 'schedulingType'
          property :subblock_infra_maintenance_ongoing_count, as: 'subblockInfraMaintenanceOngoingCount'
          property :subblock_infra_maintenance_pending_count, as: 'subblockInfraMaintenancePendingCount'
          property :upcoming_group_maintenance, as: 'upcomingGroupMaintenance', class: Google::Apis::ComputeBeta::UpcomingMaintenance, decorator: Google::Apis::ComputeBeta::UpcomingMaintenance::Representation
      
        end
      end
      
      class GuestAttributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :query_path, as: 'queryPath'
          property :query_value, as: 'queryValue', class: Google::Apis::ComputeBeta::GuestAttributesValue, decorator: Google::Apis::ComputeBeta::GuestAttributesValue::Representation
      
          property :self_link, as: 'selfLink'
          property :variable_key, as: 'variableKey'
          property :variable_value, as: 'variableValue'
        end
      end
      
      class GuestAttributesEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :namespace, as: 'namespace'
          property :value, as: 'value'
        end
      end
      
      class GuestAttributesValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::GuestAttributesEntry, decorator: Google::Apis::ComputeBeta::GuestAttributesEntry::Representation
      
        end
      end
      
      class GuestOsFeature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class Http2HealthCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :port, as: 'port'
          property :port_name, as: 'portName'
          property :port_specification, as: 'portSpecification'
          property :proxy_header, as: 'proxyHeader'
          property :request_path, as: 'requestPath'
          property :response, as: 'response'
        end
      end
      
      class HttpHealthCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :port, as: 'port'
          property :port_name, as: 'portName'
          property :port_specification, as: 'portSpecification'
          property :proxy_header, as: 'proxyHeader'
          property :request_path, as: 'requestPath'
          property :response, as: 'response'
        end
      end
      
      class HttpsHealthCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :port, as: 'port'
          property :port_name, as: 'portName'
          property :port_specification, as: 'portSpecification'
          property :proxy_header, as: 'proxyHeader'
          property :request_path, as: 'requestPath'
          property :response, as: 'response'
        end
      end
      
      class HealthCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :check_interval_sec, as: 'checkIntervalSec'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :grpc_health_check, as: 'grpcHealthCheck', class: Google::Apis::ComputeBeta::GrpcHealthCheck, decorator: Google::Apis::ComputeBeta::GrpcHealthCheck::Representation
      
          property :grpc_tls_health_check, as: 'grpcTlsHealthCheck', class: Google::Apis::ComputeBeta::GrpctlsHealthCheck, decorator: Google::Apis::ComputeBeta::GrpctlsHealthCheck::Representation
      
          property :healthy_threshold, as: 'healthyThreshold'
          property :http2_health_check, as: 'http2HealthCheck', class: Google::Apis::ComputeBeta::Http2HealthCheck, decorator: Google::Apis::ComputeBeta::Http2HealthCheck::Representation
      
          property :http_health_check, as: 'httpHealthCheck', class: Google::Apis::ComputeBeta::HttpHealthCheck, decorator: Google::Apis::ComputeBeta::HttpHealthCheck::Representation
      
          property :https_health_check, as: 'httpsHealthCheck', class: Google::Apis::ComputeBeta::HttpsHealthCheck, decorator: Google::Apis::ComputeBeta::HttpsHealthCheck::Representation
      
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :log_config, as: 'logConfig', class: Google::Apis::ComputeBeta::HealthCheckLogConfig, decorator: Google::Apis::ComputeBeta::HealthCheckLogConfig::Representation
      
          property :name, as: 'name'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          collection :source_regions, as: 'sourceRegions'
          property :ssl_health_check, as: 'sslHealthCheck', class: Google::Apis::ComputeBeta::SslHealthCheck, decorator: Google::Apis::ComputeBeta::SslHealthCheck::Representation
      
          property :tcp_health_check, as: 'tcpHealthCheck', class: Google::Apis::ComputeBeta::TcpHealthCheck, decorator: Google::Apis::ComputeBeta::TcpHealthCheck::Representation
      
          property :timeout_sec, as: 'timeoutSec'
          property :type, as: 'type'
          property :unhealthy_threshold, as: 'unhealthyThreshold'
        end
      end
      
      class HealthCheckList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::HealthCheck, decorator: Google::Apis::ComputeBeta::HealthCheck::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::HealthCheckList::Warning, decorator: Google::Apis::ComputeBeta::HealthCheckList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::HealthCheckList::Warning::Datum, decorator: Google::Apis::ComputeBeta::HealthCheckList::Warning::Datum::Representation
        
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
      
      class HealthCheckLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable, as: 'enable'
        end
      end
      
      class HealthCheckReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :health_check, as: 'healthCheck'
        end
      end
      
      class HealthCheckService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          collection :health_checks, as: 'healthChecks'
          property :health_status_aggregation_policy, as: 'healthStatusAggregationPolicy'
          property :health_status_aggregation_strategy, as: 'healthStatusAggregationStrategy'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          collection :network_endpoint_groups, as: 'networkEndpointGroups'
          collection :notification_endpoints, as: 'notificationEndpoints'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
        end
      end
      
      class HealthCheckServiceReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :health_check_service, as: 'healthCheckService'
        end
      end
      
      class HealthCheckServicesList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::HealthCheckService, decorator: Google::Apis::ComputeBeta::HealthCheckService::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::HealthCheckServicesList::Warning, decorator: Google::Apis::ComputeBeta::HealthCheckServicesList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::HealthCheckServicesList::Warning::Datum, decorator: Google::Apis::ComputeBeta::HealthCheckServicesList::Warning::Datum::Representation
        
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
      
      class HealthChecksAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::HealthChecksScopedList, decorator: Google::Apis::ComputeBeta::HealthChecksScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::HealthChecksAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::HealthChecksAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::HealthChecksAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::HealthChecksAggregatedList::Warning::Datum::Representation
        
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
      
      class HealthChecksScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :health_checks, as: 'healthChecks', class: Google::Apis::ComputeBeta::HealthCheck, decorator: Google::Apis::ComputeBeta::HealthCheck::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::HealthChecksScopedList::Warning, decorator: Google::Apis::ComputeBeta::HealthChecksScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::HealthChecksScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::HealthChecksScopedList::Warning::Datum::Representation
        
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
      
      class HealthStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :forwarding_rule, as: 'forwardingRule'
          property :forwarding_rule_ip, as: 'forwardingRuleIp'
          property :health_state, as: 'healthState'
          property :instance, as: 'instance'
          property :ip_address, as: 'ipAddress'
          property :ipv6_address, as: 'ipv6Address'
          property :ipv6_health_state, as: 'ipv6HealthState'
          property :port, as: 'port'
          property :weight, as: 'weight'
          property :weight_error, as: 'weightError'
        end
      end
      
      class HealthStatusForNetworkEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backend_service, as: 'backendService', class: Google::Apis::ComputeBeta::BackendServiceReference, decorator: Google::Apis::ComputeBeta::BackendServiceReference::Representation
      
          property :forwarding_rule, as: 'forwardingRule', class: Google::Apis::ComputeBeta::ForwardingRuleReference, decorator: Google::Apis::ComputeBeta::ForwardingRuleReference::Representation
      
          property :health_check, as: 'healthCheck', class: Google::Apis::ComputeBeta::HealthCheckReference, decorator: Google::Apis::ComputeBeta::HealthCheckReference::Representation
      
          property :health_check_service, as: 'healthCheckService', class: Google::Apis::ComputeBeta::HealthCheckServiceReference, decorator: Google::Apis::ComputeBeta::HealthCheckServiceReference::Representation
      
          property :health_state, as: 'healthState'
          property :ipv6_health_state, as: 'ipv6HealthState'
        end
      end
      
      class Help
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :links, as: 'links', class: Google::Apis::ComputeBeta::HelpLink, decorator: Google::Apis::ComputeBeta::HelpLink::Representation
      
        end
      end
      
      class HelpLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :url, as: 'url'
        end
      end
      
      class HostRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :hosts, as: 'hosts'
          property :path_matcher, as: 'pathMatcher'
        end
      end
      
      class HttpFaultAbort
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_status, as: 'httpStatus'
          property :percentage, as: 'percentage'
        end
      end
      
      class HttpFaultDelay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixed_delay, as: 'fixedDelay', class: Google::Apis::ComputeBeta::Duration, decorator: Google::Apis::ComputeBeta::Duration::Representation
      
          property :percentage, as: 'percentage'
        end
      end
      
      class HttpFaultInjection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :abort, as: 'abort', class: Google::Apis::ComputeBeta::HttpFaultAbort, decorator: Google::Apis::ComputeBeta::HttpFaultAbort::Representation
      
          property :delay, as: 'delay', class: Google::Apis::ComputeBeta::HttpFaultDelay, decorator: Google::Apis::ComputeBeta::HttpFaultDelay::Representation
      
        end
      end
      
      class HttpFilterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config'
          property :config_type_url, as: 'configTypeUrl'
          property :filter_name, as: 'filterName'
        end
      end
      
      class HttpHeaderAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :request_headers_to_add, as: 'requestHeadersToAdd', class: Google::Apis::ComputeBeta::HttpHeaderOption, decorator: Google::Apis::ComputeBeta::HttpHeaderOption::Representation
      
          collection :request_headers_to_remove, as: 'requestHeadersToRemove'
          collection :response_headers_to_add, as: 'responseHeadersToAdd', class: Google::Apis::ComputeBeta::HttpHeaderOption, decorator: Google::Apis::ComputeBeta::HttpHeaderOption::Representation
      
          collection :response_headers_to_remove, as: 'responseHeadersToRemove'
        end
      end
      
      class HttpHeaderMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exact_match, as: 'exactMatch'
          property :header_name, as: 'headerName'
          property :invert_match, as: 'invertMatch'
          property :prefix_match, as: 'prefixMatch'
          property :present_match, as: 'presentMatch'
          property :range_match, as: 'rangeMatch', class: Google::Apis::ComputeBeta::Int64RangeMatch, decorator: Google::Apis::ComputeBeta::Int64RangeMatch::Representation
      
          property :regex_match, as: 'regexMatch'
          property :suffix_match, as: 'suffixMatch'
        end
      end
      
      class HttpHeaderOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header_name, as: 'headerName'
          property :header_value, as: 'headerValue'
          property :replace, as: 'replace'
        end
      end
      
      class HttpHealthCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :check_interval_sec, as: 'checkIntervalSec'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :healthy_threshold, as: 'healthyThreshold'
          property :host, as: 'host'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :port, as: 'port'
          property :request_path, as: 'requestPath'
          property :self_link, as: 'selfLink'
          property :timeout_sec, as: 'timeoutSec'
          property :unhealthy_threshold, as: 'unhealthyThreshold'
        end
      end
      
      class HttpHealthCheckList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::HttpHealthCheck, decorator: Google::Apis::ComputeBeta::HttpHealthCheck::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::HttpHealthCheckList::Warning, decorator: Google::Apis::ComputeBeta::HttpHealthCheckList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::HttpHealthCheckList::Warning::Datum, decorator: Google::Apis::ComputeBeta::HttpHealthCheckList::Warning::Datum::Representation
        
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
      
      class HttpQueryParameterMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exact_match, as: 'exactMatch'
          property :name, as: 'name'
          property :present_match, as: 'presentMatch'
          property :regex_match, as: 'regexMatch'
        end
      end
      
      class HttpRedirectAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host_redirect, as: 'hostRedirect'
          property :https_redirect, as: 'httpsRedirect'
          property :path_redirect, as: 'pathRedirect'
          property :prefix_redirect, as: 'prefixRedirect'
          property :redirect_response_code, as: 'redirectResponseCode'
          property :strip_query, as: 'stripQuery'
        end
      end
      
      class HttpRetryPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_retries, as: 'numRetries'
          property :per_try_timeout, as: 'perTryTimeout', class: Google::Apis::ComputeBeta::Duration, decorator: Google::Apis::ComputeBeta::Duration::Representation
      
          collection :retry_conditions, as: 'retryConditions'
        end
      end
      
      class HttpRouteAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cors_policy, as: 'corsPolicy', class: Google::Apis::ComputeBeta::CorsPolicy, decorator: Google::Apis::ComputeBeta::CorsPolicy::Representation
      
          property :fault_injection_policy, as: 'faultInjectionPolicy', class: Google::Apis::ComputeBeta::HttpFaultInjection, decorator: Google::Apis::ComputeBeta::HttpFaultInjection::Representation
      
          property :max_stream_duration, as: 'maxStreamDuration', class: Google::Apis::ComputeBeta::Duration, decorator: Google::Apis::ComputeBeta::Duration::Representation
      
          property :request_mirror_policy, as: 'requestMirrorPolicy', class: Google::Apis::ComputeBeta::RequestMirrorPolicy, decorator: Google::Apis::ComputeBeta::RequestMirrorPolicy::Representation
      
          property :retry_policy, as: 'retryPolicy', class: Google::Apis::ComputeBeta::HttpRetryPolicy, decorator: Google::Apis::ComputeBeta::HttpRetryPolicy::Representation
      
          property :timeout, as: 'timeout', class: Google::Apis::ComputeBeta::Duration, decorator: Google::Apis::ComputeBeta::Duration::Representation
      
          property :url_rewrite, as: 'urlRewrite', class: Google::Apis::ComputeBeta::UrlRewrite, decorator: Google::Apis::ComputeBeta::UrlRewrite::Representation
      
          collection :weighted_backend_services, as: 'weightedBackendServices', class: Google::Apis::ComputeBeta::WeightedBackendService, decorator: Google::Apis::ComputeBeta::WeightedBackendService::Representation
      
        end
      end
      
      class HttpRouteRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_error_response_policy, as: 'customErrorResponsePolicy', class: Google::Apis::ComputeBeta::CustomErrorResponsePolicy, decorator: Google::Apis::ComputeBeta::CustomErrorResponsePolicy::Representation
      
          property :description, as: 'description'
          property :header_action, as: 'headerAction', class: Google::Apis::ComputeBeta::HttpHeaderAction, decorator: Google::Apis::ComputeBeta::HttpHeaderAction::Representation
      
          collection :http_filter_configs, as: 'httpFilterConfigs', class: Google::Apis::ComputeBeta::HttpFilterConfig, decorator: Google::Apis::ComputeBeta::HttpFilterConfig::Representation
      
          collection :http_filter_metadata, as: 'httpFilterMetadata', class: Google::Apis::ComputeBeta::HttpFilterConfig, decorator: Google::Apis::ComputeBeta::HttpFilterConfig::Representation
      
          collection :match_rules, as: 'matchRules', class: Google::Apis::ComputeBeta::HttpRouteRuleMatch, decorator: Google::Apis::ComputeBeta::HttpRouteRuleMatch::Representation
      
          property :priority, as: 'priority'
          property :route_action, as: 'routeAction', class: Google::Apis::ComputeBeta::HttpRouteAction, decorator: Google::Apis::ComputeBeta::HttpRouteAction::Representation
      
          property :service, as: 'service'
          property :url_redirect, as: 'urlRedirect', class: Google::Apis::ComputeBeta::HttpRedirectAction, decorator: Google::Apis::ComputeBeta::HttpRedirectAction::Representation
      
        end
      end
      
      class HttpRouteRuleMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_path_match, as: 'fullPathMatch'
          collection :header_matches, as: 'headerMatches', class: Google::Apis::ComputeBeta::HttpHeaderMatch, decorator: Google::Apis::ComputeBeta::HttpHeaderMatch::Representation
      
          property :ignore_case, as: 'ignoreCase'
          collection :metadata_filters, as: 'metadataFilters', class: Google::Apis::ComputeBeta::MetadataFilter, decorator: Google::Apis::ComputeBeta::MetadataFilter::Representation
      
          property :path_template_match, as: 'pathTemplateMatch'
          property :prefix_match, as: 'prefixMatch'
          collection :query_parameter_matches, as: 'queryParameterMatches', class: Google::Apis::ComputeBeta::HttpQueryParameterMatch, decorator: Google::Apis::ComputeBeta::HttpQueryParameterMatch::Representation
      
          property :regex_match, as: 'regexMatch'
        end
      end
      
      class HttpsHealthCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :check_interval_sec, as: 'checkIntervalSec'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :healthy_threshold, as: 'healthyThreshold'
          property :host, as: 'host'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :port, as: 'port'
          property :request_path, as: 'requestPath'
          property :self_link, as: 'selfLink'
          property :timeout_sec, as: 'timeoutSec'
          property :unhealthy_threshold, as: 'unhealthyThreshold'
        end
      end
      
      class HttpsHealthCheckList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::HttpsHealthCheck, decorator: Google::Apis::ComputeBeta::HttpsHealthCheck::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::HttpsHealthCheckList::Warning, decorator: Google::Apis::ComputeBeta::HttpsHealthCheckList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::HttpsHealthCheckList::Warning::Datum, decorator: Google::Apis::ComputeBeta::HttpsHealthCheckList::Warning::Datum::Representation
        
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
      
      class Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :archive_size_bytes, :numeric_string => true, as: 'archiveSizeBytes'
          property :creation_timestamp, as: 'creationTimestamp'
          property :deprecated, as: 'deprecated', class: Google::Apis::ComputeBeta::DeprecationStatus, decorator: Google::Apis::ComputeBeta::DeprecationStatus::Representation
      
          property :description, as: 'description'
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
          property :enable_confidential_compute, as: 'enableConfidentialCompute'
          property :family, as: 'family'
          collection :guest_os_features, as: 'guestOsFeatures', class: Google::Apis::ComputeBeta::GuestOsFeature, decorator: Google::Apis::ComputeBeta::GuestOsFeature::Representation
      
          property :id, :numeric_string => true, as: 'id'
          property :image_encryption_key, as: 'imageEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :kind, as: 'kind'
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
          collection :license_codes, as: 'licenseCodes'
          collection :licenses, as: 'licenses'
          property :locked, as: 'locked'
          property :name, as: 'name'
          property :raw_disk, as: 'rawDisk', class: Google::Apis::ComputeBeta::Image::RawDisk, decorator: Google::Apis::ComputeBeta::Image::RawDisk::Representation
      
          property :rollout_override, as: 'rolloutOverride', class: Google::Apis::ComputeBeta::RolloutPolicy, decorator: Google::Apis::ComputeBeta::RolloutPolicy::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :self_link, as: 'selfLink'
          property :shielded_instance_initial_state, as: 'shieldedInstanceInitialState', class: Google::Apis::ComputeBeta::InitialStateConfig, decorator: Google::Apis::ComputeBeta::InitialStateConfig::Representation
      
          property :source_disk, as: 'sourceDisk'
          property :source_disk_encryption_key, as: 'sourceDiskEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :source_disk_id, as: 'sourceDiskId'
          property :source_image, as: 'sourceImage'
          property :source_image_encryption_key, as: 'sourceImageEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :source_image_id, as: 'sourceImageId'
          property :source_snapshot, as: 'sourceSnapshot'
          property :source_snapshot_encryption_key, as: 'sourceSnapshotEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :source_snapshot_id, as: 'sourceSnapshotId'
          property :source_type, as: 'sourceType'
          property :status, as: 'status'
          collection :storage_locations, as: 'storageLocations'
          collection :user_licenses, as: 'userLicenses'
        end
        
        class RawDisk
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :container_type, as: 'containerType'
            property :sha1_checksum, as: 'sha1Checksum'
            property :source, as: 'source'
          end
        end
      end
      
      class ImageFamilyView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image, as: 'image', class: Google::Apis::ComputeBeta::Image, decorator: Google::Apis::ComputeBeta::Image::Representation
      
        end
      end
      
      class ImageList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Image, decorator: Google::Apis::ComputeBeta::Image::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::ImageList::Warning, decorator: Google::Apis::ComputeBeta::ImageList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::ImageList::Warning::Datum, decorator: Google::Apis::ComputeBeta::ImageList::Warning::Datum::Representation
        
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
      
      class InitialStateConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dbs, as: 'dbs', class: Google::Apis::ComputeBeta::FileContentBuffer, decorator: Google::Apis::ComputeBeta::FileContentBuffer::Representation
      
          collection :dbxs, as: 'dbxs', class: Google::Apis::ComputeBeta::FileContentBuffer, decorator: Google::Apis::ComputeBeta::FileContentBuffer::Representation
      
          collection :keks, as: 'keks', class: Google::Apis::ComputeBeta::FileContentBuffer, decorator: Google::Apis::ComputeBeta::FileContentBuffer::Representation
      
          property :pk, as: 'pk', class: Google::Apis::ComputeBeta::FileContentBuffer, decorator: Google::Apis::ComputeBeta::FileContentBuffer::Representation
      
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advanced_machine_features, as: 'advancedMachineFeatures', class: Google::Apis::ComputeBeta::AdvancedMachineFeatures, decorator: Google::Apis::ComputeBeta::AdvancedMachineFeatures::Representation
      
          property :can_ip_forward, as: 'canIpForward'
          property :confidential_instance_config, as: 'confidentialInstanceConfig', class: Google::Apis::ComputeBeta::ConfidentialInstanceConfig, decorator: Google::Apis::ComputeBeta::ConfidentialInstanceConfig::Representation
      
          property :cpu_platform, as: 'cpuPlatform'
          property :creation_timestamp, as: 'creationTimestamp'
          property :deletion_protection, as: 'deletionProtection'
          property :description, as: 'description'
          collection :disks, as: 'disks', class: Google::Apis::ComputeBeta::AttachedDisk, decorator: Google::Apis::ComputeBeta::AttachedDisk::Representation
      
          property :display_device, as: 'displayDevice', class: Google::Apis::ComputeBeta::DisplayDevice, decorator: Google::Apis::ComputeBeta::DisplayDevice::Representation
      
          property :erase_windows_vss_signature, as: 'eraseWindowsVssSignature'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          collection :guest_accelerators, as: 'guestAccelerators', class: Google::Apis::ComputeBeta::AcceleratorConfig, decorator: Google::Apis::ComputeBeta::AcceleratorConfig::Representation
      
          property :hostname, as: 'hostname'
          property :id, :numeric_string => true, as: 'id'
          property :instance_encryption_key, as: 'instanceEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :key_revocation_action_type, as: 'keyRevocationActionType'
          property :kind, as: 'kind'
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
          property :last_start_timestamp, as: 'lastStartTimestamp'
          property :last_stop_timestamp, as: 'lastStopTimestamp'
          property :last_suspended_timestamp, as: 'lastSuspendedTimestamp'
          property :machine_type, as: 'machineType'
          property :metadata, as: 'metadata', class: Google::Apis::ComputeBeta::Metadata, decorator: Google::Apis::ComputeBeta::Metadata::Representation
      
          property :min_cpu_platform, as: 'minCpuPlatform'
          property :name, as: 'name'
          collection :network_interfaces, as: 'networkInterfaces', class: Google::Apis::ComputeBeta::NetworkInterface, decorator: Google::Apis::ComputeBeta::NetworkInterface::Representation
      
          property :network_performance_config, as: 'networkPerformanceConfig', class: Google::Apis::ComputeBeta::NetworkPerformanceConfig, decorator: Google::Apis::ComputeBeta::NetworkPerformanceConfig::Representation
      
          property :params, as: 'params', class: Google::Apis::ComputeBeta::InstanceParams, decorator: Google::Apis::ComputeBeta::InstanceParams::Representation
      
          hash :partner_metadata, as: 'partnerMetadata', class: Google::Apis::ComputeBeta::StructuredEntries, decorator: Google::Apis::ComputeBeta::StructuredEntries::Representation
      
          property :post_key_revocation_action_type, as: 'postKeyRevocationActionType'
          property :private_ipv6_google_access, as: 'privateIpv6GoogleAccess'
          property :reservation_affinity, as: 'reservationAffinity', class: Google::Apis::ComputeBeta::ReservationAffinity, decorator: Google::Apis::ComputeBeta::ReservationAffinity::Representation
      
          collection :resource_policies, as: 'resourcePolicies'
          property :resource_status, as: 'resourceStatus', class: Google::Apis::ComputeBeta::ResourceStatus, decorator: Google::Apis::ComputeBeta::ResourceStatus::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :scheduling, as: 'scheduling', class: Google::Apis::ComputeBeta::Scheduling, decorator: Google::Apis::ComputeBeta::Scheduling::Representation
      
          property :self_link, as: 'selfLink'
          collection :service_accounts, as: 'serviceAccounts', class: Google::Apis::ComputeBeta::ServiceAccount, decorator: Google::Apis::ComputeBeta::ServiceAccount::Representation
      
          property :shielded_instance_config, as: 'shieldedInstanceConfig', class: Google::Apis::ComputeBeta::ShieldedInstanceConfig, decorator: Google::Apis::ComputeBeta::ShieldedInstanceConfig::Representation
      
          property :shielded_instance_integrity_policy, as: 'shieldedInstanceIntegrityPolicy', class: Google::Apis::ComputeBeta::ShieldedInstanceIntegrityPolicy, decorator: Google::Apis::ComputeBeta::ShieldedInstanceIntegrityPolicy::Representation
      
          property :shielded_vm_config, as: 'shieldedVmConfig', class: Google::Apis::ComputeBeta::ShieldedVmConfig, decorator: Google::Apis::ComputeBeta::ShieldedVmConfig::Representation
      
          property :shielded_vm_integrity_policy, as: 'shieldedVmIntegrityPolicy', class: Google::Apis::ComputeBeta::ShieldedVmIntegrityPolicy, decorator: Google::Apis::ComputeBeta::ShieldedVmIntegrityPolicy::Representation
      
          property :source_machine_image, as: 'sourceMachineImage'
          property :source_machine_image_encryption_key, as: 'sourceMachineImageEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :start_restricted, as: 'startRestricted'
          property :status, as: 'status'
          property :status_message, as: 'statusMessage'
          property :tags, as: 'tags', class: Google::Apis::ComputeBeta::Tags, decorator: Google::Apis::ComputeBeta::Tags::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class InstanceAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::InstancesScopedList, decorator: Google::Apis::ComputeBeta::InstancesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InstanceAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::InstanceAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InstanceAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InstanceAggregatedList::Warning::Datum::Representation
        
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
      
      class InstanceConsumptionData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumption_info, as: 'consumptionInfo', class: Google::Apis::ComputeBeta::InstanceConsumptionInfo, decorator: Google::Apis::ComputeBeta::InstanceConsumptionInfo::Representation
      
          property :instance, as: 'instance'
        end
      end
      
      class InstanceConsumptionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :guest_cpus, as: 'guestCpus'
          property :local_ssd_gb, as: 'localSsdGb'
          property :memory_mb, as: 'memoryMb'
          property :min_node_cpus, as: 'minNodeCpus'
        end
      end
      
      class InstanceGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          collection :named_ports, as: 'namedPorts', class: Google::Apis::ComputeBeta::NamedPort, decorator: Google::Apis::ComputeBeta::NamedPort::Representation
      
          property :network, as: 'network'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :size, as: 'size'
          property :subnetwork, as: 'subnetwork'
          property :zone, as: 'zone'
        end
      end
      
      class InstanceGroupAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::InstanceGroupsScopedList, decorator: Google::Apis::ComputeBeta::InstanceGroupsScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InstanceGroupAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::InstanceGroupAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InstanceGroupAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InstanceGroupAggregatedList::Warning::Datum::Representation
        
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
      
      class InstanceGroupList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InstanceGroup, decorator: Google::Apis::ComputeBeta::InstanceGroup::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InstanceGroupList::Warning, decorator: Google::Apis::ComputeBeta::InstanceGroupList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InstanceGroupList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InstanceGroupList::Warning::Datum::Representation
        
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
      
      class InstanceGroupManager
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_instances_config, as: 'allInstancesConfig', class: Google::Apis::ComputeBeta::InstanceGroupManagerAllInstancesConfig, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerAllInstancesConfig::Representation
      
          collection :auto_healing_policies, as: 'autoHealingPolicies', class: Google::Apis::ComputeBeta::InstanceGroupManagerAutoHealingPolicy, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerAutoHealingPolicy::Representation
      
          property :base_instance_name, as: 'baseInstanceName'
          property :creation_timestamp, as: 'creationTimestamp'
          property :current_actions, as: 'currentActions', class: Google::Apis::ComputeBeta::InstanceGroupManagerActionsSummary, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerActionsSummary::Representation
      
          property :description, as: 'description'
          property :distribution_policy, as: 'distributionPolicy', class: Google::Apis::ComputeBeta::DistributionPolicy, decorator: Google::Apis::ComputeBeta::DistributionPolicy::Representation
      
          property :failover_action, as: 'failoverAction'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :id, :numeric_string => true, as: 'id'
          property :instance_flexibility_policy, as: 'instanceFlexibilityPolicy', class: Google::Apis::ComputeBeta::InstanceGroupManagerInstanceFlexibilityPolicy, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerInstanceFlexibilityPolicy::Representation
      
          property :instance_group, as: 'instanceGroup'
          property :instance_lifecycle_policy, as: 'instanceLifecyclePolicy', class: Google::Apis::ComputeBeta::InstanceGroupManagerInstanceLifecyclePolicy, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerInstanceLifecyclePolicy::Representation
      
          property :instance_template, as: 'instanceTemplate'
          property :kind, as: 'kind'
          property :list_managed_instances_results, as: 'listManagedInstancesResults'
          property :multi_mig, as: 'multiMig'
          property :name, as: 'name'
          collection :named_ports, as: 'namedPorts', class: Google::Apis::ComputeBeta::NamedPort, decorator: Google::Apis::ComputeBeta::NamedPort::Representation
      
          property :params, as: 'params', class: Google::Apis::ComputeBeta::InstanceGroupManagerParams, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerParams::Representation
      
          property :region, as: 'region'
          property :resource_policies, as: 'resourcePolicies', class: Google::Apis::ComputeBeta::InstanceGroupManagerResourcePolicies, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerResourcePolicies::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :self_link, as: 'selfLink'
          property :service_account, as: 'serviceAccount'
          property :standby_policy, as: 'standbyPolicy', class: Google::Apis::ComputeBeta::InstanceGroupManagerStandbyPolicy, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerStandbyPolicy::Representation
      
          property :stateful_policy, as: 'statefulPolicy', class: Google::Apis::ComputeBeta::StatefulPolicy, decorator: Google::Apis::ComputeBeta::StatefulPolicy::Representation
      
          property :status, as: 'status', class: Google::Apis::ComputeBeta::InstanceGroupManagerStatus, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerStatus::Representation
      
          collection :target_pools, as: 'targetPools'
          property :target_size, as: 'targetSize'
          property :target_size_policy, as: 'targetSizePolicy', class: Google::Apis::ComputeBeta::InstanceGroupManagerTargetSizePolicy, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerTargetSizePolicy::Representation
      
          property :target_stopped_size, as: 'targetStoppedSize'
          property :target_suspended_size, as: 'targetSuspendedSize'
          property :update_policy, as: 'updatePolicy', class: Google::Apis::ComputeBeta::InstanceGroupManagerUpdatePolicy, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerUpdatePolicy::Representation
      
          collection :versions, as: 'versions', class: Google::Apis::ComputeBeta::InstanceGroupManagerVersion, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerVersion::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class InstanceGroupManagerActionsSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :abandoning, as: 'abandoning'
          property :creating, as: 'creating'
          property :creating_without_retries, as: 'creatingWithoutRetries'
          property :deleting, as: 'deleting'
          property :none, as: 'none'
          property :recreating, as: 'recreating'
          property :refreshing, as: 'refreshing'
          property :restarting, as: 'restarting'
          property :resuming, as: 'resuming'
          property :starting, as: 'starting'
          property :stopping, as: 'stopping'
          property :suspending, as: 'suspending'
          property :verifying, as: 'verifying'
        end
      end
      
      class InstanceGroupManagerAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::InstanceGroupManagersScopedList, decorator: Google::Apis::ComputeBeta::InstanceGroupManagersScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InstanceGroupManagerAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InstanceGroupManagerAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerAggregatedList::Warning::Datum::Representation
        
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
      
      class InstanceGroupManagerAllInstancesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :properties, as: 'properties', class: Google::Apis::ComputeBeta::InstancePropertiesPatch, decorator: Google::Apis::ComputeBeta::InstancePropertiesPatch::Representation
      
        end
      end
      
      class InstanceGroupManagerAutoHealingPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :health_check, as: 'healthCheck'
          property :initial_delay_sec, as: 'initialDelaySec'
        end
      end
      
      class InstanceGroupManagerInstanceFlexibilityPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :instance_selections, as: 'instanceSelections', class: Google::Apis::ComputeBeta::InstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection::Representation
      
          property :provisioning_model_mix, as: 'provisioningModelMix', class: Google::Apis::ComputeBeta::InstanceGroupManagerInstanceFlexibilityPolicyProvisioningModelMix, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerInstanceFlexibilityPolicyProvisioningModelMix::Representation
      
        end
      end
      
      class InstanceGroupManagerInstanceFlexibilityPolicyInstanceSelection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :machine_types, as: 'machineTypes'
          property :rank, as: 'rank'
        end
      end
      
      class InstanceGroupManagerInstanceFlexibilityPolicyProvisioningModelMix
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :standard_capacity_base, as: 'standardCapacityBase'
          property :standard_capacity_percent_above_base, as: 'standardCapacityPercentAboveBase'
        end
      end
      
      class InstanceGroupManagerInstanceLifecyclePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_action_on_failure, as: 'defaultActionOnFailure'
          property :force_update_on_repair, as: 'forceUpdateOnRepair'
          property :on_failed_health_check, as: 'onFailedHealthCheck'
          property :on_repair, as: 'onRepair', class: Google::Apis::ComputeBeta::InstanceGroupManagerInstanceLifecyclePolicyOnRepair, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerInstanceLifecyclePolicyOnRepair::Representation
      
        end
      end
      
      class InstanceGroupManagerInstanceLifecyclePolicyOnRepair
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_changing_zone, as: 'allowChangingZone'
        end
      end
      
      class InstanceGroupManagerList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InstanceGroupManager, decorator: Google::Apis::ComputeBeta::InstanceGroupManager::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InstanceGroupManagerList::Warning, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InstanceGroupManagerList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerList::Warning::Datum::Representation
        
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
      
      class InstanceGroupManagerParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :resource_manager_tags, as: 'resourceManagerTags'
        end
      end
      
      class InstanceGroupManagerResizeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          collection :instances, as: 'instances', class: Google::Apis::ComputeBeta::PerInstanceConfig, decorator: Google::Apis::ComputeBeta::PerInstanceConfig::Representation
      
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :region, as: 'region'
          property :requested_run_duration, as: 'requestedRunDuration', class: Google::Apis::ComputeBeta::Duration, decorator: Google::Apis::ComputeBeta::Duration::Representation
      
          property :resize_by, as: 'resizeBy'
          property :self_link, as: 'selfLink'
          property :self_link_with_id, as: 'selfLinkWithId'
          property :state, as: 'state'
          property :status, as: 'status', class: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequestStatus, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequestStatus::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class InstanceGroupManagerResizeRequestStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequestStatus::Error, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequestStatus::Error::Representation
      
          property :last_attempt, as: 'lastAttempt', class: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequestStatusLastAttempt, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequestStatusLastAttempt::Representation
      
        end
        
        class Error
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :errors, as: 'errors', class: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequestStatus::Error::Error, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequestStatus::Error::Error::Representation
        
          end
          
          class Error
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :code, as: 'code'
              collection :error_details, as: 'errorDetails', class: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequestStatus::Error::Error::ErrorDetail, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequestStatus::Error::Error::ErrorDetail::Representation
          
              property :location, as: 'location'
              property :message, as: 'message'
            end
            
            class ErrorDetail
              # @private
              class Representation < Google::Apis::Core::JsonRepresentation
                property :error_info, as: 'errorInfo', class: Google::Apis::ComputeBeta::ErrorInfo, decorator: Google::Apis::ComputeBeta::ErrorInfo::Representation
            
                property :help, as: 'help', class: Google::Apis::ComputeBeta::Help, decorator: Google::Apis::ComputeBeta::Help::Representation
            
                property :localized_message, as: 'localizedMessage', class: Google::Apis::ComputeBeta::LocalizedMessage, decorator: Google::Apis::ComputeBeta::LocalizedMessage::Representation
            
                property :quota_info, as: 'quotaInfo', class: Google::Apis::ComputeBeta::QuotaExceededInfo, decorator: Google::Apis::ComputeBeta::QuotaExceededInfo::Representation
            
              end
            end
          end
        end
      end
      
      class InstanceGroupManagerResizeRequestStatusLastAttempt
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequestStatusLastAttempt::Error, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequestStatusLastAttempt::Error::Representation
      
        end
        
        class Error
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :errors, as: 'errors', class: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequestStatusLastAttempt::Error::Error, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequestStatusLastAttempt::Error::Error::Representation
        
          end
          
          class Error
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :code, as: 'code'
              collection :error_details, as: 'errorDetails', class: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequestStatusLastAttempt::Error::Error::ErrorDetail, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequestStatusLastAttempt::Error::Error::ErrorDetail::Representation
          
              property :location, as: 'location'
              property :message, as: 'message'
            end
            
            class ErrorDetail
              # @private
              class Representation < Google::Apis::Core::JsonRepresentation
                property :error_info, as: 'errorInfo', class: Google::Apis::ComputeBeta::ErrorInfo, decorator: Google::Apis::ComputeBeta::ErrorInfo::Representation
            
                property :help, as: 'help', class: Google::Apis::ComputeBeta::Help, decorator: Google::Apis::ComputeBeta::Help::Representation
            
                property :localized_message, as: 'localizedMessage', class: Google::Apis::ComputeBeta::LocalizedMessage, decorator: Google::Apis::ComputeBeta::LocalizedMessage::Representation
            
                property :quota_info, as: 'quotaInfo', class: Google::Apis::ComputeBeta::QuotaExceededInfo, decorator: Google::Apis::ComputeBeta::QuotaExceededInfo::Representation
            
              end
            end
          end
        end
      end
      
      class InstanceGroupManagerResizeRequestsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequest, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequest::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequestsListResponse::Warning, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequestsListResponse::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequestsListResponse::Warning::Datum, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequestsListResponse::Warning::Datum::Representation
        
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
      
      class InstanceGroupManagerResourcePolicies
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :workload_policy, as: 'workloadPolicy'
        end
      end
      
      class InstanceGroupManagerStandbyPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :initial_delay_sec, as: 'initialDelaySec'
          property :mode, as: 'mode'
        end
      end
      
      class InstanceGroupManagerStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_instances_config, as: 'allInstancesConfig', class: Google::Apis::ComputeBeta::InstanceGroupManagerStatusAllInstancesConfig, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerStatusAllInstancesConfig::Representation
      
          property :autoscaler, as: 'autoscaler'
          property :bulk_instance_operation, as: 'bulkInstanceOperation', class: Google::Apis::ComputeBeta::InstanceGroupManagerStatusBulkInstanceOperation, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerStatusBulkInstanceOperation::Representation
      
          property :is_stable, as: 'isStable'
          property :stateful, as: 'stateful', class: Google::Apis::ComputeBeta::InstanceGroupManagerStatusStateful, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerStatusStateful::Representation
      
          property :version_target, as: 'versionTarget', class: Google::Apis::ComputeBeta::InstanceGroupManagerStatusVersionTarget, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerStatusVersionTarget::Representation
      
        end
      end
      
      class InstanceGroupManagerStatusAllInstancesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_revision, as: 'currentRevision'
          property :effective, as: 'effective'
        end
      end
      
      class InstanceGroupManagerStatusBulkInstanceOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :in_progress, as: 'inProgress'
          property :last_progress_check, as: 'lastProgressCheck', class: Google::Apis::ComputeBeta::InstanceGroupManagerStatusBulkInstanceOperationLastProgressCheck, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerStatusBulkInstanceOperationLastProgressCheck::Representation
      
        end
      end
      
      class InstanceGroupManagerStatusBulkInstanceOperationLastProgressCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::ComputeBeta::InstanceGroupManagerStatusBulkInstanceOperationLastProgressCheck::Error, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerStatusBulkInstanceOperationLastProgressCheck::Error::Representation
      
          property :timestamp, as: 'timestamp'
        end
        
        class Error
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :errors, as: 'errors', class: Google::Apis::ComputeBeta::InstanceGroupManagerStatusBulkInstanceOperationLastProgressCheck::Error::Error, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerStatusBulkInstanceOperationLastProgressCheck::Error::Error::Representation
        
          end
          
          class Error
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :code, as: 'code'
              collection :error_details, as: 'errorDetails', class: Google::Apis::ComputeBeta::InstanceGroupManagerStatusBulkInstanceOperationLastProgressCheck::Error::Error::ErrorDetail, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerStatusBulkInstanceOperationLastProgressCheck::Error::Error::ErrorDetail::Representation
          
              property :location, as: 'location'
              property :message, as: 'message'
            end
            
            class ErrorDetail
              # @private
              class Representation < Google::Apis::Core::JsonRepresentation
                property :error_info, as: 'errorInfo', class: Google::Apis::ComputeBeta::ErrorInfo, decorator: Google::Apis::ComputeBeta::ErrorInfo::Representation
            
                property :help, as: 'help', class: Google::Apis::ComputeBeta::Help, decorator: Google::Apis::ComputeBeta::Help::Representation
            
                property :localized_message, as: 'localizedMessage', class: Google::Apis::ComputeBeta::LocalizedMessage, decorator: Google::Apis::ComputeBeta::LocalizedMessage::Representation
            
                property :quota_info, as: 'quotaInfo', class: Google::Apis::ComputeBeta::QuotaExceededInfo, decorator: Google::Apis::ComputeBeta::QuotaExceededInfo::Representation
            
              end
            end
          end
        end
      end
      
      class InstanceGroupManagerStatusStateful
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :has_stateful_config, as: 'hasStatefulConfig'
          property :is_stateful, as: 'isStateful'
          property :per_instance_configs, as: 'perInstanceConfigs', class: Google::Apis::ComputeBeta::InstanceGroupManagerStatusStatefulPerInstanceConfigs, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerStatusStatefulPerInstanceConfigs::Representation
      
        end
      end
      
      class InstanceGroupManagerStatusStatefulPerInstanceConfigs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_effective, as: 'allEffective'
        end
      end
      
      class InstanceGroupManagerStatusVersionTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_reached, as: 'isReached'
        end
      end
      
      class InstanceGroupManagerTargetSizePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class InstanceGroupManagerUpdatePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_redistribution_type, as: 'instanceRedistributionType'
          property :max_surge, as: 'maxSurge', class: Google::Apis::ComputeBeta::FixedOrPercent, decorator: Google::Apis::ComputeBeta::FixedOrPercent::Representation
      
          property :max_unavailable, as: 'maxUnavailable', class: Google::Apis::ComputeBeta::FixedOrPercent, decorator: Google::Apis::ComputeBeta::FixedOrPercent::Representation
      
          property :min_ready_sec, as: 'minReadySec'
          property :minimal_action, as: 'minimalAction'
          property :most_disruptive_allowed_action, as: 'mostDisruptiveAllowedAction'
          property :replacement_method, as: 'replacementMethod'
          property :type, as: 'type'
        end
      end
      
      class InstanceGroupManagerVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_template, as: 'instanceTemplate'
          property :name, as: 'name'
          property :target_size, as: 'targetSize', class: Google::Apis::ComputeBeta::FixedOrPercent, decorator: Google::Apis::ComputeBeta::FixedOrPercent::Representation
      
        end
      end
      
      class InstanceGroupManagersAbandonInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances'
        end
      end
      
      class InstanceGroupManagersApplyUpdatesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_instances, as: 'allInstances'
          collection :instances, as: 'instances'
          property :minimal_action, as: 'minimalAction'
          property :most_disruptive_allowed_action, as: 'mostDisruptiveAllowedAction'
        end
      end
      
      class InstanceGroupManagersCreateInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::ComputeBeta::PerInstanceConfig, decorator: Google::Apis::ComputeBeta::PerInstanceConfig::Representation
      
        end
      end
      
      class InstanceGroupManagersDeleteInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances'
          property :skip_instances_on_validation_error, as: 'skipInstancesOnValidationError'
        end
      end
      
      class InstanceGroupManagersDeletePerInstanceConfigsReq
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :names, as: 'names'
        end
      end
      
      class InstanceGroupManagersListErrorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InstanceManagedByIgmError, decorator: Google::Apis::ComputeBeta::InstanceManagedByIgmError::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class InstanceGroupManagersListManagedInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :managed_instances, as: 'managedInstances', class: Google::Apis::ComputeBeta::ManagedInstance, decorator: Google::Apis::ComputeBeta::ManagedInstance::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class InstanceGroupManagersListPerInstanceConfigsResp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::PerInstanceConfig, decorator: Google::Apis::ComputeBeta::PerInstanceConfig::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InstanceGroupManagersListPerInstanceConfigsResp::Warning, decorator: Google::Apis::ComputeBeta::InstanceGroupManagersListPerInstanceConfigsResp::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InstanceGroupManagersListPerInstanceConfigsResp::Warning::Datum, decorator: Google::Apis::ComputeBeta::InstanceGroupManagersListPerInstanceConfigsResp::Warning::Datum::Representation
        
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
      
      class InstanceGroupManagersPatchPerInstanceConfigsReq
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :per_instance_configs, as: 'perInstanceConfigs', class: Google::Apis::ComputeBeta::PerInstanceConfig, decorator: Google::Apis::ComputeBeta::PerInstanceConfig::Representation
      
        end
      end
      
      class InstanceGroupManagersRecreateInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances'
        end
      end
      
      class InstanceGroupManagersResizeAdvancedRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :no_creation_retries, as: 'noCreationRetries'
          property :target_size, as: 'targetSize'
        end
      end
      
      class InstanceGroupManagersResumeInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances'
        end
      end
      
      class InstanceGroupManagersScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instance_group_managers, as: 'instanceGroupManagers', class: Google::Apis::ComputeBeta::InstanceGroupManager, decorator: Google::Apis::ComputeBeta::InstanceGroupManager::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InstanceGroupManagersScopedList::Warning, decorator: Google::Apis::ComputeBeta::InstanceGroupManagersScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InstanceGroupManagersScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InstanceGroupManagersScopedList::Warning::Datum::Representation
        
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
      
      class InstanceGroupManagersSetAutoHealingRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auto_healing_policies, as: 'autoHealingPolicies', class: Google::Apis::ComputeBeta::InstanceGroupManagerAutoHealingPolicy, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerAutoHealingPolicy::Representation
      
        end
      end
      
      class InstanceGroupManagersSetInstanceTemplateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_template, as: 'instanceTemplate'
        end
      end
      
      class InstanceGroupManagersSetTargetPoolsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fingerprint, :base64 => true, as: 'fingerprint'
          collection :target_pools, as: 'targetPools'
        end
      end
      
      class InstanceGroupManagersStartInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances'
        end
      end
      
      class InstanceGroupManagersStopInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :force_stop, as: 'forceStop'
          collection :instances, as: 'instances'
        end
      end
      
      class InstanceGroupManagersSuspendInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :force_suspend, as: 'forceSuspend'
          collection :instances, as: 'instances'
        end
      end
      
      class InstanceGroupManagersUpdatePerInstanceConfigsReq
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :per_instance_configs, as: 'perInstanceConfigs', class: Google::Apis::ComputeBeta::PerInstanceConfig, decorator: Google::Apis::ComputeBeta::PerInstanceConfig::Representation
      
        end
      end
      
      class InstanceGroupsAddInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::ComputeBeta::InstanceReference, decorator: Google::Apis::ComputeBeta::InstanceReference::Representation
      
        end
      end
      
      class InstanceGroupsListInstances
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InstanceWithNamedPorts, decorator: Google::Apis::ComputeBeta::InstanceWithNamedPorts::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InstanceGroupsListInstances::Warning, decorator: Google::Apis::ComputeBeta::InstanceGroupsListInstances::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InstanceGroupsListInstances::Warning::Datum, decorator: Google::Apis::ComputeBeta::InstanceGroupsListInstances::Warning::Datum::Representation
        
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
      
      class InstanceGroupsListInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_state, as: 'instanceState'
        end
      end
      
      class InstanceGroupsRemoveInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::ComputeBeta::InstanceReference, decorator: Google::Apis::ComputeBeta::InstanceReference::Representation
      
        end
      end
      
      class InstanceGroupsScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instance_groups, as: 'instanceGroups', class: Google::Apis::ComputeBeta::InstanceGroup, decorator: Google::Apis::ComputeBeta::InstanceGroup::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InstanceGroupsScopedList::Warning, decorator: Google::Apis::ComputeBeta::InstanceGroupsScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InstanceGroupsScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InstanceGroupsScopedList::Warning::Datum::Representation
        
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
      
      class InstanceGroupsSetNamedPortsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fingerprint, :base64 => true, as: 'fingerprint'
          collection :named_ports, as: 'namedPorts', class: Google::Apis::ComputeBeta::NamedPort, decorator: Google::Apis::ComputeBeta::NamedPort::Representation
      
        end
      end
      
      class InstanceList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Instance, decorator: Google::Apis::ComputeBeta::Instance::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InstanceList::Warning, decorator: Google::Apis::ComputeBeta::InstanceList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InstanceList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InstanceList::Warning::Datum::Representation
        
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
      
      class InstanceListReferrers
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Reference, decorator: Google::Apis::ComputeBeta::Reference::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InstanceListReferrers::Warning, decorator: Google::Apis::ComputeBeta::InstanceListReferrers::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InstanceListReferrers::Warning::Datum, decorator: Google::Apis::ComputeBeta::InstanceListReferrers::Warning::Datum::Representation
        
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
      
      class InstanceManagedByIgmError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::ComputeBeta::InstanceManagedByIgmErrorManagedInstanceError, decorator: Google::Apis::ComputeBeta::InstanceManagedByIgmErrorManagedInstanceError::Representation
      
          property :instance_action_details, as: 'instanceActionDetails', class: Google::Apis::ComputeBeta::InstanceManagedByIgmErrorInstanceActionDetails, decorator: Google::Apis::ComputeBeta::InstanceManagedByIgmErrorInstanceActionDetails::Representation
      
          property :timestamp, as: 'timestamp'
        end
      end
      
      class InstanceManagedByIgmErrorInstanceActionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :instance, as: 'instance'
          property :version, as: 'version', class: Google::Apis::ComputeBeta::ManagedInstanceVersion, decorator: Google::Apis::ComputeBeta::ManagedInstanceVersion::Representation
      
        end
      end
      
      class InstanceManagedByIgmErrorManagedInstanceError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :message, as: 'message'
        end
      end
      
      class MoveInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_zone, as: 'destinationZone'
          property :target_instance, as: 'targetInstance'
        end
      end
      
      class InstanceParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :resource_manager_tags, as: 'resourceManagerTags'
        end
      end
      
      class InstanceProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advanced_machine_features, as: 'advancedMachineFeatures', class: Google::Apis::ComputeBeta::AdvancedMachineFeatures, decorator: Google::Apis::ComputeBeta::AdvancedMachineFeatures::Representation
      
          property :can_ip_forward, as: 'canIpForward'
          property :confidential_instance_config, as: 'confidentialInstanceConfig', class: Google::Apis::ComputeBeta::ConfidentialInstanceConfig, decorator: Google::Apis::ComputeBeta::ConfidentialInstanceConfig::Representation
      
          property :description, as: 'description'
          collection :disks, as: 'disks', class: Google::Apis::ComputeBeta::AttachedDisk, decorator: Google::Apis::ComputeBeta::AttachedDisk::Representation
      
          property :display_device, as: 'displayDevice', class: Google::Apis::ComputeBeta::DisplayDevice, decorator: Google::Apis::ComputeBeta::DisplayDevice::Representation
      
          collection :guest_accelerators, as: 'guestAccelerators', class: Google::Apis::ComputeBeta::AcceleratorConfig, decorator: Google::Apis::ComputeBeta::AcceleratorConfig::Representation
      
          property :key_revocation_action_type, as: 'keyRevocationActionType'
          hash :labels, as: 'labels'
          property :machine_type, as: 'machineType'
          property :metadata, as: 'metadata', class: Google::Apis::ComputeBeta::Metadata, decorator: Google::Apis::ComputeBeta::Metadata::Representation
      
          property :min_cpu_platform, as: 'minCpuPlatform'
          collection :network_interfaces, as: 'networkInterfaces', class: Google::Apis::ComputeBeta::NetworkInterface, decorator: Google::Apis::ComputeBeta::NetworkInterface::Representation
      
          property :network_performance_config, as: 'networkPerformanceConfig', class: Google::Apis::ComputeBeta::NetworkPerformanceConfig, decorator: Google::Apis::ComputeBeta::NetworkPerformanceConfig::Representation
      
          hash :partner_metadata, as: 'partnerMetadata', class: Google::Apis::ComputeBeta::StructuredEntries, decorator: Google::Apis::ComputeBeta::StructuredEntries::Representation
      
          property :post_key_revocation_action_type, as: 'postKeyRevocationActionType'
          property :private_ipv6_google_access, as: 'privateIpv6GoogleAccess'
          property :reservation_affinity, as: 'reservationAffinity', class: Google::Apis::ComputeBeta::ReservationAffinity, decorator: Google::Apis::ComputeBeta::ReservationAffinity::Representation
      
          hash :resource_manager_tags, as: 'resourceManagerTags'
          collection :resource_policies, as: 'resourcePolicies'
          property :scheduling, as: 'scheduling', class: Google::Apis::ComputeBeta::Scheduling, decorator: Google::Apis::ComputeBeta::Scheduling::Representation
      
          collection :service_accounts, as: 'serviceAccounts', class: Google::Apis::ComputeBeta::ServiceAccount, decorator: Google::Apis::ComputeBeta::ServiceAccount::Representation
      
          property :shielded_instance_config, as: 'shieldedInstanceConfig', class: Google::Apis::ComputeBeta::ShieldedInstanceConfig, decorator: Google::Apis::ComputeBeta::ShieldedInstanceConfig::Representation
      
          property :shielded_vm_config, as: 'shieldedVmConfig', class: Google::Apis::ComputeBeta::ShieldedVmConfig, decorator: Google::Apis::ComputeBeta::ShieldedVmConfig::Representation
      
          property :tags, as: 'tags', class: Google::Apis::ComputeBeta::Tags, decorator: Google::Apis::ComputeBeta::Tags::Representation
      
        end
      end
      
      class InstancePropertiesPatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          hash :metadata, as: 'metadata'
        end
      end
      
      class InstanceReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance'
        end
      end
      
      class InstanceSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :kind, as: 'kind'
          property :metadata, as: 'metadata', class: Google::Apis::ComputeBeta::InstanceSettingsMetadata, decorator: Google::Apis::ComputeBeta::InstanceSettingsMetadata::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class InstanceSettingsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :items, as: 'items'
          property :kind, as: 'kind'
        end
      end
      
      class InstanceTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :properties, as: 'properties', class: Google::Apis::ComputeBeta::InstanceProperties, decorator: Google::Apis::ComputeBeta::InstanceProperties::Representation
      
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :source_instance, as: 'sourceInstance'
          property :source_instance_params, as: 'sourceInstanceParams', class: Google::Apis::ComputeBeta::SourceInstanceParams, decorator: Google::Apis::ComputeBeta::SourceInstanceParams::Representation
      
        end
      end
      
      class InstanceTemplateAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::InstanceTemplatesScopedList, decorator: Google::Apis::ComputeBeta::InstanceTemplatesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InstanceTemplateAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::InstanceTemplateAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InstanceTemplateAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InstanceTemplateAggregatedList::Warning::Datum::Representation
        
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
      
      class InstanceTemplateList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InstanceTemplate, decorator: Google::Apis::ComputeBeta::InstanceTemplate::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InstanceTemplateList::Warning, decorator: Google::Apis::ComputeBeta::InstanceTemplateList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InstanceTemplateList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InstanceTemplateList::Warning::Datum::Representation
        
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
      
      class InstanceTemplatesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instance_templates, as: 'instanceTemplates', class: Google::Apis::ComputeBeta::InstanceTemplate, decorator: Google::Apis::ComputeBeta::InstanceTemplate::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InstanceTemplatesScopedList::Warning, decorator: Google::Apis::ComputeBeta::InstanceTemplatesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InstanceTemplatesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InstanceTemplatesScopedList::Warning::Datum::Representation
        
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
      
      class InstanceWithNamedPorts
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance'
          collection :named_ports, as: 'namedPorts', class: Google::Apis::ComputeBeta::NamedPort, decorator: Google::Apis::ComputeBeta::NamedPort::Representation
      
          property :status, as: 'status'
        end
      end
      
      class InstancesAddResourcePoliciesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resource_policies, as: 'resourcePolicies'
        end
      end
      
      class InstancesBulkInsertOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :per_location_status, as: 'perLocationStatus', class: Google::Apis::ComputeBeta::BulkInsertOperationStatus, decorator: Google::Apis::ComputeBeta::BulkInsertOperationStatus::Representation
      
        end
      end
      
      class InstancesGetEffectiveFirewallsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :firewall_policys, as: 'firewallPolicys', class: Google::Apis::ComputeBeta::InstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicy, decorator: Google::Apis::ComputeBeta::InstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicy::Representation
      
          collection :firewalls, as: 'firewalls', class: Google::Apis::ComputeBeta::Firewall, decorator: Google::Apis::ComputeBeta::Firewall::Representation
      
          collection :organization_firewalls, as: 'organizationFirewalls', class: Google::Apis::ComputeBeta::InstancesGetEffectiveFirewallsResponseOrganizationFirewallPolicy, decorator: Google::Apis::ComputeBeta::InstancesGetEffectiveFirewallsResponseOrganizationFirewallPolicy::Representation
      
        end
      end
      
      class InstancesGetEffectiveFirewallsResponseEffectiveFirewallPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          collection :packet_mirroring_rules, as: 'packetMirroringRules', class: Google::Apis::ComputeBeta::FirewallPolicyRule, decorator: Google::Apis::ComputeBeta::FirewallPolicyRule::Representation
      
          property :priority, as: 'priority'
          collection :rules, as: 'rules', class: Google::Apis::ComputeBeta::FirewallPolicyRule, decorator: Google::Apis::ComputeBeta::FirewallPolicyRule::Representation
      
          property :short_name, as: 'shortName'
          property :type, as: 'type'
        end
      end
      
      class InstancesGetEffectiveFirewallsResponseOrganizationFirewallPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, :numeric_string => true, as: 'id'
          collection :rules, as: 'rules', class: Google::Apis::ComputeBeta::SecurityPolicyRule, decorator: Google::Apis::ComputeBeta::SecurityPolicyRule::Representation
      
        end
      end
      
      class InstancesRemoveResourcePoliciesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resource_policies, as: 'resourcePolicies'
        end
      end
      
      class InstancesReportHostAsFaultyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disruption_schedule, as: 'disruptionSchedule'
          collection :fault_reasons, as: 'faultReasons', class: Google::Apis::ComputeBeta::InstancesReportHostAsFaultyRequestFaultReason, decorator: Google::Apis::ComputeBeta::InstancesReportHostAsFaultyRequestFaultReason::Representation
      
        end
      end
      
      class InstancesReportHostAsFaultyRequestFaultReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :behavior, as: 'behavior'
          property :description, as: 'description'
        end
      end
      
      class InstancesResumeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :disks, as: 'disks', class: Google::Apis::ComputeBeta::CustomerEncryptionKeyProtectedDisk, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKeyProtectedDisk::Representation
      
          property :instance_encryption_key, as: 'instanceEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
        end
      end
      
      class InstancesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::ComputeBeta::Instance, decorator: Google::Apis::ComputeBeta::Instance::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InstancesScopedList::Warning, decorator: Google::Apis::ComputeBeta::InstancesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InstancesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InstancesScopedList::Warning::Datum::Representation
        
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
      
      class InstancesSetLabelsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
        end
      end
      
      class InstancesSetMachineResourcesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :guest_accelerators, as: 'guestAccelerators', class: Google::Apis::ComputeBeta::AcceleratorConfig, decorator: Google::Apis::ComputeBeta::AcceleratorConfig::Representation
      
        end
      end
      
      class InstancesSetMachineTypeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :machine_type, as: 'machineType'
        end
      end
      
      class InstancesSetMinCpuPlatformRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_cpu_platform, as: 'minCpuPlatform'
        end
      end
      
      class InstancesSetNameRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_name, as: 'currentName'
          property :name, as: 'name'
        end
      end
      
      class InstancesSetSecurityPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :network_interfaces, as: 'networkInterfaces'
          property :security_policy, as: 'securityPolicy'
        end
      end
      
      class InstancesSetServiceAccountRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          collection :scopes, as: 'scopes'
        end
      end
      
      class InstancesStartWithEncryptionKeyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :disks, as: 'disks', class: Google::Apis::ComputeBeta::CustomerEncryptionKeyProtectedDisk, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKeyProtectedDisk::Representation
      
        end
      end
      
      class InstantSnapshot
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :region, as: 'region'
          property :resource_status, as: 'resourceStatus', class: Google::Apis::ComputeBeta::InstantSnapshotResourceStatus, decorator: Google::Apis::ComputeBeta::InstantSnapshotResourceStatus::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :self_link, as: 'selfLink'
          property :self_link_with_id, as: 'selfLinkWithId'
          property :source_disk, as: 'sourceDisk'
          property :source_disk_id, as: 'sourceDiskId'
          property :status, as: 'status'
          property :zone, as: 'zone'
        end
      end
      
      class InstantSnapshotAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::InstantSnapshotsScopedList, decorator: Google::Apis::ComputeBeta::InstantSnapshotsScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InstantSnapshotAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::InstantSnapshotAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InstantSnapshotAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InstantSnapshotAggregatedList::Warning::Datum::Representation
        
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
      
      class InstantSnapshotList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InstantSnapshot, decorator: Google::Apis::ComputeBeta::InstantSnapshot::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InstantSnapshotList::Warning, decorator: Google::Apis::ComputeBeta::InstantSnapshotList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InstantSnapshotList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InstantSnapshotList::Warning::Datum::Representation
        
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
      
      class InstantSnapshotResourceStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :storage_size_bytes, :numeric_string => true, as: 'storageSizeBytes'
        end
      end
      
      class InstantSnapshotsScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instant_snapshots, as: 'instantSnapshots', class: Google::Apis::ComputeBeta::InstantSnapshot, decorator: Google::Apis::ComputeBeta::InstantSnapshot::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InstantSnapshotsScopedList::Warning, decorator: Google::Apis::ComputeBeta::InstantSnapshotsScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InstantSnapshotsScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InstantSnapshotsScopedList::Warning::Datum::Representation
        
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
      
      class Int64RangeMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :range_end, :numeric_string => true, as: 'rangeEnd'
          property :range_start, :numeric_string => true, as: 'rangeStart'
        end
      end
      
      class Interconnect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aai_enabled, as: 'aaiEnabled'
          property :admin_enabled, as: 'adminEnabled'
          property :application_aware_interconnect, as: 'applicationAwareInterconnect', class: Google::Apis::ComputeBeta::InterconnectApplicationAwareInterconnect, decorator: Google::Apis::ComputeBeta::InterconnectApplicationAwareInterconnect::Representation
      
          collection :available_features, as: 'availableFeatures'
          collection :circuit_infos, as: 'circuitInfos', class: Google::Apis::ComputeBeta::InterconnectCircuitInfo, decorator: Google::Apis::ComputeBeta::InterconnectCircuitInfo::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          property :customer_name, as: 'customerName'
          property :description, as: 'description'
          collection :expected_outages, as: 'expectedOutages', class: Google::Apis::ComputeBeta::InterconnectOutageNotification, decorator: Google::Apis::ComputeBeta::InterconnectOutageNotification::Representation
      
          property :google_ip_address, as: 'googleIpAddress'
          property :google_reference_id, as: 'googleReferenceId'
          property :id, :numeric_string => true, as: 'id'
          collection :interconnect_attachments, as: 'interconnectAttachments'
          collection :interconnect_groups, as: 'interconnectGroups'
          property :interconnect_type, as: 'interconnectType'
          property :kind, as: 'kind'
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
          property :link_type, as: 'linkType'
          property :location, as: 'location'
          property :macsec, as: 'macsec', class: Google::Apis::ComputeBeta::InterconnectMacsec, decorator: Google::Apis::ComputeBeta::InterconnectMacsec::Representation
      
          property :macsec_enabled, as: 'macsecEnabled'
          property :name, as: 'name'
          property :noc_contact_email, as: 'nocContactEmail'
          property :operational_status, as: 'operationalStatus'
          property :peer_ip_address, as: 'peerIpAddress'
          property :provisioned_link_count, as: 'provisionedLinkCount'
          property :remote_location, as: 'remoteLocation'
          collection :requested_features, as: 'requestedFeatures'
          property :requested_link_count, as: 'requestedLinkCount'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :self_link, as: 'selfLink'
          property :state, as: 'state'
          collection :wire_groups, as: 'wireGroups'
        end
      end
      
      class InterconnectApplicationAwareInterconnect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bandwidth_percentage_policy, as: 'bandwidthPercentagePolicy', class: Google::Apis::ComputeBeta::InterconnectApplicationAwareInterconnectBandwidthPercentagePolicy, decorator: Google::Apis::ComputeBeta::InterconnectApplicationAwareInterconnectBandwidthPercentagePolicy::Representation
      
          property :profile_description, as: 'profileDescription'
          collection :shape_average_percentages, as: 'shapeAveragePercentages', class: Google::Apis::ComputeBeta::InterconnectApplicationAwareInterconnectBandwidthPercentage, decorator: Google::Apis::ComputeBeta::InterconnectApplicationAwareInterconnectBandwidthPercentage::Representation
      
          property :strict_priority_policy, as: 'strictPriorityPolicy', class: Google::Apis::ComputeBeta::InterconnectApplicationAwareInterconnectStrictPriorityPolicy, decorator: Google::Apis::ComputeBeta::InterconnectApplicationAwareInterconnectStrictPriorityPolicy::Representation
      
        end
      end
      
      class InterconnectApplicationAwareInterconnectBandwidthPercentage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :percentage, as: 'percentage'
          property :traffic_class, as: 'trafficClass'
        end
      end
      
      class InterconnectApplicationAwareInterconnectBandwidthPercentagePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bandwidth_percentages, as: 'bandwidthPercentages', class: Google::Apis::ComputeBeta::InterconnectApplicationAwareInterconnectBandwidthPercentage, decorator: Google::Apis::ComputeBeta::InterconnectApplicationAwareInterconnectBandwidthPercentage::Representation
      
        end
      end
      
      class InterconnectApplicationAwareInterconnectStrictPriorityPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class InterconnectAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_enabled, as: 'adminEnabled'
          property :attachment_group, as: 'attachmentGroup'
          property :bandwidth, as: 'bandwidth'
          property :candidate_cloud_router_ip_address, as: 'candidateCloudRouterIpAddress'
          property :candidate_cloud_router_ipv6_address, as: 'candidateCloudRouterIpv6Address'
          property :candidate_customer_router_ip_address, as: 'candidateCustomerRouterIpAddress'
          property :candidate_customer_router_ipv6_address, as: 'candidateCustomerRouterIpv6Address'
          collection :candidate_ipv6_subnets, as: 'candidateIpv6Subnets'
          collection :candidate_subnets, as: 'candidateSubnets'
          property :cloud_router_ip_address, as: 'cloudRouterIpAddress'
          property :cloud_router_ipv6_address, as: 'cloudRouterIpv6Address'
          property :cloud_router_ipv6_interface_id, as: 'cloudRouterIpv6InterfaceId'
          property :configuration_constraints, as: 'configurationConstraints', class: Google::Apis::ComputeBeta::InterconnectAttachmentConfigurationConstraints, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentConfigurationConstraints::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          property :customer_router_ip_address, as: 'customerRouterIpAddress'
          property :customer_router_ipv6_address, as: 'customerRouterIpv6Address'
          property :customer_router_ipv6_interface_id, as: 'customerRouterIpv6InterfaceId'
          property :dataplane_version, as: 'dataplaneVersion'
          property :description, as: 'description'
          property :edge_availability_domain, as: 'edgeAvailabilityDomain'
          property :encryption, as: 'encryption'
          property :google_reference_id, as: 'googleReferenceId'
          property :id, :numeric_string => true, as: 'id'
          property :interconnect, as: 'interconnect'
          collection :ipsec_internal_addresses, as: 'ipsecInternalAddresses'
          property :kind, as: 'kind'
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
          property :mtu, as: 'mtu'
          property :name, as: 'name'
          property :operational_status, as: 'operationalStatus'
          property :pairing_key, as: 'pairingKey'
          property :partner_asn, :numeric_string => true, as: 'partnerAsn'
          property :partner_metadata, as: 'partnerMetadata', class: Google::Apis::ComputeBeta::InterconnectAttachmentPartnerMetadata, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentPartnerMetadata::Representation
      
          property :private_interconnect_info, as: 'privateInterconnectInfo', class: Google::Apis::ComputeBeta::InterconnectAttachmentPrivateInfo, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentPrivateInfo::Representation
      
          property :region, as: 'region'
          property :remote_service, as: 'remoteService'
          property :router, as: 'router'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :self_link, as: 'selfLink'
          property :stack_type, as: 'stackType'
          property :state, as: 'state'
          property :subnet_length, as: 'subnetLength'
          property :type, as: 'type'
          property :vlan_tag8021q, as: 'vlanTag8021q'
        end
      end
      
      class InterconnectAttachmentAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::InterconnectAttachmentsScopedList, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentsScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InterconnectAttachmentAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InterconnectAttachmentAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentAggregatedList::Warning::Datum::Representation
        
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
      
      class InterconnectAttachmentConfigurationConstraints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bgp_md5, as: 'bgpMd5'
          collection :bgp_peer_asn_ranges, as: 'bgpPeerAsnRanges', class: Google::Apis::ComputeBeta::InterconnectAttachmentConfigurationConstraintsBgpPeerAsnRange, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentConfigurationConstraintsBgpPeerAsnRange::Representation
      
        end
      end
      
      class InterconnectAttachmentConfigurationConstraintsBgpPeerAsnRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max, as: 'max'
          property :min, as: 'min'
        end
      end
      
      class InterconnectAttachmentGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attachments, as: 'attachments', class: Google::Apis::ComputeBeta::InterconnectAttachmentGroupAttachment, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentGroupAttachment::Representation
      
          property :configured, as: 'configured', class: Google::Apis::ComputeBeta::InterconnectAttachmentGroupConfigured, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentGroupConfigured::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :id, :numeric_string => true, as: 'id'
          property :intent, as: 'intent', class: Google::Apis::ComputeBeta::InterconnectAttachmentGroupIntent, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentGroupIntent::Representation
      
          property :interconnect_group, as: 'interconnectGroup'
          property :kind, as: 'kind'
          property :logical_structure, as: 'logicalStructure', class: Google::Apis::ComputeBeta::InterconnectAttachmentGroupLogicalStructure, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentGroupLogicalStructure::Representation
      
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
        end
      end
      
      class InterconnectAttachmentGroupAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attachment, as: 'attachment'
        end
      end
      
      class InterconnectAttachmentGroupConfigured
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :availability_sla, as: 'availabilitySla', class: Google::Apis::ComputeBeta::InterconnectAttachmentGroupConfiguredAvailabilitySla, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentGroupConfiguredAvailabilitySla::Representation
      
        end
      end
      
      class InterconnectAttachmentGroupConfiguredAvailabilitySla
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :effective_sla, as: 'effectiveSla'
          collection :intended_sla_blockers, as: 'intendedSlaBlockers', class: Google::Apis::ComputeBeta::InterconnectAttachmentGroupConfiguredAvailabilitySlaIntendedSlaBlockers, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentGroupConfiguredAvailabilitySlaIntendedSlaBlockers::Representation
      
        end
      end
      
      class InterconnectAttachmentGroupConfiguredAvailabilitySlaIntendedSlaBlockers
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attachments, as: 'attachments'
          property :blocker_type, as: 'blockerType'
          property :documentation_link, as: 'documentationLink'
          property :explanation, as: 'explanation'
          collection :metros, as: 'metros'
          collection :regions, as: 'regions'
          collection :zones, as: 'zones'
        end
      end
      
      class InterconnectAttachmentGroupIntent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :availability_sla, as: 'availabilitySla'
        end
      end
      
      class InterconnectAttachmentGroupLogicalStructure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :regions, as: 'regions', class: Google::Apis::ComputeBeta::InterconnectAttachmentGroupLogicalStructureRegion, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentGroupLogicalStructureRegion::Representation
      
        end
      end
      
      class InterconnectAttachmentGroupLogicalStructureRegion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metros, as: 'metros', class: Google::Apis::ComputeBeta::InterconnectAttachmentGroupLogicalStructureRegionMetro, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentGroupLogicalStructureRegionMetro::Representation
      
          property :region, as: 'region'
        end
      end
      
      class InterconnectAttachmentGroupLogicalStructureRegionMetro
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :facilities, as: 'facilities', class: Google::Apis::ComputeBeta::InterconnectAttachmentGroupLogicalStructureRegionMetroFacility, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentGroupLogicalStructureRegionMetroFacility::Representation
      
          property :metro, as: 'metro'
        end
      end
      
      class InterconnectAttachmentGroupLogicalStructureRegionMetroFacility
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :facility, as: 'facility'
          collection :zones, as: 'zones', class: Google::Apis::ComputeBeta::InterconnectAttachmentGroupLogicalStructureRegionMetroFacilityZone, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentGroupLogicalStructureRegionMetroFacilityZone::Representation
      
        end
      end
      
      class InterconnectAttachmentGroupLogicalStructureRegionMetroFacilityZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attachments, as: 'attachments'
          property :zone, as: 'zone'
        end
      end
      
      class InterconnectAttachmentGroupsGetOperationalStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :result, as: 'result', class: Google::Apis::ComputeBeta::InterconnectAttachmentGroupsOperationalStatus, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentGroupsOperationalStatus::Representation
      
        end
      end
      
      class InterconnectAttachmentGroupsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InterconnectAttachmentGroup, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentGroup::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InterconnectAttachmentGroupsListResponse::Warning, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentGroupsListResponse::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InterconnectAttachmentGroupsListResponse::Warning::Datum, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentGroupsListResponse::Warning::Datum::Representation
        
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
      
      class InterconnectAttachmentGroupsOperationalStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attachment_statuses, as: 'attachmentStatuses', class: Google::Apis::ComputeBeta::InterconnectAttachmentGroupsOperationalStatusAttachmentStatus, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentGroupsOperationalStatusAttachmentStatus::Representation
      
          property :configured, as: 'configured', class: Google::Apis::ComputeBeta::InterconnectAttachmentGroupConfigured, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentGroupConfigured::Representation
      
          property :group_status, as: 'groupStatus'
          property :intent, as: 'intent', class: Google::Apis::ComputeBeta::InterconnectAttachmentGroupIntent, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentGroupIntent::Representation
      
          property :operational, as: 'operational', class: Google::Apis::ComputeBeta::InterconnectAttachmentGroupConfigured, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentGroupConfigured::Representation
      
        end
      end
      
      class InterconnectAttachmentGroupsOperationalStatusAttachmentStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_enabled, as: 'adminEnabled'
          property :attachment, as: 'attachment'
          property :is_active, as: 'isActive'
          property :status, as: 'status'
        end
      end
      
      class InterconnectAttachmentList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InterconnectAttachment, decorator: Google::Apis::ComputeBeta::InterconnectAttachment::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InterconnectAttachmentList::Warning, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InterconnectAttachmentList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentList::Warning::Datum::Representation
        
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
      
      class InterconnectAttachmentPartnerMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interconnect_name, as: 'interconnectName'
          property :partner_name, as: 'partnerName'
          property :portal_url, as: 'portalUrl'
        end
      end
      
      class InterconnectAttachmentPrivateInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tag8021q, as: 'tag8021q'
        end
      end
      
      class InterconnectAttachmentsScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :interconnect_attachments, as: 'interconnectAttachments', class: Google::Apis::ComputeBeta::InterconnectAttachment, decorator: Google::Apis::ComputeBeta::InterconnectAttachment::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InterconnectAttachmentsScopedList::Warning, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentsScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InterconnectAttachmentsScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentsScopedList::Warning::Datum::Representation
        
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
      
      class InterconnectCircuitInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_demarc_id, as: 'customerDemarcId'
          property :google_circuit_id, as: 'googleCircuitId'
          property :google_demarc_id, as: 'googleDemarcId'
        end
      end
      
      class InterconnectDiagnostics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :arp_caches, as: 'arpCaches', class: Google::Apis::ComputeBeta::InterconnectDiagnosticsArpEntry, decorator: Google::Apis::ComputeBeta::InterconnectDiagnosticsArpEntry::Representation
      
          property :bundle_aggregation_type, as: 'bundleAggregationType'
          property :bundle_operational_status, as: 'bundleOperationalStatus'
          collection :links, as: 'links', class: Google::Apis::ComputeBeta::InterconnectDiagnosticsLinkStatus, decorator: Google::Apis::ComputeBeta::InterconnectDiagnosticsLinkStatus::Representation
      
          property :mac_address, as: 'macAddress'
        end
      end
      
      class InterconnectDiagnosticsArpEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_address, as: 'ipAddress'
          property :mac_address, as: 'macAddress'
        end
      end
      
      class InterconnectDiagnosticsLinkLacpStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :google_system_id, as: 'googleSystemId'
          property :neighbor_system_id, as: 'neighborSystemId'
          property :state, as: 'state'
        end
      end
      
      class InterconnectDiagnosticsLinkOpticalPower
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
          property :value, as: 'value'
        end
      end
      
      class InterconnectDiagnosticsLinkStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :arp_caches, as: 'arpCaches', class: Google::Apis::ComputeBeta::InterconnectDiagnosticsArpEntry, decorator: Google::Apis::ComputeBeta::InterconnectDiagnosticsArpEntry::Representation
      
          property :circuit_id, as: 'circuitId'
          property :google_demarc, as: 'googleDemarc'
          property :lacp_status, as: 'lacpStatus', class: Google::Apis::ComputeBeta::InterconnectDiagnosticsLinkLacpStatus, decorator: Google::Apis::ComputeBeta::InterconnectDiagnosticsLinkLacpStatus::Representation
      
          property :macsec, as: 'macsec', class: Google::Apis::ComputeBeta::InterconnectDiagnosticsMacsecStatus, decorator: Google::Apis::ComputeBeta::InterconnectDiagnosticsMacsecStatus::Representation
      
          property :operational_status, as: 'operationalStatus'
          property :receiving_optical_power, as: 'receivingOpticalPower', class: Google::Apis::ComputeBeta::InterconnectDiagnosticsLinkOpticalPower, decorator: Google::Apis::ComputeBeta::InterconnectDiagnosticsLinkOpticalPower::Representation
      
          property :transmitting_optical_power, as: 'transmittingOpticalPower', class: Google::Apis::ComputeBeta::InterconnectDiagnosticsLinkOpticalPower, decorator: Google::Apis::ComputeBeta::InterconnectDiagnosticsLinkOpticalPower::Representation
      
        end
      end
      
      class InterconnectDiagnosticsMacsecStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ckn, as: 'ckn'
          property :operational, as: 'operational'
        end
      end
      
      class InterconnectGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :configured, as: 'configured', class: Google::Apis::ComputeBeta::InterconnectGroupConfigured, decorator: Google::Apis::ComputeBeta::InterconnectGroupConfigured::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :id, :numeric_string => true, as: 'id'
          property :intent, as: 'intent', class: Google::Apis::ComputeBeta::InterconnectGroupIntent, decorator: Google::Apis::ComputeBeta::InterconnectGroupIntent::Representation
      
          hash :interconnects, as: 'interconnects', class: Google::Apis::ComputeBeta::InterconnectGroupInterconnect, decorator: Google::Apis::ComputeBeta::InterconnectGroupInterconnect::Representation
      
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :physical_structure, as: 'physicalStructure', class: Google::Apis::ComputeBeta::InterconnectGroupPhysicalStructure, decorator: Google::Apis::ComputeBeta::InterconnectGroupPhysicalStructure::Representation
      
          property :self_link, as: 'selfLink'
        end
      end
      
      class InterconnectGroupConfigured
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topology_capability, as: 'topologyCapability', class: Google::Apis::ComputeBeta::InterconnectGroupConfiguredTopologyCapability, decorator: Google::Apis::ComputeBeta::InterconnectGroupConfiguredTopologyCapability::Representation
      
        end
      end
      
      class InterconnectGroupConfiguredTopologyCapability
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :intended_capability_blockers, as: 'intendedCapabilityBlockers', class: Google::Apis::ComputeBeta::InterconnectGroupConfiguredTopologyCapabilityIntendedCapabilityBlockers, decorator: Google::Apis::ComputeBeta::InterconnectGroupConfiguredTopologyCapabilityIntendedCapabilityBlockers::Representation
      
          property :supported_sla, as: 'supportedSla'
        end
      end
      
      class InterconnectGroupConfiguredTopologyCapabilityIntendedCapabilityBlockers
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blocker_type, as: 'blockerType'
          property :documentation_link, as: 'documentationLink'
          property :explanation, as: 'explanation'
          collection :facilities, as: 'facilities'
          collection :interconnects, as: 'interconnects'
          collection :metros, as: 'metros'
          collection :zones, as: 'zones'
        end
      end
      
      class InterconnectGroupIntent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topology_capability, as: 'topologyCapability'
        end
      end
      
      class InterconnectGroupInterconnect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interconnect, as: 'interconnect'
        end
      end
      
      class InterconnectGroupPhysicalStructure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metros, as: 'metros', class: Google::Apis::ComputeBeta::InterconnectGroupPhysicalStructureMetros, decorator: Google::Apis::ComputeBeta::InterconnectGroupPhysicalStructureMetros::Representation
      
        end
      end
      
      class InterconnectGroupPhysicalStructureMetros
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :facilities, as: 'facilities', class: Google::Apis::ComputeBeta::InterconnectGroupPhysicalStructureMetrosFacilities, decorator: Google::Apis::ComputeBeta::InterconnectGroupPhysicalStructureMetrosFacilities::Representation
      
          property :metro, as: 'metro'
        end
      end
      
      class InterconnectGroupPhysicalStructureMetrosFacilities
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :facility, as: 'facility'
          collection :zones, as: 'zones', class: Google::Apis::ComputeBeta::InterconnectGroupPhysicalStructureMetrosFacilitiesZones, decorator: Google::Apis::ComputeBeta::InterconnectGroupPhysicalStructureMetrosFacilitiesZones::Representation
      
        end
      end
      
      class InterconnectGroupPhysicalStructureMetrosFacilitiesZones
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :interconnects, as: 'interconnects'
          property :zone, as: 'zone'
        end
      end
      
      class InterconnectGroupsCreateMembers
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :intent_mismatch_behavior, as: 'intentMismatchBehavior'
          collection :interconnects, as: 'interconnects', class: Google::Apis::ComputeBeta::InterconnectGroupsCreateMembersInterconnectInput, decorator: Google::Apis::ComputeBeta::InterconnectGroupsCreateMembersInterconnectInput::Representation
      
          property :template_interconnect, as: 'templateInterconnect', class: Google::Apis::ComputeBeta::InterconnectGroupsCreateMembersInterconnectInput, decorator: Google::Apis::ComputeBeta::InterconnectGroupsCreateMembersInterconnectInput::Representation
      
        end
      end
      
      class InterconnectGroupsCreateMembersInterconnectInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_enabled, as: 'adminEnabled'
          property :customer_name, as: 'customerName'
          property :description, as: 'description'
          property :facility, as: 'facility'
          property :interconnect_type, as: 'interconnectType'
          property :link_type, as: 'linkType'
          property :name, as: 'name'
          property :noc_contact_email, as: 'nocContactEmail'
          property :remote_location, as: 'remoteLocation'
          collection :requested_features, as: 'requestedFeatures'
          property :requested_link_count, as: 'requestedLinkCount'
        end
      end
      
      class InterconnectGroupsCreateMembersRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request, as: 'request', class: Google::Apis::ComputeBeta::InterconnectGroupsCreateMembers, decorator: Google::Apis::ComputeBeta::InterconnectGroupsCreateMembers::Representation
      
        end
      end
      
      class InterconnectGroupsGetOperationalStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :result, as: 'result', class: Google::Apis::ComputeBeta::InterconnectGroupsOperationalStatus, decorator: Google::Apis::ComputeBeta::InterconnectGroupsOperationalStatus::Representation
      
        end
      end
      
      class InterconnectGroupsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InterconnectGroup, decorator: Google::Apis::ComputeBeta::InterconnectGroup::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InterconnectGroupsListResponse::Warning, decorator: Google::Apis::ComputeBeta::InterconnectGroupsListResponse::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InterconnectGroupsListResponse::Warning::Datum, decorator: Google::Apis::ComputeBeta::InterconnectGroupsListResponse::Warning::Datum::Representation
        
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
      
      class InterconnectGroupsOperationalStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :configured, as: 'configured', class: Google::Apis::ComputeBeta::InterconnectGroupConfigured, decorator: Google::Apis::ComputeBeta::InterconnectGroupConfigured::Representation
      
          property :group_status, as: 'groupStatus'
          property :intent, as: 'intent', class: Google::Apis::ComputeBeta::InterconnectGroupIntent, decorator: Google::Apis::ComputeBeta::InterconnectGroupIntent::Representation
      
          collection :interconnect_statuses, as: 'interconnectStatuses', class: Google::Apis::ComputeBeta::InterconnectGroupsOperationalStatusInterconnectStatus, decorator: Google::Apis::ComputeBeta::InterconnectGroupsOperationalStatusInterconnectStatus::Representation
      
          property :operational, as: 'operational', class: Google::Apis::ComputeBeta::InterconnectGroupConfigured, decorator: Google::Apis::ComputeBeta::InterconnectGroupConfigured::Representation
      
        end
      end
      
      class InterconnectGroupsOperationalStatusInterconnectStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_enabled, as: 'adminEnabled'
          property :diagnostics, as: 'diagnostics', class: Google::Apis::ComputeBeta::InterconnectDiagnostics, decorator: Google::Apis::ComputeBeta::InterconnectDiagnostics::Representation
      
          property :interconnect, as: 'interconnect'
          property :is_active, as: 'isActive'
        end
      end
      
      class InterconnectList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Interconnect, decorator: Google::Apis::ComputeBeta::Interconnect::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InterconnectList::Warning, decorator: Google::Apis::ComputeBeta::InterconnectList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InterconnectList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InterconnectList::Warning::Datum::Representation
        
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
      
      class InterconnectLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :availability_zone, as: 'availabilityZone'
          collection :available_features, as: 'availableFeatures'
          collection :available_link_types, as: 'availableLinkTypes'
          property :city, as: 'city'
          property :continent, as: 'continent'
          property :creation_timestamp, as: 'creationTimestamp'
          collection :cross_site_interconnect_infos, as: 'crossSiteInterconnectInfos', class: Google::Apis::ComputeBeta::InterconnectLocationCrossSiteInterconnectInfo, decorator: Google::Apis::ComputeBeta::InterconnectLocationCrossSiteInterconnectInfo::Representation
      
          property :description, as: 'description'
          property :facility_provider, as: 'facilityProvider'
          property :facility_provider_facility_id, as: 'facilityProviderFacilityId'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :peeringdb_facility_id, as: 'peeringdbFacilityId'
          collection :region_infos, as: 'regionInfos', class: Google::Apis::ComputeBeta::InterconnectLocationRegionInfo, decorator: Google::Apis::ComputeBeta::InterconnectLocationRegionInfo::Representation
      
          property :self_link, as: 'selfLink'
          property :status, as: 'status'
          property :supports_pzs, as: 'supportsPzs'
        end
      end
      
      class InterconnectLocationCrossSiteInterconnectInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :city, as: 'city'
        end
      end
      
      class InterconnectLocationList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InterconnectLocation, decorator: Google::Apis::ComputeBeta::InterconnectLocation::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InterconnectLocationList::Warning, decorator: Google::Apis::ComputeBeta::InterconnectLocationList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InterconnectLocationList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InterconnectLocationList::Warning::Datum::Representation
        
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
      
      class InterconnectLocationRegionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expected_rtt_ms, :numeric_string => true, as: 'expectedRttMs'
          property :location_presence, as: 'locationPresence'
          property :region, as: 'region'
        end
      end
      
      class InterconnectMacsec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fail_open, as: 'failOpen'
          collection :pre_shared_keys, as: 'preSharedKeys', class: Google::Apis::ComputeBeta::InterconnectMacsecPreSharedKey, decorator: Google::Apis::ComputeBeta::InterconnectMacsecPreSharedKey::Representation
      
        end
      end
      
      class InterconnectMacsecConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :pre_shared_keys, as: 'preSharedKeys', class: Google::Apis::ComputeBeta::InterconnectMacsecConfigPreSharedKey, decorator: Google::Apis::ComputeBeta::InterconnectMacsecConfigPreSharedKey::Representation
      
        end
      end
      
      class InterconnectMacsecConfigPreSharedKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cak, as: 'cak'
          property :ckn, as: 'ckn'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
        end
      end
      
      class InterconnectMacsecPreSharedKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :start_time, as: 'startTime'
        end
      end
      
      class InterconnectOutageNotification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :affected_circuits, as: 'affectedCircuits'
          property :description, as: 'description'
          property :end_time, :numeric_string => true, as: 'endTime'
          property :issue_type, as: 'issueType'
          property :name, as: 'name'
          property :source, as: 'source'
          property :start_time, :numeric_string => true, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class InterconnectRemoteLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :attachment_configuration_constraints, as: 'attachmentConfigurationConstraints', class: Google::Apis::ComputeBeta::InterconnectAttachmentConfigurationConstraints, decorator: Google::Apis::ComputeBeta::InterconnectAttachmentConfigurationConstraints::Representation
      
          property :city, as: 'city'
          property :constraints, as: 'constraints', class: Google::Apis::ComputeBeta::InterconnectRemoteLocationConstraints, decorator: Google::Apis::ComputeBeta::InterconnectRemoteLocationConstraints::Representation
      
          property :continent, as: 'continent'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :facility_provider, as: 'facilityProvider'
          property :facility_provider_facility_id, as: 'facilityProviderFacilityId'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :lacp, as: 'lacp'
          property :max_lag_size100_gbps, as: 'maxLagSize100Gbps'
          property :max_lag_size10_gbps, as: 'maxLagSize10Gbps'
          property :name, as: 'name'
          property :peeringdb_facility_id, as: 'peeringdbFacilityId'
          collection :permitted_connections, as: 'permittedConnections', class: Google::Apis::ComputeBeta::InterconnectRemoteLocationPermittedConnections, decorator: Google::Apis::ComputeBeta::InterconnectRemoteLocationPermittedConnections::Representation
      
          property :remote_service, as: 'remoteService'
          property :self_link, as: 'selfLink'
          property :status, as: 'status'
        end
      end
      
      class InterconnectRemoteLocationConstraints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :port_pair_remote_location, as: 'portPairRemoteLocation'
          property :port_pair_vlan, as: 'portPairVlan'
          property :subnet_length_range, as: 'subnetLengthRange', class: Google::Apis::ComputeBeta::InterconnectRemoteLocationConstraintsSubnetLengthRange, decorator: Google::Apis::ComputeBeta::InterconnectRemoteLocationConstraintsSubnetLengthRange::Representation
      
        end
      end
      
      class InterconnectRemoteLocationConstraintsSubnetLengthRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max, as: 'max'
          property :min, as: 'min'
        end
      end
      
      class InterconnectRemoteLocationList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InterconnectRemoteLocation, decorator: Google::Apis::ComputeBeta::InterconnectRemoteLocation::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::InterconnectRemoteLocationList::Warning, decorator: Google::Apis::ComputeBeta::InterconnectRemoteLocationList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::InterconnectRemoteLocationList::Warning::Datum, decorator: Google::Apis::ComputeBeta::InterconnectRemoteLocationList::Warning::Datum::Representation
        
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
      
      class InterconnectRemoteLocationPermittedConnections
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interconnect_location, as: 'interconnectLocation'
        end
      end
      
      class InterconnectsGetDiagnosticsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :result, as: 'result', class: Google::Apis::ComputeBeta::InterconnectDiagnostics, decorator: Google::Apis::ComputeBeta::InterconnectDiagnostics::Representation
      
        end
      end
      
      class InterconnectsGetMacsecConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :result, as: 'result', class: Google::Apis::ComputeBeta::InterconnectMacsecConfig, decorator: Google::Apis::ComputeBeta::InterconnectMacsecConfig::Representation
      
        end
      end
      
      class License
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_replacement_licenses, as: 'allowedReplacementLicenses'
          property :appendable_to_disk, as: 'appendableToDisk'
          property :charges_use_fee, as: 'chargesUseFee'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          collection :incompatible_licenses, as: 'incompatibleLicenses'
          property :kind, as: 'kind'
          property :license_code, :numeric_string => true, as: 'licenseCode'
          property :minimum_retention, as: 'minimumRetention', class: Google::Apis::ComputeBeta::Duration, decorator: Google::Apis::ComputeBeta::Duration::Representation
      
          property :multi_tenant_only, as: 'multiTenantOnly'
          property :name, as: 'name'
          property :os_license, as: 'osLicense'
          property :removable_from_disk, as: 'removableFromDisk'
          collection :required_coattached_licenses, as: 'requiredCoattachedLicenses'
          property :resource_requirements, as: 'resourceRequirements', class: Google::Apis::ComputeBeta::LicenseResourceRequirements, decorator: Google::Apis::ComputeBeta::LicenseResourceRequirements::Representation
      
          property :self_link, as: 'selfLink'
          property :self_link_with_id, as: 'selfLinkWithId'
          property :sole_tenant_only, as: 'soleTenantOnly'
          property :transferable, as: 'transferable'
          property :update_timestamp, as: 'updateTimestamp'
        end
      end
      
      class LicenseCode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          collection :license_alias, as: 'licenseAlias', class: Google::Apis::ComputeBeta::LicenseCodeLicenseAlias, decorator: Google::Apis::ComputeBeta::LicenseCodeLicenseAlias::Representation
      
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
          property :state, as: 'state'
          property :transferable, as: 'transferable'
        end
      end
      
      class LicenseCodeLicenseAlias
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :self_link, as: 'selfLink'
        end
      end
      
      class LicenseResourceCommitment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, :numeric_string => true, as: 'amount'
          property :cores_per_license, as: 'coresPerLicense'
          property :license, as: 'license'
        end
      end
      
      class LicenseResourceRequirements
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_guest_cpu_count, as: 'minGuestCpuCount'
          property :min_memory_mb, as: 'minMemoryMb'
        end
      end
      
      class LicensesListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::License, decorator: Google::Apis::ComputeBeta::License::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::LicensesListResponse::Warning, decorator: Google::Apis::ComputeBeta::LicensesListResponse::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::LicensesListResponse::Warning::Datum, decorator: Google::Apis::ComputeBeta::LicensesListResponse::Warning::Datum::Representation
        
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
      
      class LocalDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_count, as: 'diskCount'
          property :disk_size_gb, as: 'diskSizeGb'
          property :disk_type, as: 'diskType'
        end
      end
      
      class LocalizedMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :locale, as: 'locale'
          property :message, as: 'message'
        end
      end
      
      class LocationPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :locations, as: 'locations', class: Google::Apis::ComputeBeta::LocationPolicyLocation, decorator: Google::Apis::ComputeBeta::LocationPolicyLocation::Representation
      
          property :target_shape, as: 'targetShape'
        end
      end
      
      class LocationPolicyLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :constraints, as: 'constraints', class: Google::Apis::ComputeBeta::LocationPolicyLocationConstraints, decorator: Google::Apis::ComputeBeta::LocationPolicyLocationConstraints::Representation
      
          property :preference, as: 'preference'
        end
      end
      
      class LocationPolicyLocationConstraints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_count, as: 'maxCount'
        end
      end
      
      class MachineImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :guest_flush, as: 'guestFlush'
          property :id, :numeric_string => true, as: 'id'
          property :instance_properties, as: 'instanceProperties', class: Google::Apis::ComputeBeta::InstanceProperties, decorator: Google::Apis::ComputeBeta::InstanceProperties::Representation
      
          property :kind, as: 'kind'
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
          property :machine_image_encryption_key, as: 'machineImageEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :name, as: 'name'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          collection :saved_disks, as: 'savedDisks', class: Google::Apis::ComputeBeta::SavedDisk, decorator: Google::Apis::ComputeBeta::SavedDisk::Representation
      
          property :self_link, as: 'selfLink'
          collection :source_disk_encryption_keys, as: 'sourceDiskEncryptionKeys', class: Google::Apis::ComputeBeta::SourceDiskEncryptionKey, decorator: Google::Apis::ComputeBeta::SourceDiskEncryptionKey::Representation
      
          property :source_instance, as: 'sourceInstance'
          property :source_instance_properties, as: 'sourceInstanceProperties', class: Google::Apis::ComputeBeta::SourceInstanceProperties, decorator: Google::Apis::ComputeBeta::SourceInstanceProperties::Representation
      
          property :status, as: 'status'
          collection :storage_locations, as: 'storageLocations'
          property :total_storage_bytes, :numeric_string => true, as: 'totalStorageBytes'
        end
      end
      
      class MachineImageList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::MachineImage, decorator: Google::Apis::ComputeBeta::MachineImage::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::MachineImageList::Warning, decorator: Google::Apis::ComputeBeta::MachineImageList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::MachineImageList::Warning::Datum, decorator: Google::Apis::ComputeBeta::MachineImageList::Warning::Datum::Representation
        
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
      
      class MachineType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accelerators, as: 'accelerators', class: Google::Apis::ComputeBeta::MachineType::Accelerator, decorator: Google::Apis::ComputeBeta::MachineType::Accelerator::Representation
      
          property :architecture, as: 'architecture'
          property :bundled_local_ssds, as: 'bundledLocalSsds', class: Google::Apis::ComputeBeta::BundledLocalSsds, decorator: Google::Apis::ComputeBeta::BundledLocalSsds::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          property :deprecated, as: 'deprecated', class: Google::Apis::ComputeBeta::DeprecationStatus, decorator: Google::Apis::ComputeBeta::DeprecationStatus::Representation
      
          property :description, as: 'description'
          property :guest_cpus, as: 'guestCpus'
          property :id, :numeric_string => true, as: 'id'
          property :is_shared_cpu, as: 'isSharedCpu'
          property :kind, as: 'kind'
          property :maximum_persistent_disks, as: 'maximumPersistentDisks'
          property :maximum_persistent_disks_size_gb, :numeric_string => true, as: 'maximumPersistentDisksSizeGb'
          property :memory_mb, as: 'memoryMb'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
          property :zone, as: 'zone'
        end
        
        class Accelerator
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :guest_accelerator_count, as: 'guestAcceleratorCount'
            property :guest_accelerator_type, as: 'guestAcceleratorType'
          end
        end
      end
      
      class MachineTypeAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::MachineTypesScopedList, decorator: Google::Apis::ComputeBeta::MachineTypesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::MachineTypeAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::MachineTypeAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::MachineTypeAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::MachineTypeAggregatedList::Warning::Datum::Representation
        
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
      
      class MachineTypeList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::MachineType, decorator: Google::Apis::ComputeBeta::MachineType::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::MachineTypeList::Warning, decorator: Google::Apis::ComputeBeta::MachineTypeList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::MachineTypeList::Warning::Datum, decorator: Google::Apis::ComputeBeta::MachineTypeList::Warning::Datum::Representation
        
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
      
      class MachineTypesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :machine_types, as: 'machineTypes', class: Google::Apis::ComputeBeta::MachineType, decorator: Google::Apis::ComputeBeta::MachineType::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::MachineTypesScopedList::Warning, decorator: Google::Apis::ComputeBeta::MachineTypesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::MachineTypesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::MachineTypesScopedList::Warning::Datum::Representation
        
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
      
      class ManagedInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_instances_config, as: 'allInstancesConfig', class: Google::Apis::ComputeBeta::ManagedInstanceAllInstancesConfig, decorator: Google::Apis::ComputeBeta::ManagedInstanceAllInstancesConfig::Representation
      
          property :current_action, as: 'currentAction'
          property :id, :numeric_string => true, as: 'id'
          property :instance, as: 'instance'
          collection :instance_health, as: 'instanceHealth', class: Google::Apis::ComputeBeta::ManagedInstanceInstanceHealth, decorator: Google::Apis::ComputeBeta::ManagedInstanceInstanceHealth::Representation
      
          property :instance_status, as: 'instanceStatus'
          property :last_attempt, as: 'lastAttempt', class: Google::Apis::ComputeBeta::ManagedInstanceLastAttempt, decorator: Google::Apis::ComputeBeta::ManagedInstanceLastAttempt::Representation
      
          property :name, as: 'name'
          property :preserved_state_from_config, as: 'preservedStateFromConfig', class: Google::Apis::ComputeBeta::PreservedState, decorator: Google::Apis::ComputeBeta::PreservedState::Representation
      
          property :preserved_state_from_policy, as: 'preservedStateFromPolicy', class: Google::Apis::ComputeBeta::PreservedState, decorator: Google::Apis::ComputeBeta::PreservedState::Representation
      
          property :properties_from_flexibility_policy, as: 'propertiesFromFlexibilityPolicy', class: Google::Apis::ComputeBeta::ManagedInstancePropertiesFromFlexibilityPolicy, decorator: Google::Apis::ComputeBeta::ManagedInstancePropertiesFromFlexibilityPolicy::Representation
      
          property :target_status, as: 'targetStatus'
          property :version, as: 'version', class: Google::Apis::ComputeBeta::ManagedInstanceVersion, decorator: Google::Apis::ComputeBeta::ManagedInstanceVersion::Representation
      
        end
      end
      
      class ManagedInstanceAllInstancesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :revision, as: 'revision'
        end
      end
      
      class ManagedInstanceInstanceHealth
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detailed_health_state, as: 'detailedHealthState'
          property :health_check, as: 'healthCheck'
        end
      end
      
      class ManagedInstanceLastAttempt
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :errors, as: 'errors', class: Google::Apis::ComputeBeta::ManagedInstanceLastAttempt::Errors, decorator: Google::Apis::ComputeBeta::ManagedInstanceLastAttempt::Errors::Representation
      
        end
        
        class Errors
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :errors, as: 'errors', class: Google::Apis::ComputeBeta::ManagedInstanceLastAttempt::Errors::Error, decorator: Google::Apis::ComputeBeta::ManagedInstanceLastAttempt::Errors::Error::Representation
        
          end
          
          class Error
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :code, as: 'code'
              collection :error_details, as: 'errorDetails', class: Google::Apis::ComputeBeta::ManagedInstanceLastAttempt::Errors::Error::ErrorDetail, decorator: Google::Apis::ComputeBeta::ManagedInstanceLastAttempt::Errors::Error::ErrorDetail::Representation
          
              property :location, as: 'location'
              property :message, as: 'message'
            end
            
            class ErrorDetail
              # @private
              class Representation < Google::Apis::Core::JsonRepresentation
                property :error_info, as: 'errorInfo', class: Google::Apis::ComputeBeta::ErrorInfo, decorator: Google::Apis::ComputeBeta::ErrorInfo::Representation
            
                property :help, as: 'help', class: Google::Apis::ComputeBeta::Help, decorator: Google::Apis::ComputeBeta::Help::Representation
            
                property :localized_message, as: 'localizedMessage', class: Google::Apis::ComputeBeta::LocalizedMessage, decorator: Google::Apis::ComputeBeta::LocalizedMessage::Representation
            
                property :quota_info, as: 'quotaInfo', class: Google::Apis::ComputeBeta::QuotaExceededInfo, decorator: Google::Apis::ComputeBeta::QuotaExceededInfo::Representation
            
              end
            end
          end
        end
      end
      
      class ManagedInstancePropertiesFromFlexibilityPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :machine_type, as: 'machineType'
          property :provisioning_model, as: 'provisioningModel'
        end
      end
      
      class ManagedInstanceVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_template, as: 'instanceTemplate'
          property :name, as: 'name'
        end
      end
      
      class Metadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fingerprint, :base64 => true, as: 'fingerprint'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Metadata::Item, decorator: Google::Apis::ComputeBeta::Metadata::Item::Representation
      
          property :kind, as: 'kind'
        end
        
        class Item
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :key, as: 'key'
            property :value, as: 'value'
          end
        end
      end
      
      class MetadataFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :filter_labels, as: 'filterLabels', class: Google::Apis::ComputeBeta::MetadataFilterLabelMatch, decorator: Google::Apis::ComputeBeta::MetadataFilterLabelMatch::Representation
      
          property :filter_match_criteria, as: 'filterMatchCriteria'
        end
      end
      
      class MetadataFilterLabelMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class MultiMig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :region, as: 'region'
          property :resource_policies, as: 'resourcePolicies', class: Google::Apis::ComputeBeta::MultiMigResourcePolicies, decorator: Google::Apis::ComputeBeta::MultiMigResourcePolicies::Representation
      
          property :self_link, as: 'selfLink'
        end
      end
      
      class MultiMigResourcePolicies
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :workload_policy, as: 'workloadPolicy'
        end
      end
      
      class MultiMigsList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::MultiMig, decorator: Google::Apis::ComputeBeta::MultiMig::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::MultiMigsList::Warning, decorator: Google::Apis::ComputeBeta::MultiMigsList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::MultiMigsList::Warning::Datum, decorator: Google::Apis::ComputeBeta::MultiMigsList::Warning::Datum::Representation
        
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
      
      class NamedPort
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :port, as: 'port'
        end
      end
      
      class NatIpInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :nat_ip_info_mappings, as: 'natIpInfoMappings', class: Google::Apis::ComputeBeta::NatIpInfoNatIpInfoMapping, decorator: Google::Apis::ComputeBeta::NatIpInfoNatIpInfoMapping::Representation
      
          property :nat_name, as: 'natName'
        end
      end
      
      class NatIpInfoNatIpInfoMapping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
          property :nat_ip, as: 'natIp'
          property :usage, as: 'usage'
        end
      end
      
      class NatIpInfoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :result, as: 'result', class: Google::Apis::ComputeBeta::NatIpInfo, decorator: Google::Apis::ComputeBeta::NatIpInfo::Representation
      
        end
      end
      
      class Network
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :i_pv4_range, as: 'IPv4Range'
          property :auto_create_subnetworks, as: 'autoCreateSubnetworks'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :enable_ula_internal_ipv6, as: 'enableUlaInternalIpv6'
          property :firewall_policy, as: 'firewallPolicy'
          property :gateway_i_pv4, as: 'gatewayIPv4'
          property :id, :numeric_string => true, as: 'id'
          property :internal_ipv6_range, as: 'internalIpv6Range'
          property :kind, as: 'kind'
          property :mtu, as: 'mtu'
          property :name, as: 'name'
          property :network_firewall_policy_enforcement_order, as: 'networkFirewallPolicyEnforcementOrder'
          property :network_profile, as: 'networkProfile'
          property :params, as: 'params', class: Google::Apis::ComputeBeta::NetworkParams, decorator: Google::Apis::ComputeBeta::NetworkParams::Representation
      
          collection :peerings, as: 'peerings', class: Google::Apis::ComputeBeta::NetworkPeering, decorator: Google::Apis::ComputeBeta::NetworkPeering::Representation
      
          property :routing_config, as: 'routingConfig', class: Google::Apis::ComputeBeta::NetworkRoutingConfig, decorator: Google::Apis::ComputeBeta::NetworkRoutingConfig::Representation
      
          property :self_link, as: 'selfLink'
          property :self_link_with_id, as: 'selfLinkWithId'
          collection :subnetworks, as: 'subnetworks'
        end
      end
      
      class NetworkAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connection_endpoints, as: 'connectionEndpoints', class: Google::Apis::ComputeBeta::NetworkAttachmentConnectedEndpoint, decorator: Google::Apis::ComputeBeta::NetworkAttachmentConnectedEndpoint::Representation
      
          property :connection_preference, as: 'connectionPreference'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :network, as: 'network'
          collection :producer_accept_lists, as: 'producerAcceptLists'
          collection :producer_reject_lists, as: 'producerRejectLists'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :self_link_with_id, as: 'selfLinkWithId'
          collection :subnetworks, as: 'subnetworks'
        end
      end
      
      class NetworkAttachmentAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::NetworkAttachmentsScopedList, decorator: Google::Apis::ComputeBeta::NetworkAttachmentsScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::NetworkAttachmentAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::NetworkAttachmentAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::NetworkAttachmentAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::NetworkAttachmentAggregatedList::Warning::Datum::Representation
        
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
      
      class NetworkAttachmentConnectedEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_address, as: 'ipAddress'
          property :ipv6_address, as: 'ipv6Address'
          property :project_id_or_num, as: 'projectIdOrNum'
          collection :secondary_ip_cidr_ranges, as: 'secondaryIpCidrRanges'
          property :status, as: 'status'
          property :subnetwork, as: 'subnetwork'
          property :subnetwork_cidr_range, as: 'subnetworkCidrRange'
        end
      end
      
      class NetworkAttachmentList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::NetworkAttachment, decorator: Google::Apis::ComputeBeta::NetworkAttachment::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::NetworkAttachmentList::Warning, decorator: Google::Apis::ComputeBeta::NetworkAttachmentList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::NetworkAttachmentList::Warning::Datum, decorator: Google::Apis::ComputeBeta::NetworkAttachmentList::Warning::Datum::Representation
        
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
      
      class NetworkAttachmentsScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :network_attachments, as: 'networkAttachments', class: Google::Apis::ComputeBeta::NetworkAttachment, decorator: Google::Apis::ComputeBeta::NetworkAttachment::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::NetworkAttachmentsScopedList::Warning, decorator: Google::Apis::ComputeBeta::NetworkAttachmentsScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::NetworkAttachmentsScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::NetworkAttachmentsScopedList::Warning::Datum::Representation
        
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
      
      class NetworkEdgeSecurityService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :region, as: 'region'
          property :security_policy, as: 'securityPolicy'
          property :self_link, as: 'selfLink'
          property :self_link_with_id, as: 'selfLinkWithId'
        end
      end
      
      class NetworkEdgeSecurityServiceAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::NetworkEdgeSecurityServicesScopedList, decorator: Google::Apis::ComputeBeta::NetworkEdgeSecurityServicesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::NetworkEdgeSecurityServiceAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::NetworkEdgeSecurityServiceAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::NetworkEdgeSecurityServiceAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::NetworkEdgeSecurityServiceAggregatedList::Warning::Datum::Representation
        
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
      
      class NetworkEdgeSecurityServicesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :network_edge_security_services, as: 'networkEdgeSecurityServices', class: Google::Apis::ComputeBeta::NetworkEdgeSecurityService, decorator: Google::Apis::ComputeBeta::NetworkEdgeSecurityService::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::NetworkEdgeSecurityServicesScopedList::Warning, decorator: Google::Apis::ComputeBeta::NetworkEdgeSecurityServicesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::NetworkEdgeSecurityServicesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::NetworkEdgeSecurityServicesScopedList::Warning::Datum::Representation
        
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
      
      class NetworkEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :client_destination_port, as: 'clientDestinationPort'
          property :fqdn, as: 'fqdn'
          property :instance, as: 'instance'
          property :ip_address, as: 'ipAddress'
          property :ipv6_address, as: 'ipv6Address'
          property :port, as: 'port'
        end
      end
      
      class NetworkEndpointGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :app_engine, as: 'appEngine', class: Google::Apis::ComputeBeta::NetworkEndpointGroupAppEngine, decorator: Google::Apis::ComputeBeta::NetworkEndpointGroupAppEngine::Representation
      
          property :cloud_function, as: 'cloudFunction', class: Google::Apis::ComputeBeta::NetworkEndpointGroupCloudFunction, decorator: Google::Apis::ComputeBeta::NetworkEndpointGroupCloudFunction::Representation
      
          property :cloud_run, as: 'cloudRun', class: Google::Apis::ComputeBeta::NetworkEndpointGroupCloudRun, decorator: Google::Apis::ComputeBeta::NetworkEndpointGroupCloudRun::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          property :default_port, as: 'defaultPort'
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :load_balancer, as: 'loadBalancer', class: Google::Apis::ComputeBeta::NetworkEndpointGroupLbNetworkEndpointGroup, decorator: Google::Apis::ComputeBeta::NetworkEndpointGroupLbNetworkEndpointGroup::Representation
      
          property :name, as: 'name'
          property :network, as: 'network'
          property :network_endpoint_type, as: 'networkEndpointType'
          property :psc_data, as: 'pscData', class: Google::Apis::ComputeBeta::NetworkEndpointGroupPscData, decorator: Google::Apis::ComputeBeta::NetworkEndpointGroupPscData::Representation
      
          property :psc_target_service, as: 'pscTargetService'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :serverless_deployment, as: 'serverlessDeployment', class: Google::Apis::ComputeBeta::NetworkEndpointGroupServerlessDeployment, decorator: Google::Apis::ComputeBeta::NetworkEndpointGroupServerlessDeployment::Representation
      
          property :size, as: 'size'
          property :subnetwork, as: 'subnetwork'
          property :zone, as: 'zone'
        end
      end
      
      class NetworkEndpointGroupAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::NetworkEndpointGroupsScopedList, decorator: Google::Apis::ComputeBeta::NetworkEndpointGroupsScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::NetworkEndpointGroupAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::NetworkEndpointGroupAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::NetworkEndpointGroupAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::NetworkEndpointGroupAggregatedList::Warning::Datum::Representation
        
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
      
      class NetworkEndpointGroupAppEngine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service'
          property :url_mask, as: 'urlMask'
          property :version, as: 'version'
        end
      end
      
      class NetworkEndpointGroupCloudFunction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function, as: 'function'
          property :url_mask, as: 'urlMask'
        end
      end
      
      class NetworkEndpointGroupCloudRun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service'
          property :tag, as: 'tag'
          property :url_mask, as: 'urlMask'
        end
      end
      
      class NetworkEndpointGroupLbNetworkEndpointGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_port, as: 'defaultPort'
          property :network, as: 'network'
          property :subnetwork, as: 'subnetwork'
          property :zone, as: 'zone'
        end
      end
      
      class NetworkEndpointGroupList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::NetworkEndpointGroup, decorator: Google::Apis::ComputeBeta::NetworkEndpointGroup::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::NetworkEndpointGroupList::Warning, decorator: Google::Apis::ComputeBeta::NetworkEndpointGroupList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::NetworkEndpointGroupList::Warning::Datum, decorator: Google::Apis::ComputeBeta::NetworkEndpointGroupList::Warning::Datum::Representation
        
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
      
      class NetworkEndpointGroupPscData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumer_psc_address, as: 'consumerPscAddress'
          property :producer_port, as: 'producerPort'
          property :psc_connection_id, :numeric_string => true, as: 'pscConnectionId'
          property :psc_connection_status, as: 'pscConnectionStatus'
        end
      end
      
      class NetworkEndpointGroupServerlessDeployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :platform, as: 'platform'
          property :resource, as: 'resource'
          property :url_mask, as: 'urlMask'
          property :version, as: 'version'
        end
      end
      
      class NetworkEndpointGroupsAttachEndpointsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :network_endpoints, as: 'networkEndpoints', class: Google::Apis::ComputeBeta::NetworkEndpoint, decorator: Google::Apis::ComputeBeta::NetworkEndpoint::Representation
      
        end
      end
      
      class NetworkEndpointGroupsDetachEndpointsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :network_endpoints, as: 'networkEndpoints', class: Google::Apis::ComputeBeta::NetworkEndpoint, decorator: Google::Apis::ComputeBeta::NetworkEndpoint::Representation
      
        end
      end
      
      class NetworkEndpointGroupsListEndpointsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :endpoint_filters, as: 'endpointFilters', class: Google::Apis::ComputeBeta::NetworkEndpointGroupsListEndpointsRequestNetworkEndpointFilter, decorator: Google::Apis::ComputeBeta::NetworkEndpointGroupsListEndpointsRequestNetworkEndpointFilter::Representation
      
          property :health_status, as: 'healthStatus'
        end
      end
      
      class NetworkEndpointGroupsListEndpointsRequestNetworkEndpointFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network_endpoint, as: 'networkEndpoint', class: Google::Apis::ComputeBeta::NetworkEndpoint, decorator: Google::Apis::ComputeBeta::NetworkEndpoint::Representation
      
        end
      end
      
      class NetworkEndpointGroupsListNetworkEndpoints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::NetworkEndpointWithHealthStatus, decorator: Google::Apis::ComputeBeta::NetworkEndpointWithHealthStatus::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::NetworkEndpointGroupsListNetworkEndpoints::Warning, decorator: Google::Apis::ComputeBeta::NetworkEndpointGroupsListNetworkEndpoints::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::NetworkEndpointGroupsListNetworkEndpoints::Warning::Datum, decorator: Google::Apis::ComputeBeta::NetworkEndpointGroupsListNetworkEndpoints::Warning::Datum::Representation
        
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
      
      class NetworkEndpointGroupsScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :network_endpoint_groups, as: 'networkEndpointGroups', class: Google::Apis::ComputeBeta::NetworkEndpointGroup, decorator: Google::Apis::ComputeBeta::NetworkEndpointGroup::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::NetworkEndpointGroupsScopedList::Warning, decorator: Google::Apis::ComputeBeta::NetworkEndpointGroupsScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::NetworkEndpointGroupsScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::NetworkEndpointGroupsScopedList::Warning::Datum::Representation
        
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
      
      class NetworkEndpointWithHealthStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :healths, as: 'healths', class: Google::Apis::ComputeBeta::HealthStatusForNetworkEndpoint, decorator: Google::Apis::ComputeBeta::HealthStatusForNetworkEndpoint::Representation
      
          property :network_endpoint, as: 'networkEndpoint', class: Google::Apis::ComputeBeta::NetworkEndpoint, decorator: Google::Apis::ComputeBeta::NetworkEndpoint::Representation
      
        end
      end
      
      class NetworkFirewallPolicyAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::FirewallPoliciesScopedList, decorator: Google::Apis::ComputeBeta::FirewallPoliciesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::NetworkFirewallPolicyAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::NetworkFirewallPolicyAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::NetworkFirewallPolicyAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::NetworkFirewallPolicyAggregatedList::Warning::Datum::Representation
        
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
      
      class NetworkInterface
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_configs, as: 'accessConfigs', class: Google::Apis::ComputeBeta::AccessConfig, decorator: Google::Apis::ComputeBeta::AccessConfig::Representation
      
          collection :alias_ip_ranges, as: 'aliasIpRanges', class: Google::Apis::ComputeBeta::AliasIpRange, decorator: Google::Apis::ComputeBeta::AliasIpRange::Representation
      
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :igmp_query, as: 'igmpQuery'
          property :internal_ipv6_prefix_length, as: 'internalIpv6PrefixLength'
          collection :ipv6_access_configs, as: 'ipv6AccessConfigs', class: Google::Apis::ComputeBeta::AccessConfig, decorator: Google::Apis::ComputeBeta::AccessConfig::Representation
      
          property :ipv6_access_type, as: 'ipv6AccessType'
          property :ipv6_address, as: 'ipv6Address'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :network, as: 'network'
          property :network_attachment, as: 'networkAttachment'
          property :network_ip, as: 'networkIP'
          property :nic_type, as: 'nicType'
          property :parent_nic_name, as: 'parentNicName'
          property :queue_count, as: 'queueCount'
          property :stack_type, as: 'stackType'
          property :subnetwork, as: 'subnetwork'
          property :vlan, as: 'vlan'
        end
      end
      
      class NetworkList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Network, decorator: Google::Apis::ComputeBeta::Network::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::NetworkList::Warning, decorator: Google::Apis::ComputeBeta::NetworkList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::NetworkList::Warning::Datum, decorator: Google::Apis::ComputeBeta::NetworkList::Warning::Datum::Representation
        
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
      
      class NetworkParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :resource_manager_tags, as: 'resourceManagerTags'
        end
      end
      
      class NetworkPeering
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_create_routes, as: 'autoCreateRoutes'
          property :connection_status, as: 'connectionStatus', class: Google::Apis::ComputeBeta::NetworkPeeringConnectionStatus, decorator: Google::Apis::ComputeBeta::NetworkPeeringConnectionStatus::Representation
      
          property :exchange_subnet_routes, as: 'exchangeSubnetRoutes'
          property :export_custom_routes, as: 'exportCustomRoutes'
          property :export_subnet_routes_with_public_ip, as: 'exportSubnetRoutesWithPublicIp'
          property :import_custom_routes, as: 'importCustomRoutes'
          property :import_subnet_routes_with_public_ip, as: 'importSubnetRoutesWithPublicIp'
          property :name, as: 'name'
          property :network, as: 'network'
          property :peer_mtu, as: 'peerMtu'
          property :stack_type, as: 'stackType'
          property :state, as: 'state'
          property :state_details, as: 'stateDetails'
          property :update_strategy, as: 'updateStrategy'
        end
      end
      
      class NetworkPeeringConnectionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consensus_state, as: 'consensusState', class: Google::Apis::ComputeBeta::NetworkPeeringConnectionStatusConsensusState, decorator: Google::Apis::ComputeBeta::NetworkPeeringConnectionStatusConsensusState::Representation
      
          property :traffic_configuration, as: 'trafficConfiguration', class: Google::Apis::ComputeBeta::NetworkPeeringConnectionStatusTrafficConfiguration, decorator: Google::Apis::ComputeBeta::NetworkPeeringConnectionStatusTrafficConfiguration::Representation
      
          property :update_strategy, as: 'updateStrategy'
        end
      end
      
      class NetworkPeeringConnectionStatusConsensusState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delete_status, as: 'deleteStatus'
          property :update_status, as: 'updateStatus'
        end
      end
      
      class NetworkPeeringConnectionStatusTrafficConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :export_custom_routes_to_peer, as: 'exportCustomRoutesToPeer'
          property :export_subnet_routes_with_public_ip_to_peer, as: 'exportSubnetRoutesWithPublicIpToPeer'
          property :import_custom_routes_from_peer, as: 'importCustomRoutesFromPeer'
          property :import_subnet_routes_with_public_ip_from_peer, as: 'importSubnetRoutesWithPublicIpFromPeer'
          property :stack_type, as: 'stackType'
        end
      end
      
      class NetworkPerformanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :total_egress_bandwidth_tier, as: 'totalEgressBandwidthTier'
        end
      end
      
      class NetworkProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :features, as: 'features', class: Google::Apis::ComputeBeta::NetworkProfileNetworkFeatures, decorator: Google::Apis::ComputeBeta::NetworkProfileNetworkFeatures::Representation
      
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :location, as: 'location', class: Google::Apis::ComputeBeta::NetworkProfileLocation, decorator: Google::Apis::ComputeBeta::NetworkProfileLocation::Representation
      
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
          property :self_link_with_id, as: 'selfLinkWithId'
        end
      end
      
      class NetworkProfileLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :scope, as: 'scope'
        end
      end
      
      class NetworkProfileNetworkFeatures
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :address_purposes, as: 'addressPurposes'
          property :allow_alias_ip_ranges, as: 'allowAliasIpRanges'
          property :allow_auto_mode_subnet, as: 'allowAutoModeSubnet'
          property :allow_class_d_firewalls, as: 'allowClassDFirewalls'
          property :allow_cloud_nat, as: 'allowCloudNat'
          property :allow_cloud_router, as: 'allowCloudRouter'
          property :allow_default_nic_attachment, as: 'allowDefaultNicAttachment'
          property :allow_external_ip_access, as: 'allowExternalIpAccess'
          property :allow_interconnect, as: 'allowInterconnect'
          property :allow_ip_forwarding, as: 'allowIpForwarding'
          property :allow_load_balancing, as: 'allowLoadBalancing'
          property :allow_multi_nic_in_same_network, as: 'allowMultiNicInSameNetwork'
          property :allow_ncc, as: 'allowNcc'
          property :allow_network_migration, as: 'allowNetworkMigration'
          property :allow_packet_mirroring, as: 'allowPacketMirroring'
          property :allow_private_google_access, as: 'allowPrivateGoogleAccess'
          property :allow_psc, as: 'allowPsc'
          property :allow_same_network_unicast, as: 'allowSameNetworkUnicast'
          property :allow_static_routes, as: 'allowStaticRoutes'
          property :allow_sub_interfaces, as: 'allowSubInterfaces'
          property :allow_vpc_peering, as: 'allowVpcPeering'
          property :allow_vpn, as: 'allowVpn'
          collection :interface_types, as: 'interfaceTypes'
          collection :subnet_purposes, as: 'subnetPurposes'
          collection :subnet_stack_types, as: 'subnetStackTypes'
          collection :subnetwork_purposes, as: 'subnetworkPurposes'
          collection :subnetwork_stack_types, as: 'subnetworkStackTypes'
          property :unicast, as: 'unicast'
        end
      end
      
      class NetworkProfilesListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::NetworkProfile, decorator: Google::Apis::ComputeBeta::NetworkProfile::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::NetworkProfilesListResponse::Warning, decorator: Google::Apis::ComputeBeta::NetworkProfilesListResponse::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::NetworkProfilesListResponse::Warning::Datum, decorator: Google::Apis::ComputeBeta::NetworkProfilesListResponse::Warning::Datum::Representation
        
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
      
      class NetworkRoutingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bgp_always_compare_med, as: 'bgpAlwaysCompareMed'
          property :bgp_best_path_selection_mode, as: 'bgpBestPathSelectionMode'
          property :bgp_inter_region_cost, as: 'bgpInterRegionCost'
          property :effective_bgp_always_compare_med, as: 'effectiveBgpAlwaysCompareMed'
          property :effective_bgp_inter_region_cost, as: 'effectiveBgpInterRegionCost'
          property :routing_mode, as: 'routingMode'
        end
      end
      
      class NetworksAddPeeringRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_create_routes, as: 'autoCreateRoutes'
          property :name, as: 'name'
          property :network_peering, as: 'networkPeering', class: Google::Apis::ComputeBeta::NetworkPeering, decorator: Google::Apis::ComputeBeta::NetworkPeering::Representation
      
          property :peer_network, as: 'peerNetwork'
        end
      end
      
      class NetworksGetEffectiveFirewallsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :firewall_policys, as: 'firewallPolicys', class: Google::Apis::ComputeBeta::NetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicy, decorator: Google::Apis::ComputeBeta::NetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicy::Representation
      
          collection :firewalls, as: 'firewalls', class: Google::Apis::ComputeBeta::Firewall, decorator: Google::Apis::ComputeBeta::Firewall::Representation
      
          collection :organization_firewalls, as: 'organizationFirewalls', class: Google::Apis::ComputeBeta::NetworksGetEffectiveFirewallsResponseOrganizationFirewallPolicy, decorator: Google::Apis::ComputeBeta::NetworksGetEffectiveFirewallsResponseOrganizationFirewallPolicy::Representation
      
        end
      end
      
      class NetworksGetEffectiveFirewallsResponseEffectiveFirewallPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          collection :packet_mirroring_rules, as: 'packetMirroringRules', class: Google::Apis::ComputeBeta::FirewallPolicyRule, decorator: Google::Apis::ComputeBeta::FirewallPolicyRule::Representation
      
          property :priority, as: 'priority'
          collection :rules, as: 'rules', class: Google::Apis::ComputeBeta::FirewallPolicyRule, decorator: Google::Apis::ComputeBeta::FirewallPolicyRule::Representation
      
          property :short_name, as: 'shortName'
          property :type, as: 'type'
        end
      end
      
      class NetworksGetEffectiveFirewallsResponseOrganizationFirewallPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, :numeric_string => true, as: 'id'
          collection :rules, as: 'rules', class: Google::Apis::ComputeBeta::SecurityPolicyRule, decorator: Google::Apis::ComputeBeta::SecurityPolicyRule::Representation
      
        end
      end
      
      class NetworksRemovePeeringRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class NetworksRequestRemovePeeringRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class NetworksUpdatePeeringRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network_peering, as: 'networkPeering', class: Google::Apis::ComputeBeta::NetworkPeering, decorator: Google::Apis::ComputeBeta::NetworkPeering::Representation
      
        end
      end
      
      class NodeGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autoscaling_policy, as: 'autoscalingPolicy', class: Google::Apis::ComputeBeta::NodeGroupAutoscalingPolicy, decorator: Google::Apis::ComputeBeta::NodeGroupAutoscalingPolicy::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :location_hint, as: 'locationHint'
          property :maintenance_interval, as: 'maintenanceInterval'
          property :maintenance_policy, as: 'maintenancePolicy'
          property :maintenance_window, as: 'maintenanceWindow', class: Google::Apis::ComputeBeta::NodeGroupMaintenanceWindow, decorator: Google::Apis::ComputeBeta::NodeGroupMaintenanceWindow::Representation
      
          property :name, as: 'name'
          property :node_template, as: 'nodeTemplate'
          property :self_link, as: 'selfLink'
          property :share_settings, as: 'shareSettings', class: Google::Apis::ComputeBeta::ShareSettings, decorator: Google::Apis::ComputeBeta::ShareSettings::Representation
      
          property :size, as: 'size'
          property :status, as: 'status'
          property :zone, as: 'zone'
        end
      end
      
      class NodeGroupAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::NodeGroupsScopedList, decorator: Google::Apis::ComputeBeta::NodeGroupsScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::NodeGroupAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::NodeGroupAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::NodeGroupAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::NodeGroupAggregatedList::Warning::Datum::Representation
        
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
      
      class NodeGroupAutoscalingPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_nodes, as: 'maxNodes'
          property :min_nodes, as: 'minNodes'
          property :mode, as: 'mode'
        end
      end
      
      class NodeGroupList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::NodeGroup, decorator: Google::Apis::ComputeBeta::NodeGroup::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::NodeGroupList::Warning, decorator: Google::Apis::ComputeBeta::NodeGroupList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::NodeGroupList::Warning::Datum, decorator: Google::Apis::ComputeBeta::NodeGroupList::Warning::Datum::Representation
        
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
      
      class NodeGroupMaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :maintenance_duration, as: 'maintenanceDuration', class: Google::Apis::ComputeBeta::Duration, decorator: Google::Apis::ComputeBeta::Duration::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class NodeGroupNode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accelerators, as: 'accelerators', class: Google::Apis::ComputeBeta::AcceleratorConfig, decorator: Google::Apis::ComputeBeta::AcceleratorConfig::Representation
      
          property :consumed_resources, as: 'consumedResources', class: Google::Apis::ComputeBeta::InstanceConsumptionInfo, decorator: Google::Apis::ComputeBeta::InstanceConsumptionInfo::Representation
      
          property :cpu_overcommit_type, as: 'cpuOvercommitType'
          collection :disks, as: 'disks', class: Google::Apis::ComputeBeta::LocalDisk, decorator: Google::Apis::ComputeBeta::LocalDisk::Representation
      
          collection :instance_consumption_data, as: 'instanceConsumptionData', class: Google::Apis::ComputeBeta::InstanceConsumptionData, decorator: Google::Apis::ComputeBeta::InstanceConsumptionData::Representation
      
          collection :instances, as: 'instances'
          property :name, as: 'name'
          property :node_type, as: 'nodeType'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :server_binding, as: 'serverBinding', class: Google::Apis::ComputeBeta::ServerBinding, decorator: Google::Apis::ComputeBeta::ServerBinding::Representation
      
          property :server_id, as: 'serverId'
          property :status, as: 'status'
          property :total_resources, as: 'totalResources', class: Google::Apis::ComputeBeta::InstanceConsumptionInfo, decorator: Google::Apis::ComputeBeta::InstanceConsumptionInfo::Representation
      
          property :upcoming_maintenance, as: 'upcomingMaintenance', class: Google::Apis::ComputeBeta::UpcomingMaintenance, decorator: Google::Apis::ComputeBeta::UpcomingMaintenance::Representation
      
        end
      end
      
      class NodeGroupsAddNodesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_node_count, as: 'additionalNodeCount'
        end
      end
      
      class NodeGroupsDeleteNodesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :nodes, as: 'nodes'
        end
      end
      
      class NodeGroupsListNodes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::NodeGroupNode, decorator: Google::Apis::ComputeBeta::NodeGroupNode::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::NodeGroupsListNodes::Warning, decorator: Google::Apis::ComputeBeta::NodeGroupsListNodes::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::NodeGroupsListNodes::Warning::Datum, decorator: Google::Apis::ComputeBeta::NodeGroupsListNodes::Warning::Datum::Representation
        
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
      
      class NodeGroupsPerformMaintenanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :nodes, as: 'nodes'
          property :start_time, as: 'startTime'
        end
      end
      
      class NodeGroupsScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :node_groups, as: 'nodeGroups', class: Google::Apis::ComputeBeta::NodeGroup, decorator: Google::Apis::ComputeBeta::NodeGroup::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::NodeGroupsScopedList::Warning, decorator: Google::Apis::ComputeBeta::NodeGroupsScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::NodeGroupsScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::NodeGroupsScopedList::Warning::Datum::Representation
        
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
      
      class NodeGroupsSetNodeTemplateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :node_template, as: 'nodeTemplate'
        end
      end
      
      class NodeGroupsSimulateMaintenanceEventRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :nodes, as: 'nodes'
        end
      end
      
      class NodeTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accelerators, as: 'accelerators', class: Google::Apis::ComputeBeta::AcceleratorConfig, decorator: Google::Apis::ComputeBeta::AcceleratorConfig::Representation
      
          property :cpu_overcommit_type, as: 'cpuOvercommitType'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          collection :disks, as: 'disks', class: Google::Apis::ComputeBeta::LocalDisk, decorator: Google::Apis::ComputeBeta::LocalDisk::Representation
      
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          hash :node_affinity_labels, as: 'nodeAffinityLabels'
          property :node_type, as: 'nodeType'
          property :node_type_flexibility, as: 'nodeTypeFlexibility', class: Google::Apis::ComputeBeta::NodeTemplateNodeTypeFlexibility, decorator: Google::Apis::ComputeBeta::NodeTemplateNodeTypeFlexibility::Representation
      
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :server_binding, as: 'serverBinding', class: Google::Apis::ComputeBeta::ServerBinding, decorator: Google::Apis::ComputeBeta::ServerBinding::Representation
      
          property :status, as: 'status'
          property :status_message, as: 'statusMessage'
        end
      end
      
      class NodeTemplateAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::NodeTemplatesScopedList, decorator: Google::Apis::ComputeBeta::NodeTemplatesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::NodeTemplateAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::NodeTemplateAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::NodeTemplateAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::NodeTemplateAggregatedList::Warning::Datum::Representation
        
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
      
      class NodeTemplateList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::NodeTemplate, decorator: Google::Apis::ComputeBeta::NodeTemplate::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::NodeTemplateList::Warning, decorator: Google::Apis::ComputeBeta::NodeTemplateList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::NodeTemplateList::Warning::Datum, decorator: Google::Apis::ComputeBeta::NodeTemplateList::Warning::Datum::Representation
        
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
      
      class NodeTemplateNodeTypeFlexibility
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpus, as: 'cpus'
          property :local_ssd, as: 'localSsd'
          property :memory, as: 'memory'
        end
      end
      
      class NodeTemplatesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :node_templates, as: 'nodeTemplates', class: Google::Apis::ComputeBeta::NodeTemplate, decorator: Google::Apis::ComputeBeta::NodeTemplate::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::NodeTemplatesScopedList::Warning, decorator: Google::Apis::ComputeBeta::NodeTemplatesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::NodeTemplatesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::NodeTemplatesScopedList::Warning::Datum::Representation
        
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
      
      class NodeType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu_platform, as: 'cpuPlatform'
          property :creation_timestamp, as: 'creationTimestamp'
          property :deprecated, as: 'deprecated', class: Google::Apis::ComputeBeta::DeprecationStatus, decorator: Google::Apis::ComputeBeta::DeprecationStatus::Representation
      
          property :description, as: 'description'
          property :guest_cpus, as: 'guestCpus'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :local_ssd_gb, as: 'localSsdGb'
          property :max_vms, as: 'maxVms'
          property :memory_mb, as: 'memoryMb'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
          property :zone, as: 'zone'
        end
      end
      
      class NodeTypeAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::NodeTypesScopedList, decorator: Google::Apis::ComputeBeta::NodeTypesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::NodeTypeAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::NodeTypeAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::NodeTypeAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::NodeTypeAggregatedList::Warning::Datum::Representation
        
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
      
      class NodeTypeList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::NodeType, decorator: Google::Apis::ComputeBeta::NodeType::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::NodeTypeList::Warning, decorator: Google::Apis::ComputeBeta::NodeTypeList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::NodeTypeList::Warning::Datum, decorator: Google::Apis::ComputeBeta::NodeTypeList::Warning::Datum::Representation
        
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
      
      class NodeTypesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :node_types, as: 'nodeTypes', class: Google::Apis::ComputeBeta::NodeType, decorator: Google::Apis::ComputeBeta::NodeType::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::NodeTypesScopedList::Warning, decorator: Google::Apis::ComputeBeta::NodeTypesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::NodeTypesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::NodeTypesScopedList::Warning::Datum::Representation
        
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
      
      class NotificationEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :grpc_settings, as: 'grpcSettings', class: Google::Apis::ComputeBeta::NotificationEndpointGrpcSettings, decorator: Google::Apis::ComputeBeta::NotificationEndpointGrpcSettings::Representation
      
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
        end
      end
      
      class NotificationEndpointGrpcSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authority, as: 'authority'
          property :endpoint, as: 'endpoint'
          property :payload_name, as: 'payloadName'
          property :resend_interval, as: 'resendInterval', class: Google::Apis::ComputeBeta::Duration, decorator: Google::Apis::ComputeBeta::Duration::Representation
      
          property :retry_duration_sec, as: 'retryDurationSec'
        end
      end
      
      class NotificationEndpointList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::NotificationEndpoint, decorator: Google::Apis::ComputeBeta::NotificationEndpoint::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::NotificationEndpointList::Warning, decorator: Google::Apis::ComputeBeta::NotificationEndpointList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::NotificationEndpointList::Warning::Datum, decorator: Google::Apis::ComputeBeta::NotificationEndpointList::Warning::Datum::Representation
        
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
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_operation_id, as: 'clientOperationId'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::ComputeBeta::Operation::Error, decorator: Google::Apis::ComputeBeta::Operation::Error::Representation
      
          property :http_error_message, as: 'httpErrorMessage'
          property :http_error_status_code, as: 'httpErrorStatusCode'
          property :id, :numeric_string => true, as: 'id'
          property :insert_time, as: 'insertTime'
          property :instances_bulk_insert_operation_metadata, as: 'instancesBulkInsertOperationMetadata', class: Google::Apis::ComputeBeta::InstancesBulkInsertOperationMetadata, decorator: Google::Apis::ComputeBeta::InstancesBulkInsertOperationMetadata::Representation
      
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :operation_group_id, as: 'operationGroupId'
          property :operation_type, as: 'operationType'
          property :progress, as: 'progress'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :set_common_instance_metadata_operation_metadata, as: 'setCommonInstanceMetadataOperationMetadata', class: Google::Apis::ComputeBeta::SetCommonInstanceMetadataOperationMetadata, decorator: Google::Apis::ComputeBeta::SetCommonInstanceMetadataOperationMetadata::Representation
      
          property :start_time, as: 'startTime'
          property :status, as: 'status'
          property :status_message, as: 'statusMessage'
          property :target_id, :numeric_string => true, as: 'targetId'
          property :target_link, as: 'targetLink'
          property :user, as: 'user'
          collection :warnings, as: 'warnings', class: Google::Apis::ComputeBeta::Operation::Warning, decorator: Google::Apis::ComputeBeta::Operation::Warning::Representation
      
          property :zone, as: 'zone'
        end
        
        class Error
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :errors, as: 'errors', class: Google::Apis::ComputeBeta::Operation::Error::Error, decorator: Google::Apis::ComputeBeta::Operation::Error::Error::Representation
        
          end
          
          class Error
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :code, as: 'code'
              collection :error_details, as: 'errorDetails', class: Google::Apis::ComputeBeta::Operation::Error::Error::ErrorDetail, decorator: Google::Apis::ComputeBeta::Operation::Error::Error::ErrorDetail::Representation
          
              property :location, as: 'location'
              property :message, as: 'message'
            end
            
            class ErrorDetail
              # @private
              class Representation < Google::Apis::Core::JsonRepresentation
                property :error_info, as: 'errorInfo', class: Google::Apis::ComputeBeta::ErrorInfo, decorator: Google::Apis::ComputeBeta::ErrorInfo::Representation
            
                property :help, as: 'help', class: Google::Apis::ComputeBeta::Help, decorator: Google::Apis::ComputeBeta::Help::Representation
            
                property :localized_message, as: 'localizedMessage', class: Google::Apis::ComputeBeta::LocalizedMessage, decorator: Google::Apis::ComputeBeta::LocalizedMessage::Representation
            
                property :quota_info, as: 'quotaInfo', class: Google::Apis::ComputeBeta::QuotaExceededInfo, decorator: Google::Apis::ComputeBeta::QuotaExceededInfo::Representation
            
              end
            end
          end
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::Operation::Warning::Datum, decorator: Google::Apis::ComputeBeta::Operation::Warning::Datum::Representation
        
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
      
      class OperationAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::OperationsScopedList, decorator: Google::Apis::ComputeBeta::OperationsScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::OperationAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::OperationAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::OperationAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::OperationAggregatedList::Warning::Datum::Representation
        
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
      
      class OperationList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Operation, decorator: Google::Apis::ComputeBeta::Operation::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::OperationList::Warning, decorator: Google::Apis::ComputeBeta::OperationList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::OperationList::Warning::Datum, decorator: Google::Apis::ComputeBeta::OperationList::Warning::Datum::Representation
        
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
      
      class OperationsScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :operations, as: 'operations', class: Google::Apis::ComputeBeta::Operation, decorator: Google::Apis::ComputeBeta::Operation::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::OperationsScopedList::Warning, decorator: Google::Apis::ComputeBeta::OperationsScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::OperationsScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::OperationsScopedList::Warning::Datum::Representation
        
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
      
      class OrganizationSecurityPoliciesListAssociationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :associations, as: 'associations', class: Google::Apis::ComputeBeta::SecurityPolicyAssociation, decorator: Google::Apis::ComputeBeta::SecurityPolicyAssociation::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class OutlierDetection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_ejection_time, as: 'baseEjectionTime', class: Google::Apis::ComputeBeta::Duration, decorator: Google::Apis::ComputeBeta::Duration::Representation
      
          property :consecutive_errors, as: 'consecutiveErrors'
          property :consecutive_gateway_failure, as: 'consecutiveGatewayFailure'
          property :enforcing_consecutive_errors, as: 'enforcingConsecutiveErrors'
          property :enforcing_consecutive_gateway_failure, as: 'enforcingConsecutiveGatewayFailure'
          property :enforcing_success_rate, as: 'enforcingSuccessRate'
          property :interval, as: 'interval', class: Google::Apis::ComputeBeta::Duration, decorator: Google::Apis::ComputeBeta::Duration::Representation
      
          property :max_ejection_percent, as: 'maxEjectionPercent'
          property :success_rate_minimum_hosts, as: 'successRateMinimumHosts'
          property :success_rate_request_volume, as: 'successRateRequestVolume'
          property :success_rate_stdev_factor, as: 'successRateStdevFactor'
        end
      end
      
      class PacketIntervals
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :avg_ms, :numeric_string => true, as: 'avgMs'
          property :duration, as: 'duration'
          property :max_ms, :numeric_string => true, as: 'maxMs'
          property :min_ms, :numeric_string => true, as: 'minMs'
          property :num_intervals, :numeric_string => true, as: 'numIntervals'
          property :type, as: 'type'
        end
      end
      
      class PacketMirroring
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collector_ilb, as: 'collectorIlb', class: Google::Apis::ComputeBeta::PacketMirroringForwardingRuleInfo, decorator: Google::Apis::ComputeBeta::PacketMirroringForwardingRuleInfo::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :enable, as: 'enable'
          property :filter, as: 'filter', class: Google::Apis::ComputeBeta::PacketMirroringFilter, decorator: Google::Apis::ComputeBeta::PacketMirroringFilter::Representation
      
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :mirrored_resources, as: 'mirroredResources', class: Google::Apis::ComputeBeta::PacketMirroringMirroredResourceInfo, decorator: Google::Apis::ComputeBeta::PacketMirroringMirroredResourceInfo::Representation
      
          property :name, as: 'name'
          property :network, as: 'network', class: Google::Apis::ComputeBeta::PacketMirroringNetworkInfo, decorator: Google::Apis::ComputeBeta::PacketMirroringNetworkInfo::Representation
      
          property :priority, as: 'priority'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
        end
      end
      
      class PacketMirroringAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::PacketMirroringsScopedList, decorator: Google::Apis::ComputeBeta::PacketMirroringsScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::PacketMirroringAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::PacketMirroringAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::PacketMirroringAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::PacketMirroringAggregatedList::Warning::Datum::Representation
        
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
      
      class PacketMirroringFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ip_protocols, as: 'IPProtocols'
          collection :cidr_ranges, as: 'cidrRanges'
          property :direction, as: 'direction'
        end
      end
      
      class PacketMirroringForwardingRuleInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_url, as: 'canonicalUrl'
          property :url, as: 'url'
        end
      end
      
      class PacketMirroringList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::PacketMirroring, decorator: Google::Apis::ComputeBeta::PacketMirroring::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::PacketMirroringList::Warning, decorator: Google::Apis::ComputeBeta::PacketMirroringList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::PacketMirroringList::Warning::Datum, decorator: Google::Apis::ComputeBeta::PacketMirroringList::Warning::Datum::Representation
        
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
      
      class PacketMirroringMirroredResourceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::ComputeBeta::PacketMirroringMirroredResourceInfoInstanceInfo, decorator: Google::Apis::ComputeBeta::PacketMirroringMirroredResourceInfoInstanceInfo::Representation
      
          collection :subnetworks, as: 'subnetworks', class: Google::Apis::ComputeBeta::PacketMirroringMirroredResourceInfoSubnetInfo, decorator: Google::Apis::ComputeBeta::PacketMirroringMirroredResourceInfoSubnetInfo::Representation
      
          collection :tags, as: 'tags'
        end
      end
      
      class PacketMirroringMirroredResourceInfoInstanceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_url, as: 'canonicalUrl'
          property :url, as: 'url'
        end
      end
      
      class PacketMirroringMirroredResourceInfoSubnetInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_url, as: 'canonicalUrl'
          property :url, as: 'url'
        end
      end
      
      class PacketMirroringNetworkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_url, as: 'canonicalUrl'
          property :url, as: 'url'
        end
      end
      
      class PacketMirroringsScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :packet_mirrorings, as: 'packetMirrorings', class: Google::Apis::ComputeBeta::PacketMirroring, decorator: Google::Apis::ComputeBeta::PacketMirroring::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::PacketMirroringsScopedList::Warning, decorator: Google::Apis::ComputeBeta::PacketMirroringsScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::PacketMirroringsScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::PacketMirroringsScopedList::Warning::Datum::Representation
        
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
      
      class PartnerMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fingerprint, :base64 => true, as: 'fingerprint'
          hash :partner_metadata, as: 'partnerMetadata', class: Google::Apis::ComputeBeta::StructuredEntries, decorator: Google::Apis::ComputeBeta::StructuredEntries::Representation
      
        end
      end
      
      class PathMatcher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_custom_error_response_policy, as: 'defaultCustomErrorResponsePolicy', class: Google::Apis::ComputeBeta::CustomErrorResponsePolicy, decorator: Google::Apis::ComputeBeta::CustomErrorResponsePolicy::Representation
      
          property :default_route_action, as: 'defaultRouteAction', class: Google::Apis::ComputeBeta::HttpRouteAction, decorator: Google::Apis::ComputeBeta::HttpRouteAction::Representation
      
          property :default_service, as: 'defaultService'
          property :default_url_redirect, as: 'defaultUrlRedirect', class: Google::Apis::ComputeBeta::HttpRedirectAction, decorator: Google::Apis::ComputeBeta::HttpRedirectAction::Representation
      
          property :description, as: 'description'
          property :header_action, as: 'headerAction', class: Google::Apis::ComputeBeta::HttpHeaderAction, decorator: Google::Apis::ComputeBeta::HttpHeaderAction::Representation
      
          property :name, as: 'name'
          collection :path_rules, as: 'pathRules', class: Google::Apis::ComputeBeta::PathRule, decorator: Google::Apis::ComputeBeta::PathRule::Representation
      
          collection :route_rules, as: 'routeRules', class: Google::Apis::ComputeBeta::HttpRouteRule, decorator: Google::Apis::ComputeBeta::HttpRouteRule::Representation
      
        end
      end
      
      class PathRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_error_response_policy, as: 'customErrorResponsePolicy', class: Google::Apis::ComputeBeta::CustomErrorResponsePolicy, decorator: Google::Apis::ComputeBeta::CustomErrorResponsePolicy::Representation
      
          collection :paths, as: 'paths'
          property :route_action, as: 'routeAction', class: Google::Apis::ComputeBeta::HttpRouteAction, decorator: Google::Apis::ComputeBeta::HttpRouteAction::Representation
      
          property :service, as: 'service'
          property :url_redirect, as: 'urlRedirect', class: Google::Apis::ComputeBeta::HttpRedirectAction, decorator: Google::Apis::ComputeBeta::HttpRedirectAction::Representation
      
        end
      end
      
      class PerInstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :name, as: 'name'
          property :preserved_state, as: 'preservedState', class: Google::Apis::ComputeBeta::PreservedState, decorator: Google::Apis::ComputeBeta::PreservedState::Representation
      
          property :status, as: 'status'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::ComputeBeta::AuditConfig, decorator: Google::Apis::ComputeBeta::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::ComputeBeta::Binding, decorator: Google::Apis::ComputeBeta::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PreconfiguredWafSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :expression_sets, as: 'expressionSets', class: Google::Apis::ComputeBeta::WafExpressionSet, decorator: Google::Apis::ComputeBeta::WafExpressionSet::Representation
      
        end
      end
      
      class PreservedState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :disks, as: 'disks', class: Google::Apis::ComputeBeta::PreservedStatePreservedDisk, decorator: Google::Apis::ComputeBeta::PreservedStatePreservedDisk::Representation
      
          hash :external_i_ps, as: 'externalIPs', class: Google::Apis::ComputeBeta::PreservedStatePreservedNetworkIp, decorator: Google::Apis::ComputeBeta::PreservedStatePreservedNetworkIp::Representation
      
          hash :internal_i_ps, as: 'internalIPs', class: Google::Apis::ComputeBeta::PreservedStatePreservedNetworkIp, decorator: Google::Apis::ComputeBeta::PreservedStatePreservedNetworkIp::Representation
      
          hash :metadata, as: 'metadata'
        end
      end
      
      class PreservedStatePreservedDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_delete, as: 'autoDelete'
          property :mode, as: 'mode'
          property :source, as: 'source'
        end
      end
      
      class PreservedStatePreservedNetworkIp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_delete, as: 'autoDelete'
          property :ip_address, as: 'ipAddress', class: Google::Apis::ComputeBeta::PreservedStatePreservedNetworkIpIpAddress, decorator: Google::Apis::ComputeBeta::PreservedStatePreservedNetworkIpIpAddress::Representation
      
        end
      end
      
      class PreservedStatePreservedNetworkIpIpAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :literal, as: 'literal'
        end
      end
      
      class PreviewFeature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activation_status, as: 'activationStatus'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :rollout_operation, as: 'rolloutOperation', class: Google::Apis::ComputeBeta::PreviewFeatureRolloutOperation, decorator: Google::Apis::ComputeBeta::PreviewFeatureRolloutOperation::Representation
      
          property :self_link, as: 'selfLink'
          property :status, as: 'status', class: Google::Apis::ComputeBeta::PreviewFeatureStatus, decorator: Google::Apis::ComputeBeta::PreviewFeatureStatus::Representation
      
        end
      end
      
      class PreviewFeatureList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::PreviewFeature, decorator: Google::Apis::ComputeBeta::PreviewFeature::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::PreviewFeatureList::Warning, decorator: Google::Apis::ComputeBeta::PreviewFeatureList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::PreviewFeatureList::Warning::Datum, decorator: Google::Apis::ComputeBeta::PreviewFeatureList::Warning::Datum::Representation
        
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
      
      class PreviewFeatureRolloutOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rollout_input, as: 'rolloutInput', class: Google::Apis::ComputeBeta::PreviewFeatureRolloutOperationRolloutInput, decorator: Google::Apis::ComputeBeta::PreviewFeatureRolloutOperationRolloutInput::Representation
      
          property :rollout_status, as: 'rolloutStatus', class: Google::Apis::ComputeBeta::PreviewFeatureRolloutOperationRolloutStatus, decorator: Google::Apis::ComputeBeta::PreviewFeatureRolloutOperationRolloutStatus::Representation
      
        end
      end
      
      class PreviewFeatureRolloutOperationRolloutInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :predefined_rollout_plan, as: 'predefinedRolloutPlan'
          property :retry_uuid, as: 'retryUuid'
        end
      end
      
      class PreviewFeatureRolloutOperationRolloutStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ongoing_rollouts, as: 'ongoingRollouts', class: Google::Apis::ComputeBeta::PreviewFeatureRolloutOperationRolloutStatusRolloutMetadata, decorator: Google::Apis::ComputeBeta::PreviewFeatureRolloutOperationRolloutStatusRolloutMetadata::Representation
      
          property :previous_rollout, as: 'previousRollout', class: Google::Apis::ComputeBeta::PreviewFeatureRolloutOperationRolloutStatusRolloutMetadata, decorator: Google::Apis::ComputeBeta::PreviewFeatureRolloutOperationRolloutStatusRolloutMetadata::Representation
      
        end
      end
      
      class PreviewFeatureRolloutOperationRolloutStatusRolloutMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rollout, as: 'rollout'
          property :rollout_plan, as: 'rolloutPlan'
          property :status, as: 'status', class: Google::Apis::ComputeBeta::PreviewFeatureStatus, decorator: Google::Apis::ComputeBeta::PreviewFeatureStatus::Representation
      
        end
      end
      
      class PreviewFeatureStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :release_status, as: 'releaseStatus', class: Google::Apis::ComputeBeta::PreviewFeatureStatusReleaseStatus, decorator: Google::Apis::ComputeBeta::PreviewFeatureStatusReleaseStatus::Representation
      
        end
      end
      
      class PreviewFeatureStatusReleaseStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :stage, as: 'stage'
          property :update_date, as: 'updateDate', class: Google::Apis::ComputeBeta::Date, decorator: Google::Apis::ComputeBeta::Date::Representation
      
        end
      end
      
      class Project
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_armor_tier, as: 'cloudArmorTier'
          property :common_instance_metadata, as: 'commonInstanceMetadata', class: Google::Apis::ComputeBeta::Metadata, decorator: Google::Apis::ComputeBeta::Metadata::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          property :default_network_tier, as: 'defaultNetworkTier'
          property :default_service_account, as: 'defaultServiceAccount'
          property :description, as: 'description'
          collection :enabled_features, as: 'enabledFeatures'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :managed_protection_tier, as: 'managedProtectionTier'
          property :name, as: 'name'
          collection :quotas, as: 'quotas', class: Google::Apis::ComputeBeta::Quota, decorator: Google::Apis::ComputeBeta::Quota::Representation
      
          property :self_link, as: 'selfLink'
          property :usage_export_location, as: 'usageExportLocation', class: Google::Apis::ComputeBeta::UsageExportLocation, decorator: Google::Apis::ComputeBeta::UsageExportLocation::Representation
      
          property :vm_dns_setting, as: 'vmDnsSetting'
          property :xpn_project_status, as: 'xpnProjectStatus'
        end
      end
      
      class ProjectsDisableXpnResourceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :xpn_resource, as: 'xpnResource', class: Google::Apis::ComputeBeta::XpnResourceId, decorator: Google::Apis::ComputeBeta::XpnResourceId::Representation
      
        end
      end
      
      class ProjectsEnableXpnResourceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :xpn_resource, as: 'xpnResource', class: Google::Apis::ComputeBeta::XpnResourceId, decorator: Google::Apis::ComputeBeta::XpnResourceId::Representation
      
        end
      end
      
      class ProjectsGetXpnResources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::ComputeBeta::XpnResourceId, decorator: Google::Apis::ComputeBeta::XpnResourceId::Representation
      
        end
      end
      
      class ProjectsListXpnHostsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :organization, as: 'organization'
        end
      end
      
      class ProjectsSetCloudArmorTierRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_armor_tier, as: 'cloudArmorTier'
        end
      end
      
      class ProjectsSetDefaultNetworkTierRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network_tier, as: 'networkTier'
        end
      end
      
      class ProjectsSetManagedProtectionTierRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :managed_protection_tier, as: 'managedProtectionTier'
        end
      end
      
      class PublicAdvertisedPrefix
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :byoip_api_version, as: 'byoipApiVersion'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :dns_verification_ip, as: 'dnsVerificationIp'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :id, :numeric_string => true, as: 'id'
          property :ip_cidr_range, as: 'ipCidrRange'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :pdp_scope, as: 'pdpScope'
          collection :public_delegated_prefixs, as: 'publicDelegatedPrefixs', class: Google::Apis::ComputeBeta::PublicAdvertisedPrefixPublicDelegatedPrefix, decorator: Google::Apis::ComputeBeta::PublicAdvertisedPrefixPublicDelegatedPrefix::Representation
      
          property :self_link, as: 'selfLink'
          property :shared_secret, as: 'sharedSecret'
          property :status, as: 'status'
        end
      end
      
      class PublicAdvertisedPrefixList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::PublicAdvertisedPrefix, decorator: Google::Apis::ComputeBeta::PublicAdvertisedPrefix::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::PublicAdvertisedPrefixList::Warning, decorator: Google::Apis::ComputeBeta::PublicAdvertisedPrefixList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::PublicAdvertisedPrefixList::Warning::Datum, decorator: Google::Apis::ComputeBeta::PublicAdvertisedPrefixList::Warning::Datum::Representation
        
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
      
      class PublicAdvertisedPrefixPublicDelegatedPrefix
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_range, as: 'ipRange'
          property :name, as: 'name'
          property :project, as: 'project'
          property :region, as: 'region'
          property :status, as: 'status'
        end
      end
      
      class PublicDelegatedPrefix
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allocatable_prefix_length, as: 'allocatablePrefixLength'
          property :byoip_api_version, as: 'byoipApiVersion'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :id, :numeric_string => true, as: 'id'
          property :ip_cidr_range, as: 'ipCidrRange'
          property :is_live_migration, as: 'isLiveMigration'
          property :kind, as: 'kind'
          property :mode, as: 'mode'
          property :name, as: 'name'
          property :parent_prefix, as: 'parentPrefix'
          collection :public_delegated_sub_prefixs, as: 'publicDelegatedSubPrefixs', class: Google::Apis::ComputeBeta::PublicDelegatedPrefixPublicDelegatedSubPrefix, decorator: Google::Apis::ComputeBeta::PublicDelegatedPrefixPublicDelegatedSubPrefix::Representation
      
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :status, as: 'status'
        end
      end
      
      class PublicDelegatedPrefixAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::PublicDelegatedPrefixesScopedList, decorator: Google::Apis::ComputeBeta::PublicDelegatedPrefixesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::PublicDelegatedPrefixAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::PublicDelegatedPrefixAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::PublicDelegatedPrefixAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::PublicDelegatedPrefixAggregatedList::Warning::Datum::Representation
        
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
      
      class PublicDelegatedPrefixList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::PublicDelegatedPrefix, decorator: Google::Apis::ComputeBeta::PublicDelegatedPrefix::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::PublicDelegatedPrefixList::Warning, decorator: Google::Apis::ComputeBeta::PublicDelegatedPrefixList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::PublicDelegatedPrefixList::Warning::Datum, decorator: Google::Apis::ComputeBeta::PublicDelegatedPrefixList::Warning::Datum::Representation
        
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
      
      class PublicDelegatedPrefixPublicDelegatedSubPrefix
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allocatable_prefix_length, as: 'allocatablePrefixLength'
          property :delegatee_project, as: 'delegateeProject'
          property :description, as: 'description'
          property :ip_cidr_range, as: 'ipCidrRange'
          property :is_address, as: 'isAddress'
          property :mode, as: 'mode'
          property :name, as: 'name'
          property :region, as: 'region'
          property :status, as: 'status'
        end
      end
      
      class PublicDelegatedPrefixesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :public_delegated_prefixes, as: 'publicDelegatedPrefixes', class: Google::Apis::ComputeBeta::PublicDelegatedPrefix, decorator: Google::Apis::ComputeBeta::PublicDelegatedPrefix::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::PublicDelegatedPrefixesScopedList::Warning, decorator: Google::Apis::ComputeBeta::PublicDelegatedPrefixesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::PublicDelegatedPrefixesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::PublicDelegatedPrefixesScopedList::Warning::Datum::Representation
        
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
      
      class Quota
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :limit, as: 'limit'
          property :metric, as: 'metric'
          property :owner, as: 'owner'
          property :usage, as: 'usage'
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
      
      class Reference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :reference_type, as: 'referenceType'
          property :referrer, as: 'referrer'
          property :target, as: 'target'
        end
      end
      
      class Region
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :deprecated, as: 'deprecated', class: Google::Apis::ComputeBeta::DeprecationStatus, decorator: Google::Apis::ComputeBeta::DeprecationStatus::Representation
      
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :quota_status_warning, as: 'quotaStatusWarning', class: Google::Apis::ComputeBeta::Region::QuotaStatusWarning, decorator: Google::Apis::ComputeBeta::Region::QuotaStatusWarning::Representation
      
          collection :quotas, as: 'quotas', class: Google::Apis::ComputeBeta::Quota, decorator: Google::Apis::ComputeBeta::Quota::Representation
      
          property :self_link, as: 'selfLink'
          property :status, as: 'status'
          property :supports_pzs, as: 'supportsPzs'
          collection :zones, as: 'zones'
        end
        
        class QuotaStatusWarning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::Region::QuotaStatusWarning::Datum, decorator: Google::Apis::ComputeBeta::Region::QuotaStatusWarning::Datum::Representation
        
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
      
      class RegionAddressesMoveRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :destination_address, as: 'destinationAddress'
        end
      end
      
      class RegionAutoscalerList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Autoscaler, decorator: Google::Apis::ComputeBeta::Autoscaler::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::RegionAutoscalerList::Warning, decorator: Google::Apis::ComputeBeta::RegionAutoscalerList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::RegionAutoscalerList::Warning::Datum, decorator: Google::Apis::ComputeBeta::RegionAutoscalerList::Warning::Datum::Representation
        
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
      
      class RegionCommitmentsUpdateReservationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :reservations, as: 'reservations', class: Google::Apis::ComputeBeta::Reservation, decorator: Google::Apis::ComputeBeta::Reservation::Representation
      
        end
      end
      
      class RegionDiskTypeList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::DiskType, decorator: Google::Apis::ComputeBeta::DiskType::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::RegionDiskTypeList::Warning, decorator: Google::Apis::ComputeBeta::RegionDiskTypeList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::RegionDiskTypeList::Warning::Datum, decorator: Google::Apis::ComputeBeta::RegionDiskTypeList::Warning::Datum::Representation
        
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
      
      class RegionDisksAddResourcePoliciesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resource_policies, as: 'resourcePolicies'
        end
      end
      
      class RegionDisksRemoveResourcePoliciesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resource_policies, as: 'resourcePolicies'
        end
      end
      
      class RegionDisksResizeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :size_gb, :numeric_string => true, as: 'sizeGb'
        end
      end
      
      class RegionDisksStartAsyncReplicationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :async_secondary_disk, as: 'asyncSecondaryDisk'
        end
      end
      
      class RegionInstanceGroupList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InstanceGroup, decorator: Google::Apis::ComputeBeta::InstanceGroup::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::RegionInstanceGroupList::Warning, decorator: Google::Apis::ComputeBeta::RegionInstanceGroupList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::RegionInstanceGroupList::Warning::Datum, decorator: Google::Apis::ComputeBeta::RegionInstanceGroupList::Warning::Datum::Representation
        
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
      
      class RegionInstanceGroupManagerDeleteInstanceConfigReq
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :names, as: 'names'
        end
      end
      
      class RegionInstanceGroupManagerList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InstanceGroupManager, decorator: Google::Apis::ComputeBeta::InstanceGroupManager::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::RegionInstanceGroupManagerList::Warning, decorator: Google::Apis::ComputeBeta::RegionInstanceGroupManagerList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::RegionInstanceGroupManagerList::Warning::Datum, decorator: Google::Apis::ComputeBeta::RegionInstanceGroupManagerList::Warning::Datum::Representation
        
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
      
      class RegionInstanceGroupManagerPatchInstanceConfigReq
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :per_instance_configs, as: 'perInstanceConfigs', class: Google::Apis::ComputeBeta::PerInstanceConfig, decorator: Google::Apis::ComputeBeta::PerInstanceConfig::Representation
      
        end
      end
      
      class RegionInstanceGroupManagerResizeRequestsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequest, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerResizeRequest::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::RegionInstanceGroupManagerResizeRequestsListResponse::Warning, decorator: Google::Apis::ComputeBeta::RegionInstanceGroupManagerResizeRequestsListResponse::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::RegionInstanceGroupManagerResizeRequestsListResponse::Warning::Datum, decorator: Google::Apis::ComputeBeta::RegionInstanceGroupManagerResizeRequestsListResponse::Warning::Datum::Representation
        
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
      
      class RegionInstanceGroupManagerUpdateInstanceConfigReq
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :per_instance_configs, as: 'perInstanceConfigs', class: Google::Apis::ComputeBeta::PerInstanceConfig, decorator: Google::Apis::ComputeBeta::PerInstanceConfig::Representation
      
        end
      end
      
      class RegionInstanceGroupManagersAbandonInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances'
        end
      end
      
      class RegionInstanceGroupManagersApplyUpdatesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_instances, as: 'allInstances'
          collection :instances, as: 'instances'
          property :minimal_action, as: 'minimalAction'
          property :most_disruptive_allowed_action, as: 'mostDisruptiveAllowedAction'
        end
      end
      
      class RegionInstanceGroupManagersCreateInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::ComputeBeta::PerInstanceConfig, decorator: Google::Apis::ComputeBeta::PerInstanceConfig::Representation
      
        end
      end
      
      class RegionInstanceGroupManagersDeleteInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances'
          property :skip_instances_on_validation_error, as: 'skipInstancesOnValidationError'
        end
      end
      
      class RegionInstanceGroupManagersListErrorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InstanceManagedByIgmError, decorator: Google::Apis::ComputeBeta::InstanceManagedByIgmError::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class RegionInstanceGroupManagersListInstanceConfigsResp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::PerInstanceConfig, decorator: Google::Apis::ComputeBeta::PerInstanceConfig::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::RegionInstanceGroupManagersListInstanceConfigsResp::Warning, decorator: Google::Apis::ComputeBeta::RegionInstanceGroupManagersListInstanceConfigsResp::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::RegionInstanceGroupManagersListInstanceConfigsResp::Warning::Datum, decorator: Google::Apis::ComputeBeta::RegionInstanceGroupManagersListInstanceConfigsResp::Warning::Datum::Representation
        
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
      
      class RegionInstanceGroupManagersListInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :managed_instances, as: 'managedInstances', class: Google::Apis::ComputeBeta::ManagedInstance, decorator: Google::Apis::ComputeBeta::ManagedInstance::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class RegionInstanceGroupManagersRecreateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances'
        end
      end
      
      class RegionInstanceGroupManagersResizeAdvancedRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :no_creation_retries, as: 'noCreationRetries'
          property :target_size, as: 'targetSize'
        end
      end
      
      class RegionInstanceGroupManagersResumeInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances'
        end
      end
      
      class RegionInstanceGroupManagersSetAutoHealingRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auto_healing_policies, as: 'autoHealingPolicies', class: Google::Apis::ComputeBeta::InstanceGroupManagerAutoHealingPolicy, decorator: Google::Apis::ComputeBeta::InstanceGroupManagerAutoHealingPolicy::Representation
      
        end
      end
      
      class RegionInstanceGroupManagersSetTargetPoolsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fingerprint, :base64 => true, as: 'fingerprint'
          collection :target_pools, as: 'targetPools'
        end
      end
      
      class RegionInstanceGroupManagersSetTemplateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_template, as: 'instanceTemplate'
        end
      end
      
      class RegionInstanceGroupManagersStartInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances'
        end
      end
      
      class RegionInstanceGroupManagersStopInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :force_stop, as: 'forceStop'
          collection :instances, as: 'instances'
        end
      end
      
      class RegionInstanceGroupManagersSuspendInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :force_suspend, as: 'forceSuspend'
          collection :instances, as: 'instances'
        end
      end
      
      class RegionInstanceGroupsListInstances
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::InstanceWithNamedPorts, decorator: Google::Apis::ComputeBeta::InstanceWithNamedPorts::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::RegionInstanceGroupsListInstances::Warning, decorator: Google::Apis::ComputeBeta::RegionInstanceGroupsListInstances::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::RegionInstanceGroupsListInstances::Warning::Datum, decorator: Google::Apis::ComputeBeta::RegionInstanceGroupsListInstances::Warning::Datum::Representation
        
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
      
      class RegionInstanceGroupsListInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_state, as: 'instanceState'
          property :port_name, as: 'portName'
        end
      end
      
      class RegionInstanceGroupsSetNamedPortsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fingerprint, :base64 => true, as: 'fingerprint'
          collection :named_ports, as: 'namedPorts', class: Google::Apis::ComputeBeta::NamedPort, decorator: Google::Apis::ComputeBeta::NamedPort::Representation
      
        end
      end
      
      class RegionList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Region, decorator: Google::Apis::ComputeBeta::Region::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::RegionList::Warning, decorator: Google::Apis::ComputeBeta::RegionList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::RegionList::Warning::Datum, decorator: Google::Apis::ComputeBeta::RegionList::Warning::Datum::Representation
        
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
      
      class RegionNetworkEndpointGroupsAttachEndpointsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :network_endpoints, as: 'networkEndpoints', class: Google::Apis::ComputeBeta::NetworkEndpoint, decorator: Google::Apis::ComputeBeta::NetworkEndpoint::Representation
      
        end
      end
      
      class RegionNetworkEndpointGroupsDetachEndpointsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :network_endpoints, as: 'networkEndpoints', class: Google::Apis::ComputeBeta::NetworkEndpoint, decorator: Google::Apis::ComputeBeta::NetworkEndpoint::Representation
      
        end
      end
      
      class RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :firewall_policys, as: 'firewallPolicys', class: Google::Apis::ComputeBeta::RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponseEffectiveFirewallPolicy, decorator: Google::Apis::ComputeBeta::RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponseEffectiveFirewallPolicy::Representation
      
          collection :firewalls, as: 'firewalls', class: Google::Apis::ComputeBeta::Firewall, decorator: Google::Apis::ComputeBeta::Firewall::Representation
      
        end
      end
      
      class RegionNetworkFirewallPoliciesGetEffectiveFirewallsResponseEffectiveFirewallPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          collection :packet_mirroring_rules, as: 'packetMirroringRules', class: Google::Apis::ComputeBeta::FirewallPolicyRule, decorator: Google::Apis::ComputeBeta::FirewallPolicyRule::Representation
      
          property :priority, as: 'priority'
          collection :rules, as: 'rules', class: Google::Apis::ComputeBeta::FirewallPolicyRule, decorator: Google::Apis::ComputeBeta::FirewallPolicyRule::Representation
      
          property :type, as: 'type'
        end
      end
      
      class RegionSetLabelsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
        end
      end
      
      class RegionSetPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::ComputeBeta::Binding, decorator: Google::Apis::ComputeBeta::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :policy, as: 'policy', class: Google::Apis::ComputeBeta::Policy, decorator: Google::Apis::ComputeBeta::Policy::Representation
      
        end
      end
      
      class RegionTargetHttpsProxiesSetSslCertificatesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ssl_certificates, as: 'sslCertificates'
        end
      end
      
      class RegionUrlMapsValidateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::ComputeBeta::UrlMap, decorator: Google::Apis::ComputeBeta::UrlMap::Representation
      
        end
      end
      
      class RequestMirrorPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backend_service, as: 'backendService'
          property :mirror_percent, as: 'mirrorPercent'
        end
      end
      
      class Reservation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregate_reservation, as: 'aggregateReservation', class: Google::Apis::ComputeBeta::AllocationAggregateReservation, decorator: Google::Apis::ComputeBeta::AllocationAggregateReservation::Representation
      
          property :commitment, as: 'commitment'
          property :creation_timestamp, as: 'creationTimestamp'
          property :delete_after_duration, as: 'deleteAfterDuration', class: Google::Apis::ComputeBeta::Duration, decorator: Google::Apis::ComputeBeta::Duration::Representation
      
          property :delete_at_time, as: 'deleteAtTime'
          property :deployment_type, as: 'deploymentType'
          property :description, as: 'description'
          property :enable_emergent_maintenance, as: 'enableEmergentMaintenance'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          collection :linked_commitments, as: 'linkedCommitments'
          property :name, as: 'name'
          property :reservation_mode, as: 'reservationMode'
          property :reservation_sharing_policy, as: 'reservationSharingPolicy', class: Google::Apis::ComputeBeta::AllocationReservationSharingPolicy, decorator: Google::Apis::ComputeBeta::AllocationReservationSharingPolicy::Representation
      
          hash :resource_policies, as: 'resourcePolicies'
          property :resource_status, as: 'resourceStatus', class: Google::Apis::ComputeBeta::AllocationResourceStatus, decorator: Google::Apis::ComputeBeta::AllocationResourceStatus::Representation
      
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :self_link, as: 'selfLink'
          property :share_settings, as: 'shareSettings', class: Google::Apis::ComputeBeta::ShareSettings, decorator: Google::Apis::ComputeBeta::ShareSettings::Representation
      
          property :specific_reservation, as: 'specificReservation', class: Google::Apis::ComputeBeta::AllocationSpecificSkuReservation, decorator: Google::Apis::ComputeBeta::AllocationSpecificSkuReservation::Representation
      
          property :specific_reservation_required, as: 'specificReservationRequired'
          property :status, as: 'status'
          property :zone, as: 'zone'
        end
      end
      
      class ReservationAffinity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consume_reservation_type, as: 'consumeReservationType'
          property :key, as: 'key'
          collection :values, as: 'values'
        end
      end
      
      class ReservationAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::ReservationsScopedList, decorator: Google::Apis::ComputeBeta::ReservationsScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::ReservationAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::ReservationAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::ReservationAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::ReservationAggregatedList::Warning::Datum::Representation
        
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
      
      class ReservationBlock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
          property :creation_timestamp, as: 'creationTimestamp'
          property :id, :numeric_string => true, as: 'id'
          property :in_use_count, as: 'inUseCount'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :physical_topology, as: 'physicalTopology', class: Google::Apis::ComputeBeta::ReservationBlockPhysicalTopology, decorator: Google::Apis::ComputeBeta::ReservationBlockPhysicalTopology::Representation
      
          property :reservation_maintenance, as: 'reservationMaintenance', class: Google::Apis::ComputeBeta::GroupMaintenanceInfo, decorator: Google::Apis::ComputeBeta::GroupMaintenanceInfo::Representation
      
          property :reservation_sub_block_count, as: 'reservationSubBlockCount'
          property :reservation_sub_block_in_use_count, as: 'reservationSubBlockInUseCount'
          property :self_link, as: 'selfLink'
          property :self_link_with_id, as: 'selfLinkWithId'
          property :status, as: 'status'
          property :zone, as: 'zone'
        end
      end
      
      class ReservationBlockPhysicalTopology
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :block, as: 'block'
          property :cluster, as: 'cluster'
          collection :instances, as: 'instances', class: Google::Apis::ComputeBeta::ReservationBlockPhysicalTopologyInstance, decorator: Google::Apis::ComputeBeta::ReservationBlockPhysicalTopologyInstance::Representation
      
        end
      end
      
      class ReservationBlockPhysicalTopologyInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_id, :numeric_string => true, as: 'instanceId'
          property :physical_host_topology, as: 'physicalHostTopology', class: Google::Apis::ComputeBeta::ReservationBlockPhysicalTopologyInstancePhysicalHostTopology, decorator: Google::Apis::ComputeBeta::ReservationBlockPhysicalTopologyInstancePhysicalHostTopology::Representation
      
          property :project_id, :numeric_string => true, as: 'projectId'
        end
      end
      
      class ReservationBlockPhysicalTopologyInstancePhysicalHostTopology
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :sub_block, as: 'subBlock'
        end
      end
      
      class ReservationBlocksGetResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::ComputeBeta::ReservationBlock, decorator: Google::Apis::ComputeBeta::ReservationBlock::Representation
      
        end
      end
      
      class ReservationBlocksListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::ReservationBlock, decorator: Google::Apis::ComputeBeta::ReservationBlock::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::ReservationBlocksListResponse::Warning, decorator: Google::Apis::ComputeBeta::ReservationBlocksListResponse::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::ReservationBlocksListResponse::Warning::Datum, decorator: Google::Apis::ComputeBeta::ReservationBlocksListResponse::Warning::Datum::Representation
        
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
      
      class ReservationList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Reservation, decorator: Google::Apis::ComputeBeta::Reservation::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::ReservationList::Warning, decorator: Google::Apis::ComputeBeta::ReservationList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::ReservationList::Warning::Datum, decorator: Google::Apis::ComputeBeta::ReservationList::Warning::Datum::Representation
        
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
      
      class ReservationSubBlock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
          property :creation_timestamp, as: 'creationTimestamp'
          property :id, :numeric_string => true, as: 'id'
          property :in_use_count, as: 'inUseCount'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :physical_topology, as: 'physicalTopology', class: Google::Apis::ComputeBeta::ReservationSubBlockPhysicalTopology, decorator: Google::Apis::ComputeBeta::ReservationSubBlockPhysicalTopology::Representation
      
          property :reservation_sub_block_maintenance, as: 'reservationSubBlockMaintenance', class: Google::Apis::ComputeBeta::GroupMaintenanceInfo, decorator: Google::Apis::ComputeBeta::GroupMaintenanceInfo::Representation
      
          property :self_link, as: 'selfLink'
          property :self_link_with_id, as: 'selfLinkWithId'
          property :status, as: 'status'
          property :zone, as: 'zone'
        end
      end
      
      class ReservationSubBlockPhysicalTopology
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :block, as: 'block'
          property :cluster, as: 'cluster'
          property :sub_block, as: 'subBlock'
        end
      end
      
      class ReservationSubBlocksGetResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::ComputeBeta::ReservationSubBlock, decorator: Google::Apis::ComputeBeta::ReservationSubBlock::Representation
      
        end
      end
      
      class ReservationSubBlocksListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::ReservationSubBlock, decorator: Google::Apis::ComputeBeta::ReservationSubBlock::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::ReservationSubBlocksListResponse::Warning, decorator: Google::Apis::ComputeBeta::ReservationSubBlocksListResponse::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::ReservationSubBlocksListResponse::Warning::Datum, decorator: Google::Apis::ComputeBeta::ReservationSubBlocksListResponse::Warning::Datum::Representation
        
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
      
      class ReservationsBlocksPerformMaintenanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :maintenance_scope, as: 'maintenanceScope'
        end
      end
      
      class ReservationsPerformMaintenanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :maintenance_scope, as: 'maintenanceScope'
        end
      end
      
      class ReservationsResizeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :specific_sku_count, :numeric_string => true, as: 'specificSkuCount'
        end
      end
      
      class ReservationsScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :reservations, as: 'reservations', class: Google::Apis::ComputeBeta::Reservation, decorator: Google::Apis::ComputeBeta::Reservation::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::ReservationsScopedList::Warning, decorator: Google::Apis::ComputeBeta::ReservationsScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::ReservationsScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::ReservationsScopedList::Warning::Datum::Representation
        
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
      
      class ResourceCommitment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accelerator_type, as: 'acceleratorType'
          property :amount, :numeric_string => true, as: 'amount'
          property :type, as: 'type'
        end
      end
      
      class ResourceGroupReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :group, as: 'group'
        end
      end
      
      class ResourcePoliciesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resource_policies, as: 'resourcePolicies', class: Google::Apis::ComputeBeta::ResourcePolicy, decorator: Google::Apis::ComputeBeta::ResourcePolicy::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::ResourcePoliciesScopedList::Warning, decorator: Google::Apis::ComputeBeta::ResourcePoliciesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::ResourcePoliciesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::ResourcePoliciesScopedList::Warning::Datum::Representation
        
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
      
      class ResourcePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :disk_consistency_group_policy, as: 'diskConsistencyGroupPolicy', class: Google::Apis::ComputeBeta::ResourcePolicyDiskConsistencyGroupPolicy, decorator: Google::Apis::ComputeBeta::ResourcePolicyDiskConsistencyGroupPolicy::Representation
      
          property :group_placement_policy, as: 'groupPlacementPolicy', class: Google::Apis::ComputeBeta::ResourcePolicyGroupPlacementPolicy, decorator: Google::Apis::ComputeBeta::ResourcePolicyGroupPlacementPolicy::Representation
      
          property :id, :numeric_string => true, as: 'id'
          property :instance_schedule_policy, as: 'instanceSchedulePolicy', class: Google::Apis::ComputeBeta::ResourcePolicyInstanceSchedulePolicy, decorator: Google::Apis::ComputeBeta::ResourcePolicyInstanceSchedulePolicy::Representation
      
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :region, as: 'region'
          property :resource_status, as: 'resourceStatus', class: Google::Apis::ComputeBeta::ResourcePolicyResourceStatus, decorator: Google::Apis::ComputeBeta::ResourcePolicyResourceStatus::Representation
      
          property :self_link, as: 'selfLink'
          property :snapshot_schedule_policy, as: 'snapshotSchedulePolicy', class: Google::Apis::ComputeBeta::ResourcePolicySnapshotSchedulePolicy, decorator: Google::Apis::ComputeBeta::ResourcePolicySnapshotSchedulePolicy::Representation
      
          property :status, as: 'status'
          property :workload_policy, as: 'workloadPolicy', class: Google::Apis::ComputeBeta::ResourcePolicyWorkloadPolicy, decorator: Google::Apis::ComputeBeta::ResourcePolicyWorkloadPolicy::Representation
      
        end
      end
      
      class ResourcePolicyAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::ResourcePoliciesScopedList, decorator: Google::Apis::ComputeBeta::ResourcePoliciesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::ResourcePolicyAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::ResourcePolicyAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::ResourcePolicyAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::ResourcePolicyAggregatedList::Warning::Datum::Representation
        
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
      
      class ResourcePolicyDailyCycle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :days_in_cycle, as: 'daysInCycle'
          property :duration, as: 'duration'
          property :start_time, as: 'startTime'
        end
      end
      
      class ResourcePolicyDiskConsistencyGroupPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ResourcePolicyGroupPlacementPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :availability_domain_count, as: 'availabilityDomainCount'
          property :collocation, as: 'collocation'
          property :gpu_topology, as: 'gpuTopology'
          property :max_distance, as: 'maxDistance'
          property :slice_count, as: 'sliceCount'
          property :tpu_topology, as: 'tpuTopology'
          property :vm_count, as: 'vmCount'
        end
      end
      
      class ResourcePolicyHourlyCycle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :hours_in_cycle, as: 'hoursInCycle'
          property :start_time, as: 'startTime'
        end
      end
      
      class ResourcePolicyInstanceSchedulePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expiration_time, as: 'expirationTime'
          property :start_time, as: 'startTime'
          property :time_zone, as: 'timeZone'
          property :vm_start_schedule, as: 'vmStartSchedule', class: Google::Apis::ComputeBeta::ResourcePolicyInstanceSchedulePolicySchedule, decorator: Google::Apis::ComputeBeta::ResourcePolicyInstanceSchedulePolicySchedule::Representation
      
          property :vm_stop_schedule, as: 'vmStopSchedule', class: Google::Apis::ComputeBeta::ResourcePolicyInstanceSchedulePolicySchedule, decorator: Google::Apis::ComputeBeta::ResourcePolicyInstanceSchedulePolicySchedule::Representation
      
        end
      end
      
      class ResourcePolicyInstanceSchedulePolicySchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :schedule, as: 'schedule'
        end
      end
      
      class ResourcePolicyList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::ResourcePolicy, decorator: Google::Apis::ComputeBeta::ResourcePolicy::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::ResourcePolicyList::Warning, decorator: Google::Apis::ComputeBeta::ResourcePolicyList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::ResourcePolicyList::Warning::Datum, decorator: Google::Apis::ComputeBeta::ResourcePolicyList::Warning::Datum::Representation
        
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
      
      class ResourcePolicyResourceStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_schedule_policy, as: 'instanceSchedulePolicy', class: Google::Apis::ComputeBeta::ResourcePolicyResourceStatusInstanceSchedulePolicyStatus, decorator: Google::Apis::ComputeBeta::ResourcePolicyResourceStatusInstanceSchedulePolicyStatus::Representation
      
        end
      end
      
      class ResourcePolicyResourceStatusInstanceSchedulePolicyStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_run_start_time, as: 'lastRunStartTime'
          property :next_run_start_time, as: 'nextRunStartTime'
        end
      end
      
      class ResourcePolicySnapshotSchedulePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :retention_policy, as: 'retentionPolicy', class: Google::Apis::ComputeBeta::ResourcePolicySnapshotSchedulePolicyRetentionPolicy, decorator: Google::Apis::ComputeBeta::ResourcePolicySnapshotSchedulePolicyRetentionPolicy::Representation
      
          property :schedule, as: 'schedule', class: Google::Apis::ComputeBeta::ResourcePolicySnapshotSchedulePolicySchedule, decorator: Google::Apis::ComputeBeta::ResourcePolicySnapshotSchedulePolicySchedule::Representation
      
          property :snapshot_properties, as: 'snapshotProperties', class: Google::Apis::ComputeBeta::ResourcePolicySnapshotSchedulePolicySnapshotProperties, decorator: Google::Apis::ComputeBeta::ResourcePolicySnapshotSchedulePolicySnapshotProperties::Representation
      
        end
      end
      
      class ResourcePolicySnapshotSchedulePolicyRetentionPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_retention_days, as: 'maxRetentionDays'
          property :on_source_disk_delete, as: 'onSourceDiskDelete'
        end
      end
      
      class ResourcePolicySnapshotSchedulePolicySchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :daily_schedule, as: 'dailySchedule', class: Google::Apis::ComputeBeta::ResourcePolicyDailyCycle, decorator: Google::Apis::ComputeBeta::ResourcePolicyDailyCycle::Representation
      
          property :hourly_schedule, as: 'hourlySchedule', class: Google::Apis::ComputeBeta::ResourcePolicyHourlyCycle, decorator: Google::Apis::ComputeBeta::ResourcePolicyHourlyCycle::Representation
      
          property :weekly_schedule, as: 'weeklySchedule', class: Google::Apis::ComputeBeta::ResourcePolicyWeeklyCycle, decorator: Google::Apis::ComputeBeta::ResourcePolicyWeeklyCycle::Representation
      
        end
      end
      
      class ResourcePolicySnapshotSchedulePolicySnapshotProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chain_name, as: 'chainName'
          property :guest_flush, as: 'guestFlush'
          hash :labels, as: 'labels'
          property :region, as: 'region'
          collection :storage_locations, as: 'storageLocations'
        end
      end
      
      class ResourcePolicyWeeklyCycle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :day_of_weeks, as: 'dayOfWeeks', class: Google::Apis::ComputeBeta::ResourcePolicyWeeklyCycleDayOfWeek, decorator: Google::Apis::ComputeBeta::ResourcePolicyWeeklyCycleDayOfWeek::Representation
      
        end
      end
      
      class ResourcePolicyWeeklyCycleDayOfWeek
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :duration, as: 'duration'
          property :start_time, as: 'startTime'
        end
      end
      
      class ResourcePolicyWorkloadPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accelerator_topology, as: 'acceleratorTopology'
          property :max_topology_distance, as: 'maxTopologyDistance'
          property :type, as: 'type'
        end
      end
      
      class ResourceStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :physical_host, as: 'physicalHost'
          property :physical_host_topology, as: 'physicalHostTopology', class: Google::Apis::ComputeBeta::ResourceStatusPhysicalHostTopology, decorator: Google::Apis::ComputeBeta::ResourceStatusPhysicalHostTopology::Representation
      
          property :scheduling, as: 'scheduling', class: Google::Apis::ComputeBeta::ResourceStatusScheduling, decorator: Google::Apis::ComputeBeta::ResourceStatusScheduling::Representation
      
          property :shutdown_details, as: 'shutdownDetails', class: Google::Apis::ComputeBeta::ResourceStatusShutdownDetails, decorator: Google::Apis::ComputeBeta::ResourceStatusShutdownDetails::Representation
      
          property :upcoming_maintenance, as: 'upcomingMaintenance', class: Google::Apis::ComputeBeta::UpcomingMaintenance, decorator: Google::Apis::ComputeBeta::UpcomingMaintenance::Representation
      
        end
      end
      
      class ResourceStatusPhysicalHostTopology
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :block, as: 'block'
          property :cluster, as: 'cluster'
          property :host, as: 'host'
          property :subblock, as: 'subblock'
        end
      end
      
      class ResourceStatusScheduling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :availability_domain, as: 'availabilityDomain'
          property :termination_timestamp, as: 'terminationTimestamp'
        end
      end
      
      class ResourceStatusShutdownDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_duration, as: 'maxDuration', class: Google::Apis::ComputeBeta::Duration, decorator: Google::Apis::ComputeBeta::Duration::Representation
      
          property :request_timestamp, as: 'requestTimestamp'
          property :stop_state, as: 'stopState'
          property :target_state, as: 'targetState'
        end
      end
      
      class RolloutPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_rollout_time, as: 'defaultRolloutTime'
          hash :location_rollout_policies, as: 'locationRolloutPolicies'
        end
      end
      
      class Route
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :as_paths, as: 'asPaths', class: Google::Apis::ComputeBeta::RouteAsPath, decorator: Google::Apis::ComputeBeta::RouteAsPath::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :dest_range, as: 'destRange'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :network, as: 'network'
          property :next_hop_gateway, as: 'nextHopGateway'
          property :next_hop_hub, as: 'nextHopHub'
          property :next_hop_ilb, as: 'nextHopIlb'
          property :next_hop_instance, as: 'nextHopInstance'
          property :next_hop_inter_region_cost, as: 'nextHopInterRegionCost'
          property :next_hop_interconnect_attachment, as: 'nextHopInterconnectAttachment'
          property :next_hop_ip, as: 'nextHopIp'
          property :next_hop_med, as: 'nextHopMed'
          property :next_hop_network, as: 'nextHopNetwork'
          property :next_hop_origin, as: 'nextHopOrigin'
          property :next_hop_peering, as: 'nextHopPeering'
          property :next_hop_vpn_tunnel, as: 'nextHopVpnTunnel'
          property :params, as: 'params', class: Google::Apis::ComputeBeta::RouteParams, decorator: Google::Apis::ComputeBeta::RouteParams::Representation
      
          property :priority, as: 'priority'
          property :route_status, as: 'routeStatus'
          property :route_type, as: 'routeType'
          property :self_link, as: 'selfLink'
          collection :tags, as: 'tags'
          collection :warnings, as: 'warnings', class: Google::Apis::ComputeBeta::Route::Warning, decorator: Google::Apis::ComputeBeta::Route::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::Route::Warning::Datum, decorator: Google::Apis::ComputeBeta::Route::Warning::Datum::Representation
        
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
      
      class RouteAsPath
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :as_lists, as: 'asLists'
          property :path_segment_type, as: 'pathSegmentType'
        end
      end
      
      class RouteList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Route, decorator: Google::Apis::ComputeBeta::Route::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::RouteList::Warning, decorator: Google::Apis::ComputeBeta::RouteList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::RouteList::Warning::Datum, decorator: Google::Apis::ComputeBeta::RouteList::Warning::Datum::Representation
        
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
      
      class RouteParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :resource_manager_tags, as: 'resourceManagerTags'
        end
      end
      
      class RoutePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :name, as: 'name'
          collection :terms, as: 'terms', class: Google::Apis::ComputeBeta::RoutePolicyPolicyTerm, decorator: Google::Apis::ComputeBeta::RoutePolicyPolicyTerm::Representation
      
          property :type, as: 'type'
        end
      end
      
      class RoutePolicyPolicyTerm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::ComputeBeta::Expr, decorator: Google::Apis::ComputeBeta::Expr::Representation
      
          property :match, as: 'match', class: Google::Apis::ComputeBeta::Expr, decorator: Google::Apis::ComputeBeta::Expr::Representation
      
          property :priority, as: 'priority'
        end
      end
      
      class Router
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bgp, as: 'bgp', class: Google::Apis::ComputeBeta::RouterBgp, decorator: Google::Apis::ComputeBeta::RouterBgp::Representation
      
          collection :bgp_peers, as: 'bgpPeers', class: Google::Apis::ComputeBeta::RouterBgpPeer, decorator: Google::Apis::ComputeBeta::RouterBgpPeer::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :encrypted_interconnect_router, as: 'encryptedInterconnectRouter'
          property :id, :numeric_string => true, as: 'id'
          collection :interfaces, as: 'interfaces', class: Google::Apis::ComputeBeta::RouterInterface, decorator: Google::Apis::ComputeBeta::RouterInterface::Representation
      
          property :kind, as: 'kind'
          collection :md5_authentication_keys, as: 'md5AuthenticationKeys', class: Google::Apis::ComputeBeta::RouterMd5AuthenticationKey, decorator: Google::Apis::ComputeBeta::RouterMd5AuthenticationKey::Representation
      
          property :name, as: 'name'
          collection :nats, as: 'nats', class: Google::Apis::ComputeBeta::RouterNat, decorator: Google::Apis::ComputeBeta::RouterNat::Representation
      
          property :ncc_gateway, as: 'nccGateway'
          property :network, as: 'network'
          property :params, as: 'params', class: Google::Apis::ComputeBeta::RouterParams, decorator: Google::Apis::ComputeBeta::RouterParams::Representation
      
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
        end
      end
      
      class RouterAdvertisedIpRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :range, as: 'range'
        end
      end
      
      class RouterAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::RoutersScopedList, decorator: Google::Apis::ComputeBeta::RoutersScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::RouterAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::RouterAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::RouterAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::RouterAggregatedList::Warning::Datum::Representation
        
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
      
      class RouterBgp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertise_mode, as: 'advertiseMode'
          collection :advertised_groups, as: 'advertisedGroups'
          collection :advertised_ip_ranges, as: 'advertisedIpRanges', class: Google::Apis::ComputeBeta::RouterAdvertisedIpRange, decorator: Google::Apis::ComputeBeta::RouterAdvertisedIpRange::Representation
      
          property :asn, as: 'asn'
          property :identifier_range, as: 'identifierRange'
          property :keepalive_interval, as: 'keepaliveInterval'
        end
      end
      
      class RouterBgpPeer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertise_mode, as: 'advertiseMode'
          collection :advertised_groups, as: 'advertisedGroups'
          collection :advertised_ip_ranges, as: 'advertisedIpRanges', class: Google::Apis::ComputeBeta::RouterAdvertisedIpRange, decorator: Google::Apis::ComputeBeta::RouterAdvertisedIpRange::Representation
      
          property :advertised_route_priority, as: 'advertisedRoutePriority'
          property :bfd, as: 'bfd', class: Google::Apis::ComputeBeta::RouterBgpPeerBfd, decorator: Google::Apis::ComputeBeta::RouterBgpPeerBfd::Representation
      
          collection :custom_learned_ip_ranges, as: 'customLearnedIpRanges', class: Google::Apis::ComputeBeta::RouterBgpPeerCustomLearnedIpRange, decorator: Google::Apis::ComputeBeta::RouterBgpPeerCustomLearnedIpRange::Representation
      
          property :custom_learned_route_priority, as: 'customLearnedRoutePriority'
          property :enable, as: 'enable'
          property :enable_ipv4, as: 'enableIpv4'
          property :enable_ipv6, as: 'enableIpv6'
          collection :export_policies, as: 'exportPolicies'
          collection :import_policies, as: 'importPolicies'
          property :interface_name, as: 'interfaceName'
          property :ip_address, as: 'ipAddress'
          property :ipv4_nexthop_address, as: 'ipv4NexthopAddress'
          property :ipv6_nexthop_address, as: 'ipv6NexthopAddress'
          property :management_type, as: 'managementType'
          property :md5_authentication_key_name, as: 'md5AuthenticationKeyName'
          property :name, as: 'name'
          property :peer_asn, as: 'peerAsn'
          property :peer_ip_address, as: 'peerIpAddress'
          property :peer_ipv4_nexthop_address, as: 'peerIpv4NexthopAddress'
          property :peer_ipv6_nexthop_address, as: 'peerIpv6NexthopAddress'
          property :router_appliance_instance, as: 'routerApplianceInstance'
        end
      end
      
      class RouterBgpPeerBfd
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_receive_interval, as: 'minReceiveInterval'
          property :min_transmit_interval, as: 'minTransmitInterval'
          property :multiplier, as: 'multiplier'
          property :session_initialization_mode, as: 'sessionInitializationMode'
        end
      end
      
      class RouterBgpPeerCustomLearnedIpRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :range, as: 'range'
        end
      end
      
      class RouterInterface
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_range, as: 'ipRange'
          property :ip_version, as: 'ipVersion'
          property :linked_interconnect_attachment, as: 'linkedInterconnectAttachment'
          property :linked_vpn_tunnel, as: 'linkedVpnTunnel'
          property :management_type, as: 'managementType'
          property :name, as: 'name'
          property :private_ip_address, as: 'privateIpAddress'
          property :redundant_interface, as: 'redundantInterface'
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class RouterList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Router, decorator: Google::Apis::ComputeBeta::Router::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::RouterList::Warning, decorator: Google::Apis::ComputeBeta::RouterList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::RouterList::Warning::Datum, decorator: Google::Apis::ComputeBeta::RouterList::Warning::Datum::Representation
        
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
      
      class RouterMd5AuthenticationKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :name, as: 'name'
        end
      end
      
      class RouterNat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_network_tier, as: 'autoNetworkTier'
          collection :drain_nat_ips, as: 'drainNatIps'
          property :enable_dynamic_port_allocation, as: 'enableDynamicPortAllocation'
          property :enable_endpoint_independent_mapping, as: 'enableEndpointIndependentMapping'
          collection :endpoint_types, as: 'endpointTypes'
          property :icmp_idle_timeout_sec, as: 'icmpIdleTimeoutSec'
          property :log_config, as: 'logConfig', class: Google::Apis::ComputeBeta::RouterNatLogConfig, decorator: Google::Apis::ComputeBeta::RouterNatLogConfig::Representation
      
          property :max_ports_per_vm, as: 'maxPortsPerVm'
          property :min_ports_per_vm, as: 'minPortsPerVm'
          property :name, as: 'name'
          collection :nat64_subnetworks, as: 'nat64Subnetworks', class: Google::Apis::ComputeBeta::RouterNatSubnetworkToNat64, decorator: Google::Apis::ComputeBeta::RouterNatSubnetworkToNat64::Representation
      
          property :nat_ip_allocate_option, as: 'natIpAllocateOption'
          collection :nat_ips, as: 'natIps'
          collection :rules, as: 'rules', class: Google::Apis::ComputeBeta::RouterNatRule, decorator: Google::Apis::ComputeBeta::RouterNatRule::Representation
      
          property :source_subnetwork_ip_ranges_to_nat, as: 'sourceSubnetworkIpRangesToNat'
          property :source_subnetwork_ip_ranges_to_nat64, as: 'sourceSubnetworkIpRangesToNat64'
          collection :subnetworks, as: 'subnetworks', class: Google::Apis::ComputeBeta::RouterNatSubnetworkToNat, decorator: Google::Apis::ComputeBeta::RouterNatSubnetworkToNat::Representation
      
          property :tcp_established_idle_timeout_sec, as: 'tcpEstablishedIdleTimeoutSec'
          property :tcp_time_wait_timeout_sec, as: 'tcpTimeWaitTimeoutSec'
          property :tcp_transitory_idle_timeout_sec, as: 'tcpTransitoryIdleTimeoutSec'
          property :type, as: 'type'
          property :udp_idle_timeout_sec, as: 'udpIdleTimeoutSec'
        end
      end
      
      class RouterNatLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable, as: 'enable'
          property :filter, as: 'filter'
        end
      end
      
      class RouterNatRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action', class: Google::Apis::ComputeBeta::RouterNatRuleAction, decorator: Google::Apis::ComputeBeta::RouterNatRuleAction::Representation
      
          property :description, as: 'description'
          property :match, as: 'match'
          property :rule_number, as: 'ruleNumber'
        end
      end
      
      class RouterNatRuleAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :source_nat_active_ips, as: 'sourceNatActiveIps'
          collection :source_nat_active_ranges, as: 'sourceNatActiveRanges'
          collection :source_nat_drain_ips, as: 'sourceNatDrainIps'
          collection :source_nat_drain_ranges, as: 'sourceNatDrainRanges'
        end
      end
      
      class RouterNatSubnetworkToNat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :secondary_ip_range_names, as: 'secondaryIpRangeNames'
          collection :source_ip_ranges_to_nat, as: 'sourceIpRangesToNat'
        end
      end
      
      class RouterNatSubnetworkToNat64
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class RouterParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :resource_manager_tags, as: 'resourceManagerTags'
        end
      end
      
      class RouterStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :best_routes, as: 'bestRoutes', class: Google::Apis::ComputeBeta::Route, decorator: Google::Apis::ComputeBeta::Route::Representation
      
          collection :best_routes_for_router, as: 'bestRoutesForRouter', class: Google::Apis::ComputeBeta::Route, decorator: Google::Apis::ComputeBeta::Route::Representation
      
          collection :bgp_peer_status, as: 'bgpPeerStatus', class: Google::Apis::ComputeBeta::RouterStatusBgpPeerStatus, decorator: Google::Apis::ComputeBeta::RouterStatusBgpPeerStatus::Representation
      
          collection :nat_status, as: 'natStatus', class: Google::Apis::ComputeBeta::RouterStatusNatStatus, decorator: Google::Apis::ComputeBeta::RouterStatusNatStatus::Representation
      
          property :ncc_gateway, as: 'nccGateway'
          property :network, as: 'network'
        end
      end
      
      class RouterStatusBgpPeerStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :advertised_routes, as: 'advertisedRoutes', class: Google::Apis::ComputeBeta::Route, decorator: Google::Apis::ComputeBeta::Route::Representation
      
          property :bfd_status, as: 'bfdStatus', class: Google::Apis::ComputeBeta::BfdStatus, decorator: Google::Apis::ComputeBeta::BfdStatus::Representation
      
          property :enable_ipv4, as: 'enableIpv4'
          property :enable_ipv6, as: 'enableIpv6'
          property :ip_address, as: 'ipAddress'
          property :ipv4_nexthop_address, as: 'ipv4NexthopAddress'
          property :ipv6_nexthop_address, as: 'ipv6NexthopAddress'
          property :linked_vpn_tunnel, as: 'linkedVpnTunnel'
          property :md5_auth_enabled, as: 'md5AuthEnabled'
          property :name, as: 'name'
          property :num_learned_routes, as: 'numLearnedRoutes'
          property :peer_ip_address, as: 'peerIpAddress'
          property :peer_ipv4_nexthop_address, as: 'peerIpv4NexthopAddress'
          property :peer_ipv6_nexthop_address, as: 'peerIpv6NexthopAddress'
          property :router_appliance_instance, as: 'routerApplianceInstance'
          property :state, as: 'state'
          property :status, as: 'status'
          property :status_reason, as: 'statusReason'
          property :uptime, as: 'uptime'
          property :uptime_seconds, as: 'uptimeSeconds'
        end
      end
      
      class RouterStatusNatStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auto_allocated_nat_ips, as: 'autoAllocatedNatIps'
          collection :drain_auto_allocated_nat_ips, as: 'drainAutoAllocatedNatIps'
          collection :drain_user_allocated_nat_ips, as: 'drainUserAllocatedNatIps'
          property :min_extra_nat_ips_needed, as: 'minExtraNatIpsNeeded'
          property :name, as: 'name'
          property :num_vm_endpoints_with_nat_mappings, as: 'numVmEndpointsWithNatMappings'
          collection :rule_status, as: 'ruleStatus', class: Google::Apis::ComputeBeta::RouterStatusNatStatusNatRuleStatus, decorator: Google::Apis::ComputeBeta::RouterStatusNatStatusNatRuleStatus::Representation
      
          collection :user_allocated_nat_ip_resources, as: 'userAllocatedNatIpResources'
          collection :user_allocated_nat_ips, as: 'userAllocatedNatIps'
        end
      end
      
      class RouterStatusNatStatusNatRuleStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :active_nat_ips, as: 'activeNatIps'
          collection :drain_nat_ips, as: 'drainNatIps'
          property :min_extra_ips_needed, as: 'minExtraIpsNeeded'
          property :num_vm_endpoints_with_nat_mappings, as: 'numVmEndpointsWithNatMappings'
          property :rule_number, as: 'ruleNumber'
        end
      end
      
      class RouterStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :result, as: 'result', class: Google::Apis::ComputeBeta::RouterStatus, decorator: Google::Apis::ComputeBeta::RouterStatus::Representation
      
        end
      end
      
      class RoutersGetRoutePolicyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::ComputeBeta::RoutePolicy, decorator: Google::Apis::ComputeBeta::RoutePolicy::Representation
      
        end
      end
      
      class RoutersListBgpRoutes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :result, as: 'result', class: Google::Apis::ComputeBeta::BgpRoute, decorator: Google::Apis::ComputeBeta::BgpRoute::Representation
      
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::RoutersListBgpRoutes::Warning, decorator: Google::Apis::ComputeBeta::RoutersListBgpRoutes::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::RoutersListBgpRoutes::Warning::Datum, decorator: Google::Apis::ComputeBeta::RoutersListBgpRoutes::Warning::Datum::Representation
        
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
      
      class RoutersListRoutePolicies
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :result, as: 'result', class: Google::Apis::ComputeBeta::RoutePolicy, decorator: Google::Apis::ComputeBeta::RoutePolicy::Representation
      
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::RoutersListRoutePolicies::Warning, decorator: Google::Apis::ComputeBeta::RoutersListRoutePolicies::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::RoutersListRoutePolicies::Warning::Datum, decorator: Google::Apis::ComputeBeta::RoutersListRoutePolicies::Warning::Datum::Representation
        
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
      
      class RoutersPreviewResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::ComputeBeta::Router, decorator: Google::Apis::ComputeBeta::Router::Representation
      
        end
      end
      
      class RoutersScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :routers, as: 'routers', class: Google::Apis::ComputeBeta::Router, decorator: Google::Apis::ComputeBeta::Router::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::RoutersScopedList::Warning, decorator: Google::Apis::ComputeBeta::RoutersScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::RoutersScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::RoutersScopedList::Warning::Datum::Representation
        
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
      
      class SslHealthCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :port, as: 'port'
          property :port_name, as: 'portName'
          property :port_specification, as: 'portSpecification'
          property :proxy_header, as: 'proxyHeader'
          property :request, as: 'request'
          property :response, as: 'response'
        end
      end
      
      class SavedAttachedDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_delete, as: 'autoDelete'
          property :boot, as: 'boot'
          property :device_name, as: 'deviceName'
          property :disk_encryption_key, as: 'diskEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
          property :disk_type, as: 'diskType'
          collection :guest_os_features, as: 'guestOsFeatures', class: Google::Apis::ComputeBeta::GuestOsFeature, decorator: Google::Apis::ComputeBeta::GuestOsFeature::Representation
      
          property :index, as: 'index'
          property :interface, as: 'interface'
          property :kind, as: 'kind'
          collection :licenses, as: 'licenses'
          property :mode, as: 'mode'
          property :source, as: 'source'
          property :storage_bytes, :numeric_string => true, as: 'storageBytes'
          property :storage_bytes_status, as: 'storageBytesStatus'
          property :type, as: 'type'
        end
      end
      
      class SavedDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :kind, as: 'kind'
          property :source_disk, as: 'sourceDisk'
          property :storage_bytes, :numeric_string => true, as: 'storageBytes'
          property :storage_bytes_status, as: 'storageBytesStatus'
        end
      end
      
      class ScalingScheduleStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_start_time, as: 'lastStartTime'
          property :next_start_time, as: 'nextStartTime'
          property :state, as: 'state'
        end
      end
      
      class Scheduling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automatic_restart, as: 'automaticRestart'
          property :availability_domain, as: 'availabilityDomain'
          property :graceful_shutdown, as: 'gracefulShutdown', class: Google::Apis::ComputeBeta::SchedulingGracefulShutdown, decorator: Google::Apis::ComputeBeta::SchedulingGracefulShutdown::Representation
      
          property :host_error_timeout_seconds, as: 'hostErrorTimeoutSeconds'
          property :instance_termination_action, as: 'instanceTerminationAction'
          property :local_ssd_recovery_timeout, as: 'localSsdRecoveryTimeout', class: Google::Apis::ComputeBeta::Duration, decorator: Google::Apis::ComputeBeta::Duration::Representation
      
          property :location_hint, as: 'locationHint'
          property :maintenance_freeze_duration_hours, as: 'maintenanceFreezeDurationHours'
          property :maintenance_interval, as: 'maintenanceInterval'
          property :max_run_duration, as: 'maxRunDuration', class: Google::Apis::ComputeBeta::Duration, decorator: Google::Apis::ComputeBeta::Duration::Representation
      
          property :min_node_cpus, as: 'minNodeCpus'
          collection :node_affinities, as: 'nodeAffinities', class: Google::Apis::ComputeBeta::SchedulingNodeAffinity, decorator: Google::Apis::ComputeBeta::SchedulingNodeAffinity::Representation
      
          property :on_host_maintenance, as: 'onHostMaintenance'
          property :on_instance_stop_action, as: 'onInstanceStopAction', class: Google::Apis::ComputeBeta::SchedulingOnInstanceStopAction, decorator: Google::Apis::ComputeBeta::SchedulingOnInstanceStopAction::Representation
      
          property :preemptible, as: 'preemptible'
          property :provisioning_model, as: 'provisioningModel'
          property :skip_guest_os_shutdown, as: 'skipGuestOsShutdown'
          property :termination_time, as: 'terminationTime'
        end
      end
      
      class SchedulingGracefulShutdown
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :max_duration, as: 'maxDuration', class: Google::Apis::ComputeBeta::Duration, decorator: Google::Apis::ComputeBeta::Duration::Representation
      
        end
      end
      
      class SchedulingNodeAffinity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :operator, as: 'operator'
          collection :values, as: 'values'
        end
      end
      
      class SchedulingOnInstanceStopAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :discard_local_ssd, as: 'discardLocalSsd'
        end
      end
      
      class Screenshot
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contents, as: 'contents'
          property :kind, as: 'kind'
        end
      end
      
      class SecurityPoliciesAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::SecurityPoliciesScopedList, decorator: Google::Apis::ComputeBeta::SecurityPoliciesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::SecurityPoliciesAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::SecurityPoliciesAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::SecurityPoliciesAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::SecurityPoliciesAggregatedList::Warning::Datum::Representation
        
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
      
      class SecurityPoliciesListPreconfiguredExpressionSetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :preconfigured_expression_sets, as: 'preconfiguredExpressionSets', class: Google::Apis::ComputeBeta::SecurityPoliciesWafConfig, decorator: Google::Apis::ComputeBeta::SecurityPoliciesWafConfig::Representation
      
        end
      end
      
      class SecurityPoliciesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :security_policies, as: 'securityPolicies', class: Google::Apis::ComputeBeta::SecurityPolicy, decorator: Google::Apis::ComputeBeta::SecurityPolicy::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::SecurityPoliciesScopedList::Warning, decorator: Google::Apis::ComputeBeta::SecurityPoliciesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::SecurityPoliciesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::SecurityPoliciesScopedList::Warning::Datum::Representation
        
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
      
      class SecurityPoliciesWafConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :waf_rules, as: 'wafRules', class: Google::Apis::ComputeBeta::PreconfiguredWafSet, decorator: Google::Apis::ComputeBeta::PreconfiguredWafSet::Representation
      
        end
      end
      
      class SecurityPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adaptive_protection_config, as: 'adaptiveProtectionConfig', class: Google::Apis::ComputeBeta::SecurityPolicyAdaptiveProtectionConfig, decorator: Google::Apis::ComputeBeta::SecurityPolicyAdaptiveProtectionConfig::Representation
      
          property :advanced_options_config, as: 'advancedOptionsConfig', class: Google::Apis::ComputeBeta::SecurityPolicyAdvancedOptionsConfig, decorator: Google::Apis::ComputeBeta::SecurityPolicyAdvancedOptionsConfig::Representation
      
          collection :associations, as: 'associations', class: Google::Apis::ComputeBeta::SecurityPolicyAssociation, decorator: Google::Apis::ComputeBeta::SecurityPolicyAssociation::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          property :ddos_protection_config, as: 'ddosProtectionConfig', class: Google::Apis::ComputeBeta::SecurityPolicyDdosProtectionConfig, decorator: Google::Apis::ComputeBeta::SecurityPolicyDdosProtectionConfig::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :parent, as: 'parent'
          property :recaptcha_options_config, as: 'recaptchaOptionsConfig', class: Google::Apis::ComputeBeta::SecurityPolicyRecaptchaOptionsConfig, decorator: Google::Apis::ComputeBeta::SecurityPolicyRecaptchaOptionsConfig::Representation
      
          property :region, as: 'region'
          property :rule_tuple_count, as: 'ruleTupleCount'
          collection :rules, as: 'rules', class: Google::Apis::ComputeBeta::SecurityPolicyRule, decorator: Google::Apis::ComputeBeta::SecurityPolicyRule::Representation
      
          property :self_link, as: 'selfLink'
          property :self_link_with_id, as: 'selfLinkWithId'
          property :short_name, as: 'shortName'
          property :type, as: 'type'
          collection :user_defined_fields, as: 'userDefinedFields', class: Google::Apis::ComputeBeta::SecurityPolicyUserDefinedField, decorator: Google::Apis::ComputeBeta::SecurityPolicyUserDefinedField::Representation
      
        end
      end
      
      class SecurityPolicyAdaptiveProtectionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_deploy_config, as: 'autoDeployConfig', class: Google::Apis::ComputeBeta::SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig, decorator: Google::Apis::ComputeBeta::SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig::Representation
      
          property :layer7_ddos_defense_config, as: 'layer7DdosDefenseConfig', class: Google::Apis::ComputeBeta::SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig, decorator: Google::Apis::ComputeBeta::SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig::Representation
      
        end
      end
      
      class SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_threshold, as: 'confidenceThreshold'
          property :expiration_sec, as: 'expirationSec'
          property :impacted_baseline_threshold, as: 'impactedBaselineThreshold'
          property :load_threshold, as: 'loadThreshold'
        end
      end
      
      class SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable, as: 'enable'
          property :rule_visibility, as: 'ruleVisibility'
          collection :threshold_configs, as: 'thresholdConfigs', class: Google::Apis::ComputeBeta::SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig, decorator: Google::Apis::ComputeBeta::SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig::Representation
      
        end
      end
      
      class SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_deploy_confidence_threshold, as: 'autoDeployConfidenceThreshold'
          property :auto_deploy_expiration_sec, as: 'autoDeployExpirationSec'
          property :auto_deploy_impacted_baseline_threshold, as: 'autoDeployImpactedBaselineThreshold'
          property :auto_deploy_load_threshold, as: 'autoDeployLoadThreshold'
          property :detection_absolute_qps, as: 'detectionAbsoluteQps'
          property :detection_load_threshold, as: 'detectionLoadThreshold'
          property :detection_relative_to_baseline_qps, as: 'detectionRelativeToBaselineQps'
          property :name, as: 'name'
          collection :traffic_granularity_configs, as: 'trafficGranularityConfigs', class: Google::Apis::ComputeBeta::SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig, decorator: Google::Apis::ComputeBeta::SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig::Representation
      
        end
      end
      
      class SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_each_unique_value, as: 'enableEachUniqueValue'
          property :type, as: 'type'
          property :value, as: 'value'
        end
      end
      
      class SecurityPolicyAdvancedOptionsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :json_custom_config, as: 'jsonCustomConfig', class: Google::Apis::ComputeBeta::SecurityPolicyAdvancedOptionsConfigJsonCustomConfig, decorator: Google::Apis::ComputeBeta::SecurityPolicyAdvancedOptionsConfigJsonCustomConfig::Representation
      
          property :json_parsing, as: 'jsonParsing'
          property :log_level, as: 'logLevel'
          property :request_body_inspection_size, as: 'requestBodyInspectionSize'
          collection :user_ip_request_headers, as: 'userIpRequestHeaders'
        end
      end
      
      class SecurityPolicyAdvancedOptionsConfigJsonCustomConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :content_types, as: 'contentTypes'
        end
      end
      
      class SecurityPolicyAssociation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attachment_id, as: 'attachmentId'
          property :display_name, as: 'displayName'
          collection :excluded_folders, as: 'excludedFolders'
          collection :excluded_projects, as: 'excludedProjects'
          property :name, as: 'name'
          property :security_policy_id, as: 'securityPolicyId'
          property :short_name, as: 'shortName'
        end
      end
      
      class SecurityPolicyDdosProtectionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ddos_protection, as: 'ddosProtection'
        end
      end
      
      class SecurityPolicyList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::SecurityPolicy, decorator: Google::Apis::ComputeBeta::SecurityPolicy::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::SecurityPolicyList::Warning, decorator: Google::Apis::ComputeBeta::SecurityPolicyList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::SecurityPolicyList::Warning::Datum, decorator: Google::Apis::ComputeBeta::SecurityPolicyList::Warning::Datum::Representation
        
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
      
      class SecurityPolicyRecaptchaOptionsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :redirect_site_key, as: 'redirectSiteKey'
        end
      end
      
      class SecurityPolicyReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :security_policy, as: 'securityPolicy'
        end
      end
      
      class SecurityPolicyRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :description, as: 'description'
          property :direction, as: 'direction'
          property :enable_logging, as: 'enableLogging'
          property :header_action, as: 'headerAction', class: Google::Apis::ComputeBeta::SecurityPolicyRuleHttpHeaderAction, decorator: Google::Apis::ComputeBeta::SecurityPolicyRuleHttpHeaderAction::Representation
      
          property :kind, as: 'kind'
          property :match, as: 'match', class: Google::Apis::ComputeBeta::SecurityPolicyRuleMatcher, decorator: Google::Apis::ComputeBeta::SecurityPolicyRuleMatcher::Representation
      
          property :network_match, as: 'networkMatch', class: Google::Apis::ComputeBeta::SecurityPolicyRuleNetworkMatcher, decorator: Google::Apis::ComputeBeta::SecurityPolicyRuleNetworkMatcher::Representation
      
          property :preconfigured_waf_config, as: 'preconfiguredWafConfig', class: Google::Apis::ComputeBeta::SecurityPolicyRulePreconfiguredWafConfig, decorator: Google::Apis::ComputeBeta::SecurityPolicyRulePreconfiguredWafConfig::Representation
      
          property :preview, as: 'preview'
          property :priority, as: 'priority'
          property :rate_limit_options, as: 'rateLimitOptions', class: Google::Apis::ComputeBeta::SecurityPolicyRuleRateLimitOptions, decorator: Google::Apis::ComputeBeta::SecurityPolicyRuleRateLimitOptions::Representation
      
          property :redirect_options, as: 'redirectOptions', class: Google::Apis::ComputeBeta::SecurityPolicyRuleRedirectOptions, decorator: Google::Apis::ComputeBeta::SecurityPolicyRuleRedirectOptions::Representation
      
          property :rule_number, :numeric_string => true, as: 'ruleNumber'
          property :rule_tuple_count, as: 'ruleTupleCount'
          collection :target_resources, as: 'targetResources'
          collection :target_service_accounts, as: 'targetServiceAccounts'
        end
      end
      
      class SecurityPolicyRuleHttpHeaderAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :request_headers_to_adds, as: 'requestHeadersToAdds', class: Google::Apis::ComputeBeta::SecurityPolicyRuleHttpHeaderActionHttpHeaderOption, decorator: Google::Apis::ComputeBeta::SecurityPolicyRuleHttpHeaderActionHttpHeaderOption::Representation
      
        end
      end
      
      class SecurityPolicyRuleHttpHeaderActionHttpHeaderOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header_name, as: 'headerName'
          property :header_value, as: 'headerValue'
        end
      end
      
      class SecurityPolicyRuleMatcher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::ComputeBeta::SecurityPolicyRuleMatcherConfig, decorator: Google::Apis::ComputeBeta::SecurityPolicyRuleMatcherConfig::Representation
      
          property :expr, as: 'expr', class: Google::Apis::ComputeBeta::Expr, decorator: Google::Apis::ComputeBeta::Expr::Representation
      
          property :expr_options, as: 'exprOptions', class: Google::Apis::ComputeBeta::SecurityPolicyRuleMatcherExprOptions, decorator: Google::Apis::ComputeBeta::SecurityPolicyRuleMatcherExprOptions::Representation
      
          property :versioned_expr, as: 'versionedExpr'
        end
      end
      
      class SecurityPolicyRuleMatcherConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dest_ip_ranges, as: 'destIpRanges'
          collection :layer4_configs, as: 'layer4Configs', class: Google::Apis::ComputeBeta::SecurityPolicyRuleMatcherConfigLayer4Config, decorator: Google::Apis::ComputeBeta::SecurityPolicyRuleMatcherConfigLayer4Config::Representation
      
          collection :src_ip_ranges, as: 'srcIpRanges'
        end
      end
      
      class SecurityPolicyRuleMatcherConfigLayer4Config
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_protocol, as: 'ipProtocol'
          collection :ports, as: 'ports'
        end
      end
      
      class SecurityPolicyRuleMatcherExprOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recaptcha_options, as: 'recaptchaOptions', class: Google::Apis::ComputeBeta::SecurityPolicyRuleMatcherExprOptionsRecaptchaOptions, decorator: Google::Apis::ComputeBeta::SecurityPolicyRuleMatcherExprOptionsRecaptchaOptions::Representation
      
        end
      end
      
      class SecurityPolicyRuleMatcherExprOptionsRecaptchaOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :action_token_site_keys, as: 'actionTokenSiteKeys'
          collection :session_token_site_keys, as: 'sessionTokenSiteKeys'
        end
      end
      
      class SecurityPolicyRuleNetworkMatcher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dest_ip_ranges, as: 'destIpRanges'
          collection :dest_ports, as: 'destPorts'
          collection :ip_protocols, as: 'ipProtocols'
          collection :src_asns, as: 'srcAsns'
          collection :src_ip_ranges, as: 'srcIpRanges'
          collection :src_ports, as: 'srcPorts'
          collection :src_region_codes, as: 'srcRegionCodes'
          collection :user_defined_fields, as: 'userDefinedFields', class: Google::Apis::ComputeBeta::SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatch, decorator: Google::Apis::ComputeBeta::SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatch::Representation
      
        end
      end
      
      class SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :values, as: 'values'
        end
      end
      
      class SecurityPolicyRulePreconfiguredWafConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exclusions, as: 'exclusions', class: Google::Apis::ComputeBeta::SecurityPolicyRulePreconfiguredWafConfigExclusion, decorator: Google::Apis::ComputeBeta::SecurityPolicyRulePreconfiguredWafConfigExclusion::Representation
      
        end
      end
      
      class SecurityPolicyRulePreconfiguredWafConfigExclusion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :request_cookies_to_exclude, as: 'requestCookiesToExclude', class: Google::Apis::ComputeBeta::SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams, decorator: Google::Apis::ComputeBeta::SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams::Representation
      
          collection :request_headers_to_exclude, as: 'requestHeadersToExclude', class: Google::Apis::ComputeBeta::SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams, decorator: Google::Apis::ComputeBeta::SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams::Representation
      
          collection :request_query_params_to_exclude, as: 'requestQueryParamsToExclude', class: Google::Apis::ComputeBeta::SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams, decorator: Google::Apis::ComputeBeta::SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams::Representation
      
          collection :request_uris_to_exclude, as: 'requestUrisToExclude', class: Google::Apis::ComputeBeta::SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams, decorator: Google::Apis::ComputeBeta::SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams::Representation
      
          collection :target_rule_ids, as: 'targetRuleIds'
          property :target_rule_set, as: 'targetRuleSet'
        end
      end
      
      class SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :op, as: 'op'
          property :val, as: 'val'
        end
      end
      
      class SecurityPolicyRuleRateLimitOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ban_duration_sec, as: 'banDurationSec'
          property :ban_threshold, as: 'banThreshold', class: Google::Apis::ComputeBeta::SecurityPolicyRuleRateLimitOptionsThreshold, decorator: Google::Apis::ComputeBeta::SecurityPolicyRuleRateLimitOptionsThreshold::Representation
      
          property :conform_action, as: 'conformAction'
          property :enforce_on_key, as: 'enforceOnKey'
          collection :enforce_on_key_configs, as: 'enforceOnKeyConfigs', class: Google::Apis::ComputeBeta::SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfig, decorator: Google::Apis::ComputeBeta::SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfig::Representation
      
          property :enforce_on_key_name, as: 'enforceOnKeyName'
          property :exceed_action, as: 'exceedAction'
          property :exceed_redirect_options, as: 'exceedRedirectOptions', class: Google::Apis::ComputeBeta::SecurityPolicyRuleRedirectOptions, decorator: Google::Apis::ComputeBeta::SecurityPolicyRuleRedirectOptions::Representation
      
          property :rate_limit_threshold, as: 'rateLimitThreshold', class: Google::Apis::ComputeBeta::SecurityPolicyRuleRateLimitOptionsThreshold, decorator: Google::Apis::ComputeBeta::SecurityPolicyRuleRateLimitOptionsThreshold::Representation
      
        end
      end
      
      class SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enforce_on_key_name, as: 'enforceOnKeyName'
          property :enforce_on_key_type, as: 'enforceOnKeyType'
        end
      end
      
      class SecurityPolicyRuleRateLimitOptionsThreshold
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
          property :interval_sec, as: 'intervalSec'
        end
      end
      
      class SecurityPolicyRuleRedirectOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target, as: 'target'
          property :type, as: 'type'
        end
      end
      
      class SecurityPolicyUserDefinedField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base, as: 'base'
          property :mask, as: 'mask'
          property :name, as: 'name'
          property :offset, as: 'offset'
          property :size, as: 'size'
        end
      end
      
      class SecuritySettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authentication, as: 'authentication'
          property :aws_v4_authentication, as: 'awsV4Authentication', class: Google::Apis::ComputeBeta::Awsv4Signature, decorator: Google::Apis::ComputeBeta::Awsv4Signature::Representation
      
          property :client_tls_policy, as: 'clientTlsPolicy'
          collection :subject_alt_names, as: 'subjectAltNames'
        end
      end
      
      class SerialPortOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contents, as: 'contents'
          property :kind, as: 'kind'
          property :next, :numeric_string => true, as: 'next'
          property :self_link, as: 'selfLink'
          property :start, :numeric_string => true, as: 'start'
        end
      end
      
      class ServerBinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class ServiceAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          collection :scopes, as: 'scopes'
        end
      end
      
      class ServiceAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connected_endpoints, as: 'connectedEndpoints', class: Google::Apis::ComputeBeta::ServiceAttachmentConnectedEndpoint, decorator: Google::Apis::ComputeBeta::ServiceAttachmentConnectedEndpoint::Representation
      
          property :connection_preference, as: 'connectionPreference'
          collection :consumer_accept_lists, as: 'consumerAcceptLists', class: Google::Apis::ComputeBeta::ServiceAttachmentConsumerProjectLimit, decorator: Google::Apis::ComputeBeta::ServiceAttachmentConsumerProjectLimit::Representation
      
          collection :consumer_reject_lists, as: 'consumerRejectLists'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          collection :domain_names, as: 'domainNames'
          property :enable_proxy_protocol, as: 'enableProxyProtocol'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          collection :nat_subnets, as: 'natSubnets'
          property :producer_forwarding_rule, as: 'producerForwardingRule'
          property :propagated_connection_limit, as: 'propagatedConnectionLimit'
          property :psc_service_attachment_id, as: 'pscServiceAttachmentId', class: Google::Apis::ComputeBeta::Uint128, decorator: Google::Apis::ComputeBeta::Uint128::Representation
      
          property :reconcile_connections, as: 'reconcileConnections'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :target_service, as: 'targetService'
          property :tunneling_config, as: 'tunnelingConfig', class: Google::Apis::ComputeBeta::ServiceAttachmentTunnelingConfig, decorator: Google::Apis::ComputeBeta::ServiceAttachmentTunnelingConfig::Representation
      
        end
      end
      
      class ServiceAttachmentAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::ServiceAttachmentsScopedList, decorator: Google::Apis::ComputeBeta::ServiceAttachmentsScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::ServiceAttachmentAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::ServiceAttachmentAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::ServiceAttachmentAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::ServiceAttachmentAggregatedList::Warning::Datum::Representation
        
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
      
      class ServiceAttachmentConnectedEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumer_network, as: 'consumerNetwork'
          property :endpoint, as: 'endpoint'
          property :propagated_connection_count, as: 'propagatedConnectionCount'
          property :psc_connection_id, :numeric_string => true, as: 'pscConnectionId'
          property :status, as: 'status'
        end
      end
      
      class ServiceAttachmentConsumerProjectLimit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_limit, as: 'connectionLimit'
          property :network_url, as: 'networkUrl'
          property :project_id_or_num, as: 'projectIdOrNum'
        end
      end
      
      class ServiceAttachmentList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::ServiceAttachment, decorator: Google::Apis::ComputeBeta::ServiceAttachment::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::ServiceAttachmentList::Warning, decorator: Google::Apis::ComputeBeta::ServiceAttachmentList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::ServiceAttachmentList::Warning::Datum, decorator: Google::Apis::ComputeBeta::ServiceAttachmentList::Warning::Datum::Representation
        
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
      
      class ServiceAttachmentTunnelingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encapsulation_profile, as: 'encapsulationProfile'
          property :routing_mode, as: 'routingMode'
        end
      end
      
      class ServiceAttachmentsScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :service_attachments, as: 'serviceAttachments', class: Google::Apis::ComputeBeta::ServiceAttachment, decorator: Google::Apis::ComputeBeta::ServiceAttachment::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::ServiceAttachmentsScopedList::Warning, decorator: Google::Apis::ComputeBeta::ServiceAttachmentsScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::ServiceAttachmentsScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::ServiceAttachmentsScopedList::Warning::Datum::Representation
        
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
      
      class SetCommonInstanceMetadataOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_operation_id, as: 'clientOperationId'
          hash :per_location_operations, as: 'perLocationOperations', class: Google::Apis::ComputeBeta::SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo, decorator: Google::Apis::ComputeBeta::SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo::Representation
      
        end
      end
      
      class SetCommonInstanceMetadataOperationMetadataPerLocationOperationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::ComputeBeta::Status, decorator: Google::Apis::ComputeBeta::Status::Representation
      
          property :state, as: 'state'
        end
      end
      
      class ShareSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :project_map, as: 'projectMap', class: Google::Apis::ComputeBeta::ShareSettingsProjectConfig, decorator: Google::Apis::ComputeBeta::ShareSettingsProjectConfig::Representation
      
          collection :projects, as: 'projects'
          property :share_type, as: 'shareType'
        end
      end
      
      class ShareSettingsProjectConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
        end
      end
      
      class ShieldedInstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_integrity_monitoring, as: 'enableIntegrityMonitoring'
          property :enable_secure_boot, as: 'enableSecureBoot'
          property :enable_vtpm, as: 'enableVtpm'
        end
      end
      
      class ShieldedInstanceIdentity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_key, as: 'encryptionKey', class: Google::Apis::ComputeBeta::ShieldedInstanceIdentityEntry, decorator: Google::Apis::ComputeBeta::ShieldedInstanceIdentityEntry::Representation
      
          property :kind, as: 'kind'
          property :signing_key, as: 'signingKey', class: Google::Apis::ComputeBeta::ShieldedInstanceIdentityEntry, decorator: Google::Apis::ComputeBeta::ShieldedInstanceIdentityEntry::Representation
      
        end
      end
      
      class ShieldedInstanceIdentityEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ek_cert, as: 'ekCert'
          property :ek_pub, as: 'ekPub'
        end
      end
      
      class ShieldedInstanceIntegrityPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :update_auto_learn_policy, as: 'updateAutoLearnPolicy'
        end
      end
      
      class ShieldedVmConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_integrity_monitoring, as: 'enableIntegrityMonitoring'
          property :enable_secure_boot, as: 'enableSecureBoot'
          property :enable_vtpm, as: 'enableVtpm'
        end
      end
      
      class ShieldedVmIdentity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_key, as: 'encryptionKey', class: Google::Apis::ComputeBeta::ShieldedVmIdentityEntry, decorator: Google::Apis::ComputeBeta::ShieldedVmIdentityEntry::Representation
      
          property :kind, as: 'kind'
          property :signing_key, as: 'signingKey', class: Google::Apis::ComputeBeta::ShieldedVmIdentityEntry, decorator: Google::Apis::ComputeBeta::ShieldedVmIdentityEntry::Representation
      
        end
      end
      
      class ShieldedVmIdentityEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ek_cert, as: 'ekCert'
          property :ek_pub, as: 'ekPub'
        end
      end
      
      class ShieldedVmIntegrityPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :update_auto_learn_policy, as: 'updateAutoLearnPolicy'
        end
      end
      
      class SignedUrlKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_name, as: 'keyName'
          property :key_value, as: 'keyValue'
        end
      end
      
      class Snapshot
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :auto_created, as: 'autoCreated'
          property :chain_name, as: 'chainName'
          property :creation_size_bytes, :numeric_string => true, as: 'creationSizeBytes'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
          property :download_bytes, :numeric_string => true, as: 'downloadBytes'
          property :enable_confidential_compute, as: 'enableConfidentialCompute'
          property :guest_flush, as: 'guestFlush'
          collection :guest_os_features, as: 'guestOsFeatures', class: Google::Apis::ComputeBeta::GuestOsFeature, decorator: Google::Apis::ComputeBeta::GuestOsFeature::Representation
      
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
          collection :license_codes, as: 'licenseCodes'
          collection :licenses, as: 'licenses'
          property :location_hint, as: 'locationHint'
          property :name, as: 'name'
          property :region, as: 'region'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :self_link, as: 'selfLink'
          property :snapshot_encryption_key, as: 'snapshotEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :snapshot_type, as: 'snapshotType'
          property :source_disk, as: 'sourceDisk'
          property :source_disk_encryption_key, as: 'sourceDiskEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :source_disk_for_recovery_checkpoint, as: 'sourceDiskForRecoveryCheckpoint'
          property :source_disk_id, as: 'sourceDiskId'
          property :source_instant_snapshot, as: 'sourceInstantSnapshot'
          property :source_instant_snapshot_encryption_key, as: 'sourceInstantSnapshotEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :source_instant_snapshot_id, as: 'sourceInstantSnapshotId'
          property :source_snapshot_schedule_policy, as: 'sourceSnapshotSchedulePolicy'
          property :source_snapshot_schedule_policy_id, as: 'sourceSnapshotSchedulePolicyId'
          property :status, as: 'status'
          property :storage_bytes, :numeric_string => true, as: 'storageBytes'
          property :storage_bytes_status, as: 'storageBytesStatus'
          collection :storage_locations, as: 'storageLocations'
          collection :user_licenses, as: 'userLicenses'
        end
      end
      
      class SnapshotAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::SnapshotsScopedList, decorator: Google::Apis::ComputeBeta::SnapshotsScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::SnapshotAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::SnapshotAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::SnapshotAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::SnapshotAggregatedList::Warning::Datum::Representation
        
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
      
      class SnapshotList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Snapshot, decorator: Google::Apis::ComputeBeta::Snapshot::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::SnapshotList::Warning, decorator: Google::Apis::ComputeBeta::SnapshotList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::SnapshotList::Warning::Datum, decorator: Google::Apis::ComputeBeta::SnapshotList::Warning::Datum::Representation
        
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
      
      class SnapshotSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_location, as: 'accessLocation', class: Google::Apis::ComputeBeta::SnapshotSettingsAccessLocation, decorator: Google::Apis::ComputeBeta::SnapshotSettingsAccessLocation::Representation
      
          property :storage_location, as: 'storageLocation', class: Google::Apis::ComputeBeta::SnapshotSettingsStorageLocationSettings, decorator: Google::Apis::ComputeBeta::SnapshotSettingsStorageLocationSettings::Representation
      
        end
      end
      
      class SnapshotSettingsAccessLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :locations, as: 'locations', class: Google::Apis::ComputeBeta::SnapshotSettingsAccessLocationAccessLocationPreference, decorator: Google::Apis::ComputeBeta::SnapshotSettingsAccessLocationAccessLocationPreference::Representation
      
          property :policy, as: 'policy'
        end
      end
      
      class SnapshotSettingsAccessLocationAccessLocationPreference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :region, as: 'region'
        end
      end
      
      class SnapshotSettingsStorageLocationSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :locations, as: 'locations', class: Google::Apis::ComputeBeta::SnapshotSettingsStorageLocationSettingsStorageLocationPreference, decorator: Google::Apis::ComputeBeta::SnapshotSettingsStorageLocationSettingsStorageLocationPreference::Representation
      
          property :policy, as: 'policy'
        end
      end
      
      class SnapshotSettingsStorageLocationSettingsStorageLocationPreference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class SnapshotsScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :snapshots, as: 'snapshots', class: Google::Apis::ComputeBeta::Snapshot, decorator: Google::Apis::ComputeBeta::Snapshot::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::SnapshotsScopedList::Warning, decorator: Google::Apis::ComputeBeta::SnapshotsScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::SnapshotsScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::SnapshotsScopedList::Warning::Datum::Representation
        
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
      
      class SourceDiskEncryptionKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_encryption_key, as: 'diskEncryptionKey', class: Google::Apis::ComputeBeta::CustomerEncryptionKey, decorator: Google::Apis::ComputeBeta::CustomerEncryptionKey::Representation
      
          property :source_disk, as: 'sourceDisk'
        end
      end
      
      class SourceInstanceParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :disk_configs, as: 'diskConfigs', class: Google::Apis::ComputeBeta::DiskInstantiationConfig, decorator: Google::Apis::ComputeBeta::DiskInstantiationConfig::Representation
      
        end
      end
      
      class SourceInstanceProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_ip_forward, as: 'canIpForward'
          property :deletion_protection, as: 'deletionProtection'
          property :description, as: 'description'
          collection :disks, as: 'disks', class: Google::Apis::ComputeBeta::SavedAttachedDisk, decorator: Google::Apis::ComputeBeta::SavedAttachedDisk::Representation
      
          collection :guest_accelerators, as: 'guestAccelerators', class: Google::Apis::ComputeBeta::AcceleratorConfig, decorator: Google::Apis::ComputeBeta::AcceleratorConfig::Representation
      
          property :key_revocation_action_type, as: 'keyRevocationActionType'
          hash :labels, as: 'labels'
          property :machine_type, as: 'machineType'
          property :metadata, as: 'metadata', class: Google::Apis::ComputeBeta::Metadata, decorator: Google::Apis::ComputeBeta::Metadata::Representation
      
          property :min_cpu_platform, as: 'minCpuPlatform'
          collection :network_interfaces, as: 'networkInterfaces', class: Google::Apis::ComputeBeta::NetworkInterface, decorator: Google::Apis::ComputeBeta::NetworkInterface::Representation
      
          property :post_key_revocation_action_type, as: 'postKeyRevocationActionType'
          property :scheduling, as: 'scheduling', class: Google::Apis::ComputeBeta::Scheduling, decorator: Google::Apis::ComputeBeta::Scheduling::Representation
      
          collection :service_accounts, as: 'serviceAccounts', class: Google::Apis::ComputeBeta::ServiceAccount, decorator: Google::Apis::ComputeBeta::ServiceAccount::Representation
      
          property :tags, as: 'tags', class: Google::Apis::ComputeBeta::Tags, decorator: Google::Apis::ComputeBeta::Tags::Representation
      
        end
      end
      
      class SslCertificate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate, as: 'certificate'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :expire_time, as: 'expireTime'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :managed, as: 'managed', class: Google::Apis::ComputeBeta::SslCertificateManagedSslCertificate, decorator: Google::Apis::ComputeBeta::SslCertificateManagedSslCertificate::Representation
      
          property :name, as: 'name'
          property :private_key, as: 'privateKey'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :self_managed, as: 'selfManaged', class: Google::Apis::ComputeBeta::SslCertificateSelfManagedSslCertificate, decorator: Google::Apis::ComputeBeta::SslCertificateSelfManagedSslCertificate::Representation
      
          collection :subject_alternative_names, as: 'subjectAlternativeNames'
          property :type, as: 'type'
        end
      end
      
      class SslCertificateAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::SslCertificatesScopedList, decorator: Google::Apis::ComputeBeta::SslCertificatesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::SslCertificateAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::SslCertificateAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::SslCertificateAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::SslCertificateAggregatedList::Warning::Datum::Representation
        
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
      
      class SslCertificateList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::SslCertificate, decorator: Google::Apis::ComputeBeta::SslCertificate::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::SslCertificateList::Warning, decorator: Google::Apis::ComputeBeta::SslCertificateList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::SslCertificateList::Warning::Datum, decorator: Google::Apis::ComputeBeta::SslCertificateList::Warning::Datum::Representation
        
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
      
      class SslCertificateManagedSslCertificate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :domain_status, as: 'domainStatus'
          collection :domains, as: 'domains'
          property :status, as: 'status'
        end
      end
      
      class SslCertificateSelfManagedSslCertificate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate, as: 'certificate'
          property :private_key, as: 'privateKey'
        end
      end
      
      class SslCertificatesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ssl_certificates, as: 'sslCertificates', class: Google::Apis::ComputeBeta::SslCertificate, decorator: Google::Apis::ComputeBeta::SslCertificate::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::SslCertificatesScopedList::Warning, decorator: Google::Apis::ComputeBeta::SslCertificatesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::SslCertificatesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::SslCertificatesScopedList::Warning::Datum::Representation
        
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
      
      class SslPoliciesAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::SslPoliciesScopedList, decorator: Google::Apis::ComputeBeta::SslPoliciesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::SslPoliciesAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::SslPoliciesAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::SslPoliciesAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::SslPoliciesAggregatedList::Warning::Datum::Representation
        
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
      
      class SslPoliciesList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::SslPolicy, decorator: Google::Apis::ComputeBeta::SslPolicy::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::SslPoliciesList::Warning, decorator: Google::Apis::ComputeBeta::SslPoliciesList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::SslPoliciesList::Warning::Datum, decorator: Google::Apis::ComputeBeta::SslPoliciesList::Warning::Datum::Representation
        
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
      
      class SslPoliciesListAvailableFeaturesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :features, as: 'features'
        end
      end
      
      class SslPoliciesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ssl_policies, as: 'sslPolicies', class: Google::Apis::ComputeBeta::SslPolicy, decorator: Google::Apis::ComputeBeta::SslPolicy::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::SslPoliciesScopedList::Warning, decorator: Google::Apis::ComputeBeta::SslPoliciesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::SslPoliciesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::SslPoliciesScopedList::Warning::Datum::Representation
        
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
      
      class SslPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          collection :custom_features, as: 'customFeatures'
          property :description, as: 'description'
          collection :enabled_features, as: 'enabledFeatures'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :min_tls_version, as: 'minTlsVersion'
          property :name, as: 'name'
          property :profile, as: 'profile'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          collection :warnings, as: 'warnings', class: Google::Apis::ComputeBeta::SslPolicy::Warning, decorator: Google::Apis::ComputeBeta::SslPolicy::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::SslPolicy::Warning::Datum, decorator: Google::Apis::ComputeBeta::SslPolicy::Warning::Datum::Representation
        
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
      
      class SslPolicyReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ssl_policy, as: 'sslPolicy'
        end
      end
      
      class StatefulPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :preserved_state, as: 'preservedState', class: Google::Apis::ComputeBeta::StatefulPolicyPreservedState, decorator: Google::Apis::ComputeBeta::StatefulPolicyPreservedState::Representation
      
        end
      end
      
      class StatefulPolicyPreservedState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :disks, as: 'disks', class: Google::Apis::ComputeBeta::StatefulPolicyPreservedStateDiskDevice, decorator: Google::Apis::ComputeBeta::StatefulPolicyPreservedStateDiskDevice::Representation
      
          hash :external_i_ps, as: 'externalIPs', class: Google::Apis::ComputeBeta::StatefulPolicyPreservedStateNetworkIp, decorator: Google::Apis::ComputeBeta::StatefulPolicyPreservedStateNetworkIp::Representation
      
          hash :internal_i_ps, as: 'internalIPs', class: Google::Apis::ComputeBeta::StatefulPolicyPreservedStateNetworkIp, decorator: Google::Apis::ComputeBeta::StatefulPolicyPreservedStateNetworkIp::Representation
      
        end
      end
      
      class StatefulPolicyPreservedStateDiskDevice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_delete, as: 'autoDelete'
        end
      end
      
      class StatefulPolicyPreservedStateNetworkIp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_delete, as: 'autoDelete'
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
      
      class StoragePool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :capacity_provisioning_type, as: 'capacityProvisioningType'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :performance_provisioning_type, as: 'performanceProvisioningType'
          property :pool_provisioned_capacity_gb, :numeric_string => true, as: 'poolProvisionedCapacityGb'
          property :pool_provisioned_iops, :numeric_string => true, as: 'poolProvisionedIops'
          property :pool_provisioned_throughput, :numeric_string => true, as: 'poolProvisionedThroughput'
          property :resource_status, as: 'resourceStatus', class: Google::Apis::ComputeBeta::StoragePoolResourceStatus, decorator: Google::Apis::ComputeBeta::StoragePoolResourceStatus::Representation
      
          property :self_link, as: 'selfLink'
          property :self_link_with_id, as: 'selfLinkWithId'
          property :state, as: 'state'
          property :status, as: 'status', class: Google::Apis::ComputeBeta::StoragePoolResourceStatus, decorator: Google::Apis::ComputeBeta::StoragePoolResourceStatus::Representation
      
          property :storage_pool_type, as: 'storagePoolType'
          property :zone, as: 'zone'
        end
      end
      
      class StoragePoolAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::StoragePoolsScopedList, decorator: Google::Apis::ComputeBeta::StoragePoolsScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::StoragePoolAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::StoragePoolAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::StoragePoolAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::StoragePoolAggregatedList::Warning::Datum::Representation
        
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
      
      class StoragePoolDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attached_instances, as: 'attachedInstances'
          property :creation_timestamp, as: 'creationTimestamp'
          property :disk, as: 'disk'
          property :name, as: 'name'
          property :provisioned_iops, :numeric_string => true, as: 'provisionedIops'
          property :provisioned_throughput, :numeric_string => true, as: 'provisionedThroughput'
          collection :resource_policies, as: 'resourcePolicies'
          property :size_gb, :numeric_string => true, as: 'sizeGb'
          property :status, as: 'status'
          property :type, as: 'type'
          property :used_bytes, :numeric_string => true, as: 'usedBytes'
        end
      end
      
      class StoragePoolList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::StoragePool, decorator: Google::Apis::ComputeBeta::StoragePool::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::StoragePoolList::Warning, decorator: Google::Apis::ComputeBeta::StoragePoolList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::StoragePoolList::Warning::Datum, decorator: Google::Apis::ComputeBeta::StoragePoolList::Warning::Datum::Representation
        
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
      
      class StoragePoolListDisks
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::StoragePoolDisk, decorator: Google::Apis::ComputeBeta::StoragePoolDisk::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::StoragePoolListDisks::Warning, decorator: Google::Apis::ComputeBeta::StoragePoolListDisks::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::StoragePoolListDisks::Warning::Datum, decorator: Google::Apis::ComputeBeta::StoragePoolListDisks::Warning::Datum::Representation
        
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
      
      class StoragePoolResourceStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_count, :numeric_string => true, as: 'diskCount'
          property :last_resize_timestamp, as: 'lastResizeTimestamp'
          property :max_total_provisioned_disk_capacity_gb, :numeric_string => true, as: 'maxTotalProvisionedDiskCapacityGb'
          property :pool_used_capacity_bytes, :numeric_string => true, as: 'poolUsedCapacityBytes'
          property :pool_used_iops, :numeric_string => true, as: 'poolUsedIops'
          property :pool_used_throughput, :numeric_string => true, as: 'poolUsedThroughput'
          property :pool_user_written_bytes, :numeric_string => true, as: 'poolUserWrittenBytes'
          property :total_provisioned_disk_capacity_gb, :numeric_string => true, as: 'totalProvisionedDiskCapacityGb'
          property :total_provisioned_disk_iops, :numeric_string => true, as: 'totalProvisionedDiskIops'
          property :total_provisioned_disk_throughput, :numeric_string => true, as: 'totalProvisionedDiskThroughput'
        end
      end
      
      class StoragePoolType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :deprecated, as: 'deprecated', class: Google::Apis::ComputeBeta::DeprecationStatus, decorator: Google::Apis::ComputeBeta::DeprecationStatus::Representation
      
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :max_pool_provisioned_capacity_gb, :numeric_string => true, as: 'maxPoolProvisionedCapacityGb'
          property :max_pool_provisioned_iops, :numeric_string => true, as: 'maxPoolProvisionedIops'
          property :max_pool_provisioned_throughput, :numeric_string => true, as: 'maxPoolProvisionedThroughput'
          property :min_pool_provisioned_capacity_gb, :numeric_string => true, as: 'minPoolProvisionedCapacityGb'
          property :min_pool_provisioned_iops, :numeric_string => true, as: 'minPoolProvisionedIops'
          property :min_pool_provisioned_throughput, :numeric_string => true, as: 'minPoolProvisionedThroughput'
          property :min_size_gb, :numeric_string => true, as: 'minSizeGb'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
          property :self_link_with_id, as: 'selfLinkWithId'
          collection :supported_disk_types, as: 'supportedDiskTypes'
          property :zone, as: 'zone'
        end
      end
      
      class StoragePoolTypeAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::StoragePoolTypesScopedList, decorator: Google::Apis::ComputeBeta::StoragePoolTypesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::StoragePoolTypeAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::StoragePoolTypeAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::StoragePoolTypeAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::StoragePoolTypeAggregatedList::Warning::Datum::Representation
        
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
      
      class StoragePoolTypeList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::StoragePoolType, decorator: Google::Apis::ComputeBeta::StoragePoolType::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::StoragePoolTypeList::Warning, decorator: Google::Apis::ComputeBeta::StoragePoolTypeList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::StoragePoolTypeList::Warning::Datum, decorator: Google::Apis::ComputeBeta::StoragePoolTypeList::Warning::Datum::Representation
        
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
      
      class StoragePoolTypesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :storage_pool_types, as: 'storagePoolTypes', class: Google::Apis::ComputeBeta::StoragePoolType, decorator: Google::Apis::ComputeBeta::StoragePoolType::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::StoragePoolTypesScopedList::Warning, decorator: Google::Apis::ComputeBeta::StoragePoolTypesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::StoragePoolTypesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::StoragePoolTypesScopedList::Warning::Datum::Representation
        
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
      
      class StoragePoolsScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :storage_pools, as: 'storagePools', class: Google::Apis::ComputeBeta::StoragePool, decorator: Google::Apis::ComputeBeta::StoragePool::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::StoragePoolsScopedList::Warning, decorator: Google::Apis::ComputeBeta::StoragePoolsScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::StoragePoolsScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::StoragePoolsScopedList::Warning::Datum::Representation
        
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
      
      class StructuredEntries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :entries, as: 'entries'
        end
      end
      
      class Subnetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_subnet_cidr_routes_overlap, as: 'allowSubnetCidrRoutesOverlap'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :enable_flow_logs, as: 'enableFlowLogs'
          property :external_ipv6_prefix, as: 'externalIpv6Prefix'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :gateway_address, as: 'gatewayAddress'
          property :id, :numeric_string => true, as: 'id'
          property :internal_ipv6_prefix, as: 'internalIpv6Prefix'
          property :ip_cidr_range, as: 'ipCidrRange'
          property :ip_collection, as: 'ipCollection'
          property :ipv6_access_type, as: 'ipv6AccessType'
          property :ipv6_cidr_range, as: 'ipv6CidrRange'
          property :ipv6_gce_endpoint, as: 'ipv6GceEndpoint'
          property :kind, as: 'kind'
          property :log_config, as: 'logConfig', class: Google::Apis::ComputeBeta::SubnetworkLogConfig, decorator: Google::Apis::ComputeBeta::SubnetworkLogConfig::Representation
      
          property :name, as: 'name'
          property :network, as: 'network'
          property :params, as: 'params', class: Google::Apis::ComputeBeta::SubnetworkParams, decorator: Google::Apis::ComputeBeta::SubnetworkParams::Representation
      
          property :private_ip_google_access, as: 'privateIpGoogleAccess'
          property :private_ipv6_google_access, as: 'privateIpv6GoogleAccess'
          property :purpose, as: 'purpose'
          property :region, as: 'region'
          property :reserved_internal_range, as: 'reservedInternalRange'
          property :role, as: 'role'
          collection :secondary_ip_ranges, as: 'secondaryIpRanges', class: Google::Apis::ComputeBeta::SubnetworkSecondaryRange, decorator: Google::Apis::ComputeBeta::SubnetworkSecondaryRange::Representation
      
          property :self_link, as: 'selfLink'
          property :stack_type, as: 'stackType'
          property :state, as: 'state'
          collection :system_reserved_external_ipv6_ranges, as: 'systemReservedExternalIpv6Ranges'
          collection :system_reserved_internal_ipv6_ranges, as: 'systemReservedInternalIpv6Ranges'
        end
      end
      
      class SubnetworkAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::SubnetworksScopedList, decorator: Google::Apis::ComputeBeta::SubnetworksScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::SubnetworkAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::SubnetworkAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::SubnetworkAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::SubnetworkAggregatedList::Warning::Datum::Representation
        
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
      
      class SubnetworkList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Subnetwork, decorator: Google::Apis::ComputeBeta::Subnetwork::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::SubnetworkList::Warning, decorator: Google::Apis::ComputeBeta::SubnetworkList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::SubnetworkList::Warning::Datum, decorator: Google::Apis::ComputeBeta::SubnetworkList::Warning::Datum::Representation
        
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
      
      class SubnetworkLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_interval, as: 'aggregationInterval'
          property :enable, as: 'enable'
          property :filter_expr, as: 'filterExpr'
          property :flow_sampling, as: 'flowSampling'
          property :metadata, as: 'metadata'
          collection :metadata_fields, as: 'metadataFields'
        end
      end
      
      class SubnetworkParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :resource_manager_tags, as: 'resourceManagerTags'
        end
      end
      
      class SubnetworkSecondaryRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_cidr_range, as: 'ipCidrRange'
          property :range_name, as: 'rangeName'
          property :reserved_internal_range, as: 'reservedInternalRange'
        end
      end
      
      class SubnetworksExpandIpCidrRangeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_cidr_range, as: 'ipCidrRange'
        end
      end
      
      class SubnetworksScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :subnetworks, as: 'subnetworks', class: Google::Apis::ComputeBeta::Subnetwork, decorator: Google::Apis::ComputeBeta::Subnetwork::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::SubnetworksScopedList::Warning, decorator: Google::Apis::ComputeBeta::SubnetworksScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::SubnetworksScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::SubnetworksScopedList::Warning::Datum::Representation
        
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
      
      class SubnetworksScopedWarning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :scope_name, as: 'scopeName'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::SubnetworksScopedWarning::Warning, decorator: Google::Apis::ComputeBeta::SubnetworksScopedWarning::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::SubnetworksScopedWarning::Warning::Datum, decorator: Google::Apis::ComputeBeta::SubnetworksScopedWarning::Warning::Datum::Representation
        
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
      
      class SubnetworksSetPrivateIpGoogleAccessRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :private_ip_google_access, as: 'privateIpGoogleAccess'
        end
      end
      
      class Subsetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy'
          property :subset_size, as: 'subsetSize'
        end
      end
      
      class TcpHealthCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :port, as: 'port'
          property :port_name, as: 'portName'
          property :port_specification, as: 'portSpecification'
          property :proxy_header, as: 'proxyHeader'
          property :request, as: 'request'
          property :response, as: 'response'
        end
      end
      
      class Tags
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fingerprint, :base64 => true, as: 'fingerprint'
          collection :items, as: 'items'
        end
      end
      
      class TargetGrpcProxy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :self_link, as: 'selfLink'
          property :self_link_with_id, as: 'selfLinkWithId'
          property :url_map, as: 'urlMap'
          property :validate_for_proxyless, as: 'validateForProxyless'
        end
      end
      
      class TargetGrpcProxyList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::TargetGrpcProxy, decorator: Google::Apis::ComputeBeta::TargetGrpcProxy::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::TargetGrpcProxyList::Warning, decorator: Google::Apis::ComputeBeta::TargetGrpcProxyList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::TargetGrpcProxyList::Warning::Datum, decorator: Google::Apis::ComputeBeta::TargetGrpcProxyList::Warning::Datum::Representation
        
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
      
      class TargetHttpProxiesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :target_http_proxies, as: 'targetHttpProxies', class: Google::Apis::ComputeBeta::TargetHttpProxy, decorator: Google::Apis::ComputeBeta::TargetHttpProxy::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::TargetHttpProxiesScopedList::Warning, decorator: Google::Apis::ComputeBeta::TargetHttpProxiesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::TargetHttpProxiesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::TargetHttpProxiesScopedList::Warning::Datum::Representation
        
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
      
      class TargetHttpProxy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          collection :http_filters, as: 'httpFilters'
          property :http_keep_alive_timeout_sec, as: 'httpKeepAliveTimeoutSec'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :proxy_bind, as: 'proxyBind'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :url_map, as: 'urlMap'
        end
      end
      
      class TargetHttpProxyAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::TargetHttpProxiesScopedList, decorator: Google::Apis::ComputeBeta::TargetHttpProxiesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::TargetHttpProxyAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::TargetHttpProxyAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::TargetHttpProxyAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::TargetHttpProxyAggregatedList::Warning::Datum::Representation
        
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
      
      class TargetHttpProxyList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::TargetHttpProxy, decorator: Google::Apis::ComputeBeta::TargetHttpProxy::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::TargetHttpProxyList::Warning, decorator: Google::Apis::ComputeBeta::TargetHttpProxyList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::TargetHttpProxyList::Warning::Datum, decorator: Google::Apis::ComputeBeta::TargetHttpProxyList::Warning::Datum::Representation
        
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
      
      class TargetHttpsProxiesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :target_https_proxies, as: 'targetHttpsProxies', class: Google::Apis::ComputeBeta::TargetHttpsProxy, decorator: Google::Apis::ComputeBeta::TargetHttpsProxy::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::TargetHttpsProxiesScopedList::Warning, decorator: Google::Apis::ComputeBeta::TargetHttpsProxiesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::TargetHttpsProxiesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::TargetHttpsProxiesScopedList::Warning::Datum::Representation
        
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
      
      class TargetHttpsProxiesSetCertificateMapRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate_map, as: 'certificateMap'
        end
      end
      
      class TargetHttpsProxiesSetQuicOverrideRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quic_override, as: 'quicOverride'
        end
      end
      
      class TargetHttpsProxiesSetSslCertificatesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ssl_certificates, as: 'sslCertificates'
        end
      end
      
      class TargetHttpsProxy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authentication, as: 'authentication'
          property :authorization, as: 'authorization'
          property :authorization_policy, as: 'authorizationPolicy'
          property :certificate_map, as: 'certificateMap'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          collection :http_filters, as: 'httpFilters'
          property :http_keep_alive_timeout_sec, as: 'httpKeepAliveTimeoutSec'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :proxy_bind, as: 'proxyBind'
          property :quic_override, as: 'quicOverride'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :server_tls_policy, as: 'serverTlsPolicy'
          collection :ssl_certificates, as: 'sslCertificates'
          property :ssl_policy, as: 'sslPolicy'
          property :tls_early_data, as: 'tlsEarlyData'
          property :url_map, as: 'urlMap'
        end
      end
      
      class TargetHttpsProxyAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::TargetHttpsProxiesScopedList, decorator: Google::Apis::ComputeBeta::TargetHttpsProxiesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::TargetHttpsProxyAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::TargetHttpsProxyAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::TargetHttpsProxyAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::TargetHttpsProxyAggregatedList::Warning::Datum::Representation
        
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
      
      class TargetHttpsProxyList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::TargetHttpsProxy, decorator: Google::Apis::ComputeBeta::TargetHttpsProxy::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::TargetHttpsProxyList::Warning, decorator: Google::Apis::ComputeBeta::TargetHttpsProxyList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::TargetHttpsProxyList::Warning::Datum, decorator: Google::Apis::ComputeBeta::TargetHttpsProxyList::Warning::Datum::Representation
        
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
      
      class TargetInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          property :instance, as: 'instance'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :nat_policy, as: 'natPolicy'
          property :network, as: 'network'
          property :security_policy, as: 'securityPolicy'
          property :self_link, as: 'selfLink'
          property :zone, as: 'zone'
        end
      end
      
      class TargetInstanceAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::TargetInstancesScopedList, decorator: Google::Apis::ComputeBeta::TargetInstancesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::TargetInstanceAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::TargetInstanceAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::TargetInstanceAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::TargetInstanceAggregatedList::Warning::Datum::Representation
        
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
      
      class TargetInstanceList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::TargetInstance, decorator: Google::Apis::ComputeBeta::TargetInstance::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::TargetInstanceList::Warning, decorator: Google::Apis::ComputeBeta::TargetInstanceList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::TargetInstanceList::Warning::Datum, decorator: Google::Apis::ComputeBeta::TargetInstanceList::Warning::Datum::Representation
        
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
      
      class TargetInstancesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :target_instances, as: 'targetInstances', class: Google::Apis::ComputeBeta::TargetInstance, decorator: Google::Apis::ComputeBeta::TargetInstance::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::TargetInstancesScopedList::Warning, decorator: Google::Apis::ComputeBeta::TargetInstancesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::TargetInstancesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::TargetInstancesScopedList::Warning::Datum::Representation
        
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
      
      class TargetPool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_pool, as: 'backupPool'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :failover_ratio, as: 'failoverRatio'
          collection :health_checks, as: 'healthChecks'
          property :id, :numeric_string => true, as: 'id'
          collection :instances, as: 'instances'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :region, as: 'region'
          property :security_policy, as: 'securityPolicy'
          property :self_link, as: 'selfLink'
          property :session_affinity, as: 'sessionAffinity'
        end
      end
      
      class TargetPoolAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::TargetPoolsScopedList, decorator: Google::Apis::ComputeBeta::TargetPoolsScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::TargetPoolAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::TargetPoolAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::TargetPoolAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::TargetPoolAggregatedList::Warning::Datum::Representation
        
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
      
      class TargetPoolInstanceHealth
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :health_status, as: 'healthStatus', class: Google::Apis::ComputeBeta::HealthStatus, decorator: Google::Apis::ComputeBeta::HealthStatus::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class TargetPoolList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::TargetPool, decorator: Google::Apis::ComputeBeta::TargetPool::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::TargetPoolList::Warning, decorator: Google::Apis::ComputeBeta::TargetPoolList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::TargetPoolList::Warning::Datum, decorator: Google::Apis::ComputeBeta::TargetPoolList::Warning::Datum::Representation
        
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
      
      class AddTargetPoolsHealthCheckRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :health_checks, as: 'healthChecks', class: Google::Apis::ComputeBeta::HealthCheckReference, decorator: Google::Apis::ComputeBeta::HealthCheckReference::Representation
      
        end
      end
      
      class AddTargetPoolsInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::ComputeBeta::InstanceReference, decorator: Google::Apis::ComputeBeta::InstanceReference::Representation
      
        end
      end
      
      class RemoveTargetPoolsHealthCheckRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :health_checks, as: 'healthChecks', class: Google::Apis::ComputeBeta::HealthCheckReference, decorator: Google::Apis::ComputeBeta::HealthCheckReference::Representation
      
        end
      end
      
      class RemoveTargetPoolsInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::ComputeBeta::InstanceReference, decorator: Google::Apis::ComputeBeta::InstanceReference::Representation
      
        end
      end
      
      class TargetPoolsScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :target_pools, as: 'targetPools', class: Google::Apis::ComputeBeta::TargetPool, decorator: Google::Apis::ComputeBeta::TargetPool::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::TargetPoolsScopedList::Warning, decorator: Google::Apis::ComputeBeta::TargetPoolsScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::TargetPoolsScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::TargetPoolsScopedList::Warning::Datum::Representation
        
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
      
      class TargetReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target, as: 'target'
        end
      end
      
      class TargetSslProxiesSetBackendServiceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service'
        end
      end
      
      class TargetSslProxiesSetCertificateMapRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate_map, as: 'certificateMap'
        end
      end
      
      class TargetSslProxiesSetProxyHeaderRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :proxy_header, as: 'proxyHeader'
        end
      end
      
      class TargetSslProxiesSetSslCertificatesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ssl_certificates, as: 'sslCertificates'
        end
      end
      
      class TargetSslProxy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :certificate_map, as: 'certificateMap'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :proxy_header, as: 'proxyHeader'
          property :self_link, as: 'selfLink'
          property :service, as: 'service'
          collection :ssl_certificates, as: 'sslCertificates'
          property :ssl_policy, as: 'sslPolicy'
        end
      end
      
      class TargetSslProxyList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::TargetSslProxy, decorator: Google::Apis::ComputeBeta::TargetSslProxy::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::TargetSslProxyList::Warning, decorator: Google::Apis::ComputeBeta::TargetSslProxyList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::TargetSslProxyList::Warning::Datum, decorator: Google::Apis::ComputeBeta::TargetSslProxyList::Warning::Datum::Representation
        
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
      
      class TargetTcpProxiesScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :target_tcp_proxies, as: 'targetTcpProxies', class: Google::Apis::ComputeBeta::TargetTcpProxy, decorator: Google::Apis::ComputeBeta::TargetTcpProxy::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::TargetTcpProxiesScopedList::Warning, decorator: Google::Apis::ComputeBeta::TargetTcpProxiesScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::TargetTcpProxiesScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::TargetTcpProxiesScopedList::Warning::Datum::Representation
        
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
      
      class TargetTcpProxiesSetBackendServiceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service'
        end
      end
      
      class TargetTcpProxiesSetProxyHeaderRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :proxy_header, as: 'proxyHeader'
        end
      end
      
      class TargetTcpProxy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :proxy_bind, as: 'proxyBind'
          property :proxy_header, as: 'proxyHeader'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :service, as: 'service'
        end
      end
      
      class TargetTcpProxyAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::TargetTcpProxiesScopedList, decorator: Google::Apis::ComputeBeta::TargetTcpProxiesScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::TargetTcpProxyAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::TargetTcpProxyAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::TargetTcpProxyAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::TargetTcpProxyAggregatedList::Warning::Datum::Representation
        
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
      
      class TargetTcpProxyList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::TargetTcpProxy, decorator: Google::Apis::ComputeBeta::TargetTcpProxy::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::TargetTcpProxyList::Warning, decorator: Google::Apis::ComputeBeta::TargetTcpProxyList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::TargetTcpProxyList::Warning::Datum, decorator: Google::Apis::ComputeBeta::TargetTcpProxyList::Warning::Datum::Representation
        
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
      
      class TargetVpnGateway
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          collection :forwarding_rules, as: 'forwardingRules'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :network, as: 'network'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :status, as: 'status'
          collection :tunnels, as: 'tunnels'
        end
      end
      
      class TargetVpnGatewayAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::TargetVpnGatewaysScopedList, decorator: Google::Apis::ComputeBeta::TargetVpnGatewaysScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::TargetVpnGatewayAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::TargetVpnGatewayAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::TargetVpnGatewayAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::TargetVpnGatewayAggregatedList::Warning::Datum::Representation
        
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
      
      class TargetVpnGatewayList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::TargetVpnGateway, decorator: Google::Apis::ComputeBeta::TargetVpnGateway::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::TargetVpnGatewayList::Warning, decorator: Google::Apis::ComputeBeta::TargetVpnGatewayList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::TargetVpnGatewayList::Warning::Datum, decorator: Google::Apis::ComputeBeta::TargetVpnGatewayList::Warning::Datum::Representation
        
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
      
      class TargetVpnGatewaysScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :target_vpn_gateways, as: 'targetVpnGateways', class: Google::Apis::ComputeBeta::TargetVpnGateway, decorator: Google::Apis::ComputeBeta::TargetVpnGateway::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::TargetVpnGatewaysScopedList::Warning, decorator: Google::Apis::ComputeBeta::TargetVpnGatewaysScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::TargetVpnGatewaysScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::TargetVpnGatewaysScopedList::Warning::Datum::Representation
        
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
      
      class TestFailure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :actual_output_url, as: 'actualOutputUrl'
          property :actual_redirect_response_code, as: 'actualRedirectResponseCode'
          property :actual_service, as: 'actualService'
          property :expected_output_url, as: 'expectedOutputUrl'
          property :expected_redirect_response_code, as: 'expectedRedirectResponseCode'
          property :expected_service, as: 'expectedService'
          collection :headers, as: 'headers', class: Google::Apis::ComputeBeta::UrlMapTestHeader, decorator: Google::Apis::ComputeBeta::UrlMapTestHeader::Representation
      
          property :host, as: 'host'
          property :path, as: 'path'
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
      
      class Uint128
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :high, :numeric_string => true, as: 'high'
          property :low, :numeric_string => true, as: 'low'
        end
      end
      
      class UpcomingMaintenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_reschedule, as: 'canReschedule'
          property :latest_window_start_time, as: 'latestWindowStartTime'
          property :maintenance_on_shutdown, as: 'maintenanceOnShutdown'
          property :maintenance_status, as: 'maintenanceStatus'
          property :type, as: 'type'
          property :window_end_time, as: 'windowEndTime'
          property :window_start_time, as: 'windowStartTime'
        end
      end
      
      class UrlMap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :default_custom_error_response_policy, as: 'defaultCustomErrorResponsePolicy', class: Google::Apis::ComputeBeta::CustomErrorResponsePolicy, decorator: Google::Apis::ComputeBeta::CustomErrorResponsePolicy::Representation
      
          property :default_route_action, as: 'defaultRouteAction', class: Google::Apis::ComputeBeta::HttpRouteAction, decorator: Google::Apis::ComputeBeta::HttpRouteAction::Representation
      
          property :default_service, as: 'defaultService'
          property :default_url_redirect, as: 'defaultUrlRedirect', class: Google::Apis::ComputeBeta::HttpRedirectAction, decorator: Google::Apis::ComputeBeta::HttpRedirectAction::Representation
      
          property :description, as: 'description'
          property :fingerprint, :base64 => true, as: 'fingerprint'
          property :header_action, as: 'headerAction', class: Google::Apis::ComputeBeta::HttpHeaderAction, decorator: Google::Apis::ComputeBeta::HttpHeaderAction::Representation
      
          collection :host_rules, as: 'hostRules', class: Google::Apis::ComputeBeta::HostRule, decorator: Google::Apis::ComputeBeta::HostRule::Representation
      
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          collection :path_matchers, as: 'pathMatchers', class: Google::Apis::ComputeBeta::PathMatcher, decorator: Google::Apis::ComputeBeta::PathMatcher::Representation
      
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          collection :tests, as: 'tests', class: Google::Apis::ComputeBeta::UrlMapTest, decorator: Google::Apis::ComputeBeta::UrlMapTest::Representation
      
        end
      end
      
      class UrlMapList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::UrlMap, decorator: Google::Apis::ComputeBeta::UrlMap::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::UrlMapList::Warning, decorator: Google::Apis::ComputeBeta::UrlMapList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::UrlMapList::Warning::Datum, decorator: Google::Apis::ComputeBeta::UrlMapList::Warning::Datum::Representation
        
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
      
      class UrlMapReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url_map, as: 'urlMap'
        end
      end
      
      class UrlMapTest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expected_output_url, as: 'expectedOutputUrl'
          property :expected_redirect_response_code, as: 'expectedRedirectResponseCode'
          collection :headers, as: 'headers', class: Google::Apis::ComputeBeta::UrlMapTestHeader, decorator: Google::Apis::ComputeBeta::UrlMapTestHeader::Representation
      
          property :host, as: 'host'
          property :path, as: 'path'
          property :service, as: 'service'
        end
      end
      
      class UrlMapTestHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class UrlMapValidationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :load_errors, as: 'loadErrors'
          property :load_succeeded, as: 'loadSucceeded'
          collection :test_failures, as: 'testFailures', class: Google::Apis::ComputeBeta::TestFailure, decorator: Google::Apis::ComputeBeta::TestFailure::Representation
      
          property :test_passed, as: 'testPassed'
        end
      end
      
      class UrlMapsAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::UrlMapsScopedList, decorator: Google::Apis::ComputeBeta::UrlMapsScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::UrlMapsAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::UrlMapsAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::UrlMapsAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::UrlMapsAggregatedList::Warning::Datum::Representation
        
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
      
      class UrlMapsScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :url_maps, as: 'urlMaps', class: Google::Apis::ComputeBeta::UrlMap, decorator: Google::Apis::ComputeBeta::UrlMap::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::UrlMapsScopedList::Warning, decorator: Google::Apis::ComputeBeta::UrlMapsScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::UrlMapsScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::UrlMapsScopedList::Warning::Datum::Representation
        
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
      
      class ValidateUrlMapsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :load_balancing_schemes, as: 'loadBalancingSchemes'
          property :resource, as: 'resource', class: Google::Apis::ComputeBeta::UrlMap, decorator: Google::Apis::ComputeBeta::UrlMap::Representation
      
        end
      end
      
      class ValidateUrlMapsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :result, as: 'result', class: Google::Apis::ComputeBeta::UrlMapValidationResult, decorator: Google::Apis::ComputeBeta::UrlMapValidationResult::Representation
      
        end
      end
      
      class UrlRewrite
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host_rewrite, as: 'hostRewrite'
          property :path_prefix_rewrite, as: 'pathPrefixRewrite'
          property :path_template_rewrite, as: 'pathTemplateRewrite'
        end
      end
      
      class UsableSubnetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_ipv6_prefix, as: 'externalIpv6Prefix'
          property :internal_ipv6_prefix, as: 'internalIpv6Prefix'
          property :ip_cidr_range, as: 'ipCidrRange'
          property :ipv6_access_type, as: 'ipv6AccessType'
          property :network, as: 'network'
          property :purpose, as: 'purpose'
          property :role, as: 'role'
          collection :secondary_ip_ranges, as: 'secondaryIpRanges', class: Google::Apis::ComputeBeta::UsableSubnetworkSecondaryRange, decorator: Google::Apis::ComputeBeta::UsableSubnetworkSecondaryRange::Representation
      
          property :stack_type, as: 'stackType'
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class UsableSubnetworkSecondaryRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_cidr_range, as: 'ipCidrRange'
          property :range_name, as: 'rangeName'
        end
      end
      
      class UsableSubnetworksAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::UsableSubnetwork, decorator: Google::Apis::ComputeBeta::UsableSubnetwork::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :scoped_warnings, as: 'scopedWarnings', class: Google::Apis::ComputeBeta::SubnetworksScopedWarning, decorator: Google::Apis::ComputeBeta::SubnetworksScopedWarning::Representation
      
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::UsableSubnetworksAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::UsableSubnetworksAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::UsableSubnetworksAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::UsableSubnetworksAggregatedList::Warning::Datum::Representation
        
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
      
      class UsageExportLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_name, as: 'bucketName'
          property :report_name_prefix, as: 'reportNamePrefix'
        end
      end
      
      class VmEndpointNatMappings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_name, as: 'instanceName'
          collection :interface_nat_mappings, as: 'interfaceNatMappings', class: Google::Apis::ComputeBeta::VmEndpointNatMappingsInterfaceNatMappings, decorator: Google::Apis::ComputeBeta::VmEndpointNatMappingsInterfaceNatMappings::Representation
      
        end
      end
      
      class VmEndpointNatMappingsInterfaceNatMappings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :drain_nat_ip_port_ranges, as: 'drainNatIpPortRanges'
          collection :nat_ip_port_ranges, as: 'natIpPortRanges'
          property :num_total_drain_nat_ports, as: 'numTotalDrainNatPorts'
          property :num_total_nat_ports, as: 'numTotalNatPorts'
          collection :rule_mappings, as: 'ruleMappings', class: Google::Apis::ComputeBeta::VmEndpointNatMappingsInterfaceNatMappingsNatRuleMappings, decorator: Google::Apis::ComputeBeta::VmEndpointNatMappingsInterfaceNatMappingsNatRuleMappings::Representation
      
          property :source_alias_ip_range, as: 'sourceAliasIpRange'
          property :source_virtual_ip, as: 'sourceVirtualIp'
        end
      end
      
      class VmEndpointNatMappingsInterfaceNatMappingsNatRuleMappings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :drain_nat_ip_port_ranges, as: 'drainNatIpPortRanges'
          collection :nat_ip_port_ranges, as: 'natIpPortRanges'
          property :num_total_drain_nat_ports, as: 'numTotalDrainNatPorts'
          property :num_total_nat_ports, as: 'numTotalNatPorts'
          property :rule_number, as: 'ruleNumber'
        end
      end
      
      class VmEndpointNatMappingsList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :result, as: 'result', class: Google::Apis::ComputeBeta::VmEndpointNatMappings, decorator: Google::Apis::ComputeBeta::VmEndpointNatMappings::Representation
      
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::VmEndpointNatMappingsList::Warning, decorator: Google::Apis::ComputeBeta::VmEndpointNatMappingsList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::VmEndpointNatMappingsList::Warning::Datum, decorator: Google::Apis::ComputeBeta::VmEndpointNatMappingsList::Warning::Datum::Representation
        
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
      
      class VpnGateway
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :gateway_ip_version, as: 'gatewayIpVersion'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :network, as: 'network'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :stack_type, as: 'stackType'
          collection :vpn_interfaces, as: 'vpnInterfaces', class: Google::Apis::ComputeBeta::VpnGatewayVpnGatewayInterface, decorator: Google::Apis::ComputeBeta::VpnGatewayVpnGatewayInterface::Representation
      
        end
      end
      
      class VpnGatewayAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::VpnGatewaysScopedList, decorator: Google::Apis::ComputeBeta::VpnGatewaysScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::VpnGatewayAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::VpnGatewayAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::VpnGatewayAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::VpnGatewayAggregatedList::Warning::Datum::Representation
        
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
      
      class VpnGatewayList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::VpnGateway, decorator: Google::Apis::ComputeBeta::VpnGateway::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::VpnGatewayList::Warning, decorator: Google::Apis::ComputeBeta::VpnGatewayList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::VpnGatewayList::Warning::Datum, decorator: Google::Apis::ComputeBeta::VpnGatewayList::Warning::Datum::Representation
        
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
      
      class VpnGatewayStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :vpn_connections, as: 'vpnConnections', class: Google::Apis::ComputeBeta::VpnGatewayStatusVpnConnection, decorator: Google::Apis::ComputeBeta::VpnGatewayStatusVpnConnection::Representation
      
        end
      end
      
      class VpnGatewayStatusHighAvailabilityRequirementState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
          property :unsatisfied_reason, as: 'unsatisfiedReason'
        end
      end
      
      class VpnGatewayStatusTunnel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :local_gateway_interface, as: 'localGatewayInterface'
          property :peer_gateway_interface, as: 'peerGatewayInterface'
          property :tunnel_url, as: 'tunnelUrl'
        end
      end
      
      class VpnGatewayStatusVpnConnection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :peer_external_gateway, as: 'peerExternalGateway'
          property :peer_gcp_gateway, as: 'peerGcpGateway'
          property :state, as: 'state', class: Google::Apis::ComputeBeta::VpnGatewayStatusHighAvailabilityRequirementState, decorator: Google::Apis::ComputeBeta::VpnGatewayStatusHighAvailabilityRequirementState::Representation
      
          collection :tunnels, as: 'tunnels', class: Google::Apis::ComputeBeta::VpnGatewayStatusTunnel, decorator: Google::Apis::ComputeBeta::VpnGatewayStatusTunnel::Representation
      
        end
      end
      
      class VpnGatewayVpnGatewayInterface
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :interconnect_attachment, as: 'interconnectAttachment'
          property :ip_address, as: 'ipAddress'
          property :ipv6_address, as: 'ipv6Address'
        end
      end
      
      class VpnGatewaysGetStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :result, as: 'result', class: Google::Apis::ComputeBeta::VpnGatewayStatus, decorator: Google::Apis::ComputeBeta::VpnGatewayStatus::Representation
      
        end
      end
      
      class VpnGatewaysScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :vpn_gateways, as: 'vpnGateways', class: Google::Apis::ComputeBeta::VpnGateway, decorator: Google::Apis::ComputeBeta::VpnGateway::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::VpnGatewaysScopedList::Warning, decorator: Google::Apis::ComputeBeta::VpnGatewaysScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::VpnGatewaysScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::VpnGatewaysScopedList::Warning::Datum::Representation
        
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
      
      class VpnTunnel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cipher_suite, as: 'cipherSuite', class: Google::Apis::ComputeBeta::VpnTunnelCipherSuite, decorator: Google::Apis::ComputeBeta::VpnTunnelCipherSuite::Representation
      
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          property :detailed_status, as: 'detailedStatus'
          property :id, :numeric_string => true, as: 'id'
          property :ike_version, as: 'ikeVersion'
          property :kind, as: 'kind'
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
          collection :local_traffic_selector, as: 'localTrafficSelector'
          property :name, as: 'name'
          property :peer_external_gateway, as: 'peerExternalGateway'
          property :peer_external_gateway_interface, as: 'peerExternalGatewayInterface'
          property :peer_gcp_gateway, as: 'peerGcpGateway'
          property :peer_ip, as: 'peerIp'
          property :region, as: 'region'
          collection :remote_traffic_selector, as: 'remoteTrafficSelector'
          property :router, as: 'router'
          property :self_link, as: 'selfLink'
          property :shared_secret, as: 'sharedSecret'
          property :shared_secret_hash, as: 'sharedSecretHash'
          property :status, as: 'status'
          property :target_vpn_gateway, as: 'targetVpnGateway'
          property :vpn_gateway, as: 'vpnGateway'
          property :vpn_gateway_interface, as: 'vpnGatewayInterface'
        end
      end
      
      class VpnTunnelAggregatedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          hash :items, as: 'items', class: Google::Apis::ComputeBeta::VpnTunnelsScopedList, decorator: Google::Apis::ComputeBeta::VpnTunnelsScopedList::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::VpnTunnelAggregatedList::Warning, decorator: Google::Apis::ComputeBeta::VpnTunnelAggregatedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::VpnTunnelAggregatedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::VpnTunnelAggregatedList::Warning::Datum::Representation
        
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
      
      class VpnTunnelCipherSuite
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :phase1, as: 'phase1', class: Google::Apis::ComputeBeta::VpnTunnelPhase1Algorithms, decorator: Google::Apis::ComputeBeta::VpnTunnelPhase1Algorithms::Representation
      
          property :phase2, as: 'phase2', class: Google::Apis::ComputeBeta::VpnTunnelPhase2Algorithms, decorator: Google::Apis::ComputeBeta::VpnTunnelPhase2Algorithms::Representation
      
        end
      end
      
      class VpnTunnelList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::VpnTunnel, decorator: Google::Apis::ComputeBeta::VpnTunnel::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::VpnTunnelList::Warning, decorator: Google::Apis::ComputeBeta::VpnTunnelList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::VpnTunnelList::Warning::Datum, decorator: Google::Apis::ComputeBeta::VpnTunnelList::Warning::Datum::Representation
        
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
      
      class VpnTunnelPhase1Algorithms
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dh, as: 'dh'
          collection :encryption, as: 'encryption'
          collection :integrity, as: 'integrity'
          collection :prf, as: 'prf'
        end
      end
      
      class VpnTunnelPhase2Algorithms
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :encryption, as: 'encryption'
          collection :integrity, as: 'integrity'
          collection :pfs, as: 'pfs'
        end
      end
      
      class VpnTunnelsScopedList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :vpn_tunnels, as: 'vpnTunnels', class: Google::Apis::ComputeBeta::VpnTunnel, decorator: Google::Apis::ComputeBeta::VpnTunnel::Representation
      
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::VpnTunnelsScopedList::Warning, decorator: Google::Apis::ComputeBeta::VpnTunnelsScopedList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::VpnTunnelsScopedList::Warning::Datum, decorator: Google::Apis::ComputeBeta::VpnTunnelsScopedList::Warning::Datum::Representation
        
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
      
      class WafExpressionSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aliases, as: 'aliases'
          collection :expressions, as: 'expressions', class: Google::Apis::ComputeBeta::WafExpressionSetExpression, decorator: Google::Apis::ComputeBeta::WafExpressionSetExpression::Representation
      
          property :id, as: 'id'
        end
      end
      
      class WafExpressionSetExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :sensitivity, as: 'sensitivity'
        end
      end
      
      class WeightedBackendService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backend_service, as: 'backendService'
          property :header_action, as: 'headerAction', class: Google::Apis::ComputeBeta::HttpHeaderAction, decorator: Google::Apis::ComputeBeta::HttpHeaderAction::Representation
      
          property :weight, as: 'weight'
        end
      end
      
      class Wire
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_enabled, as: 'adminEnabled'
          collection :endpoints, as: 'endpoints', class: Google::Apis::ComputeBeta::WireEndpoint, decorator: Google::Apis::ComputeBeta::WireEndpoint::Representation
      
          property :label, as: 'label'
          property :wire_properties, as: 'wireProperties', class: Google::Apis::ComputeBeta::WireProperties, decorator: Google::Apis::ComputeBeta::WireProperties::Representation
      
        end
      end
      
      class WireEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interconnect, as: 'interconnect'
          property :vlan_tag, as: 'vlanTag'
        end
      end
      
      class WireGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_enabled, as: 'adminEnabled'
          property :creation_timestamp, as: 'creationTimestamp'
          property :description, as: 'description'
          hash :endpoints, as: 'endpoints', class: Google::Apis::ComputeBeta::WireGroupEndpoint, decorator: Google::Apis::ComputeBeta::WireGroupEndpoint::Representation
      
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :reconciling, as: 'reconciling'
          property :self_link, as: 'selfLink'
          property :topology, as: 'topology', class: Google::Apis::ComputeBeta::WireGroupTopology, decorator: Google::Apis::ComputeBeta::WireGroupTopology::Representation
      
          property :wire_group_properties, as: 'wireGroupProperties', class: Google::Apis::ComputeBeta::WireGroupProperties, decorator: Google::Apis::ComputeBeta::WireGroupProperties::Representation
      
          property :wire_properties, as: 'wireProperties', class: Google::Apis::ComputeBeta::WireProperties, decorator: Google::Apis::ComputeBeta::WireProperties::Representation
      
          collection :wires, as: 'wires', class: Google::Apis::ComputeBeta::Wire, decorator: Google::Apis::ComputeBeta::Wire::Representation
      
        end
      end
      
      class WireGroupEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :interconnects, as: 'interconnects', class: Google::Apis::ComputeBeta::WireGroupEndpointInterconnect, decorator: Google::Apis::ComputeBeta::WireGroupEndpointInterconnect::Representation
      
        end
      end
      
      class WireGroupEndpointInterconnect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interconnect, as: 'interconnect'
          collection :vlan_tags, as: 'vlanTags'
        end
      end
      
      class WireGroupList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::WireGroup, decorator: Google::Apis::ComputeBeta::WireGroup::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          collection :unreachables, as: 'unreachables'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::WireGroupList::Warning, decorator: Google::Apis::ComputeBeta::WireGroupList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::WireGroupList::Warning::Datum, decorator: Google::Apis::ComputeBeta::WireGroupList::Warning::Datum::Representation
        
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
      
      class WireGroupProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class WireGroupTopology
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :endpoints, as: 'endpoints', class: Google::Apis::ComputeBeta::WireGroupTopologyEndpoint, decorator: Google::Apis::ComputeBeta::WireGroupTopologyEndpoint::Representation
      
        end
      end
      
      class WireGroupTopologyEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :city, as: 'city'
          property :label, as: 'label'
        end
      end
      
      class WireProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bandwidth_unmetered, :numeric_string => true, as: 'bandwidthUnmetered'
          property :fault_response, as: 'faultResponse'
        end
      end
      
      class XpnHostList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Project, decorator: Google::Apis::ComputeBeta::Project::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::XpnHostList::Warning, decorator: Google::Apis::ComputeBeta::XpnHostList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::XpnHostList::Warning::Datum, decorator: Google::Apis::ComputeBeta::XpnHostList::Warning::Datum::Representation
        
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
      
      class XpnResourceId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :type, as: 'type'
        end
      end
      
      class Zone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :available_cpu_platforms, as: 'availableCpuPlatforms'
          property :creation_timestamp, as: 'creationTimestamp'
          property :deprecated, as: 'deprecated', class: Google::Apis::ComputeBeta::DeprecationStatus, decorator: Google::Apis::ComputeBeta::DeprecationStatus::Representation
      
          property :description, as: 'description'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :region, as: 'region'
          property :self_link, as: 'selfLink'
          property :status, as: 'status'
          property :supports_pzs, as: 'supportsPzs'
        end
      end
      
      class ZoneList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::ComputeBeta::Zone, decorator: Google::Apis::ComputeBeta::Zone::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :self_link, as: 'selfLink'
          property :warning, as: 'warning', class: Google::Apis::ComputeBeta::ZoneList::Warning, decorator: Google::Apis::ComputeBeta::ZoneList::Warning::Representation
      
        end
        
        class Warning
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :code, as: 'code'
            collection :data, as: 'data', class: Google::Apis::ComputeBeta::ZoneList::Warning::Datum, decorator: Google::Apis::ComputeBeta::ZoneList::Warning::Datum::Representation
        
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
      
      class ZoneSetLabelsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label_fingerprint, :base64 => true, as: 'labelFingerprint'
          hash :labels, as: 'labels'
        end
      end
      
      class ZoneSetPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::ComputeBeta::Binding, decorator: Google::Apis::ComputeBeta::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :policy, as: 'policy', class: Google::Apis::ComputeBeta::Policy, decorator: Google::Apis::ComputeBeta::Policy::Representation
      
        end
      end
    end
  end
end
