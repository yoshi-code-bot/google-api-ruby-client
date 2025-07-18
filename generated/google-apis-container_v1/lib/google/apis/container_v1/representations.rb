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
    module ContainerV1
      
      class AcceleratorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdditionalIpRangesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdditionalNodeNetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdditionalPodNetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdditionalPodRangesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddonsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdvancedDatapathObservabilityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdvancedMachineFeatures
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnonymousAuthenticationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthenticatorGroupsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoIpamConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoMonitoringConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoUpgradeOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Autopilot
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutopilotCompatibilityIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutopilotConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoprovisioningNodePoolDefaults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BestEffortProvisioning
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigQueryDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BinaryAuthorization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BlueGreenInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BlueGreenSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertificateAuthorityDomainConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckAutopilotCompatibilityResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CidrBlock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientCertificateConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudRunConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterAutoscaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterNetworkPerformanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterUpgradeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompleteIpRotationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompleteNodePoolUpgradeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompliancePostureConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComplianceStandard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfidentialNodes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigConnectorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConsumptionMeteringConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContainerdConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ControlPlaneEndpointsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CostManagementConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateNodePoolRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsEndpointConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailyMaintenanceWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseEncryption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DefaultSnatStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DesiredAdditionalIpRangesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DesiredEnterpriseConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsCacheConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnterpriseConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EphemeralStorageLocalSsdConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FastSocket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Filter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Fleet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcpSecretManagerCertificateConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GpuDriverInstallationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GpuSharingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GatewayApiConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcePersistentDiskCsiDriverConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcfsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcpFilestoreCsiDriverConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsFuseCsiDriverConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetJsonWebKeysResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetOpenIdConfigResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GkeAutoUpgradeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GkeBackupAgentConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HighScaleCheckpointingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HorizontalPodAutoscaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpCacheControlResponseHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpLoadBalancing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HugepagesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IlbSubsettingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IpAllocationPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IpEndpointsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityServiceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntraNodeVisibilityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Jwk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class K8sBetaApiConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KubernetesDashboard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LegacyAbac
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinuxNodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClustersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNodePoolsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUsableSubnetworksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalNvmeSsdBlockConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoggingComponentConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoggingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoggingVariantConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceExclusionOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenancePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedPrometheusConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MasterAuth
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MasterAuthorizedNetworksConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaxPodsConstraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MemoryManager
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MeshCertificates
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Metric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoringComponentConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoringConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkPerformanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkPolicyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkTags
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeAffinity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeConfigDefaults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeKubeletConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeLabels
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeManagement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeNetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodePool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodePoolAutoConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodePoolAutoscaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodePoolDefaults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodePoolLoggingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodePoolUpgradeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeTaint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeTaints
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
      
      class OperationError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ParallelstoreCsiDriverConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ParentProductConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PlacementPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PodAutoscaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PodCidrOverprovisionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateClusterConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateClusterMasterGlobalAccessConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateRegistryAccessConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PubSub
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueuedProvisioning
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RbacBindingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RangeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RayClusterLoggingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RayClusterMonitoringConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RayOperatorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecurringTimeWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReleaseChannel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReleaseChannelConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReservationAffinity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceLabels
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceLimit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceManagerTags
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceUsageExportConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollbackNodePoolUpgradeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SandboxConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecondaryBootDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecondaryBootDiskUpdateStrategy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecretManagerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityBulletinEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityPostureConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceExternalIPsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetAddonsConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetLabelsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetLegacyAbacRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetLocationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetLoggingServiceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetMaintenancePolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetMasterAuthRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetMonitoringServiceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetNetworkPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetNodePoolAutoscalingRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetNodePoolManagementRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetNodePoolSizeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShieldedInstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShieldedNodes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SoleTenantConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StandardRolloutPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartIpRotationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StatefulHaConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StatusCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TopologyManager
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateMasterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateNodePoolRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeAvailableEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeInfoEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeSettings
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
      
      class UserManagedKeysConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerticalPodAutoscaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VirtualNic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WindowsNodeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkloadIdentityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkloadMetadataConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkloadPolicyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcceleratorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accelerator_count, :numeric_string => true, as: 'acceleratorCount'
          property :accelerator_type, as: 'acceleratorType'
          property :gpu_driver_installation_config, as: 'gpuDriverInstallationConfig', class: Google::Apis::ContainerV1::GpuDriverInstallationConfig, decorator: Google::Apis::ContainerV1::GpuDriverInstallationConfig::Representation
      
          property :gpu_partition_size, as: 'gpuPartitionSize'
          property :gpu_sharing_config, as: 'gpuSharingConfig', class: Google::Apis::ContainerV1::GpuSharingConfig, decorator: Google::Apis::ContainerV1::GpuSharingConfig::Representation
      
        end
      end
      
      class AdditionalIpRangesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :pod_ipv4_range_names, as: 'podIpv4RangeNames'
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class AdditionalNodeNetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network, as: 'network'
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class AdditionalPodNetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_pods_per_node, as: 'maxPodsPerNode', class: Google::Apis::ContainerV1::MaxPodsConstraint, decorator: Google::Apis::ContainerV1::MaxPodsConstraint::Representation
      
          property :network_attachment, as: 'networkAttachment'
          property :secondary_pod_range, as: 'secondaryPodRange'
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class AdditionalPodRangesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :pod_range_info, as: 'podRangeInfo', class: Google::Apis::ContainerV1::RangeInfo, decorator: Google::Apis::ContainerV1::RangeInfo::Representation
      
          collection :pod_range_names, as: 'podRangeNames'
        end
      end
      
      class AddonsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_run_config, as: 'cloudRunConfig', class: Google::Apis::ContainerV1::CloudRunConfig, decorator: Google::Apis::ContainerV1::CloudRunConfig::Representation
      
          property :config_connector_config, as: 'configConnectorConfig', class: Google::Apis::ContainerV1::ConfigConnectorConfig, decorator: Google::Apis::ContainerV1::ConfigConnectorConfig::Representation
      
          property :dns_cache_config, as: 'dnsCacheConfig', class: Google::Apis::ContainerV1::DnsCacheConfig, decorator: Google::Apis::ContainerV1::DnsCacheConfig::Representation
      
          property :gce_persistent_disk_csi_driver_config, as: 'gcePersistentDiskCsiDriverConfig', class: Google::Apis::ContainerV1::GcePersistentDiskCsiDriverConfig, decorator: Google::Apis::ContainerV1::GcePersistentDiskCsiDriverConfig::Representation
      
          property :gcp_filestore_csi_driver_config, as: 'gcpFilestoreCsiDriverConfig', class: Google::Apis::ContainerV1::GcpFilestoreCsiDriverConfig, decorator: Google::Apis::ContainerV1::GcpFilestoreCsiDriverConfig::Representation
      
          property :gcs_fuse_csi_driver_config, as: 'gcsFuseCsiDriverConfig', class: Google::Apis::ContainerV1::GcsFuseCsiDriverConfig, decorator: Google::Apis::ContainerV1::GcsFuseCsiDriverConfig::Representation
      
          property :gke_backup_agent_config, as: 'gkeBackupAgentConfig', class: Google::Apis::ContainerV1::GkeBackupAgentConfig, decorator: Google::Apis::ContainerV1::GkeBackupAgentConfig::Representation
      
          property :high_scale_checkpointing_config, as: 'highScaleCheckpointingConfig', class: Google::Apis::ContainerV1::HighScaleCheckpointingConfig, decorator: Google::Apis::ContainerV1::HighScaleCheckpointingConfig::Representation
      
          property :horizontal_pod_autoscaling, as: 'horizontalPodAutoscaling', class: Google::Apis::ContainerV1::HorizontalPodAutoscaling, decorator: Google::Apis::ContainerV1::HorizontalPodAutoscaling::Representation
      
          property :http_load_balancing, as: 'httpLoadBalancing', class: Google::Apis::ContainerV1::HttpLoadBalancing, decorator: Google::Apis::ContainerV1::HttpLoadBalancing::Representation
      
          property :kubernetes_dashboard, as: 'kubernetesDashboard', class: Google::Apis::ContainerV1::KubernetesDashboard, decorator: Google::Apis::ContainerV1::KubernetesDashboard::Representation
      
          property :network_policy_config, as: 'networkPolicyConfig', class: Google::Apis::ContainerV1::NetworkPolicyConfig, decorator: Google::Apis::ContainerV1::NetworkPolicyConfig::Representation
      
          property :parallelstore_csi_driver_config, as: 'parallelstoreCsiDriverConfig', class: Google::Apis::ContainerV1::ParallelstoreCsiDriverConfig, decorator: Google::Apis::ContainerV1::ParallelstoreCsiDriverConfig::Representation
      
          property :ray_operator_config, as: 'rayOperatorConfig', class: Google::Apis::ContainerV1::RayOperatorConfig, decorator: Google::Apis::ContainerV1::RayOperatorConfig::Representation
      
          property :stateful_ha_config, as: 'statefulHaConfig', class: Google::Apis::ContainerV1::StatefulHaConfig, decorator: Google::Apis::ContainerV1::StatefulHaConfig::Representation
      
        end
      end
      
      class AdvancedDatapathObservabilityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_metrics, as: 'enableMetrics'
          property :enable_relay, as: 'enableRelay'
          property :relay_mode, as: 'relayMode'
        end
      end
      
      class AdvancedMachineFeatures
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_nested_virtualization, as: 'enableNestedVirtualization'
          property :performance_monitoring_unit, as: 'performanceMonitoringUnit'
          property :threads_per_core, :numeric_string => true, as: 'threadsPerCore'
        end
      end
      
      class AnonymousAuthenticationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class AuthenticatorGroupsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :security_group, as: 'securityGroup'
        end
      end
      
      class AutoIpamConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AutoMonitoringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :scope, as: 'scope'
        end
      end
      
      class AutoUpgradeOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_upgrade_start_time, as: 'autoUpgradeStartTime'
          property :description, as: 'description'
        end
      end
      
      class Autopilot
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :workload_policy_config, as: 'workloadPolicyConfig', class: Google::Apis::ContainerV1::WorkloadPolicyConfig, decorator: Google::Apis::ContainerV1::WorkloadPolicyConfig::Representation
      
        end
      end
      
      class AutopilotCompatibilityIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :constraint_type, as: 'constraintType'
          property :description, as: 'description'
          property :documentation_url, as: 'documentationUrl'
          property :incompatibility_type, as: 'incompatibilityType'
          property :last_observation, as: 'lastObservation'
          collection :subjects, as: 'subjects'
        end
      end
      
      class AutopilotConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class AutoprovisioningNodePoolDefaults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boot_disk_kms_key, as: 'bootDiskKmsKey'
          property :disk_size_gb, as: 'diskSizeGb'
          property :disk_type, as: 'diskType'
          property :image_type, as: 'imageType'
          property :insecure_kubelet_readonly_port_enabled, as: 'insecureKubeletReadonlyPortEnabled'
          property :management, as: 'management', class: Google::Apis::ContainerV1::NodeManagement, decorator: Google::Apis::ContainerV1::NodeManagement::Representation
      
          property :min_cpu_platform, as: 'minCpuPlatform'
          collection :oauth_scopes, as: 'oauthScopes'
          property :service_account, as: 'serviceAccount'
          property :shielded_instance_config, as: 'shieldedInstanceConfig', class: Google::Apis::ContainerV1::ShieldedInstanceConfig, decorator: Google::Apis::ContainerV1::ShieldedInstanceConfig::Representation
      
          property :upgrade_settings, as: 'upgradeSettings', class: Google::Apis::ContainerV1::UpgradeSettings, decorator: Google::Apis::ContainerV1::UpgradeSettings::Representation
      
        end
      end
      
      class BestEffortProvisioning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :min_provision_nodes, as: 'minProvisionNodes'
        end
      end
      
      class BigQueryDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
        end
      end
      
      class BinaryAuthorization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :evaluation_mode, as: 'evaluationMode'
        end
      end
      
      class BlueGreenInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blue_instance_group_urls, as: 'blueInstanceGroupUrls'
          property :blue_pool_deletion_start_time, as: 'bluePoolDeletionStartTime'
          collection :green_instance_group_urls, as: 'greenInstanceGroupUrls'
          property :green_pool_version, as: 'greenPoolVersion'
          property :phase, as: 'phase'
        end
      end
      
      class BlueGreenSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :node_pool_soak_duration, as: 'nodePoolSoakDuration'
          property :standard_rollout_policy, as: 'standardRolloutPolicy', class: Google::Apis::ContainerV1::StandardRolloutPolicy, decorator: Google::Apis::ContainerV1::StandardRolloutPolicy::Representation
      
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :operation_id, as: 'operationId'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class CertificateAuthorityDomainConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fqdns, as: 'fqdns'
          property :gcp_secret_manager_certificate_config, as: 'gcpSecretManagerCertificateConfig', class: Google::Apis::ContainerV1::GcpSecretManagerCertificateConfig, decorator: Google::Apis::ContainerV1::GcpSecretManagerCertificateConfig::Representation
      
        end
      end
      
      class CheckAutopilotCompatibilityResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :issues, as: 'issues', class: Google::Apis::ContainerV1::AutopilotCompatibilityIssue, decorator: Google::Apis::ContainerV1::AutopilotCompatibilityIssue::Representation
      
          property :summary, as: 'summary'
        end
      end
      
      class CidrBlock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cidr_block, as: 'cidrBlock'
          property :display_name, as: 'displayName'
        end
      end
      
      class ClientCertificateConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :issue_client_certificate, as: 'issueClientCertificate'
        end
      end
      
      class CloudRunConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
          property :load_balancer_type, as: 'loadBalancerType'
        end
      end
      
      class Cluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :addons_config, as: 'addonsConfig', class: Google::Apis::ContainerV1::AddonsConfig, decorator: Google::Apis::ContainerV1::AddonsConfig::Representation
      
          collection :alpha_cluster_feature_gates, as: 'alphaClusterFeatureGates'
          property :anonymous_authentication_config, as: 'anonymousAuthenticationConfig', class: Google::Apis::ContainerV1::AnonymousAuthenticationConfig, decorator: Google::Apis::ContainerV1::AnonymousAuthenticationConfig::Representation
      
          property :authenticator_groups_config, as: 'authenticatorGroupsConfig', class: Google::Apis::ContainerV1::AuthenticatorGroupsConfig, decorator: Google::Apis::ContainerV1::AuthenticatorGroupsConfig::Representation
      
          property :autopilot, as: 'autopilot', class: Google::Apis::ContainerV1::Autopilot, decorator: Google::Apis::ContainerV1::Autopilot::Representation
      
          property :autoscaling, as: 'autoscaling', class: Google::Apis::ContainerV1::ClusterAutoscaling, decorator: Google::Apis::ContainerV1::ClusterAutoscaling::Representation
      
          property :binary_authorization, as: 'binaryAuthorization', class: Google::Apis::ContainerV1::BinaryAuthorization, decorator: Google::Apis::ContainerV1::BinaryAuthorization::Representation
      
          property :cluster_ipv4_cidr, as: 'clusterIpv4Cidr'
          property :compliance_posture_config, as: 'compliancePostureConfig', class: Google::Apis::ContainerV1::CompliancePostureConfig, decorator: Google::Apis::ContainerV1::CompliancePostureConfig::Representation
      
          collection :conditions, as: 'conditions', class: Google::Apis::ContainerV1::StatusCondition, decorator: Google::Apis::ContainerV1::StatusCondition::Representation
      
          property :confidential_nodes, as: 'confidentialNodes', class: Google::Apis::ContainerV1::ConfidentialNodes, decorator: Google::Apis::ContainerV1::ConfidentialNodes::Representation
      
          property :control_plane_endpoints_config, as: 'controlPlaneEndpointsConfig', class: Google::Apis::ContainerV1::ControlPlaneEndpointsConfig, decorator: Google::Apis::ContainerV1::ControlPlaneEndpointsConfig::Representation
      
          property :cost_management_config, as: 'costManagementConfig', class: Google::Apis::ContainerV1::CostManagementConfig, decorator: Google::Apis::ContainerV1::CostManagementConfig::Representation
      
          property :create_time, as: 'createTime'
          property :current_master_version, as: 'currentMasterVersion'
          property :current_node_count, as: 'currentNodeCount'
          property :current_node_version, as: 'currentNodeVersion'
          property :database_encryption, as: 'databaseEncryption', class: Google::Apis::ContainerV1::DatabaseEncryption, decorator: Google::Apis::ContainerV1::DatabaseEncryption::Representation
      
          property :default_max_pods_constraint, as: 'defaultMaxPodsConstraint', class: Google::Apis::ContainerV1::MaxPodsConstraint, decorator: Google::Apis::ContainerV1::MaxPodsConstraint::Representation
      
          property :description, as: 'description'
          property :enable_k8s_beta_apis, as: 'enableK8sBetaApis', class: Google::Apis::ContainerV1::K8sBetaApiConfig, decorator: Google::Apis::ContainerV1::K8sBetaApiConfig::Representation
      
          property :enable_kubernetes_alpha, as: 'enableKubernetesAlpha'
          property :enable_tpu, as: 'enableTpu'
          property :endpoint, as: 'endpoint'
          property :enterprise_config, as: 'enterpriseConfig', class: Google::Apis::ContainerV1::EnterpriseConfig, decorator: Google::Apis::ContainerV1::EnterpriseConfig::Representation
      
          property :etag, as: 'etag'
          property :expire_time, as: 'expireTime'
          property :fleet, as: 'fleet', class: Google::Apis::ContainerV1::Fleet, decorator: Google::Apis::ContainerV1::Fleet::Representation
      
          property :gke_auto_upgrade_config, as: 'gkeAutoUpgradeConfig', class: Google::Apis::ContainerV1::GkeAutoUpgradeConfig, decorator: Google::Apis::ContainerV1::GkeAutoUpgradeConfig::Representation
      
          property :id, as: 'id'
          property :identity_service_config, as: 'identityServiceConfig', class: Google::Apis::ContainerV1::IdentityServiceConfig, decorator: Google::Apis::ContainerV1::IdentityServiceConfig::Representation
      
          property :initial_cluster_version, as: 'initialClusterVersion'
          property :initial_node_count, as: 'initialNodeCount'
          collection :instance_group_urls, as: 'instanceGroupUrls'
          property :ip_allocation_policy, as: 'ipAllocationPolicy', class: Google::Apis::ContainerV1::IpAllocationPolicy, decorator: Google::Apis::ContainerV1::IpAllocationPolicy::Representation
      
          property :label_fingerprint, as: 'labelFingerprint'
          property :legacy_abac, as: 'legacyAbac', class: Google::Apis::ContainerV1::LegacyAbac, decorator: Google::Apis::ContainerV1::LegacyAbac::Representation
      
          property :location, as: 'location'
          collection :locations, as: 'locations'
          property :logging_config, as: 'loggingConfig', class: Google::Apis::ContainerV1::LoggingConfig, decorator: Google::Apis::ContainerV1::LoggingConfig::Representation
      
          property :logging_service, as: 'loggingService'
          property :maintenance_policy, as: 'maintenancePolicy', class: Google::Apis::ContainerV1::MaintenancePolicy, decorator: Google::Apis::ContainerV1::MaintenancePolicy::Representation
      
          property :master_auth, as: 'masterAuth', class: Google::Apis::ContainerV1::MasterAuth, decorator: Google::Apis::ContainerV1::MasterAuth::Representation
      
          property :master_authorized_networks_config, as: 'masterAuthorizedNetworksConfig', class: Google::Apis::ContainerV1::MasterAuthorizedNetworksConfig, decorator: Google::Apis::ContainerV1::MasterAuthorizedNetworksConfig::Representation
      
          property :mesh_certificates, as: 'meshCertificates', class: Google::Apis::ContainerV1::MeshCertificates, decorator: Google::Apis::ContainerV1::MeshCertificates::Representation
      
          property :monitoring_config, as: 'monitoringConfig', class: Google::Apis::ContainerV1::MonitoringConfig, decorator: Google::Apis::ContainerV1::MonitoringConfig::Representation
      
          property :monitoring_service, as: 'monitoringService'
          property :name, as: 'name'
          property :network, as: 'network'
          property :network_config, as: 'networkConfig', class: Google::Apis::ContainerV1::NetworkConfig, decorator: Google::Apis::ContainerV1::NetworkConfig::Representation
      
          property :network_policy, as: 'networkPolicy', class: Google::Apis::ContainerV1::NetworkPolicy, decorator: Google::Apis::ContainerV1::NetworkPolicy::Representation
      
          property :node_config, as: 'nodeConfig', class: Google::Apis::ContainerV1::NodeConfig, decorator: Google::Apis::ContainerV1::NodeConfig::Representation
      
          property :node_ipv4_cidr_size, as: 'nodeIpv4CidrSize'
          property :node_pool_auto_config, as: 'nodePoolAutoConfig', class: Google::Apis::ContainerV1::NodePoolAutoConfig, decorator: Google::Apis::ContainerV1::NodePoolAutoConfig::Representation
      
          property :node_pool_defaults, as: 'nodePoolDefaults', class: Google::Apis::ContainerV1::NodePoolDefaults, decorator: Google::Apis::ContainerV1::NodePoolDefaults::Representation
      
          collection :node_pools, as: 'nodePools', class: Google::Apis::ContainerV1::NodePool, decorator: Google::Apis::ContainerV1::NodePool::Representation
      
          property :notification_config, as: 'notificationConfig', class: Google::Apis::ContainerV1::NotificationConfig, decorator: Google::Apis::ContainerV1::NotificationConfig::Representation
      
          property :parent_product_config, as: 'parentProductConfig', class: Google::Apis::ContainerV1::ParentProductConfig, decorator: Google::Apis::ContainerV1::ParentProductConfig::Representation
      
          property :pod_autoscaling, as: 'podAutoscaling', class: Google::Apis::ContainerV1::PodAutoscaling, decorator: Google::Apis::ContainerV1::PodAutoscaling::Representation
      
          property :private_cluster_config, as: 'privateClusterConfig', class: Google::Apis::ContainerV1::PrivateClusterConfig, decorator: Google::Apis::ContainerV1::PrivateClusterConfig::Representation
      
          property :rbac_binding_config, as: 'rbacBindingConfig', class: Google::Apis::ContainerV1::RbacBindingConfig, decorator: Google::Apis::ContainerV1::RbacBindingConfig::Representation
      
          property :release_channel, as: 'releaseChannel', class: Google::Apis::ContainerV1::ReleaseChannel, decorator: Google::Apis::ContainerV1::ReleaseChannel::Representation
      
          hash :resource_labels, as: 'resourceLabels'
          property :resource_usage_export_config, as: 'resourceUsageExportConfig', class: Google::Apis::ContainerV1::ResourceUsageExportConfig, decorator: Google::Apis::ContainerV1::ResourceUsageExportConfig::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :secret_manager_config, as: 'secretManagerConfig', class: Google::Apis::ContainerV1::SecretManagerConfig, decorator: Google::Apis::ContainerV1::SecretManagerConfig::Representation
      
          property :security_posture_config, as: 'securityPostureConfig', class: Google::Apis::ContainerV1::SecurityPostureConfig, decorator: Google::Apis::ContainerV1::SecurityPostureConfig::Representation
      
          property :self_link, as: 'selfLink'
          property :services_ipv4_cidr, as: 'servicesIpv4Cidr'
          property :shielded_nodes, as: 'shieldedNodes', class: Google::Apis::ContainerV1::ShieldedNodes, decorator: Google::Apis::ContainerV1::ShieldedNodes::Representation
      
          property :status, as: 'status'
          property :status_message, as: 'statusMessage'
          property :subnetwork, as: 'subnetwork'
          property :tpu_ipv4_cidr_block, as: 'tpuIpv4CidrBlock'
          property :user_managed_keys_config, as: 'userManagedKeysConfig', class: Google::Apis::ContainerV1::UserManagedKeysConfig, decorator: Google::Apis::ContainerV1::UserManagedKeysConfig::Representation
      
          property :vertical_pod_autoscaling, as: 'verticalPodAutoscaling', class: Google::Apis::ContainerV1::VerticalPodAutoscaling, decorator: Google::Apis::ContainerV1::VerticalPodAutoscaling::Representation
      
          property :workload_identity_config, as: 'workloadIdentityConfig', class: Google::Apis::ContainerV1::WorkloadIdentityConfig, decorator: Google::Apis::ContainerV1::WorkloadIdentityConfig::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class ClusterAutoscaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :autoprovisioning_locations, as: 'autoprovisioningLocations'
          property :autoprovisioning_node_pool_defaults, as: 'autoprovisioningNodePoolDefaults', class: Google::Apis::ContainerV1::AutoprovisioningNodePoolDefaults, decorator: Google::Apis::ContainerV1::AutoprovisioningNodePoolDefaults::Representation
      
          property :autoscaling_profile, as: 'autoscalingProfile'
          property :enable_node_autoprovisioning, as: 'enableNodeAutoprovisioning'
          collection :resource_limits, as: 'resourceLimits', class: Google::Apis::ContainerV1::ResourceLimit, decorator: Google::Apis::ContainerV1::ResourceLimit::Representation
      
        end
      end
      
      class ClusterNetworkPerformanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :total_egress_bandwidth_tier, as: 'totalEgressBandwidthTier'
        end
      end
      
      class ClusterUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_pod_ranges_config, as: 'additionalPodRangesConfig', class: Google::Apis::ContainerV1::AdditionalPodRangesConfig, decorator: Google::Apis::ContainerV1::AdditionalPodRangesConfig::Representation
      
          property :desired_additional_ip_ranges_config, as: 'desiredAdditionalIpRangesConfig', class: Google::Apis::ContainerV1::DesiredAdditionalIpRangesConfig, decorator: Google::Apis::ContainerV1::DesiredAdditionalIpRangesConfig::Representation
      
          property :desired_addons_config, as: 'desiredAddonsConfig', class: Google::Apis::ContainerV1::AddonsConfig, decorator: Google::Apis::ContainerV1::AddonsConfig::Representation
      
          property :desired_anonymous_authentication_config, as: 'desiredAnonymousAuthenticationConfig', class: Google::Apis::ContainerV1::AnonymousAuthenticationConfig, decorator: Google::Apis::ContainerV1::AnonymousAuthenticationConfig::Representation
      
          property :desired_authenticator_groups_config, as: 'desiredAuthenticatorGroupsConfig', class: Google::Apis::ContainerV1::AuthenticatorGroupsConfig, decorator: Google::Apis::ContainerV1::AuthenticatorGroupsConfig::Representation
      
          property :desired_auto_ipam_config, as: 'desiredAutoIpamConfig', class: Google::Apis::ContainerV1::AutoIpamConfig, decorator: Google::Apis::ContainerV1::AutoIpamConfig::Representation
      
          property :desired_autopilot_workload_policy_config, as: 'desiredAutopilotWorkloadPolicyConfig', class: Google::Apis::ContainerV1::WorkloadPolicyConfig, decorator: Google::Apis::ContainerV1::WorkloadPolicyConfig::Representation
      
          property :desired_binary_authorization, as: 'desiredBinaryAuthorization', class: Google::Apis::ContainerV1::BinaryAuthorization, decorator: Google::Apis::ContainerV1::BinaryAuthorization::Representation
      
          property :desired_cluster_autoscaling, as: 'desiredClusterAutoscaling', class: Google::Apis::ContainerV1::ClusterAutoscaling, decorator: Google::Apis::ContainerV1::ClusterAutoscaling::Representation
      
          property :desired_compliance_posture_config, as: 'desiredCompliancePostureConfig', class: Google::Apis::ContainerV1::CompliancePostureConfig, decorator: Google::Apis::ContainerV1::CompliancePostureConfig::Representation
      
          property :desired_containerd_config, as: 'desiredContainerdConfig', class: Google::Apis::ContainerV1::ContainerdConfig, decorator: Google::Apis::ContainerV1::ContainerdConfig::Representation
      
          property :desired_control_plane_endpoints_config, as: 'desiredControlPlaneEndpointsConfig', class: Google::Apis::ContainerV1::ControlPlaneEndpointsConfig, decorator: Google::Apis::ContainerV1::ControlPlaneEndpointsConfig::Representation
      
          property :desired_cost_management_config, as: 'desiredCostManagementConfig', class: Google::Apis::ContainerV1::CostManagementConfig, decorator: Google::Apis::ContainerV1::CostManagementConfig::Representation
      
          property :desired_database_encryption, as: 'desiredDatabaseEncryption', class: Google::Apis::ContainerV1::DatabaseEncryption, decorator: Google::Apis::ContainerV1::DatabaseEncryption::Representation
      
          property :desired_datapath_provider, as: 'desiredDatapathProvider'
          property :desired_default_enable_private_nodes, as: 'desiredDefaultEnablePrivateNodes'
          property :desired_default_snat_status, as: 'desiredDefaultSnatStatus', class: Google::Apis::ContainerV1::DefaultSnatStatus, decorator: Google::Apis::ContainerV1::DefaultSnatStatus::Representation
      
          property :desired_disable_l4_lb_firewall_reconciliation, as: 'desiredDisableL4LbFirewallReconciliation'
          property :desired_dns_config, as: 'desiredDnsConfig', class: Google::Apis::ContainerV1::DnsConfig, decorator: Google::Apis::ContainerV1::DnsConfig::Representation
      
          property :desired_enable_cilium_clusterwide_network_policy, as: 'desiredEnableCiliumClusterwideNetworkPolicy'
          property :desired_enable_fqdn_network_policy, as: 'desiredEnableFqdnNetworkPolicy'
          property :desired_enable_multi_networking, as: 'desiredEnableMultiNetworking'
          property :desired_enable_private_endpoint, as: 'desiredEnablePrivateEndpoint'
          property :desired_enterprise_config, as: 'desiredEnterpriseConfig', class: Google::Apis::ContainerV1::DesiredEnterpriseConfig, decorator: Google::Apis::ContainerV1::DesiredEnterpriseConfig::Representation
      
          property :desired_fleet, as: 'desiredFleet', class: Google::Apis::ContainerV1::Fleet, decorator: Google::Apis::ContainerV1::Fleet::Representation
      
          property :desired_gateway_api_config, as: 'desiredGatewayApiConfig', class: Google::Apis::ContainerV1::GatewayApiConfig, decorator: Google::Apis::ContainerV1::GatewayApiConfig::Representation
      
          property :desired_gcfs_config, as: 'desiredGcfsConfig', class: Google::Apis::ContainerV1::GcfsConfig, decorator: Google::Apis::ContainerV1::GcfsConfig::Representation
      
          property :desired_identity_service_config, as: 'desiredIdentityServiceConfig', class: Google::Apis::ContainerV1::IdentityServiceConfig, decorator: Google::Apis::ContainerV1::IdentityServiceConfig::Representation
      
          property :desired_image_type, as: 'desiredImageType'
          property :desired_in_transit_encryption_config, as: 'desiredInTransitEncryptionConfig'
          property :desired_intra_node_visibility_config, as: 'desiredIntraNodeVisibilityConfig', class: Google::Apis::ContainerV1::IntraNodeVisibilityConfig, decorator: Google::Apis::ContainerV1::IntraNodeVisibilityConfig::Representation
      
          property :desired_k8s_beta_apis, as: 'desiredK8sBetaApis', class: Google::Apis::ContainerV1::K8sBetaApiConfig, decorator: Google::Apis::ContainerV1::K8sBetaApiConfig::Representation
      
          property :desired_l4ilb_subsetting_config, as: 'desiredL4ilbSubsettingConfig', class: Google::Apis::ContainerV1::IlbSubsettingConfig, decorator: Google::Apis::ContainerV1::IlbSubsettingConfig::Representation
      
          collection :desired_locations, as: 'desiredLocations'
          property :desired_logging_config, as: 'desiredLoggingConfig', class: Google::Apis::ContainerV1::LoggingConfig, decorator: Google::Apis::ContainerV1::LoggingConfig::Representation
      
          property :desired_logging_service, as: 'desiredLoggingService'
          property :desired_master_authorized_networks_config, as: 'desiredMasterAuthorizedNetworksConfig', class: Google::Apis::ContainerV1::MasterAuthorizedNetworksConfig, decorator: Google::Apis::ContainerV1::MasterAuthorizedNetworksConfig::Representation
      
          property :desired_master_version, as: 'desiredMasterVersion'
          property :desired_mesh_certificates, as: 'desiredMeshCertificates', class: Google::Apis::ContainerV1::MeshCertificates, decorator: Google::Apis::ContainerV1::MeshCertificates::Representation
      
          property :desired_monitoring_config, as: 'desiredMonitoringConfig', class: Google::Apis::ContainerV1::MonitoringConfig, decorator: Google::Apis::ContainerV1::MonitoringConfig::Representation
      
          property :desired_monitoring_service, as: 'desiredMonitoringService'
          property :desired_network_performance_config, as: 'desiredNetworkPerformanceConfig', class: Google::Apis::ContainerV1::ClusterNetworkPerformanceConfig, decorator: Google::Apis::ContainerV1::ClusterNetworkPerformanceConfig::Representation
      
          property :desired_node_kubelet_config, as: 'desiredNodeKubeletConfig', class: Google::Apis::ContainerV1::NodeKubeletConfig, decorator: Google::Apis::ContainerV1::NodeKubeletConfig::Representation
      
          property :desired_node_pool_auto_config_kubelet_config, as: 'desiredNodePoolAutoConfigKubeletConfig', class: Google::Apis::ContainerV1::NodeKubeletConfig, decorator: Google::Apis::ContainerV1::NodeKubeletConfig::Representation
      
          property :desired_node_pool_auto_config_linux_node_config, as: 'desiredNodePoolAutoConfigLinuxNodeConfig', class: Google::Apis::ContainerV1::LinuxNodeConfig, decorator: Google::Apis::ContainerV1::LinuxNodeConfig::Representation
      
          property :desired_node_pool_auto_config_network_tags, as: 'desiredNodePoolAutoConfigNetworkTags', class: Google::Apis::ContainerV1::NetworkTags, decorator: Google::Apis::ContainerV1::NetworkTags::Representation
      
          property :desired_node_pool_auto_config_resource_manager_tags, as: 'desiredNodePoolAutoConfigResourceManagerTags', class: Google::Apis::ContainerV1::ResourceManagerTags, decorator: Google::Apis::ContainerV1::ResourceManagerTags::Representation
      
          property :desired_node_pool_autoscaling, as: 'desiredNodePoolAutoscaling', class: Google::Apis::ContainerV1::NodePoolAutoscaling, decorator: Google::Apis::ContainerV1::NodePoolAutoscaling::Representation
      
          property :desired_node_pool_id, as: 'desiredNodePoolId'
          property :desired_node_pool_logging_config, as: 'desiredNodePoolLoggingConfig', class: Google::Apis::ContainerV1::NodePoolLoggingConfig, decorator: Google::Apis::ContainerV1::NodePoolLoggingConfig::Representation
      
          property :desired_node_version, as: 'desiredNodeVersion'
          property :desired_notification_config, as: 'desiredNotificationConfig', class: Google::Apis::ContainerV1::NotificationConfig, decorator: Google::Apis::ContainerV1::NotificationConfig::Representation
      
          property :desired_parent_product_config, as: 'desiredParentProductConfig', class: Google::Apis::ContainerV1::ParentProductConfig, decorator: Google::Apis::ContainerV1::ParentProductConfig::Representation
      
          property :desired_pod_autoscaling, as: 'desiredPodAutoscaling', class: Google::Apis::ContainerV1::PodAutoscaling, decorator: Google::Apis::ContainerV1::PodAutoscaling::Representation
      
          property :desired_private_cluster_config, as: 'desiredPrivateClusterConfig', class: Google::Apis::ContainerV1::PrivateClusterConfig, decorator: Google::Apis::ContainerV1::PrivateClusterConfig::Representation
      
          property :desired_private_ipv6_google_access, as: 'desiredPrivateIpv6GoogleAccess'
          property :desired_rbac_binding_config, as: 'desiredRbacBindingConfig', class: Google::Apis::ContainerV1::RbacBindingConfig, decorator: Google::Apis::ContainerV1::RbacBindingConfig::Representation
      
          property :desired_release_channel, as: 'desiredReleaseChannel', class: Google::Apis::ContainerV1::ReleaseChannel, decorator: Google::Apis::ContainerV1::ReleaseChannel::Representation
      
          property :desired_resource_usage_export_config, as: 'desiredResourceUsageExportConfig', class: Google::Apis::ContainerV1::ResourceUsageExportConfig, decorator: Google::Apis::ContainerV1::ResourceUsageExportConfig::Representation
      
          property :desired_secret_manager_config, as: 'desiredSecretManagerConfig', class: Google::Apis::ContainerV1::SecretManagerConfig, decorator: Google::Apis::ContainerV1::SecretManagerConfig::Representation
      
          property :desired_security_posture_config, as: 'desiredSecurityPostureConfig', class: Google::Apis::ContainerV1::SecurityPostureConfig, decorator: Google::Apis::ContainerV1::SecurityPostureConfig::Representation
      
          property :desired_service_external_ips_config, as: 'desiredServiceExternalIpsConfig', class: Google::Apis::ContainerV1::ServiceExternalIPsConfig, decorator: Google::Apis::ContainerV1::ServiceExternalIPsConfig::Representation
      
          property :desired_shielded_nodes, as: 'desiredShieldedNodes', class: Google::Apis::ContainerV1::ShieldedNodes, decorator: Google::Apis::ContainerV1::ShieldedNodes::Representation
      
          property :desired_stack_type, as: 'desiredStackType'
          property :desired_user_managed_keys_config, as: 'desiredUserManagedKeysConfig', class: Google::Apis::ContainerV1::UserManagedKeysConfig, decorator: Google::Apis::ContainerV1::UserManagedKeysConfig::Representation
      
          property :desired_vertical_pod_autoscaling, as: 'desiredVerticalPodAutoscaling', class: Google::Apis::ContainerV1::VerticalPodAutoscaling, decorator: Google::Apis::ContainerV1::VerticalPodAutoscaling::Representation
      
          property :desired_workload_identity_config, as: 'desiredWorkloadIdentityConfig', class: Google::Apis::ContainerV1::WorkloadIdentityConfig, decorator: Google::Apis::ContainerV1::WorkloadIdentityConfig::Representation
      
          property :enable_k8s_beta_apis, as: 'enableK8sBetaApis', class: Google::Apis::ContainerV1::K8sBetaApiConfig, decorator: Google::Apis::ContainerV1::K8sBetaApiConfig::Representation
      
          property :etag, as: 'etag'
          property :gke_auto_upgrade_config, as: 'gkeAutoUpgradeConfig', class: Google::Apis::ContainerV1::GkeAutoUpgradeConfig, decorator: Google::Apis::ContainerV1::GkeAutoUpgradeConfig::Representation
      
          property :removed_additional_pod_ranges_config, as: 'removedAdditionalPodRangesConfig', class: Google::Apis::ContainerV1::AdditionalPodRangesConfig, decorator: Google::Apis::ContainerV1::AdditionalPodRangesConfig::Representation
      
          property :user_managed_keys_config, as: 'userManagedKeysConfig', class: Google::Apis::ContainerV1::UserManagedKeysConfig, decorator: Google::Apis::ContainerV1::UserManagedKeysConfig::Representation
      
        end
      end
      
      class ClusterUpgradeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auto_upgrade_status, as: 'autoUpgradeStatus'
          property :end_of_extended_support_timestamp, as: 'endOfExtendedSupportTimestamp'
          property :end_of_standard_support_timestamp, as: 'endOfStandardSupportTimestamp'
          property :minor_target_version, as: 'minorTargetVersion'
          property :patch_target_version, as: 'patchTargetVersion'
          collection :paused_reason, as: 'pausedReason'
          collection :upgrade_details, as: 'upgradeDetails', class: Google::Apis::ContainerV1::UpgradeDetails, decorator: Google::Apis::ContainerV1::UpgradeDetails::Representation
      
        end
      end
      
      class CompleteIpRotationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class CompleteNodePoolUpgradeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CompliancePostureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :compliance_standards, as: 'complianceStandards', class: Google::Apis::ContainerV1::ComplianceStandard, decorator: Google::Apis::ContainerV1::ComplianceStandard::Representation
      
          property :mode, as: 'mode'
        end
      end
      
      class ComplianceStandard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :standard, as: 'standard'
        end
      end
      
      class ConfidentialNodes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidential_instance_type, as: 'confidentialInstanceType'
          property :enabled, as: 'enabled'
        end
      end
      
      class ConfigConnectorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class ConsumptionMeteringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class ContainerdConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :private_registry_access_config, as: 'privateRegistryAccessConfig', class: Google::Apis::ContainerV1::PrivateRegistryAccessConfig, decorator: Google::Apis::ContainerV1::PrivateRegistryAccessConfig::Representation
      
        end
      end
      
      class ControlPlaneEndpointsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dns_endpoint_config, as: 'dnsEndpointConfig', class: Google::Apis::ContainerV1::DnsEndpointConfig, decorator: Google::Apis::ContainerV1::DnsEndpointConfig::Representation
      
          property :ip_endpoints_config, as: 'ipEndpointsConfig', class: Google::Apis::ContainerV1::IpEndpointsConfig, decorator: Google::Apis::ContainerV1::IpEndpointsConfig::Representation
      
        end
      end
      
      class CostManagementConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class CreateClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster', class: Google::Apis::ContainerV1::Cluster, decorator: Google::Apis::ContainerV1::Cluster::Representation
      
          property :parent, as: 'parent'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class CreateNodePoolRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :node_pool, as: 'nodePool', class: Google::Apis::ContainerV1::NodePool, decorator: Google::Apis::ContainerV1::NodePool::Representation
      
          property :parent, as: 'parent'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class DnsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additive_vpc_scope_dns_domain, as: 'additiveVpcScopeDnsDomain'
          property :cluster_dns, as: 'clusterDns'
          property :cluster_dns_domain, as: 'clusterDnsDomain'
          property :cluster_dns_scope, as: 'clusterDnsScope'
        end
      end
      
      class DnsEndpointConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_external_traffic, as: 'allowExternalTraffic'
          property :endpoint, as: 'endpoint'
        end
      end
      
      class DailyMaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
          property :start_time, as: 'startTime'
        end
      end
      
      class DatabaseEncryption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_state, as: 'currentState'
          collection :decryption_keys, as: 'decryptionKeys'
          property :key_name, as: 'keyName'
          collection :last_operation_errors, as: 'lastOperationErrors', class: Google::Apis::ContainerV1::OperationError, decorator: Google::Apis::ContainerV1::OperationError::Representation
      
          property :state, as: 'state'
        end
      end
      
      class DefaultSnatStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
        end
      end
      
      class DesiredAdditionalIpRangesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_ip_ranges_configs, as: 'additionalIpRangesConfigs', class: Google::Apis::ContainerV1::AdditionalIpRangesConfig, decorator: Google::Apis::ContainerV1::AdditionalIpRangesConfig::Representation
      
        end
      end
      
      class DesiredEnterpriseConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :desired_tier, as: 'desiredTier'
        end
      end
      
      class DnsCacheConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EnterpriseConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_tier, as: 'clusterTier'
          property :desired_tier, as: 'desiredTier'
        end
      end
      
      class EphemeralStorageLocalSsdConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_cache_count, as: 'dataCacheCount'
          property :local_ssd_count, as: 'localSsdCount'
        end
      end
      
      class FastSocket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class Filter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :event_type, as: 'eventType'
        end
      end
      
      class Fleet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :membership, as: 'membership'
          property :pre_registered, as: 'preRegistered'
          property :project, as: 'project'
        end
      end
      
      class GcpSecretManagerCertificateConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :secret_uri, as: 'secretUri'
        end
      end
      
      class GpuDriverInstallationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gpu_driver_version, as: 'gpuDriverVersion'
        end
      end
      
      class GpuSharingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gpu_sharing_strategy, as: 'gpuSharingStrategy'
          property :max_shared_clients_per_gpu, :numeric_string => true, as: 'maxSharedClientsPerGpu'
        end
      end
      
      class GatewayApiConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
        end
      end
      
      class GcePersistentDiskCsiDriverConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class GcfsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class GcpFilestoreCsiDriverConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class GcsFuseCsiDriverConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class GetJsonWebKeysResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_header, as: 'cacheHeader', class: Google::Apis::ContainerV1::HttpCacheControlResponseHeader, decorator: Google::Apis::ContainerV1::HttpCacheControlResponseHeader::Representation
      
          collection :keys, as: 'keys', class: Google::Apis::ContainerV1::Jwk, decorator: Google::Apis::ContainerV1::Jwk::Representation
      
        end
      end
      
      class GetOpenIdConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_header, as: 'cacheHeader', class: Google::Apis::ContainerV1::HttpCacheControlResponseHeader, decorator: Google::Apis::ContainerV1::HttpCacheControlResponseHeader::Representation
      
          collection :claims_supported, as: 'claims_supported'
          collection :grant_types, as: 'grant_types'
          collection :id_token_signing_alg_values_supported, as: 'id_token_signing_alg_values_supported'
          property :issuer, as: 'issuer'
          property :jwks_uri, as: 'jwks_uri'
          collection :response_types_supported, as: 'response_types_supported'
          collection :subject_types_supported, as: 'subject_types_supported'
        end
      end
      
      class GkeAutoUpgradeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :patch_mode, as: 'patchMode'
        end
      end
      
      class GkeBackupAgentConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class HighScaleCheckpointingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class HorizontalPodAutoscaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
        end
      end
      
      class HttpCacheControlResponseHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :age, :numeric_string => true, as: 'age'
          property :directive, as: 'directive'
          property :expires, as: 'expires'
        end
      end
      
      class HttpLoadBalancing
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
        end
      end
      
      class HugepagesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hugepage_size1g, as: 'hugepageSize1g'
          property :hugepage_size2m, as: 'hugepageSize2m'
        end
      end
      
      class IlbSubsettingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class IpAllocationPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_ip_ranges_configs, as: 'additionalIpRangesConfigs', class: Google::Apis::ContainerV1::AdditionalIpRangesConfig, decorator: Google::Apis::ContainerV1::AdditionalIpRangesConfig::Representation
      
          property :additional_pod_ranges_config, as: 'additionalPodRangesConfig', class: Google::Apis::ContainerV1::AdditionalPodRangesConfig, decorator: Google::Apis::ContainerV1::AdditionalPodRangesConfig::Representation
      
          property :auto_ipam_config, as: 'autoIpamConfig', class: Google::Apis::ContainerV1::AutoIpamConfig, decorator: Google::Apis::ContainerV1::AutoIpamConfig::Representation
      
          property :cluster_ipv4_cidr, as: 'clusterIpv4Cidr'
          property :cluster_ipv4_cidr_block, as: 'clusterIpv4CidrBlock'
          property :cluster_secondary_range_name, as: 'clusterSecondaryRangeName'
          property :create_subnetwork, as: 'createSubnetwork'
          property :default_pod_ipv4_range_utilization, as: 'defaultPodIpv4RangeUtilization'
          property :ipv6_access_type, as: 'ipv6AccessType'
          property :node_ipv4_cidr, as: 'nodeIpv4Cidr'
          property :node_ipv4_cidr_block, as: 'nodeIpv4CidrBlock'
          property :pod_cidr_overprovision_config, as: 'podCidrOverprovisionConfig', class: Google::Apis::ContainerV1::PodCidrOverprovisionConfig, decorator: Google::Apis::ContainerV1::PodCidrOverprovisionConfig::Representation
      
          property :services_ipv4_cidr, as: 'servicesIpv4Cidr'
          property :services_ipv4_cidr_block, as: 'servicesIpv4CidrBlock'
          property :services_ipv6_cidr_block, as: 'servicesIpv6CidrBlock'
          property :services_secondary_range_name, as: 'servicesSecondaryRangeName'
          property :stack_type, as: 'stackType'
          property :subnet_ipv6_cidr_block, as: 'subnetIpv6CidrBlock'
          property :subnetwork_name, as: 'subnetworkName'
          property :tpu_ipv4_cidr_block, as: 'tpuIpv4CidrBlock'
          property :use_ip_aliases, as: 'useIpAliases'
          property :use_routes, as: 'useRoutes'
        end
      end
      
      class IpEndpointsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorized_networks_config, as: 'authorizedNetworksConfig', class: Google::Apis::ContainerV1::MasterAuthorizedNetworksConfig, decorator: Google::Apis::ContainerV1::MasterAuthorizedNetworksConfig::Representation
      
          property :enable_public_endpoint, as: 'enablePublicEndpoint'
          property :enabled, as: 'enabled'
          property :global_access, as: 'globalAccess'
          property :private_endpoint, as: 'privateEndpoint'
          property :private_endpoint_subnetwork, as: 'privateEndpointSubnetwork'
          property :public_endpoint, as: 'publicEndpoint'
        end
      end
      
      class IdentityServiceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class IntraNodeVisibilityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class Jwk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alg, as: 'alg'
          property :crv, as: 'crv'
          property :e, as: 'e'
          property :kid, as: 'kid'
          property :kty, as: 'kty'
          property :n, as: 'n'
          property :use, as: 'use'
          property :x, as: 'x'
          property :y, as: 'y'
        end
      end
      
      class K8sBetaApiConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enabled_apis, as: 'enabledApis'
        end
      end
      
      class KubernetesDashboard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
        end
      end
      
      class LegacyAbac
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class LinuxNodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cgroup_mode, as: 'cgroupMode'
          property :hugepages, as: 'hugepages', class: Google::Apis::ContainerV1::HugepagesConfig, decorator: Google::Apis::ContainerV1::HugepagesConfig::Representation
      
          hash :sysctls, as: 'sysctls'
        end
      end
      
      class ListClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clusters, as: 'clusters', class: Google::Apis::ContainerV1::Cluster, decorator: Google::Apis::ContainerV1::Cluster::Representation
      
          collection :missing_zones, as: 'missingZones'
        end
      end
      
      class ListNodePoolsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :node_pools, as: 'nodePools', class: Google::Apis::ContainerV1::NodePool, decorator: Google::Apis::ContainerV1::NodePool::Representation
      
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :missing_zones, as: 'missingZones'
          collection :operations, as: 'operations', class: Google::Apis::ContainerV1::Operation, decorator: Google::Apis::ContainerV1::Operation::Representation
      
        end
      end
      
      class ListUsableSubnetworksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :subnetworks, as: 'subnetworks', class: Google::Apis::ContainerV1::UsableSubnetwork, decorator: Google::Apis::ContainerV1::UsableSubnetwork::Representation
      
        end
      end
      
      class LocalNvmeSsdBlockConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :local_ssd_count, as: 'localSsdCount'
        end
      end
      
      class LoggingComponentConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enable_components, as: 'enableComponents'
        end
      end
      
      class LoggingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :component_config, as: 'componentConfig', class: Google::Apis::ContainerV1::LoggingComponentConfig, decorator: Google::Apis::ContainerV1::LoggingComponentConfig::Representation
      
        end
      end
      
      class LoggingVariantConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :variant, as: 'variant'
        end
      end
      
      class MaintenanceExclusionOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :scope, as: 'scope'
        end
      end
      
      class MaintenancePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_version, as: 'resourceVersion'
          property :window, as: 'window', class: Google::Apis::ContainerV1::MaintenanceWindow, decorator: Google::Apis::ContainerV1::MaintenanceWindow::Representation
      
        end
      end
      
      class MaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :daily_maintenance_window, as: 'dailyMaintenanceWindow', class: Google::Apis::ContainerV1::DailyMaintenanceWindow, decorator: Google::Apis::ContainerV1::DailyMaintenanceWindow::Representation
      
          hash :maintenance_exclusions, as: 'maintenanceExclusions', class: Google::Apis::ContainerV1::TimeWindow, decorator: Google::Apis::ContainerV1::TimeWindow::Representation
      
          property :recurring_window, as: 'recurringWindow', class: Google::Apis::ContainerV1::RecurringTimeWindow, decorator: Google::Apis::ContainerV1::RecurringTimeWindow::Representation
      
        end
      end
      
      class ManagedPrometheusConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_monitoring_config, as: 'autoMonitoringConfig', class: Google::Apis::ContainerV1::AutoMonitoringConfig, decorator: Google::Apis::ContainerV1::AutoMonitoringConfig::Representation
      
          property :enabled, as: 'enabled'
        end
      end
      
      class MasterAuth
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_certificate, as: 'clientCertificate'
          property :client_certificate_config, as: 'clientCertificateConfig', class: Google::Apis::ContainerV1::ClientCertificateConfig, decorator: Google::Apis::ContainerV1::ClientCertificateConfig::Representation
      
          property :client_key, as: 'clientKey'
          property :cluster_ca_certificate, as: 'clusterCaCertificate'
          property :password, as: 'password'
          property :username, as: 'username'
        end
      end
      
      class MasterAuthorizedNetworksConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cidr_blocks, as: 'cidrBlocks', class: Google::Apis::ContainerV1::CidrBlock, decorator: Google::Apis::ContainerV1::CidrBlock::Representation
      
          property :enabled, as: 'enabled'
          property :gcp_public_cidrs_access_enabled, as: 'gcpPublicCidrsAccessEnabled'
          property :private_endpoint_enforcement_enabled, as: 'privateEndpointEnforcementEnabled'
        end
      end
      
      class MaxPodsConstraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_pods_per_node, :numeric_string => true, as: 'maxPodsPerNode'
        end
      end
      
      class MemoryManager
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy'
        end
      end
      
      class MeshCertificates
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_certificates, as: 'enableCertificates'
        end
      end
      
      class Metric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :double_value, as: 'doubleValue'
          property :int_value, :numeric_string => true, as: 'intValue'
          property :name, as: 'name'
          property :string_value, as: 'stringValue'
        end
      end
      
      class MonitoringComponentConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enable_components, as: 'enableComponents'
        end
      end
      
      class MonitoringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advanced_datapath_observability_config, as: 'advancedDatapathObservabilityConfig', class: Google::Apis::ContainerV1::AdvancedDatapathObservabilityConfig, decorator: Google::Apis::ContainerV1::AdvancedDatapathObservabilityConfig::Representation
      
          property :component_config, as: 'componentConfig', class: Google::Apis::ContainerV1::MonitoringComponentConfig, decorator: Google::Apis::ContainerV1::MonitoringComponentConfig::Representation
      
          property :managed_prometheus_config, as: 'managedPrometheusConfig', class: Google::Apis::ContainerV1::ManagedPrometheusConfig, decorator: Google::Apis::ContainerV1::ManagedPrometheusConfig::Representation
      
        end
      end
      
      class NetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :datapath_provider, as: 'datapathProvider'
          property :default_enable_private_nodes, as: 'defaultEnablePrivateNodes'
          property :default_snat_status, as: 'defaultSnatStatus', class: Google::Apis::ContainerV1::DefaultSnatStatus, decorator: Google::Apis::ContainerV1::DefaultSnatStatus::Representation
      
          property :disable_l4_lb_firewall_reconciliation, as: 'disableL4LbFirewallReconciliation'
          property :dns_config, as: 'dnsConfig', class: Google::Apis::ContainerV1::DnsConfig, decorator: Google::Apis::ContainerV1::DnsConfig::Representation
      
          property :enable_cilium_clusterwide_network_policy, as: 'enableCiliumClusterwideNetworkPolicy'
          property :enable_fqdn_network_policy, as: 'enableFqdnNetworkPolicy'
          property :enable_intra_node_visibility, as: 'enableIntraNodeVisibility'
          property :enable_l4ilb_subsetting, as: 'enableL4ilbSubsetting'
          property :enable_multi_networking, as: 'enableMultiNetworking'
          property :gateway_api_config, as: 'gatewayApiConfig', class: Google::Apis::ContainerV1::GatewayApiConfig, decorator: Google::Apis::ContainerV1::GatewayApiConfig::Representation
      
          property :in_transit_encryption_config, as: 'inTransitEncryptionConfig'
          property :network, as: 'network'
          property :network_performance_config, as: 'networkPerformanceConfig', class: Google::Apis::ContainerV1::ClusterNetworkPerformanceConfig, decorator: Google::Apis::ContainerV1::ClusterNetworkPerformanceConfig::Representation
      
          property :private_ipv6_google_access, as: 'privateIpv6GoogleAccess'
          property :service_external_ips_config, as: 'serviceExternalIpsConfig', class: Google::Apis::ContainerV1::ServiceExternalIPsConfig, decorator: Google::Apis::ContainerV1::ServiceExternalIPsConfig::Representation
      
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class NetworkPerformanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :total_egress_bandwidth_tier, as: 'totalEgressBandwidthTier'
        end
      end
      
      class NetworkPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :provider, as: 'provider'
        end
      end
      
      class NetworkPolicyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
        end
      end
      
      class NetworkTags
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tags, as: 'tags'
        end
      end
      
      class NodeAffinity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :operator, as: 'operator'
          collection :values, as: 'values'
        end
      end
      
      class NodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accelerators, as: 'accelerators', class: Google::Apis::ContainerV1::AcceleratorConfig, decorator: Google::Apis::ContainerV1::AcceleratorConfig::Representation
      
          property :advanced_machine_features, as: 'advancedMachineFeatures', class: Google::Apis::ContainerV1::AdvancedMachineFeatures, decorator: Google::Apis::ContainerV1::AdvancedMachineFeatures::Representation
      
          property :boot_disk_kms_key, as: 'bootDiskKmsKey'
          property :confidential_nodes, as: 'confidentialNodes', class: Google::Apis::ContainerV1::ConfidentialNodes, decorator: Google::Apis::ContainerV1::ConfidentialNodes::Representation
      
          property :containerd_config, as: 'containerdConfig', class: Google::Apis::ContainerV1::ContainerdConfig, decorator: Google::Apis::ContainerV1::ContainerdConfig::Representation
      
          property :disk_size_gb, as: 'diskSizeGb'
          property :disk_type, as: 'diskType'
          property :effective_cgroup_mode, as: 'effectiveCgroupMode'
          property :enable_confidential_storage, as: 'enableConfidentialStorage'
          property :ephemeral_storage_local_ssd_config, as: 'ephemeralStorageLocalSsdConfig', class: Google::Apis::ContainerV1::EphemeralStorageLocalSsdConfig, decorator: Google::Apis::ContainerV1::EphemeralStorageLocalSsdConfig::Representation
      
          property :fast_socket, as: 'fastSocket', class: Google::Apis::ContainerV1::FastSocket, decorator: Google::Apis::ContainerV1::FastSocket::Representation
      
          property :flex_start, as: 'flexStart'
          property :gcfs_config, as: 'gcfsConfig', class: Google::Apis::ContainerV1::GcfsConfig, decorator: Google::Apis::ContainerV1::GcfsConfig::Representation
      
          property :gvnic, as: 'gvnic', class: Google::Apis::ContainerV1::VirtualNic, decorator: Google::Apis::ContainerV1::VirtualNic::Representation
      
          property :image_type, as: 'imageType'
          property :kubelet_config, as: 'kubeletConfig', class: Google::Apis::ContainerV1::NodeKubeletConfig, decorator: Google::Apis::ContainerV1::NodeKubeletConfig::Representation
      
          hash :labels, as: 'labels'
          property :linux_node_config, as: 'linuxNodeConfig', class: Google::Apis::ContainerV1::LinuxNodeConfig, decorator: Google::Apis::ContainerV1::LinuxNodeConfig::Representation
      
          property :local_nvme_ssd_block_config, as: 'localNvmeSsdBlockConfig', class: Google::Apis::ContainerV1::LocalNvmeSsdBlockConfig, decorator: Google::Apis::ContainerV1::LocalNvmeSsdBlockConfig::Representation
      
          property :local_ssd_count, as: 'localSsdCount'
          property :local_ssd_encryption_mode, as: 'localSsdEncryptionMode'
          property :logging_config, as: 'loggingConfig', class: Google::Apis::ContainerV1::NodePoolLoggingConfig, decorator: Google::Apis::ContainerV1::NodePoolLoggingConfig::Representation
      
          property :machine_type, as: 'machineType'
          property :max_run_duration, as: 'maxRunDuration'
          hash :metadata, as: 'metadata'
          property :min_cpu_platform, as: 'minCpuPlatform'
          property :node_group, as: 'nodeGroup'
          collection :oauth_scopes, as: 'oauthScopes'
          property :preemptible, as: 'preemptible'
          property :reservation_affinity, as: 'reservationAffinity', class: Google::Apis::ContainerV1::ReservationAffinity, decorator: Google::Apis::ContainerV1::ReservationAffinity::Representation
      
          hash :resource_labels, as: 'resourceLabels'
          property :resource_manager_tags, as: 'resourceManagerTags', class: Google::Apis::ContainerV1::ResourceManagerTags, decorator: Google::Apis::ContainerV1::ResourceManagerTags::Representation
      
          property :sandbox_config, as: 'sandboxConfig', class: Google::Apis::ContainerV1::SandboxConfig, decorator: Google::Apis::ContainerV1::SandboxConfig::Representation
      
          property :secondary_boot_disk_update_strategy, as: 'secondaryBootDiskUpdateStrategy', class: Google::Apis::ContainerV1::SecondaryBootDiskUpdateStrategy, decorator: Google::Apis::ContainerV1::SecondaryBootDiskUpdateStrategy::Representation
      
          collection :secondary_boot_disks, as: 'secondaryBootDisks', class: Google::Apis::ContainerV1::SecondaryBootDisk, decorator: Google::Apis::ContainerV1::SecondaryBootDisk::Representation
      
          property :service_account, as: 'serviceAccount'
          property :shielded_instance_config, as: 'shieldedInstanceConfig', class: Google::Apis::ContainerV1::ShieldedInstanceConfig, decorator: Google::Apis::ContainerV1::ShieldedInstanceConfig::Representation
      
          property :sole_tenant_config, as: 'soleTenantConfig', class: Google::Apis::ContainerV1::SoleTenantConfig, decorator: Google::Apis::ContainerV1::SoleTenantConfig::Representation
      
          property :spot, as: 'spot'
          collection :storage_pools, as: 'storagePools'
          collection :tags, as: 'tags'
          collection :taints, as: 'taints', class: Google::Apis::ContainerV1::NodeTaint, decorator: Google::Apis::ContainerV1::NodeTaint::Representation
      
          property :windows_node_config, as: 'windowsNodeConfig', class: Google::Apis::ContainerV1::WindowsNodeConfig, decorator: Google::Apis::ContainerV1::WindowsNodeConfig::Representation
      
          property :workload_metadata_config, as: 'workloadMetadataConfig', class: Google::Apis::ContainerV1::WorkloadMetadataConfig, decorator: Google::Apis::ContainerV1::WorkloadMetadataConfig::Representation
      
        end
      end
      
      class NodeConfigDefaults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :containerd_config, as: 'containerdConfig', class: Google::Apis::ContainerV1::ContainerdConfig, decorator: Google::Apis::ContainerV1::ContainerdConfig::Representation
      
          property :gcfs_config, as: 'gcfsConfig', class: Google::Apis::ContainerV1::GcfsConfig, decorator: Google::Apis::ContainerV1::GcfsConfig::Representation
      
          property :logging_config, as: 'loggingConfig', class: Google::Apis::ContainerV1::NodePoolLoggingConfig, decorator: Google::Apis::ContainerV1::NodePoolLoggingConfig::Representation
      
          property :node_kubelet_config, as: 'nodeKubeletConfig', class: Google::Apis::ContainerV1::NodeKubeletConfig, decorator: Google::Apis::ContainerV1::NodeKubeletConfig::Representation
      
        end
      end
      
      class NodeKubeletConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_unsafe_sysctls, as: 'allowedUnsafeSysctls'
          property :container_log_max_files, as: 'containerLogMaxFiles'
          property :container_log_max_size, as: 'containerLogMaxSize'
          property :cpu_cfs_quota, as: 'cpuCfsQuota'
          property :cpu_cfs_quota_period, as: 'cpuCfsQuotaPeriod'
          property :cpu_manager_policy, as: 'cpuManagerPolicy'
          property :image_gc_high_threshold_percent, as: 'imageGcHighThresholdPercent'
          property :image_gc_low_threshold_percent, as: 'imageGcLowThresholdPercent'
          property :image_maximum_gc_age, as: 'imageMaximumGcAge'
          property :image_minimum_gc_age, as: 'imageMinimumGcAge'
          property :insecure_kubelet_readonly_port_enabled, as: 'insecureKubeletReadonlyPortEnabled'
          property :memory_manager, as: 'memoryManager', class: Google::Apis::ContainerV1::MemoryManager, decorator: Google::Apis::ContainerV1::MemoryManager::Representation
      
          property :pod_pids_limit, :numeric_string => true, as: 'podPidsLimit'
          property :single_process_oom_kill, as: 'singleProcessOomKill'
          property :topology_manager, as: 'topologyManager', class: Google::Apis::ContainerV1::TopologyManager, decorator: Google::Apis::ContainerV1::TopologyManager::Representation
      
        end
      end
      
      class NodeLabels
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
        end
      end
      
      class NodeManagement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_repair, as: 'autoRepair'
          property :auto_upgrade, as: 'autoUpgrade'
          property :upgrade_options, as: 'upgradeOptions', class: Google::Apis::ContainerV1::AutoUpgradeOptions, decorator: Google::Apis::ContainerV1::AutoUpgradeOptions::Representation
      
        end
      end
      
      class NodeNetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_node_network_configs, as: 'additionalNodeNetworkConfigs', class: Google::Apis::ContainerV1::AdditionalNodeNetworkConfig, decorator: Google::Apis::ContainerV1::AdditionalNodeNetworkConfig::Representation
      
          collection :additional_pod_network_configs, as: 'additionalPodNetworkConfigs', class: Google::Apis::ContainerV1::AdditionalPodNetworkConfig, decorator: Google::Apis::ContainerV1::AdditionalPodNetworkConfig::Representation
      
          property :create_pod_range, as: 'createPodRange'
          property :enable_private_nodes, as: 'enablePrivateNodes'
          property :network_performance_config, as: 'networkPerformanceConfig', class: Google::Apis::ContainerV1::NetworkPerformanceConfig, decorator: Google::Apis::ContainerV1::NetworkPerformanceConfig::Representation
      
          property :pod_cidr_overprovision_config, as: 'podCidrOverprovisionConfig', class: Google::Apis::ContainerV1::PodCidrOverprovisionConfig, decorator: Google::Apis::ContainerV1::PodCidrOverprovisionConfig::Representation
      
          property :pod_ipv4_cidr_block, as: 'podIpv4CidrBlock'
          property :pod_ipv4_range_utilization, as: 'podIpv4RangeUtilization'
          property :pod_range, as: 'podRange'
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class NodePool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autopilot_config, as: 'autopilotConfig', class: Google::Apis::ContainerV1::AutopilotConfig, decorator: Google::Apis::ContainerV1::AutopilotConfig::Representation
      
          property :autoscaling, as: 'autoscaling', class: Google::Apis::ContainerV1::NodePoolAutoscaling, decorator: Google::Apis::ContainerV1::NodePoolAutoscaling::Representation
      
          property :best_effort_provisioning, as: 'bestEffortProvisioning', class: Google::Apis::ContainerV1::BestEffortProvisioning, decorator: Google::Apis::ContainerV1::BestEffortProvisioning::Representation
      
          collection :conditions, as: 'conditions', class: Google::Apis::ContainerV1::StatusCondition, decorator: Google::Apis::ContainerV1::StatusCondition::Representation
      
          property :config, as: 'config', class: Google::Apis::ContainerV1::NodeConfig, decorator: Google::Apis::ContainerV1::NodeConfig::Representation
      
          property :etag, as: 'etag'
          property :initial_node_count, as: 'initialNodeCount'
          collection :instance_group_urls, as: 'instanceGroupUrls'
          collection :locations, as: 'locations'
          property :management, as: 'management', class: Google::Apis::ContainerV1::NodeManagement, decorator: Google::Apis::ContainerV1::NodeManagement::Representation
      
          property :max_pods_constraint, as: 'maxPodsConstraint', class: Google::Apis::ContainerV1::MaxPodsConstraint, decorator: Google::Apis::ContainerV1::MaxPodsConstraint::Representation
      
          property :name, as: 'name'
          property :network_config, as: 'networkConfig', class: Google::Apis::ContainerV1::NodeNetworkConfig, decorator: Google::Apis::ContainerV1::NodeNetworkConfig::Representation
      
          property :placement_policy, as: 'placementPolicy', class: Google::Apis::ContainerV1::PlacementPolicy, decorator: Google::Apis::ContainerV1::PlacementPolicy::Representation
      
          property :pod_ipv4_cidr_size, as: 'podIpv4CidrSize'
          property :queued_provisioning, as: 'queuedProvisioning', class: Google::Apis::ContainerV1::QueuedProvisioning, decorator: Google::Apis::ContainerV1::QueuedProvisioning::Representation
      
          property :self_link, as: 'selfLink'
          property :status, as: 'status'
          property :status_message, as: 'statusMessage'
          property :update_info, as: 'updateInfo', class: Google::Apis::ContainerV1::UpdateInfo, decorator: Google::Apis::ContainerV1::UpdateInfo::Representation
      
          property :upgrade_settings, as: 'upgradeSettings', class: Google::Apis::ContainerV1::UpgradeSettings, decorator: Google::Apis::ContainerV1::UpgradeSettings::Representation
      
          property :version, as: 'version'
        end
      end
      
      class NodePoolAutoConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :linux_node_config, as: 'linuxNodeConfig', class: Google::Apis::ContainerV1::LinuxNodeConfig, decorator: Google::Apis::ContainerV1::LinuxNodeConfig::Representation
      
          property :network_tags, as: 'networkTags', class: Google::Apis::ContainerV1::NetworkTags, decorator: Google::Apis::ContainerV1::NetworkTags::Representation
      
          property :node_kubelet_config, as: 'nodeKubeletConfig', class: Google::Apis::ContainerV1::NodeKubeletConfig, decorator: Google::Apis::ContainerV1::NodeKubeletConfig::Representation
      
          property :resource_manager_tags, as: 'resourceManagerTags', class: Google::Apis::ContainerV1::ResourceManagerTags, decorator: Google::Apis::ContainerV1::ResourceManagerTags::Representation
      
        end
      end
      
      class NodePoolAutoscaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autoprovisioned, as: 'autoprovisioned'
          property :enabled, as: 'enabled'
          property :location_policy, as: 'locationPolicy'
          property :max_node_count, as: 'maxNodeCount'
          property :min_node_count, as: 'minNodeCount'
          property :total_max_node_count, as: 'totalMaxNodeCount'
          property :total_min_node_count, as: 'totalMinNodeCount'
        end
      end
      
      class NodePoolDefaults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :node_config_defaults, as: 'nodeConfigDefaults', class: Google::Apis::ContainerV1::NodeConfigDefaults, decorator: Google::Apis::ContainerV1::NodeConfigDefaults::Representation
      
        end
      end
      
      class NodePoolLoggingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :variant_config, as: 'variantConfig', class: Google::Apis::ContainerV1::LoggingVariantConfig, decorator: Google::Apis::ContainerV1::LoggingVariantConfig::Representation
      
        end
      end
      
      class NodePoolUpgradeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auto_upgrade_status, as: 'autoUpgradeStatus'
          property :end_of_extended_support_timestamp, as: 'endOfExtendedSupportTimestamp'
          property :end_of_standard_support_timestamp, as: 'endOfStandardSupportTimestamp'
          property :minor_target_version, as: 'minorTargetVersion'
          property :patch_target_version, as: 'patchTargetVersion'
          collection :paused_reason, as: 'pausedReason'
          collection :upgrade_details, as: 'upgradeDetails', class: Google::Apis::ContainerV1::UpgradeDetails, decorator: Google::Apis::ContainerV1::UpgradeDetails::Representation
      
        end
      end
      
      class NodeTaint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :effect, as: 'effect'
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class NodeTaints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :taints, as: 'taints', class: Google::Apis::ContainerV1::NodeTaint, decorator: Google::Apis::ContainerV1::NodeTaint::Representation
      
        end
      end
      
      class NotificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pubsub, as: 'pubsub', class: Google::Apis::ContainerV1::PubSub, decorator: Google::Apis::ContainerV1::PubSub::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cluster_conditions, as: 'clusterConditions', class: Google::Apis::ContainerV1::StatusCondition, decorator: Google::Apis::ContainerV1::StatusCondition::Representation
      
          property :detail, as: 'detail'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::ContainerV1::Status, decorator: Google::Apis::ContainerV1::Status::Representation
      
          property :location, as: 'location'
          property :name, as: 'name'
          collection :nodepool_conditions, as: 'nodepoolConditions', class: Google::Apis::ContainerV1::StatusCondition, decorator: Google::Apis::ContainerV1::StatusCondition::Representation
      
          property :operation_type, as: 'operationType'
          property :progress, as: 'progress', class: Google::Apis::ContainerV1::OperationProgress, decorator: Google::Apis::ContainerV1::OperationProgress::Representation
      
          property :self_link, as: 'selfLink'
          property :start_time, as: 'startTime'
          property :status, as: 'status'
          property :status_message, as: 'statusMessage'
          property :target_link, as: 'targetLink'
          property :zone, as: 'zone'
        end
      end
      
      class OperationError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message, as: 'errorMessage'
          property :key_name, as: 'keyName'
          property :timestamp, as: 'timestamp'
        end
      end
      
      class OperationProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metrics, as: 'metrics', class: Google::Apis::ContainerV1::Metric, decorator: Google::Apis::ContainerV1::Metric::Representation
      
          property :name, as: 'name'
          collection :stages, as: 'stages', class: Google::Apis::ContainerV1::OperationProgress, decorator: Google::Apis::ContainerV1::OperationProgress::Representation
      
          property :status, as: 'status'
        end
      end
      
      class ParallelstoreCsiDriverConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class ParentProductConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          property :product_name, as: 'productName'
        end
      end
      
      class PlacementPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy_name, as: 'policyName'
          property :tpu_topology, as: 'tpuTopology'
          property :type, as: 'type'
        end
      end
      
      class PodAutoscaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hpa_profile, as: 'hpaProfile'
        end
      end
      
      class PodCidrOverprovisionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable, as: 'disable'
        end
      end
      
      class PrivateClusterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_private_endpoint, as: 'enablePrivateEndpoint'
          property :enable_private_nodes, as: 'enablePrivateNodes'
          property :master_global_access_config, as: 'masterGlobalAccessConfig', class: Google::Apis::ContainerV1::PrivateClusterMasterGlobalAccessConfig, decorator: Google::Apis::ContainerV1::PrivateClusterMasterGlobalAccessConfig::Representation
      
          property :master_ipv4_cidr_block, as: 'masterIpv4CidrBlock'
          property :peering_name, as: 'peeringName'
          property :private_endpoint, as: 'privateEndpoint'
          property :private_endpoint_subnetwork, as: 'privateEndpointSubnetwork'
          property :public_endpoint, as: 'publicEndpoint'
        end
      end
      
      class PrivateClusterMasterGlobalAccessConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class PrivateRegistryAccessConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :certificate_authority_domain_config, as: 'certificateAuthorityDomainConfig', class: Google::Apis::ContainerV1::CertificateAuthorityDomainConfig, decorator: Google::Apis::ContainerV1::CertificateAuthorityDomainConfig::Representation
      
          property :enabled, as: 'enabled'
        end
      end
      
      class PubSub
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :filter, as: 'filter', class: Google::Apis::ContainerV1::Filter, decorator: Google::Apis::ContainerV1::Filter::Representation
      
          property :topic, as: 'topic'
        end
      end
      
      class QueuedProvisioning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class RbacBindingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_insecure_binding_system_authenticated, as: 'enableInsecureBindingSystemAuthenticated'
          property :enable_insecure_binding_system_unauthenticated, as: 'enableInsecureBindingSystemUnauthenticated'
        end
      end
      
      class RangeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :range_name, as: 'rangeName'
          property :utilization, as: 'utilization'
        end
      end
      
      class RayClusterLoggingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class RayClusterMonitoringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class RayOperatorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :ray_cluster_logging_config, as: 'rayClusterLoggingConfig', class: Google::Apis::ContainerV1::RayClusterLoggingConfig, decorator: Google::Apis::ContainerV1::RayClusterLoggingConfig::Representation
      
          property :ray_cluster_monitoring_config, as: 'rayClusterMonitoringConfig', class: Google::Apis::ContainerV1::RayClusterMonitoringConfig, decorator: Google::Apis::ContainerV1::RayClusterMonitoringConfig::Representation
      
        end
      end
      
      class RecurringTimeWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recurrence, as: 'recurrence'
          property :window, as: 'window', class: Google::Apis::ContainerV1::TimeWindow, decorator: Google::Apis::ContainerV1::TimeWindow::Representation
      
        end
      end
      
      class ReleaseChannel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
        end
      end
      
      class ReleaseChannelConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
          property :default_version, as: 'defaultVersion'
          property :upgrade_target_version, as: 'upgradeTargetVersion'
          collection :valid_versions, as: 'validVersions'
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
      
      class ResourceLabels
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
        end
      end
      
      class ResourceLimit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :maximum, :numeric_string => true, as: 'maximum'
          property :minimum, :numeric_string => true, as: 'minimum'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class ResourceManagerTags
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :tags, as: 'tags'
        end
      end
      
      class ResourceUsageExportConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_destination, as: 'bigqueryDestination', class: Google::Apis::ContainerV1::BigQueryDestination, decorator: Google::Apis::ContainerV1::BigQueryDestination::Representation
      
          property :consumption_metering_config, as: 'consumptionMeteringConfig', class: Google::Apis::ContainerV1::ConsumptionMeteringConfig, decorator: Google::Apis::ContainerV1::ConsumptionMeteringConfig::Representation
      
          property :enable_network_egress_metering, as: 'enableNetworkEgressMetering'
        end
      end
      
      class RollbackNodePoolUpgradeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :name, as: 'name'
          property :node_pool_id, as: 'nodePoolId'
          property :project_id, as: 'projectId'
          property :respect_pdb, as: 'respectPdb'
          property :zone, as: 'zone'
        end
      end
      
      class SandboxConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class SecondaryBootDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_image, as: 'diskImage'
          property :mode, as: 'mode'
        end
      end
      
      class SecondaryBootDiskUpdateStrategy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SecretManagerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class SecurityBulletinEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :affected_supported_minors, as: 'affectedSupportedMinors'
          property :brief_description, as: 'briefDescription'
          property :bulletin_id, as: 'bulletinId'
          property :bulletin_uri, as: 'bulletinUri'
          collection :cve_ids, as: 'cveIds'
          property :manual_steps_required, as: 'manualStepsRequired'
          collection :mitigated_versions, as: 'mitigatedVersions'
          collection :patched_versions, as: 'patchedVersions'
          property :resource_type_affected, as: 'resourceTypeAffected'
          property :severity, as: 'severity'
          property :suggested_upgrade_target, as: 'suggestedUpgradeTarget'
        end
      end
      
      class SecurityPostureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
          property :vulnerability_mode, as: 'vulnerabilityMode'
        end
      end
      
      class ServerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :channels, as: 'channels', class: Google::Apis::ContainerV1::ReleaseChannelConfig, decorator: Google::Apis::ContainerV1::ReleaseChannelConfig::Representation
      
          property :default_cluster_version, as: 'defaultClusterVersion'
          property :default_image_type, as: 'defaultImageType'
          collection :valid_image_types, as: 'validImageTypes'
          collection :valid_master_versions, as: 'validMasterVersions'
          collection :valid_node_versions, as: 'validNodeVersions'
        end
      end
      
      class ServiceExternalIPsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class SetAddonsConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :addons_config, as: 'addonsConfig', class: Google::Apis::ContainerV1::AddonsConfig, decorator: Google::Apis::ContainerV1::AddonsConfig::Representation
      
          property :cluster_id, as: 'clusterId'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class SetLabelsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :label_fingerprint, as: 'labelFingerprint'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          hash :resource_labels, as: 'resourceLabels'
          property :zone, as: 'zone'
        end
      end
      
      class SetLegacyAbacRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :enabled, as: 'enabled'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class SetLocationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          collection :locations, as: 'locations'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class SetLoggingServiceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :logging_service, as: 'loggingService'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class SetMaintenancePolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :maintenance_policy, as: 'maintenancePolicy', class: Google::Apis::ContainerV1::MaintenancePolicy, decorator: Google::Apis::ContainerV1::MaintenancePolicy::Representation
      
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class SetMasterAuthRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :cluster_id, as: 'clusterId'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :update, as: 'update', class: Google::Apis::ContainerV1::MasterAuth, decorator: Google::Apis::ContainerV1::MasterAuth::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class SetMonitoringServiceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :monitoring_service, as: 'monitoringService'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class SetNetworkPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :name, as: 'name'
          property :network_policy, as: 'networkPolicy', class: Google::Apis::ContainerV1::NetworkPolicy, decorator: Google::Apis::ContainerV1::NetworkPolicy::Representation
      
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class SetNodePoolAutoscalingRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autoscaling, as: 'autoscaling', class: Google::Apis::ContainerV1::NodePoolAutoscaling, decorator: Google::Apis::ContainerV1::NodePoolAutoscaling::Representation
      
          property :cluster_id, as: 'clusterId'
          property :name, as: 'name'
          property :node_pool_id, as: 'nodePoolId'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class SetNodePoolManagementRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :management, as: 'management', class: Google::Apis::ContainerV1::NodeManagement, decorator: Google::Apis::ContainerV1::NodeManagement::Representation
      
          property :name, as: 'name'
          property :node_pool_id, as: 'nodePoolId'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class SetNodePoolSizeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :name, as: 'name'
          property :node_count, as: 'nodeCount'
          property :node_pool_id, as: 'nodePoolId'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class ShieldedInstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_integrity_monitoring, as: 'enableIntegrityMonitoring'
          property :enable_secure_boot, as: 'enableSecureBoot'
        end
      end
      
      class ShieldedNodes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class SoleTenantConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_node_cpus, as: 'minNodeCpus'
          collection :node_affinities, as: 'nodeAffinities', class: Google::Apis::ContainerV1::NodeAffinity, decorator: Google::Apis::ContainerV1::NodeAffinity::Representation
      
        end
      end
      
      class StandardRolloutPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_node_count, as: 'batchNodeCount'
          property :batch_percentage, as: 'batchPercentage'
          property :batch_soak_duration, as: 'batchSoakDuration'
        end
      end
      
      class StartIpRotationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :rotate_credentials, as: 'rotateCredentials'
          property :zone, as: 'zone'
        end
      end
      
      class StatefulHaConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
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
      
      class StatusCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_code, as: 'canonicalCode'
          property :code, as: 'code'
          property :message, as: 'message'
        end
      end
      
      class TimeWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :maintenance_exclusion_options, as: 'maintenanceExclusionOptions', class: Google::Apis::ContainerV1::MaintenanceExclusionOptions, decorator: Google::Apis::ContainerV1::MaintenanceExclusionOptions::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class TopologyManager
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy'
          property :scope, as: 'scope'
        end
      end
      
      class UpdateClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :update, as: 'update', class: Google::Apis::ContainerV1::ClusterUpdate, decorator: Google::Apis::ContainerV1::ClusterUpdate::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class UpdateInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blue_green_info, as: 'blueGreenInfo', class: Google::Apis::ContainerV1::BlueGreenInfo, decorator: Google::Apis::ContainerV1::BlueGreenInfo::Representation
      
        end
      end
      
      class UpdateMasterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :master_version, as: 'masterVersion'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :zone, as: 'zone'
        end
      end
      
      class UpdateNodePoolRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accelerators, as: 'accelerators', class: Google::Apis::ContainerV1::AcceleratorConfig, decorator: Google::Apis::ContainerV1::AcceleratorConfig::Representation
      
          property :cluster_id, as: 'clusterId'
          property :confidential_nodes, as: 'confidentialNodes', class: Google::Apis::ContainerV1::ConfidentialNodes, decorator: Google::Apis::ContainerV1::ConfidentialNodes::Representation
      
          property :containerd_config, as: 'containerdConfig', class: Google::Apis::ContainerV1::ContainerdConfig, decorator: Google::Apis::ContainerV1::ContainerdConfig::Representation
      
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
          property :disk_type, as: 'diskType'
          property :etag, as: 'etag'
          property :fast_socket, as: 'fastSocket', class: Google::Apis::ContainerV1::FastSocket, decorator: Google::Apis::ContainerV1::FastSocket::Representation
      
          property :flex_start, as: 'flexStart'
          property :gcfs_config, as: 'gcfsConfig', class: Google::Apis::ContainerV1::GcfsConfig, decorator: Google::Apis::ContainerV1::GcfsConfig::Representation
      
          property :gvnic, as: 'gvnic', class: Google::Apis::ContainerV1::VirtualNic, decorator: Google::Apis::ContainerV1::VirtualNic::Representation
      
          property :image_type, as: 'imageType'
          property :kubelet_config, as: 'kubeletConfig', class: Google::Apis::ContainerV1::NodeKubeletConfig, decorator: Google::Apis::ContainerV1::NodeKubeletConfig::Representation
      
          property :labels, as: 'labels', class: Google::Apis::ContainerV1::NodeLabels, decorator: Google::Apis::ContainerV1::NodeLabels::Representation
      
          property :linux_node_config, as: 'linuxNodeConfig', class: Google::Apis::ContainerV1::LinuxNodeConfig, decorator: Google::Apis::ContainerV1::LinuxNodeConfig::Representation
      
          collection :locations, as: 'locations'
          property :logging_config, as: 'loggingConfig', class: Google::Apis::ContainerV1::NodePoolLoggingConfig, decorator: Google::Apis::ContainerV1::NodePoolLoggingConfig::Representation
      
          property :machine_type, as: 'machineType'
          property :max_run_duration, as: 'maxRunDuration'
          property :name, as: 'name'
          property :node_network_config, as: 'nodeNetworkConfig', class: Google::Apis::ContainerV1::NodeNetworkConfig, decorator: Google::Apis::ContainerV1::NodeNetworkConfig::Representation
      
          property :node_pool_id, as: 'nodePoolId'
          property :node_version, as: 'nodeVersion'
          property :project_id, as: 'projectId'
          property :queued_provisioning, as: 'queuedProvisioning', class: Google::Apis::ContainerV1::QueuedProvisioning, decorator: Google::Apis::ContainerV1::QueuedProvisioning::Representation
      
          property :resource_labels, as: 'resourceLabels', class: Google::Apis::ContainerV1::ResourceLabels, decorator: Google::Apis::ContainerV1::ResourceLabels::Representation
      
          property :resource_manager_tags, as: 'resourceManagerTags', class: Google::Apis::ContainerV1::ResourceManagerTags, decorator: Google::Apis::ContainerV1::ResourceManagerTags::Representation
      
          collection :storage_pools, as: 'storagePools'
          property :tags, as: 'tags', class: Google::Apis::ContainerV1::NetworkTags, decorator: Google::Apis::ContainerV1::NetworkTags::Representation
      
          property :taints, as: 'taints', class: Google::Apis::ContainerV1::NodeTaints, decorator: Google::Apis::ContainerV1::NodeTaints::Representation
      
          property :upgrade_settings, as: 'upgradeSettings', class: Google::Apis::ContainerV1::UpgradeSettings, decorator: Google::Apis::ContainerV1::UpgradeSettings::Representation
      
          property :windows_node_config, as: 'windowsNodeConfig', class: Google::Apis::ContainerV1::WindowsNodeConfig, decorator: Google::Apis::ContainerV1::WindowsNodeConfig::Representation
      
          property :workload_metadata_config, as: 'workloadMetadataConfig', class: Google::Apis::ContainerV1::WorkloadMetadataConfig, decorator: Google::Apis::ContainerV1::WorkloadMetadataConfig::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class UpgradeAvailableEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :release_channel, as: 'releaseChannel', class: Google::Apis::ContainerV1::ReleaseChannel, decorator: Google::Apis::ContainerV1::ReleaseChannel::Representation
      
          property :resource, as: 'resource'
          property :resource_type, as: 'resourceType'
          property :version, as: 'version'
        end
      end
      
      class UpgradeDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :initial_version, as: 'initialVersion'
          property :start_time, as: 'startTime'
          property :start_type, as: 'startType'
          property :state, as: 'state'
          property :target_version, as: 'targetVersion'
        end
      end
      
      class UpgradeEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_version, as: 'currentVersion'
          property :operation, as: 'operation'
          property :operation_start_time, as: 'operationStartTime'
          property :resource, as: 'resource'
          property :resource_type, as: 'resourceType'
          property :target_version, as: 'targetVersion'
        end
      end
      
      class UpgradeInfoEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_version, as: 'currentVersion'
          property :description, as: 'description'
          property :end_time, as: 'endTime'
          property :event_type, as: 'eventType'
          property :extended_support_end_time, as: 'extendedSupportEndTime'
          property :operation, as: 'operation'
          property :resource, as: 'resource'
          property :resource_type, as: 'resourceType'
          property :standard_support_end_time, as: 'standardSupportEndTime'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :target_version, as: 'targetVersion'
        end
      end
      
      class UpgradeSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blue_green_settings, as: 'blueGreenSettings', class: Google::Apis::ContainerV1::BlueGreenSettings, decorator: Google::Apis::ContainerV1::BlueGreenSettings::Representation
      
          property :max_surge, as: 'maxSurge'
          property :max_unavailable, as: 'maxUnavailable'
          property :strategy, as: 'strategy'
        end
      end
      
      class UsableSubnetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_cidr_range, as: 'ipCidrRange'
          property :network, as: 'network'
          collection :secondary_ip_ranges, as: 'secondaryIpRanges', class: Google::Apis::ContainerV1::UsableSubnetworkSecondaryRange, decorator: Google::Apis::ContainerV1::UsableSubnetworkSecondaryRange::Representation
      
          property :status_message, as: 'statusMessage'
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class UsableSubnetworkSecondaryRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_cidr_range, as: 'ipCidrRange'
          property :range_name, as: 'rangeName'
          property :status, as: 'status'
        end
      end
      
      class UserManagedKeysConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_ca, as: 'aggregationCa'
          property :cluster_ca, as: 'clusterCa'
          property :control_plane_disk_encryption_key, as: 'controlPlaneDiskEncryptionKey'
          property :etcd_api_ca, as: 'etcdApiCa'
          property :etcd_peer_ca, as: 'etcdPeerCa'
          property :gkeops_etcd_backup_encryption_key, as: 'gkeopsEtcdBackupEncryptionKey'
          collection :service_account_signing_keys, as: 'serviceAccountSigningKeys'
          collection :service_account_verification_keys, as: 'serviceAccountVerificationKeys'
        end
      end
      
      class VerticalPodAutoscaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class VirtualNic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class WindowsNodeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :os_version, as: 'osVersion'
        end
      end
      
      class WorkloadIdentityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :workload_pool, as: 'workloadPool'
        end
      end
      
      class WorkloadMetadataConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class WorkloadPolicyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_net_admin, as: 'allowNetAdmin'
          property :autopilot_compatibility_auditing_enabled, as: 'autopilotCompatibilityAuditingEnabled'
        end
      end
    end
  end
end
