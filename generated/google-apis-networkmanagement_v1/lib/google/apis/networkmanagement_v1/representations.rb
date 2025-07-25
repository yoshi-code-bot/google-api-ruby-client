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
    module NetworkmanagementV1
      
      class AbortInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppEngineVersionEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppEngineVersionInfo
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
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudFunctionEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudFunctionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudRunRevisionEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudRunRevisionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudSqlInstanceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectivityTest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeliverInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DirectVpcEgressConnectionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DropInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EdgeLocation
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
      
      class EndpointInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FirewallInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ForwardInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ForwardingRuleInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GkeMasterInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleServiceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Host
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatencyDistribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatencyPercentile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConnectivityTestsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMonitoringPointsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNetworkMonitoringProvidersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNetworkPathsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListVpcFlowLogsConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListWebPathsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoadBalancerBackend
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoadBalancerBackendInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoadBalancerInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoringPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NatInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkInterface
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkMonitoringProvider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkPath
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
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProbingDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProviderTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProxyConnectionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReachabilityDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RedisClusterInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RedisInstanceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RerunConnectivityTestRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RouteInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServerlessExternalConnectionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServerlessNegInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SingleEdgeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Step
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageBucketInfo
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
      
      class Trace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpcConnectorInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpcFlowLogsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpnGatewayInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpnTunnelInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebPath
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AbortInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cause, as: 'cause'
          property :ip_address, as: 'ipAddress'
          collection :projects_missing_permission, as: 'projectsMissingPermission'
          property :resource_uri, as: 'resourceUri'
        end
      end
      
      class AppEngineVersionEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class AppEngineVersionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :environment, as: 'environment'
          property :runtime, as: 'runtime'
          property :uri, as: 'uri'
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::NetworkmanagementV1::AuditLogConfig, decorator: Google::Apis::NetworkmanagementV1::AuditLogConfig::Representation
      
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
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::NetworkmanagementV1::Expr, decorator: Google::Apis::NetworkmanagementV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CloudFunctionEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class CloudFunctionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :location, as: 'location'
          property :uri, as: 'uri'
          property :version_id, :numeric_string => true, as: 'versionId'
        end
      end
      
      class CloudRunRevisionEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_uri, as: 'serviceUri'
          property :uri, as: 'uri'
        end
      end
      
      class CloudRunRevisionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :location, as: 'location'
          property :service_uri, as: 'serviceUri'
          property :uri, as: 'uri'
        end
      end
      
      class CloudSqlInstanceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :external_ip, as: 'externalIp'
          property :internal_ip, as: 'internalIp'
          property :network_uri, as: 'networkUri'
          property :region, as: 'region'
          property :uri, as: 'uri'
        end
      end
      
      class ConnectivityTest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bypass_firewall_checks, as: 'bypassFirewallChecks'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :destination, as: 'destination', class: Google::Apis::NetworkmanagementV1::Endpoint, decorator: Google::Apis::NetworkmanagementV1::Endpoint::Representation
      
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :probing_details, as: 'probingDetails', class: Google::Apis::NetworkmanagementV1::ProbingDetails, decorator: Google::Apis::NetworkmanagementV1::ProbingDetails::Representation
      
          property :protocol, as: 'protocol'
          property :reachability_details, as: 'reachabilityDetails', class: Google::Apis::NetworkmanagementV1::ReachabilityDetails, decorator: Google::Apis::NetworkmanagementV1::ReachabilityDetails::Representation
      
          collection :related_projects, as: 'relatedProjects'
          property :return_reachability_details, as: 'returnReachabilityDetails', class: Google::Apis::NetworkmanagementV1::ReachabilityDetails, decorator: Google::Apis::NetworkmanagementV1::ReachabilityDetails::Representation
      
          property :round_trip, as: 'roundTrip'
          property :source, as: 'source', class: Google::Apis::NetworkmanagementV1::Endpoint, decorator: Google::Apis::NetworkmanagementV1::Endpoint::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class DeliverInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :google_service_type, as: 'googleServiceType'
          property :ip_address, as: 'ipAddress'
          property :psc_google_api_target, as: 'pscGoogleApiTarget'
          property :resource_uri, as: 'resourceUri'
          property :storage_bucket, as: 'storageBucket'
          property :target, as: 'target'
        end
      end
      
      class DirectVpcEgressConnectionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network_uri, as: 'networkUri'
          property :region, as: 'region'
          property :selected_ip_address, as: 'selectedIpAddress'
          property :selected_ip_range, as: 'selectedIpRange'
          property :subnetwork_uri, as: 'subnetworkUri'
        end
      end
      
      class DropInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cause, as: 'cause'
          property :destination_ip, as: 'destinationIp'
          property :region, as: 'region'
          property :resource_uri, as: 'resourceUri'
          property :source_ip, as: 'sourceIp'
        end
      end
      
      class EdgeLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metropolitan_area, as: 'metropolitanArea'
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
          property :app_engine_version, as: 'appEngineVersion', class: Google::Apis::NetworkmanagementV1::AppEngineVersionEndpoint, decorator: Google::Apis::NetworkmanagementV1::AppEngineVersionEndpoint::Representation
      
          property :cloud_function, as: 'cloudFunction', class: Google::Apis::NetworkmanagementV1::CloudFunctionEndpoint, decorator: Google::Apis::NetworkmanagementV1::CloudFunctionEndpoint::Representation
      
          property :cloud_run_revision, as: 'cloudRunRevision', class: Google::Apis::NetworkmanagementV1::CloudRunRevisionEndpoint, decorator: Google::Apis::NetworkmanagementV1::CloudRunRevisionEndpoint::Representation
      
          property :cloud_sql_instance, as: 'cloudSqlInstance'
          property :forwarding_rule, as: 'forwardingRule'
          property :forwarding_rule_target, as: 'forwardingRuleTarget'
          property :fqdn, as: 'fqdn'
          property :gke_master_cluster, as: 'gkeMasterCluster'
          property :instance, as: 'instance'
          property :ip_address, as: 'ipAddress'
          property :load_balancer_id, as: 'loadBalancerId'
          property :load_balancer_type, as: 'loadBalancerType'
          property :network, as: 'network'
          property :network_type, as: 'networkType'
          property :port, as: 'port'
          property :project_id, as: 'projectId'
          property :redis_cluster, as: 'redisCluster'
          property :redis_instance, as: 'redisInstance'
        end
      end
      
      class EndpointInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_ip, as: 'destinationIp'
          property :destination_network_uri, as: 'destinationNetworkUri'
          property :destination_port, as: 'destinationPort'
          property :protocol, as: 'protocol'
          property :source_agent_uri, as: 'sourceAgentUri'
          property :source_ip, as: 'sourceIp'
          property :source_network_uri, as: 'sourceNetworkUri'
          property :source_port, as: 'sourcePort'
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
      
      class FirewallInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :direction, as: 'direction'
          property :display_name, as: 'displayName'
          property :firewall_rule_type, as: 'firewallRuleType'
          property :network_uri, as: 'networkUri'
          property :policy, as: 'policy'
          property :policy_priority, as: 'policyPriority'
          property :policy_uri, as: 'policyUri'
          property :priority, as: 'priority'
          collection :target_service_accounts, as: 'targetServiceAccounts'
          collection :target_tags, as: 'targetTags'
          property :uri, as: 'uri'
        end
      end
      
      class ForwardInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_address, as: 'ipAddress'
          property :resource_uri, as: 'resourceUri'
          property :target, as: 'target'
        end
      end
      
      class ForwardingRuleInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :load_balancer_name, as: 'loadBalancerName'
          property :matched_port_range, as: 'matchedPortRange'
          property :matched_protocol, as: 'matchedProtocol'
          property :network_uri, as: 'networkUri'
          property :psc_google_api_target, as: 'pscGoogleApiTarget'
          property :psc_service_attachment_uri, as: 'pscServiceAttachmentUri'
          property :region, as: 'region'
          property :target, as: 'target'
          property :uri, as: 'uri'
          property :vip, as: 'vip'
        end
      end
      
      class GkeMasterInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_network_uri, as: 'clusterNetworkUri'
          property :cluster_uri, as: 'clusterUri'
          property :dns_endpoint, as: 'dnsEndpoint'
          property :external_ip, as: 'externalIp'
          property :internal_ip, as: 'internalIp'
        end
      end
      
      class GoogleServiceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :google_service_type, as: 'googleServiceType'
          property :source_ip, as: 'sourceIp'
        end
      end
      
      class Host
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_instance_id, as: 'cloudInstanceId'
          property :cloud_project_id, as: 'cloudProjectId'
          property :cloud_provider, as: 'cloudProvider'
          property :cloud_region, as: 'cloudRegion'
          property :cloud_vpc_id, as: 'cloudVpcId'
          property :cloud_zone, as: 'cloudZone'
          property :os, as: 'os'
        end
      end
      
      class InstanceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :external_ip, as: 'externalIp'
          property :interface, as: 'interface'
          property :internal_ip, as: 'internalIp'
          collection :network_tags, as: 'networkTags'
          property :network_uri, as: 'networkUri'
          property :psc_network_attachment_uri, as: 'pscNetworkAttachmentUri'
          property :running, as: 'running'
          property :service_account, as: 'serviceAccount'
          property :status, as: 'status'
          property :uri, as: 'uri'
        end
      end
      
      class LatencyDistribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :latency_percentiles, as: 'latencyPercentiles', class: Google::Apis::NetworkmanagementV1::LatencyPercentile, decorator: Google::Apis::NetworkmanagementV1::LatencyPercentile::Representation
      
        end
      end
      
      class LatencyPercentile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latency_micros, :numeric_string => true, as: 'latencyMicros'
          property :percent, as: 'percent'
        end
      end
      
      class ListConnectivityTestsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resources, as: 'resources', class: Google::Apis::NetworkmanagementV1::ConnectivityTest, decorator: Google::Apis::NetworkmanagementV1::ConnectivityTest::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::NetworkmanagementV1::Location, decorator: Google::Apis::NetworkmanagementV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMonitoringPointsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :monitoring_points, as: 'monitoringPoints', class: Google::Apis::NetworkmanagementV1::MonitoringPoint, decorator: Google::Apis::NetworkmanagementV1::MonitoringPoint::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListNetworkMonitoringProvidersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :network_monitoring_providers, as: 'networkMonitoringProviders', class: Google::Apis::NetworkmanagementV1::NetworkMonitoringProvider, decorator: Google::Apis::NetworkmanagementV1::NetworkMonitoringProvider::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListNetworkPathsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :network_paths, as: 'networkPaths', class: Google::Apis::NetworkmanagementV1::NetworkPath, decorator: Google::Apis::NetworkmanagementV1::NetworkPath::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::NetworkmanagementV1::Operation, decorator: Google::Apis::NetworkmanagementV1::Operation::Representation
      
        end
      end
      
      class ListVpcFlowLogsConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
          collection :vpc_flow_logs_configs, as: 'vpcFlowLogsConfigs', class: Google::Apis::NetworkmanagementV1::VpcFlowLogsConfig, decorator: Google::Apis::NetworkmanagementV1::VpcFlowLogsConfig::Representation
      
        end
      end
      
      class ListWebPathsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :web_paths, as: 'webPaths', class: Google::Apis::NetworkmanagementV1::WebPath, decorator: Google::Apis::NetworkmanagementV1::WebPath::Representation
      
        end
      end
      
      class LoadBalancerBackend
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          collection :health_check_allowing_firewall_rules, as: 'healthCheckAllowingFirewallRules'
          collection :health_check_blocking_firewall_rules, as: 'healthCheckBlockingFirewallRules'
          property :health_check_firewall_state, as: 'healthCheckFirewallState'
          property :uri, as: 'uri'
        end
      end
      
      class LoadBalancerBackendInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backend_bucket_uri, as: 'backendBucketUri'
          property :backend_service_uri, as: 'backendServiceUri'
          property :health_check_firewalls_config_state, as: 'healthCheckFirewallsConfigState'
          property :health_check_uri, as: 'healthCheckUri'
          property :instance_group_uri, as: 'instanceGroupUri'
          property :instance_uri, as: 'instanceUri'
          property :name, as: 'name'
          property :network_endpoint_group_uri, as: 'networkEndpointGroupUri'
          property :psc_google_api_target, as: 'pscGoogleApiTarget'
          property :psc_service_attachment_uri, as: 'pscServiceAttachmentUri'
        end
      end
      
      class LoadBalancerInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backend_type, as: 'backendType'
          property :backend_uri, as: 'backendUri'
          collection :backends, as: 'backends', class: Google::Apis::NetworkmanagementV1::LoadBalancerBackend, decorator: Google::Apis::NetworkmanagementV1::LoadBalancerBackend::Representation
      
          property :health_check_uri, as: 'healthCheckUri'
          property :load_balancer_type, as: 'loadBalancerType'
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
      
      class MonitoringPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_geo_location_enabled, as: 'autoGeoLocationEnabled'
          property :connection_status, as: 'connectionStatus'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          collection :errors, as: 'errors'
          property :geo_location, as: 'geoLocation'
          property :host, as: 'host', class: Google::Apis::NetworkmanagementV1::Host, decorator: Google::Apis::NetworkmanagementV1::Host::Representation
      
          property :hostname, as: 'hostname'
          property :name, as: 'name'
          collection :network_interfaces, as: 'networkInterfaces', class: Google::Apis::NetworkmanagementV1::NetworkInterface, decorator: Google::Apis::NetworkmanagementV1::NetworkInterface::Representation
      
          property :originating_ip, as: 'originatingIp'
          collection :provider_tags, as: 'providerTags', class: Google::Apis::NetworkmanagementV1::ProviderTag, decorator: Google::Apis::NetworkmanagementV1::ProviderTag::Representation
      
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
          property :upgrade_type, as: 'upgradeType'
          property :version, as: 'version'
        end
      end
      
      class NatInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :nat_gateway_name, as: 'natGatewayName'
          property :network_uri, as: 'networkUri'
          property :new_destination_ip, as: 'newDestinationIp'
          property :new_destination_port, as: 'newDestinationPort'
          property :new_source_ip, as: 'newSourceIp'
          property :new_source_port, as: 'newSourcePort'
          property :old_destination_ip, as: 'oldDestinationIp'
          property :old_destination_port, as: 'oldDestinationPort'
          property :old_source_ip, as: 'oldSourceIp'
          property :old_source_port, as: 'oldSourcePort'
          property :protocol, as: 'protocol'
          property :router_uri, as: 'routerUri'
          property :type, as: 'type'
        end
      end
      
      class NetworkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :matched_ip_range, as: 'matchedIpRange'
          property :matched_subnet_uri, as: 'matchedSubnetUri'
          property :region, as: 'region'
          property :uri, as: 'uri'
        end
      end
      
      class NetworkInterface
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adapter_description, as: 'adapterDescription'
          property :cidr, as: 'cidr'
          property :interface_name, as: 'interfaceName'
          property :ip_address, as: 'ipAddress'
          property :mac_address, as: 'macAddress'
          property :speed, :numeric_string => true, as: 'speed'
          property :vlan_id, :numeric_string => true, as: 'vlanId'
        end
      end
      
      class NetworkMonitoringProvider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :provider_type, as: 'providerType'
          property :provider_uri, as: 'providerUri'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class NetworkPath
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :destination, as: 'destination'
          property :destination_geo_location, as: 'destinationGeoLocation'
          property :display_name, as: 'displayName'
          property :dual_ended, as: 'dualEnded'
          property :monitoring_enabled, as: 'monitoringEnabled'
          property :monitoring_policy_display_name, as: 'monitoringPolicyDisplayName'
          property :monitoring_policy_id, as: 'monitoringPolicyId'
          property :monitoring_status, as: 'monitoringStatus'
          property :name, as: 'name'
          property :network_protocol, as: 'networkProtocol'
          collection :provider_tags, as: 'providerTags', class: Google::Apis::NetworkmanagementV1::ProviderTag, decorator: Google::Apis::NetworkmanagementV1::ProviderTag::Representation
      
          property :provider_ui_uri, as: 'providerUiUri'
          property :source_monitoring_point_id, as: 'sourceMonitoringPointId'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::NetworkmanagementV1::Status, decorator: Google::Apis::NetworkmanagementV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
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
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::NetworkmanagementV1::AuditConfig, decorator: Google::Apis::NetworkmanagementV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::NetworkmanagementV1::Binding, decorator: Google::Apis::NetworkmanagementV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class ProbingDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :abort_cause, as: 'abortCause'
          property :destination_egress_location, as: 'destinationEgressLocation', class: Google::Apis::NetworkmanagementV1::EdgeLocation, decorator: Google::Apis::NetworkmanagementV1::EdgeLocation::Representation
      
          collection :edge_responses, as: 'edgeResponses', class: Google::Apis::NetworkmanagementV1::SingleEdgeResponse, decorator: Google::Apis::NetworkmanagementV1::SingleEdgeResponse::Representation
      
          property :endpoint_info, as: 'endpointInfo', class: Google::Apis::NetworkmanagementV1::EndpointInfo, decorator: Google::Apis::NetworkmanagementV1::EndpointInfo::Representation
      
          property :error, as: 'error', class: Google::Apis::NetworkmanagementV1::Status, decorator: Google::Apis::NetworkmanagementV1::Status::Representation
      
          property :probed_all_devices, as: 'probedAllDevices'
          property :probing_latency, as: 'probingLatency', class: Google::Apis::NetworkmanagementV1::LatencyDistribution, decorator: Google::Apis::NetworkmanagementV1::LatencyDistribution::Representation
      
          property :result, as: 'result'
          property :sent_probe_count, as: 'sentProbeCount'
          property :successful_probe_count, as: 'successfulProbeCount'
          property :verify_time, as: 'verifyTime'
        end
      end
      
      class ProviderTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :resource_type, as: 'resourceType'
          property :value, as: 'value'
        end
      end
      
      class ProxyConnectionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network_uri, as: 'networkUri'
          property :new_destination_ip, as: 'newDestinationIp'
          property :new_destination_port, as: 'newDestinationPort'
          property :new_source_ip, as: 'newSourceIp'
          property :new_source_port, as: 'newSourcePort'
          property :old_destination_ip, as: 'oldDestinationIp'
          property :old_destination_port, as: 'oldDestinationPort'
          property :old_source_ip, as: 'oldSourceIp'
          property :old_source_port, as: 'oldSourcePort'
          property :protocol, as: 'protocol'
          property :subnet_uri, as: 'subnetUri'
        end
      end
      
      class ReachabilityDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::NetworkmanagementV1::Status, decorator: Google::Apis::NetworkmanagementV1::Status::Representation
      
          property :result, as: 'result'
          collection :traces, as: 'traces', class: Google::Apis::NetworkmanagementV1::Trace, decorator: Google::Apis::NetworkmanagementV1::Trace::Representation
      
          property :verify_time, as: 'verifyTime'
        end
      end
      
      class RedisClusterInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :discovery_endpoint_ip_address, as: 'discoveryEndpointIpAddress'
          property :display_name, as: 'displayName'
          property :location, as: 'location'
          property :network_uri, as: 'networkUri'
          property :secondary_endpoint_ip_address, as: 'secondaryEndpointIpAddress'
          property :uri, as: 'uri'
        end
      end
      
      class RedisInstanceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :network_uri, as: 'networkUri'
          property :primary_endpoint_ip, as: 'primaryEndpointIp'
          property :read_endpoint_ip, as: 'readEndpointIp'
          property :region, as: 'region'
          property :uri, as: 'uri'
        end
      end
      
      class RerunConnectivityTestRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RouteInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertised_route_next_hop_uri, as: 'advertisedRouteNextHopUri'
          property :advertised_route_source_router_uri, as: 'advertisedRouteSourceRouterUri'
          property :dest_ip_range, as: 'destIpRange'
          collection :dest_port_ranges, as: 'destPortRanges'
          property :display_name, as: 'displayName'
          collection :instance_tags, as: 'instanceTags'
          property :ncc_hub_route_uri, as: 'nccHubRouteUri'
          property :ncc_hub_uri, as: 'nccHubUri'
          property :ncc_spoke_uri, as: 'nccSpokeUri'
          property :network_uri, as: 'networkUri'
          property :next_hop, as: 'nextHop'
          property :next_hop_network_uri, as: 'nextHopNetworkUri'
          property :next_hop_type, as: 'nextHopType'
          property :next_hop_uri, as: 'nextHopUri'
          property :originating_route_display_name, as: 'originatingRouteDisplayName'
          property :originating_route_uri, as: 'originatingRouteUri'
          property :priority, as: 'priority'
          collection :protocols, as: 'protocols'
          property :region, as: 'region'
          property :route_scope, as: 'routeScope'
          property :route_type, as: 'routeType'
          property :src_ip_range, as: 'srcIpRange'
          collection :src_port_ranges, as: 'srcPortRanges'
          property :uri, as: 'uri'
        end
      end
      
      class ServerlessExternalConnectionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :selected_ip_address, as: 'selectedIpAddress'
        end
      end
      
      class ServerlessNegInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :neg_uri, as: 'negUri'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::NetworkmanagementV1::Policy, decorator: Google::Apis::NetworkmanagementV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class SingleEdgeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_egress_location, as: 'destinationEgressLocation', class: Google::Apis::NetworkmanagementV1::EdgeLocation, decorator: Google::Apis::NetworkmanagementV1::EdgeLocation::Representation
      
          property :destination_router, as: 'destinationRouter'
          property :probing_latency, as: 'probingLatency', class: Google::Apis::NetworkmanagementV1::LatencyDistribution, decorator: Google::Apis::NetworkmanagementV1::LatencyDistribution::Representation
      
          property :result, as: 'result'
          property :sent_probe_count, as: 'sentProbeCount'
          property :successful_probe_count, as: 'successfulProbeCount'
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
      
      class Step
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :abort, as: 'abort', class: Google::Apis::NetworkmanagementV1::AbortInfo, decorator: Google::Apis::NetworkmanagementV1::AbortInfo::Representation
      
          property :app_engine_version, as: 'appEngineVersion', class: Google::Apis::NetworkmanagementV1::AppEngineVersionInfo, decorator: Google::Apis::NetworkmanagementV1::AppEngineVersionInfo::Representation
      
          property :causes_drop, as: 'causesDrop'
          property :cloud_function, as: 'cloudFunction', class: Google::Apis::NetworkmanagementV1::CloudFunctionInfo, decorator: Google::Apis::NetworkmanagementV1::CloudFunctionInfo::Representation
      
          property :cloud_run_revision, as: 'cloudRunRevision', class: Google::Apis::NetworkmanagementV1::CloudRunRevisionInfo, decorator: Google::Apis::NetworkmanagementV1::CloudRunRevisionInfo::Representation
      
          property :cloud_sql_instance, as: 'cloudSqlInstance', class: Google::Apis::NetworkmanagementV1::CloudSqlInstanceInfo, decorator: Google::Apis::NetworkmanagementV1::CloudSqlInstanceInfo::Representation
      
          property :deliver, as: 'deliver', class: Google::Apis::NetworkmanagementV1::DeliverInfo, decorator: Google::Apis::NetworkmanagementV1::DeliverInfo::Representation
      
          property :description, as: 'description'
          property :direct_vpc_egress_connection, as: 'directVpcEgressConnection', class: Google::Apis::NetworkmanagementV1::DirectVpcEgressConnectionInfo, decorator: Google::Apis::NetworkmanagementV1::DirectVpcEgressConnectionInfo::Representation
      
          property :drop, as: 'drop', class: Google::Apis::NetworkmanagementV1::DropInfo, decorator: Google::Apis::NetworkmanagementV1::DropInfo::Representation
      
          property :endpoint, as: 'endpoint', class: Google::Apis::NetworkmanagementV1::EndpointInfo, decorator: Google::Apis::NetworkmanagementV1::EndpointInfo::Representation
      
          property :firewall, as: 'firewall', class: Google::Apis::NetworkmanagementV1::FirewallInfo, decorator: Google::Apis::NetworkmanagementV1::FirewallInfo::Representation
      
          property :forward, as: 'forward', class: Google::Apis::NetworkmanagementV1::ForwardInfo, decorator: Google::Apis::NetworkmanagementV1::ForwardInfo::Representation
      
          property :forwarding_rule, as: 'forwardingRule', class: Google::Apis::NetworkmanagementV1::ForwardingRuleInfo, decorator: Google::Apis::NetworkmanagementV1::ForwardingRuleInfo::Representation
      
          property :gke_master, as: 'gkeMaster', class: Google::Apis::NetworkmanagementV1::GkeMasterInfo, decorator: Google::Apis::NetworkmanagementV1::GkeMasterInfo::Representation
      
          property :google_service, as: 'googleService', class: Google::Apis::NetworkmanagementV1::GoogleServiceInfo, decorator: Google::Apis::NetworkmanagementV1::GoogleServiceInfo::Representation
      
          property :instance, as: 'instance', class: Google::Apis::NetworkmanagementV1::InstanceInfo, decorator: Google::Apis::NetworkmanagementV1::InstanceInfo::Representation
      
          property :load_balancer, as: 'loadBalancer', class: Google::Apis::NetworkmanagementV1::LoadBalancerInfo, decorator: Google::Apis::NetworkmanagementV1::LoadBalancerInfo::Representation
      
          property :load_balancer_backend_info, as: 'loadBalancerBackendInfo', class: Google::Apis::NetworkmanagementV1::LoadBalancerBackendInfo, decorator: Google::Apis::NetworkmanagementV1::LoadBalancerBackendInfo::Representation
      
          property :nat, as: 'nat', class: Google::Apis::NetworkmanagementV1::NatInfo, decorator: Google::Apis::NetworkmanagementV1::NatInfo::Representation
      
          property :network, as: 'network', class: Google::Apis::NetworkmanagementV1::NetworkInfo, decorator: Google::Apis::NetworkmanagementV1::NetworkInfo::Representation
      
          property :project_id, as: 'projectId'
          property :proxy_connection, as: 'proxyConnection', class: Google::Apis::NetworkmanagementV1::ProxyConnectionInfo, decorator: Google::Apis::NetworkmanagementV1::ProxyConnectionInfo::Representation
      
          property :redis_cluster, as: 'redisCluster', class: Google::Apis::NetworkmanagementV1::RedisClusterInfo, decorator: Google::Apis::NetworkmanagementV1::RedisClusterInfo::Representation
      
          property :redis_instance, as: 'redisInstance', class: Google::Apis::NetworkmanagementV1::RedisInstanceInfo, decorator: Google::Apis::NetworkmanagementV1::RedisInstanceInfo::Representation
      
          property :route, as: 'route', class: Google::Apis::NetworkmanagementV1::RouteInfo, decorator: Google::Apis::NetworkmanagementV1::RouteInfo::Representation
      
          property :serverless_external_connection, as: 'serverlessExternalConnection', class: Google::Apis::NetworkmanagementV1::ServerlessExternalConnectionInfo, decorator: Google::Apis::NetworkmanagementV1::ServerlessExternalConnectionInfo::Representation
      
          property :serverless_neg, as: 'serverlessNeg', class: Google::Apis::NetworkmanagementV1::ServerlessNegInfo, decorator: Google::Apis::NetworkmanagementV1::ServerlessNegInfo::Representation
      
          property :state, as: 'state'
          property :storage_bucket, as: 'storageBucket', class: Google::Apis::NetworkmanagementV1::StorageBucketInfo, decorator: Google::Apis::NetworkmanagementV1::StorageBucketInfo::Representation
      
          property :vpc_connector, as: 'vpcConnector', class: Google::Apis::NetworkmanagementV1::VpcConnectorInfo, decorator: Google::Apis::NetworkmanagementV1::VpcConnectorInfo::Representation
      
          property :vpn_gateway, as: 'vpnGateway', class: Google::Apis::NetworkmanagementV1::VpnGatewayInfo, decorator: Google::Apis::NetworkmanagementV1::VpnGatewayInfo::Representation
      
          property :vpn_tunnel, as: 'vpnTunnel', class: Google::Apis::NetworkmanagementV1::VpnTunnelInfo, decorator: Google::Apis::NetworkmanagementV1::VpnTunnelInfo::Representation
      
        end
      end
      
      class StorageBucketInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
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
      
      class Trace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint_info, as: 'endpointInfo', class: Google::Apis::NetworkmanagementV1::EndpointInfo, decorator: Google::Apis::NetworkmanagementV1::EndpointInfo::Representation
      
          property :forward_trace_id, as: 'forwardTraceId'
          collection :steps, as: 'steps', class: Google::Apis::NetworkmanagementV1::Step, decorator: Google::Apis::NetworkmanagementV1::Step::Representation
      
        end
      end
      
      class VpcConnectorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :location, as: 'location'
          property :uri, as: 'uri'
        end
      end
      
      class VpcFlowLogsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_interval, as: 'aggregationInterval'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :filter_expr, as: 'filterExpr'
          property :flow_sampling, as: 'flowSampling'
          property :interconnect_attachment, as: 'interconnectAttachment'
          hash :labels, as: 'labels'
          property :metadata, as: 'metadata'
          collection :metadata_fields, as: 'metadataFields'
          property :name, as: 'name'
          property :state, as: 'state'
          property :target_resource_state, as: 'targetResourceState'
          property :update_time, as: 'updateTime'
          property :vpn_tunnel, as: 'vpnTunnel'
        end
      end
      
      class VpnGatewayInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :ip_address, as: 'ipAddress'
          property :network_uri, as: 'networkUri'
          property :region, as: 'region'
          property :uri, as: 'uri'
          property :vpn_tunnel_uri, as: 'vpnTunnelUri'
        end
      end
      
      class VpnTunnelInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :network_uri, as: 'networkUri'
          property :region, as: 'region'
          property :remote_gateway, as: 'remoteGateway'
          property :remote_gateway_ip, as: 'remoteGatewayIp'
          property :routing_type, as: 'routingType'
          property :source_gateway, as: 'sourceGateway'
          property :source_gateway_ip, as: 'sourceGatewayIp'
          property :uri, as: 'uri'
        end
      end
      
      class WebPath
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :destination, as: 'destination'
          property :display_name, as: 'displayName'
          property :interval, as: 'interval'
          property :monitoring_enabled, as: 'monitoringEnabled'
          property :monitoring_policy_display_name, as: 'monitoringPolicyDisplayName'
          property :monitoring_policy_id, as: 'monitoringPolicyId'
          property :monitoring_status, as: 'monitoringStatus'
          property :name, as: 'name'
          collection :provider_tags, as: 'providerTags', class: Google::Apis::NetworkmanagementV1::ProviderTag, decorator: Google::Apis::NetworkmanagementV1::ProviderTag::Representation
      
          property :provider_ui_uri, as: 'providerUiUri'
          property :related_network_path_id, as: 'relatedNetworkPathId'
          property :source_monitoring_point_id, as: 'sourceMonitoringPointId'
          property :update_time, as: 'updateTime'
          property :workflow_type, as: 'workflowType'
        end
      end
    end
  end
end
