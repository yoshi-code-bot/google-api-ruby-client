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
    module NetworkconnectivityV1
      
      # The request for HubService.AcceptHubSpoke.
      class AcceptHubSpokeRequest
        include Google::Apis::Core::Hashable
      
        # Optional. A request ID to identify requests. Specify a unique request ID so
        # that if you must retry your request, the server knows to ignore the request if
        # it has already been completed. The server guarantees that a request doesn't
        # result in creation of duplicate commitments for at least 60 minutes. For
        # example, consider a situation where you make an initial request and the
        # request times out. If you make the request again with the same request ID, the
        # server can check to see whether the original operation was received. If it was,
        # the server ignores the second request. This behavior prevents clients from
        # mistakenly creating duplicate commitments. The request ID must be a valid UUID,
        # with the exception that zero UUID is not supported (00000000-0000-0000-0000-
        # 000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Required. The URI of the spoke to accept into the hub.
        # Corresponds to the JSON property `spokeUri`
        # @return [String]
        attr_accessor :spoke_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
          @spoke_uri = args[:spoke_uri] if args.key?(:spoke_uri)
        end
      end
      
      # The response for HubService.AcceptHubSpoke.
      class AcceptHubSpokeResponse
        include Google::Apis::Core::Hashable
      
        # A Network Connectivity Center spoke represents one or more network
        # connectivity resources. When you create a spoke, you associate it with a hub.
        # You must also identify a value for exactly one of the following fields: *
        # linked_vpn_tunnels * linked_interconnect_attachments *
        # linked_router_appliance_instances * linked_vpc_network
        # Corresponds to the JSON property `spoke`
        # @return [Google::Apis::NetworkconnectivityV1::Spoke]
        attr_accessor :spoke
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @spoke = args[:spoke] if args.key?(:spoke)
        end
      end
      
      # The request for HubService.AcceptSpokeUpdate.
      class AcceptSpokeUpdateRequest
        include Google::Apis::Core::Hashable
      
        # Optional. A request ID to identify requests. Specify a unique request ID so
        # that if you must retry your request, the server knows to ignore the request if
        # it has already been completed. The server guarantees that a request doesn't
        # result in creation of duplicate commitments for at least 60 minutes. For
        # example, consider a situation where you make an initial request and the
        # request times out. If you make the request again with the same request ID, the
        # server can check to see whether the original operation was received. If it was,
        # the server ignores the second request. This behavior prevents clients from
        # mistakenly creating duplicate commitments. The request ID must be a valid UUID,
        # with the exception that zero UUID is not supported (00000000-0000-0000-0000-
        # 000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Required. The etag of the spoke to accept update.
        # Corresponds to the JSON property `spokeEtag`
        # @return [String]
        attr_accessor :spoke_etag
      
        # Required. The URI of the spoke to accept update.
        # Corresponds to the JSON property `spokeUri`
        # @return [String]
        attr_accessor :spoke_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
          @spoke_etag = args[:spoke_etag] if args.key?(:spoke_etag)
          @spoke_uri = args[:spoke_uri] if args.key?(:spoke_uri)
        end
      end
      
      # Range auto-allocation options, to be optionally used when CIDR block is not
      # explicitly set.
      class AllocationOptions
        include Google::Apis::Core::Hashable
      
        # Optional. Allocation strategy Not setting this field when the allocation is
        # requested means an implementation defined strategy is used.
        # Corresponds to the JSON property `allocationStrategy`
        # @return [String]
        attr_accessor :allocation_strategy
      
        # Optional. This field must be set only when allocation_strategy is set to
        # RANDOM_FIRST_N_AVAILABLE. The value should be the maximum expected parallelism
        # of range creation requests issued to the same space of peered netwroks.
        # Corresponds to the JSON property `firstAvailableRangesLookupSize`
        # @return [Fixnum]
        attr_accessor :first_available_ranges_lookup_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allocation_strategy = args[:allocation_strategy] if args.key?(:allocation_strategy)
          @first_available_ranges_lookup_size = args[:first_available_ranges_lookup_size] if args.key?(:first_available_ranges_lookup_size)
        end
      end
      
      # Specifies the audit configuration for a service. The configuration determines
      # which permission types are logged, and what identities, if any, are exempted
      # from logging. An AuditConfig must have one or more AuditLogConfigs. If there
      # are AuditConfigs for both `allServices` and a specific service, the union of
      # the two AuditConfigs is used for that service: the log_types specified in each
      # AuditConfig are enabled, and the exempted_members in each AuditLogConfig are
      # exempted. Example Policy with multiple AuditConfigs: ` "audit_configs": [ ` "
      # service": "allServices", "audit_log_configs": [ ` "log_type": "DATA_READ", "
      # exempted_members": [ "user:jose@example.com" ] `, ` "log_type": "DATA_WRITE" `,
      # ` "log_type": "ADMIN_READ" ` ] `, ` "service": "sampleservice.googleapis.com",
      # "audit_log_configs": [ ` "log_type": "DATA_READ" `, ` "log_type": "DATA_WRITE"
      # , "exempted_members": [ "user:aliya@example.com" ] ` ] ` ] ` For sampleservice,
      # this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also
      # exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com`
      # from DATA_WRITE logging.
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::NetworkconnectivityV1::AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # Specifies a service that will be enabled for audit logging. For example, `
        # storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special
        # value that covers all services.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_log_configs = args[:audit_log_configs] if args.key?(:audit_log_configs)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Provides the configuration for logging a type of permissions. Example: ` "
      # audit_log_configs": [ ` "log_type": "DATA_READ", "exempted_members": [ "user:
      # jose@example.com" ] `, ` "log_type": "DATA_WRITE" ` ] ` This enables '
      # DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from
      # DATA_READ logging.
      class AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the identities that do not cause logging for this type of permission.
        # Follows the same format of Binding.members.
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # The log type that this config enables.
        # Corresponds to the JSON property `logType`
        # @return [String]
        attr_accessor :log_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @log_type = args[:log_type] if args.key?(:log_type)
        end
      end
      
      # The auto-accept setting for a group controls whether proposed spokes are
      # automatically attached to the hub. If auto-accept is enabled, the spoke
      # immediately is attached to the hub and becomes part of the group. In this case,
      # the new spoke is in the ACTIVE state. If auto-accept is disabled, the spoke
      # goes to the INACTIVE state, and it must be reviewed and accepted by a hub
      # administrator.
      class AutoAccept
        include Google::Apis::Core::Hashable
      
        # Optional. A list of project ids or project numbers for which you want to
        # enable auto-accept. The auto-accept setting is applied to spokes being created
        # or updated in these projects.
        # Corresponds to the JSON property `autoAcceptProjects`
        # @return [Array<String>]
        attr_accessor :auto_accept_projects
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_accept_projects = args[:auto_accept_projects] if args.key?(:auto_accept_projects)
        end
      end
      
      # Associates `members`, or principals, with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec. Example (Comparison): title:
        # "Summary size limit" description: "Determines if a summary is less than 100
        # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
        # Requestor is owner" description: "Determines if requestor is the document
        # owner" expression: "document.owner == request.auth.claims.email" Example (
        # Logic): title: "Public documents" description: "Determine whether the document
        # should be publicly visible" expression: "document.type != 'private' &&
        # document.type != 'internal'" Example (Data Manipulation): title: "Notification
        # string" description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)" The
        # exact variables and functions that may be referenced within an expression are
        # determined by the service that evaluates it. See the service documentation for
        # additional information.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::NetworkconnectivityV1::Expr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Google Cloud resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. Does
        # not include identities that come from external identity providers (IdPs)
        # through identity federation. * `user:`emailid``: An email address that
        # represents a specific Google account. For example, `alice@example.com` . * `
        # serviceAccount:`emailid``: An email address that represents a Google service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`. * `
        # serviceAccount:`projectid`.svc.id.goog[`namespace`/`kubernetes-sa`]`: An
        # identifier for a [Kubernetes service account](https://cloud.google.com/
        # kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-
        # project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:`emailid``: An
        # email address that represents a Google group. For example, `admins@example.com`
        # . * `domain:`domain``: The G Suite domain (primary) that represents all the
        # users of that domain. For example, `google.com` or `example.com`. * `principal:
        # //iam.googleapis.com/locations/global/workforcePools/`pool_id`/subject/`
        # subject_attribute_value``: A single identity in a workforce identity pool. * `
        # principalSet://iam.googleapis.com/locations/global/workforcePools/`pool_id`/
        # group/`group_id``: All workforce identities in a group. * `principalSet://iam.
        # googleapis.com/locations/global/workforcePools/`pool_id`/attribute.`
        # attribute_name`/`attribute_value``: All workforce identities with a specific
        # attribute value. * `principalSet://iam.googleapis.com/locations/global/
        # workforcePools/`pool_id`/*`: All identities in a workforce identity pool. * `
        # principal://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/subject/`subject_attribute_value``: A single
        # identity in a workload identity pool. * `principalSet://iam.googleapis.com/
        # projects/`project_number`/locations/global/workloadIdentityPools/`pool_id`/
        # group/`group_id``: A workload identity pool group. * `principalSet://iam.
        # googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/attribute.`attribute_name`/`attribute_value``:
        # All identities in a workload identity pool with a certain attribute. * `
        # principalSet://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/*`: All identities in a workload identity pool.
        # * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For example, `
        # alice@example.com?uid=123456789012345678901`. If the user is recovered, this
        # value reverts to `user:`emailid`` and the recovered user retains the role in
        # the binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email
        # address (plus unique identifier) representing a service account that has been
        # recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding. * `
        # deleted:principal://iam.googleapis.com/locations/global/workforcePools/`
        # pool_id`/subject/`subject_attribute_value``: Deleted single identity in a
        # workforce identity pool. For example, `deleted:principal://iam.googleapis.com/
        # locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`. For an overview of the IAM
        # roles and permissions, see the [IAM documentation](https://cloud.google.com/
        # iam/docs/roles-overview). For a list of the available pre-defined roles, see [
        # here](https://cloud.google.com/iam/docs/understanding-roles).
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Allow the producer to specify which consumers can connect to it.
      class ConsumerPscConfig
        include Google::Apis::Core::Hashable
      
        # Required. The project ID or project number of the consumer project. This
        # project is the one that the consumer uses to interact with the producer
        # instance. From the perspective of a consumer who's created a producer instance,
        # this is the project of the producer instance. Format: 'projects/' Eg. '
        # projects/consumer-project' or 'projects/1234'
        # Corresponds to the JSON property `consumerInstanceProject`
        # @return [String]
        attr_accessor :consumer_instance_project
      
        # This is used in PSC consumer ForwardingRule to control whether the PSC
        # endpoint can be accessed from another region.
        # Corresponds to the JSON property `disableGlobalAccess`
        # @return [Boolean]
        attr_accessor :disable_global_access
        alias_method :disable_global_access?, :disable_global_access
      
        # The requested IP version for the PSC connection.
        # Corresponds to the JSON property `ipVersion`
        # @return [String]
        attr_accessor :ip_version
      
        # The resource path of the consumer network where PSC connections are allowed to
        # be created in. Note, this network does not need be in the ConsumerPscConfig.
        # project in the case of SharedVPC. Example: projects/`projectNumOrId`/global/
        # networks/`networkId`.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Immutable. Deprecated. Use producer_instance_metadata instead. An immutable
        # identifier for the producer instance.
        # Corresponds to the JSON property `producerInstanceId`
        # @return [String]
        attr_accessor :producer_instance_id
      
        # Immutable. An immutable map for the producer instance metadata.
        # Corresponds to the JSON property `producerInstanceMetadata`
        # @return [Hash<String,String>]
        attr_accessor :producer_instance_metadata
      
        # The consumer project where PSC connections are allowed to be created in.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # Output only. A map to store mapping between customer vip and target service
        # attachment. Only service attachment with producer specified ip addresses are
        # stored here.
        # Corresponds to the JSON property `serviceAttachmentIpAddressMap`
        # @return [Hash<String,String>]
        attr_accessor :service_attachment_ip_address_map
      
        # Output only. Overall state of PSC Connections management for this consumer psc
        # config.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumer_instance_project = args[:consumer_instance_project] if args.key?(:consumer_instance_project)
          @disable_global_access = args[:disable_global_access] if args.key?(:disable_global_access)
          @ip_version = args[:ip_version] if args.key?(:ip_version)
          @network = args[:network] if args.key?(:network)
          @producer_instance_id = args[:producer_instance_id] if args.key?(:producer_instance_id)
          @producer_instance_metadata = args[:producer_instance_metadata] if args.key?(:producer_instance_metadata)
          @project = args[:project] if args.key?(:project)
          @service_attachment_ip_address_map = args[:service_attachment_ip_address_map] if args.key?(:service_attachment_ip_address_map)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # PSC connection details on consumer side.
      class ConsumerPscConnection
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::NetworkconnectivityV1::GoogleRpcStatus]
        attr_accessor :error
      
        # Describes the cause of the error with structured details. Example of an error
        # when contacting the "pubsub.googleapis.com" API when it is not enabled: ` "
        # reason": "API_DISABLED" "domain": "googleapis.com" "metadata": ` "resource": "
        # projects/123", "service": "pubsub.googleapis.com" ` ` This response indicates
        # that the pubsub.googleapis.com API is not enabled. Example of an error that is
        # returned when attempting to create a Spanner instance in a region that is out
        # of stock: ` "reason": "STOCKOUT" "domain": "spanner.googleapis.com", "metadata"
        # : ` "availableRegions": "us-central1,us-east2" ` `
        # Corresponds to the JSON property `errorInfo`
        # @return [Google::Apis::NetworkconnectivityV1::GoogleRpcErrorInfo]
        attr_accessor :error_info
      
        # The error type indicates whether the error is consumer facing, producer facing
        # or system internal.
        # Corresponds to the JSON property `errorType`
        # @return [String]
        attr_accessor :error_type
      
        # The URI of the consumer forwarding rule created. Example: projects/`
        # projectNumOrId`/regions/us-east1/networks/`resourceId`.
        # Corresponds to the JSON property `forwardingRule`
        # @return [String]
        attr_accessor :forwarding_rule
      
        # The last Compute Engine operation to setup PSC connection.
        # Corresponds to the JSON property `gceOperation`
        # @return [String]
        attr_accessor :gce_operation
      
        # The IP literal allocated on the consumer network for the PSC forwarding rule
        # that is created to connect to the producer service attachment in this service
        # connection map.
        # Corresponds to the JSON property `ip`
        # @return [String]
        attr_accessor :ip
      
        # The requested IP version for the PSC connection.
        # Corresponds to the JSON property `ipVersion`
        # @return [String]
        attr_accessor :ip_version
      
        # The consumer network whose PSC forwarding rule is connected to the service
        # attachments in this service connection map. Note that the network could be on
        # a different project (shared VPC).
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Immutable. Deprecated. Use producer_instance_metadata instead. An immutable
        # identifier for the producer instance.
        # Corresponds to the JSON property `producerInstanceId`
        # @return [String]
        attr_accessor :producer_instance_id
      
        # Immutable. An immutable map for the producer instance metadata.
        # Corresponds to the JSON property `producerInstanceMetadata`
        # @return [Hash<String,String>]
        attr_accessor :producer_instance_metadata
      
        # The consumer project whose PSC forwarding rule is connected to the service
        # attachments in this service connection map.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # The PSC connection id of the PSC forwarding rule connected to the service
        # attachments in this service connection map.
        # Corresponds to the JSON property `pscConnectionId`
        # @return [String]
        attr_accessor :psc_connection_id
      
        # Output only. The URI of the selected subnetwork selected to allocate IP
        # address for this connection.
        # Corresponds to the JSON property `selectedSubnetwork`
        # @return [String]
        attr_accessor :selected_subnetwork
      
        # The URI of a service attachment which is the target of the PSC connection.
        # Corresponds to the JSON property `serviceAttachmentUri`
        # @return [String]
        attr_accessor :service_attachment_uri
      
        # The state of the PSC connection.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @error_info = args[:error_info] if args.key?(:error_info)
          @error_type = args[:error_type] if args.key?(:error_type)
          @forwarding_rule = args[:forwarding_rule] if args.key?(:forwarding_rule)
          @gce_operation = args[:gce_operation] if args.key?(:gce_operation)
          @ip = args[:ip] if args.key?(:ip)
          @ip_version = args[:ip_version] if args.key?(:ip_version)
          @network = args[:network] if args.key?(:network)
          @producer_instance_id = args[:producer_instance_id] if args.key?(:producer_instance_id)
          @producer_instance_metadata = args[:producer_instance_metadata] if args.key?(:producer_instance_metadata)
          @project = args[:project] if args.key?(:project)
          @psc_connection_id = args[:psc_connection_id] if args.key?(:psc_connection_id)
          @selected_subnetwork = args[:selected_subnetwork] if args.key?(:selected_subnetwork)
          @service_attachment_uri = args[:service_attachment_uri] if args.key?(:service_attachment_uri)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec. Example (Comparison): title:
      # "Summary size limit" description: "Determines if a summary is less than 100
      # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
      # Requestor is owner" description: "Determines if requestor is the document
      # owner" expression: "document.owner == request.auth.claims.email" Example (
      # Logic): title: "Public documents" description: "Determine whether the document
      # should be publicly visible" expression: "document.type != 'private' &&
      # document.type != 'internal'" Example (Data Manipulation): title: "Notification
      # string" description: "Create a notification string with a timestamp."
      # expression: "'New message received at ' + string(document.create_time)" The
      # exact variables and functions that may be referenced within an expression are
      # determined by the service that evaluates it. See the service documentation for
      # additional information.
      class Expr
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the expression. This is a longer text which describes
        # the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in Common Expression Language syntax.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Optional. String indicating the location of the expression for error reporting,
        # e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Title for the expression, i.e. a short string describing its purpose.
        # This can be used e.g. in UIs which allow to enter the expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Filter matches L4 traffic.
      class Filter
        include Google::Apis::Core::Hashable
      
        # Optional. The destination IP range of outgoing packets that this policy-based
        # route applies to. Default is "0.0.0.0/0" if protocol version is IPv4 and "::/0"
        # if protocol version is IPv6.
        # Corresponds to the JSON property `destRange`
        # @return [String]
        attr_accessor :dest_range
      
        # Optional. The IP protocol that this policy-based route applies to. Valid
        # values are 'TCP', 'UDP', and 'ALL'. Default is 'ALL'.
        # Corresponds to the JSON property `ipProtocol`
        # @return [String]
        attr_accessor :ip_protocol
      
        # Required. Internet protocol versions this policy-based route applies to. IPV4
        # and IPV6 is supported.
        # Corresponds to the JSON property `protocolVersion`
        # @return [String]
        attr_accessor :protocol_version
      
        # Optional. The source IP range of outgoing packets that this policy-based route
        # applies to. Default is "0.0.0.0/0" if protocol version is IPv4 and "::/0" if
        # protocol version is IPv6.
        # Corresponds to the JSON property `srcRange`
        # @return [String]
        attr_accessor :src_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dest_range = args[:dest_range] if args.key?(:dest_range)
          @ip_protocol = args[:ip_protocol] if args.key?(:ip_protocol)
          @protocol_version = args[:protocol_version] if args.key?(:protocol_version)
          @src_range = args[:src_range] if args.key?(:src_range)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class GoogleLongrunningCancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response message for Operations.ListOperations.
      class GoogleLongrunningListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::NetworkconnectivityV1::GoogleLongrunningOperation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class GoogleLongrunningOperation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::NetworkconnectivityV1::GoogleRpcStatus]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Describes the cause of the error with structured details. Example of an error
      # when contacting the "pubsub.googleapis.com" API when it is not enabled: ` "
      # reason": "API_DISABLED" "domain": "googleapis.com" "metadata": ` "resource": "
      # projects/123", "service": "pubsub.googleapis.com" ` ` This response indicates
      # that the pubsub.googleapis.com API is not enabled. Example of an error that is
      # returned when attempting to create a Spanner instance in a region that is out
      # of stock: ` "reason": "STOCKOUT" "domain": "spanner.googleapis.com", "metadata"
      # : ` "availableRegions": "us-central1,us-east2" ` `
      class GoogleRpcErrorInfo
        include Google::Apis::Core::Hashable
      
        # The logical grouping to which the "reason" belongs. The error domain is
        # typically the registered service name of the tool or product that generates
        # the error. Example: "pubsub.googleapis.com". If the error is generated by some
        # common infrastructure, the error domain must be a globally unique value that
        # identifies the infrastructure. For Google API infrastructure, the error domain
        # is "googleapis.com".
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Additional structured details about this error. Keys must match a regular
        # expression of `a-z+` but should ideally be lowerCamelCase. Also, they must be
        # limited to 64 characters in length. When identifying the current value of an
        # exceeded limit, the units should be contained in the key, not the value. For
        # example, rather than ``"instanceLimit": "100/request"``, should be returned as,
        # ``"instanceLimitPerRequest": "100"``, if the client exceeds the number of
        # instances that can be created in a single (batch) request.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # The reason of the error. This is a constant value that identifies the
        # proximate cause of the error. Error reasons are unique within a particular
        # domain of errors. This should be at most 63 characters and match a regular
        # expression of `A-Z+[A-Z0-9]`, which represents UPPER_SNAKE_CASE.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
          @metadata = args[:metadata] if args.key?(:metadata)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class GoogleRpcStatus
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # A group represents a subset of spokes attached to a hub.
      class Group
        include Google::Apis::Core::Hashable
      
        # The auto-accept setting for a group controls whether proposed spokes are
        # automatically attached to the hub. If auto-accept is enabled, the spoke
        # immediately is attached to the hub and becomes part of the group. In this case,
        # the new spoke is in the ACTIVE state. If auto-accept is disabled, the spoke
        # goes to the INACTIVE state, and it must be reviewed and accepted by a hub
        # administrator.
        # Corresponds to the JSON property `autoAccept`
        # @return [Google::Apis::NetworkconnectivityV1::AutoAccept]
        attr_accessor :auto_accept
      
        # Output only. The time the group was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The description of the group.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Labels in key-value pair format. For more information about labels,
        # see [Requirements for labels](https://cloud.google.com/resource-manager/docs/
        # creating-managing-labels#requirements).
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Immutable. The name of the group. Group names must be unique. They use the
        # following form: `projects/`project_number`/locations/global/hubs/`hub`/groups/`
        # group_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The name of the route table that corresponds to this group. They
        # use the following form: `projects/`project_number`/locations/global/hubs/`
        # hub_id`/routeTables/`route_table_id``
        # Corresponds to the JSON property `routeTable`
        # @return [String]
        attr_accessor :route_table
      
        # Output only. The current lifecycle state of this group.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The Google-generated UUID for the group. This value is unique
        # across all group resources. If a group is deleted and another with the same
        # name is created, the new route table is assigned a different unique_id.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time the group was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_accept = args[:auto_accept] if args.key?(:auto_accept)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @route_table = args[:route_table] if args.key?(:route_table)
          @state = args[:state] if args.key?(:state)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A Network Connectivity Center hub is a global management resource to which you
      # attach spokes. A single hub can contain spokes from multiple regions. However,
      # if any of a hub's spokes use the site-to-site data transfer feature, the
      # resources associated with those spokes must all be in the same VPC network.
      # Spokes that do not use site-to-site data transfer can be associated with any
      # VPC network in your project.
      class Hub
        include Google::Apis::Core::Hashable
      
        # Output only. The time the hub was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. An optional description of the hub.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Whether Private Service Connect connection propagation is enabled
        # for the hub. If true, Private Service Connect endpoints in VPC spokes attached
        # to the hub are made accessible to other VPC spokes attached to the hub. The
        # default value is false.
        # Corresponds to the JSON property `exportPsc`
        # @return [Boolean]
        attr_accessor :export_psc
        alias_method :export_psc?, :export_psc
      
        # Optional labels in key-value pair format. For more information about labels,
        # see [Requirements for labels](https://cloud.google.com/resource-manager/docs/
        # creating-managing-labels#requirements).
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Immutable. The name of the hub. Hub names must be unique. They use the
        # following form: `projects/`project_number`/locations/global/hubs/`hub_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The policy mode of this hub. This field can be either PRESET or
        # CUSTOM. If unspecified, the policy_mode defaults to PRESET.
        # Corresponds to the JSON property `policyMode`
        # @return [String]
        attr_accessor :policy_mode
      
        # Optional. The topology implemented in this hub. Currently, this field is only
        # used when policy_mode = PRESET. The available preset topologies are MESH and
        # STAR. If preset_topology is unspecified and policy_mode = PRESET, the
        # preset_topology defaults to MESH. When policy_mode = CUSTOM, the
        # preset_topology is set to PRESET_TOPOLOGY_UNSPECIFIED.
        # Corresponds to the JSON property `presetTopology`
        # @return [String]
        attr_accessor :preset_topology
      
        # Output only. The route tables that belong to this hub. They use the following
        # form: `projects/`project_number`/locations/global/hubs/`hub_id`/routeTables/`
        # route_table_id`` This field is read-only. Network Connectivity Center
        # automatically populates it based on the route tables nested under the hub.
        # Corresponds to the JSON property `routeTables`
        # @return [Array<String>]
        attr_accessor :route_tables
      
        # Output only. The VPC networks associated with this hub's spokes. This field is
        # read-only. Network Connectivity Center automatically populates it based on the
        # set of spokes attached to the hub.
        # Corresponds to the JSON property `routingVpcs`
        # @return [Array<Google::Apis::NetworkconnectivityV1::RoutingVpc>]
        attr_accessor :routing_vpcs
      
        # Summarizes information about the spokes associated with a hub. The summary
        # includes a count of spokes according to type and according to state. If any
        # spokes are inactive, the summary also lists the reasons they are inactive,
        # including a count for each reason.
        # Corresponds to the JSON property `spokeSummary`
        # @return [Google::Apis::NetworkconnectivityV1::SpokeSummary]
        attr_accessor :spoke_summary
      
        # Output only. The current lifecycle state of this hub.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The Google-generated UUID for the hub. This value is unique
        # across all hub resources. If a hub is deleted and another with the same name
        # is created, the new hub is assigned a different unique_id.
        # Corresponds to the JSON property `uniqueId`
        # @return [String]
        attr_accessor :unique_id
      
        # Output only. The time the hub was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @export_psc = args[:export_psc] if args.key?(:export_psc)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @policy_mode = args[:policy_mode] if args.key?(:policy_mode)
          @preset_topology = args[:preset_topology] if args.key?(:preset_topology)
          @route_tables = args[:route_tables] if args.key?(:route_tables)
          @routing_vpcs = args[:routing_vpcs] if args.key?(:routing_vpcs)
          @spoke_summary = args[:spoke_summary] if args.key?(:spoke_summary)
          @state = args[:state] if args.key?(:state)
          @unique_id = args[:unique_id] if args.key?(:unique_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A hub status entry represents the status of a set of propagated Private
      # Service Connect connections grouped by certain fields.
      class HubStatusEntry
        include Google::Apis::Core::Hashable
      
        # The number of propagated Private Service Connect connections with this status.
        # If the `group_by` field was not set in the request message, the value of this
        # field is 1.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # The fields that this entry is grouped by. This has the same value as the `
        # group_by` field in the request message.
        # Corresponds to the JSON property `groupBy`
        # @return [String]
        attr_accessor :group_by
      
        # The status of one or more propagated Private Service Connect connections in a
        # hub.
        # Corresponds to the JSON property `pscPropagationStatus`
        # @return [Google::Apis::NetworkconnectivityV1::PscPropagationStatus]
        attr_accessor :psc_propagation_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @group_by = args[:group_by] if args.key?(:group_by)
          @psc_propagation_status = args[:psc_propagation_status] if args.key?(:psc_propagation_status)
        end
      end
      
      # InterconnectAttachment that this route applies to.
      class InterconnectAttachment
        include Google::Apis::Core::Hashable
      
        # Optional. Cloud region to install this policy-based route on interconnect
        # attachment. Use `all` to install it on all interconnect attachments.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # The internal range resource for IPAM operations within a VPC network. Used to
      # represent a private address range along with behavioral characteristics of
      # that range (its usage and peering behavior). Networking resources can link to
      # this range if they are created as belonging to it.
      class InternalRange
        include Google::Apis::Core::Hashable
      
        # Range auto-allocation options, to be optionally used when CIDR block is not
        # explicitly set.
        # Corresponds to the JSON property `allocationOptions`
        # @return [Google::Apis::NetworkconnectivityV1::AllocationOptions]
        attr_accessor :allocation_options
      
        # Time when the internal range was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A description of this resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. ExcludeCidrRanges flag. Specifies a set of CIDR blocks that allows
        # exclusion of particular CIDR ranges from the auto-allocation process, without
        # having to reserve these blocks
        # Corresponds to the JSON property `excludeCidrRanges`
        # @return [Array<String>]
        attr_accessor :exclude_cidr_ranges
      
        # Optional. Immutable ranges cannot have their fields modified, except for
        # labels and description.
        # Corresponds to the JSON property `immutable`
        # @return [Boolean]
        attr_accessor :immutable
        alias_method :immutable?, :immutable
      
        # Optional. The IP range that this internal range defines. NOTE: IPv6 ranges are
        # limited to usage=EXTERNAL_TO_VPC and peering=FOR_SELF. NOTE: For IPv6 Ranges
        # this field is compulsory, i.e. the address range must be specified explicitly.
        # Corresponds to the JSON property `ipCidrRange`
        # @return [String]
        attr_accessor :ip_cidr_range
      
        # User-defined labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Specification for migration with source and target resource names.
        # Corresponds to the JSON property `migration`
        # @return [Google::Apis::NetworkconnectivityV1::Migration]
        attr_accessor :migration
      
        # Identifier. The name of an internal range. Format: projects/`project`/
        # locations/`location`/internalRanges/`internal_range` See: https://google.aip.
        # dev/122#fields-representing-resource-names
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. The URL or resource ID of the network in which to reserve the
        # internal range. The network cannot be deleted if there are any reserved
        # internal ranges referring to it. Legacy networks are not supported. For
        # example: https://www.googleapis.com/compute/v1/projects/`project`/locations/
        # global/networks/`network` projects/`project`/locations/global/networks/`
        # network` `network`
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Optional. Types of resources that are allowed to overlap with the current
        # internal range.
        # Corresponds to the JSON property `overlaps`
        # @return [Array<String>]
        attr_accessor :overlaps
      
        # Optional. The type of peering set for this internal range.
        # Corresponds to the JSON property `peering`
        # @return [String]
        attr_accessor :peering
      
        # Optional. An alternate to ip_cidr_range. Can be set when trying to create an
        # IPv4 reservation that automatically finds a free range of the given size. If
        # both ip_cidr_range and prefix_length are set, there is an error if the range
        # sizes do not match. Can also be used during updates to change the range size.
        # NOTE: For IPv6 this field only works if ip_cidr_range is set as well, and both
        # fields must match. In other words, with IPv6 this field only works as a
        # redundant parameter.
        # Corresponds to the JSON property `prefixLength`
        # @return [Fixnum]
        attr_accessor :prefix_length
      
        # Optional. Can be set to narrow down or pick a different address space while
        # searching for a free range. If not set, defaults to the "10.0.0.0/8" address
        # space. This can be used to search in other rfc-1918 address spaces like "172.
        # 16.0.0/12" and "192.168.0.0/16" or non-rfc-1918 address spaces used in the VPC.
        # Corresponds to the JSON property `targetCidrRange`
        # @return [Array<String>]
        attr_accessor :target_cidr_range
      
        # Time when the internal range was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Optional. The type of usage set for this InternalRange.
        # Corresponds to the JSON property `usage`
        # @return [String]
        attr_accessor :usage
      
        # Output only. The list of resources that refer to this internal range.
        # Resources that use the internal range for their range allocation are referred
        # to as users of the range. Other resources mark themselves as users while doing
        # so by creating a reference to this internal range. Having a user, based on
        # this reference, prevents deletion of the internal range referred to. Can be
        # empty.
        # Corresponds to the JSON property `users`
        # @return [Array<String>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allocation_options = args[:allocation_options] if args.key?(:allocation_options)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @exclude_cidr_ranges = args[:exclude_cidr_ranges] if args.key?(:exclude_cidr_ranges)
          @immutable = args[:immutable] if args.key?(:immutable)
          @ip_cidr_range = args[:ip_cidr_range] if args.key?(:ip_cidr_range)
          @labels = args[:labels] if args.key?(:labels)
          @migration = args[:migration] if args.key?(:migration)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @overlaps = args[:overlaps] if args.key?(:overlaps)
          @peering = args[:peering] if args.key?(:peering)
          @prefix_length = args[:prefix_length] if args.key?(:prefix_length)
          @target_cidr_range = args[:target_cidr_range] if args.key?(:target_cidr_range)
          @update_time = args[:update_time] if args.key?(:update_time)
          @usage = args[:usage] if args.key?(:usage)
          @users = args[:users] if args.key?(:users)
        end
      end
      
      # A collection of VLAN attachment resources. These resources should be redundant
      # attachments that all advertise the same prefixes to Google Cloud.
      # Alternatively, in active/passive configurations, all attachments should be
      # capable of advertising the same prefixes.
      class LinkedInterconnectAttachments
        include Google::Apis::Core::Hashable
      
        # Optional. Hub routes fully encompassed by include import ranges are included
        # during import from hub.
        # Corresponds to the JSON property `includeImportRanges`
        # @return [Array<String>]
        attr_accessor :include_import_ranges
      
        # A value that controls whether site-to-site data transfer is enabled for these
        # resources. Data transfer is available only in [supported locations](https://
        # cloud.google.com/network-connectivity/docs/network-connectivity-center/
        # concepts/locations).
        # Corresponds to the JSON property `siteToSiteDataTransfer`
        # @return [Boolean]
        attr_accessor :site_to_site_data_transfer
        alias_method :site_to_site_data_transfer?, :site_to_site_data_transfer
      
        # The URIs of linked interconnect attachment resources
        # Corresponds to the JSON property `uris`
        # @return [Array<String>]
        attr_accessor :uris
      
        # Output only. The VPC network where these VLAN attachments are located.
        # Corresponds to the JSON property `vpcNetwork`
        # @return [String]
        attr_accessor :vpc_network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_import_ranges = args[:include_import_ranges] if args.key?(:include_import_ranges)
          @site_to_site_data_transfer = args[:site_to_site_data_transfer] if args.key?(:site_to_site_data_transfer)
          @uris = args[:uris] if args.key?(:uris)
          @vpc_network = args[:vpc_network] if args.key?(:vpc_network)
        end
      end
      
      # 
      class LinkedProducerVpcNetwork
        include Google::Apis::Core::Hashable
      
        # Optional. IP ranges encompassing the subnets to be excluded from peering.
        # Corresponds to the JSON property `excludeExportRanges`
        # @return [Array<String>]
        attr_accessor :exclude_export_ranges
      
        # Optional. IP ranges allowed to be included from peering.
        # Corresponds to the JSON property `includeExportRanges`
        # @return [Array<String>]
        attr_accessor :include_export_ranges
      
        # Immutable. The URI of the Service Consumer VPC that the Producer VPC is peered
        # with.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Immutable. The name of the VPC peering between the Service Consumer VPC and
        # the Producer VPC (defined in the Tenant project) which is added to the NCC hub.
        # This peering must be in ACTIVE state.
        # Corresponds to the JSON property `peering`
        # @return [String]
        attr_accessor :peering
      
        # Output only. The URI of the Producer VPC.
        # Corresponds to the JSON property `producerNetwork`
        # @return [String]
        attr_accessor :producer_network
      
        # Output only. The proposed exclude export IP ranges waiting for hub
        # administration's approval.
        # Corresponds to the JSON property `proposedExcludeExportRanges`
        # @return [Array<String>]
        attr_accessor :proposed_exclude_export_ranges
      
        # Output only. The proposed include export IP ranges waiting for hub
        # administration's approval.
        # Corresponds to the JSON property `proposedIncludeExportRanges`
        # @return [Array<String>]
        attr_accessor :proposed_include_export_ranges
      
        # Output only. The Service Consumer Network spoke.
        # Corresponds to the JSON property `serviceConsumerVpcSpoke`
        # @return [String]
        attr_accessor :service_consumer_vpc_spoke
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclude_export_ranges = args[:exclude_export_ranges] if args.key?(:exclude_export_ranges)
          @include_export_ranges = args[:include_export_ranges] if args.key?(:include_export_ranges)
          @network = args[:network] if args.key?(:network)
          @peering = args[:peering] if args.key?(:peering)
          @producer_network = args[:producer_network] if args.key?(:producer_network)
          @proposed_exclude_export_ranges = args[:proposed_exclude_export_ranges] if args.key?(:proposed_exclude_export_ranges)
          @proposed_include_export_ranges = args[:proposed_include_export_ranges] if args.key?(:proposed_include_export_ranges)
          @service_consumer_vpc_spoke = args[:service_consumer_vpc_spoke] if args.key?(:service_consumer_vpc_spoke)
        end
      end
      
      # A collection of router appliance instances. If you configure multiple router
      # appliance instances to receive data from the same set of sites outside of
      # Google Cloud, we recommend that you associate those instances with the same
      # spoke.
      class LinkedRouterApplianceInstances
        include Google::Apis::Core::Hashable
      
        # Optional. Hub routes fully encompassed by include import ranges are included
        # during import from hub.
        # Corresponds to the JSON property `includeImportRanges`
        # @return [Array<String>]
        attr_accessor :include_import_ranges
      
        # The list of router appliance instances.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::NetworkconnectivityV1::RouterApplianceInstance>]
        attr_accessor :instances
      
        # A value that controls whether site-to-site data transfer is enabled for these
        # resources. Data transfer is available only in [supported locations](https://
        # cloud.google.com/network-connectivity/docs/network-connectivity-center/
        # concepts/locations).
        # Corresponds to the JSON property `siteToSiteDataTransfer`
        # @return [Boolean]
        attr_accessor :site_to_site_data_transfer
        alias_method :site_to_site_data_transfer?, :site_to_site_data_transfer
      
        # Output only. The VPC network where these router appliance instances are
        # located.
        # Corresponds to the JSON property `vpcNetwork`
        # @return [String]
        attr_accessor :vpc_network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_import_ranges = args[:include_import_ranges] if args.key?(:include_import_ranges)
          @instances = args[:instances] if args.key?(:instances)
          @site_to_site_data_transfer = args[:site_to_site_data_transfer] if args.key?(:site_to_site_data_transfer)
          @vpc_network = args[:vpc_network] if args.key?(:vpc_network)
        end
      end
      
      # An existing VPC network.
      class LinkedVpcNetwork
        include Google::Apis::Core::Hashable
      
        # Optional. IP ranges encompassing the subnets to be excluded from peering.
        # Corresponds to the JSON property `excludeExportRanges`
        # @return [Array<String>]
        attr_accessor :exclude_export_ranges
      
        # Optional. IP ranges allowed to be included from peering.
        # Corresponds to the JSON property `includeExportRanges`
        # @return [Array<String>]
        attr_accessor :include_export_ranges
      
        # Output only. The list of Producer VPC spokes that this VPC spoke is a service
        # consumer VPC spoke for. These producer VPCs are connected through VPC peering
        # to this spoke's backing VPC network. Because they are directly connected
        # through VPC peering, NCC export filters do not apply between the service
        # consumer VPC spoke and any of its producer VPC spokes. This VPC spoke cannot
        # be deleted as long as any of these producer VPC spokes are connected to the
        # NCC Hub.
        # Corresponds to the JSON property `producerVpcSpokes`
        # @return [Array<String>]
        attr_accessor :producer_vpc_spokes
      
        # Output only. The proposed exclude export IP ranges waiting for hub
        # administration's approval.
        # Corresponds to the JSON property `proposedExcludeExportRanges`
        # @return [Array<String>]
        attr_accessor :proposed_exclude_export_ranges
      
        # Output only. The proposed include export IP ranges waiting for hub
        # administration's approval.
        # Corresponds to the JSON property `proposedIncludeExportRanges`
        # @return [Array<String>]
        attr_accessor :proposed_include_export_ranges
      
        # Required. The URI of the VPC network resource.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclude_export_ranges = args[:exclude_export_ranges] if args.key?(:exclude_export_ranges)
          @include_export_ranges = args[:include_export_ranges] if args.key?(:include_export_ranges)
          @producer_vpc_spokes = args[:producer_vpc_spokes] if args.key?(:producer_vpc_spokes)
          @proposed_exclude_export_ranges = args[:proposed_exclude_export_ranges] if args.key?(:proposed_exclude_export_ranges)
          @proposed_include_export_ranges = args[:proposed_include_export_ranges] if args.key?(:proposed_include_export_ranges)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # A collection of Cloud VPN tunnel resources. These resources should be
      # redundant HA VPN tunnels that all advertise the same prefixes to Google Cloud.
      # Alternatively, in a passive/active configuration, all tunnels should be
      # capable of advertising the same prefixes.
      class LinkedVpnTunnels
        include Google::Apis::Core::Hashable
      
        # Optional. Hub routes fully encompassed by include import ranges are included
        # during import from hub.
        # Corresponds to the JSON property `includeImportRanges`
        # @return [Array<String>]
        attr_accessor :include_import_ranges
      
        # A value that controls whether site-to-site data transfer is enabled for these
        # resources. Data transfer is available only in [supported locations](https://
        # cloud.google.com/network-connectivity/docs/network-connectivity-center/
        # concepts/locations).
        # Corresponds to the JSON property `siteToSiteDataTransfer`
        # @return [Boolean]
        attr_accessor :site_to_site_data_transfer
        alias_method :site_to_site_data_transfer?, :site_to_site_data_transfer
      
        # The URIs of linked VPN tunnel resources.
        # Corresponds to the JSON property `uris`
        # @return [Array<String>]
        attr_accessor :uris
      
        # Output only. The VPC network where these VPN tunnels are located.
        # Corresponds to the JSON property `vpcNetwork`
        # @return [String]
        attr_accessor :vpc_network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_import_ranges = args[:include_import_ranges] if args.key?(:include_import_ranges)
          @site_to_site_data_transfer = args[:site_to_site_data_transfer] if args.key?(:site_to_site_data_transfer)
          @uris = args[:uris] if args.key?(:uris)
          @vpc_network = args[:vpc_network] if args.key?(:vpc_network)
        end
      end
      
      # Response for HubService.ListGroups method.
      class ListGroupsResponse
        include Google::Apis::Core::Hashable
      
        # The requested groups.
        # Corresponds to the JSON property `groups`
        # @return [Array<Google::Apis::NetworkconnectivityV1::Group>]
        attr_accessor :groups
      
        # The token for the next page of the response. To see more results, use this
        # value as the page_token for your next request. If this value is empty, there
        # are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Hubs that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @groups = args[:groups] if args.key?(:groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response for HubService.ListHubSpokes.
      class ListHubSpokesResponse
        include Google::Apis::Core::Hashable
      
        # The token for the next page of the response. To see more results, use this
        # value as the page_token for your next request. If this value is empty, there
        # are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The requested spokes. The spoke fields can be partially populated based on the
        # `view` field in the request message.
        # Corresponds to the JSON property `spokes`
        # @return [Array<Google::Apis::NetworkconnectivityV1::Spoke>]
        attr_accessor :spokes
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spokes = args[:spokes] if args.key?(:spokes)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response for HubService.ListHubs method.
      class ListHubsResponse
        include Google::Apis::Core::Hashable
      
        # The requested hubs.
        # Corresponds to the JSON property `hubs`
        # @return [Array<Google::Apis::NetworkconnectivityV1::Hub>]
        attr_accessor :hubs
      
        # The token for the next page of the response. To see more results, use this
        # value as the page_token for your next request. If this value is empty, there
        # are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hubs = args[:hubs] if args.key?(:hubs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response for InternalRange.ListInternalRanges
      class ListInternalRangesResponse
        include Google::Apis::Core::Hashable
      
        # Internal ranges to be returned.
        # Corresponds to the JSON property `internalRanges`
        # @return [Array<Google::Apis::NetworkconnectivityV1::InternalRange>]
        attr_accessor :internal_ranges
      
        # The next pagination token in the List response. It should be used as
        # page_token for the following request. An empty value means no more result.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @internal_ranges = args[:internal_ranges] if args.key?(:internal_ranges)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::NetworkconnectivityV1::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for PolicyBasedRoutingService.ListPolicyBasedRoutes method.
      class ListPolicyBasedRoutesResponse
        include Google::Apis::Core::Hashable
      
        # The next pagination token in the List response. It should be used as
        # page_token for the following request. An empty value means no more result.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Policy-based routes to be returned.
        # Corresponds to the JSON property `policyBasedRoutes`
        # @return [Array<Google::Apis::NetworkconnectivityV1::PolicyBasedRoute>]
        attr_accessor :policy_based_routes
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @policy_based_routes = args[:policy_based_routes] if args.key?(:policy_based_routes)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response for ListRegionalEndpoints.
      class ListRegionalEndpointsResponse
        include Google::Apis::Core::Hashable
      
        # The next pagination token in the List response. It should be used as
        # page_token for the following request. An empty value means no more result.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Regional endpoints to be returned.
        # Corresponds to the JSON property `regionalEndpoints`
        # @return [Array<Google::Apis::NetworkconnectivityV1::RegionalEndpoint>]
        attr_accessor :regional_endpoints
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @regional_endpoints = args[:regional_endpoints] if args.key?(:regional_endpoints)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response for HubService.ListRouteTables method.
      class ListRouteTablesResponse
        include Google::Apis::Core::Hashable
      
        # The token for the next page of the response. To see more results, use this
        # value as the page_token for your next request. If this value is empty, there
        # are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The requested route tables.
        # Corresponds to the JSON property `routeTables`
        # @return [Array<Google::Apis::NetworkconnectivityV1::RouteTable>]
        attr_accessor :route_tables
      
        # Hubs that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @route_tables = args[:route_tables] if args.key?(:route_tables)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response for HubService.ListRoutes method.
      class ListRoutesResponse
        include Google::Apis::Core::Hashable
      
        # The token for the next page of the response. To see more results, use this
        # value as the page_token for your next request. If this value is empty, there
        # are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The requested routes.
        # Corresponds to the JSON property `routes`
        # @return [Array<Google::Apis::NetworkconnectivityV1::Route>]
        attr_accessor :routes
      
        # RouteTables that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @routes = args[:routes] if args.key?(:routes)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response for ListServiceClasses.
      class ListServiceClassesResponse
        include Google::Apis::Core::Hashable
      
        # The next pagination token in the List response. It should be used as
        # page_token for the following request. An empty value means no more result.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # ServiceClasses to be returned.
        # Corresponds to the JSON property `serviceClasses`
        # @return [Array<Google::Apis::NetworkconnectivityV1::ServiceClass>]
        attr_accessor :service_classes
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @service_classes = args[:service_classes] if args.key?(:service_classes)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response for ListServiceConnectionMaps.
      class ListServiceConnectionMapsResponse
        include Google::Apis::Core::Hashable
      
        # The next pagination token in the List response. It should be used as
        # page_token for the following request. An empty value means no more result.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # ServiceConnectionMaps to be returned.
        # Corresponds to the JSON property `serviceConnectionMaps`
        # @return [Array<Google::Apis::NetworkconnectivityV1::ServiceConnectionMap>]
        attr_accessor :service_connection_maps
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @service_connection_maps = args[:service_connection_maps] if args.key?(:service_connection_maps)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response for ListServiceConnectionPolicies.
      class ListServiceConnectionPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # The next pagination token in the List response. It should be used as
        # page_token for the following request. An empty value means no more result.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # ServiceConnectionPolicies to be returned.
        # Corresponds to the JSON property `serviceConnectionPolicies`
        # @return [Array<Google::Apis::NetworkconnectivityV1::ServiceConnectionPolicy>]
        attr_accessor :service_connection_policies
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @service_connection_policies = args[:service_connection_policies] if args.key?(:service_connection_policies)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response for ListServiceConnectionTokens.
      class ListServiceConnectionTokensResponse
        include Google::Apis::Core::Hashable
      
        # The next pagination token in the List response. It should be used as
        # page_token for the following request. An empty value means no more result.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # ServiceConnectionTokens to be returned.
        # Corresponds to the JSON property `serviceConnectionTokens`
        # @return [Array<Google::Apis::NetworkconnectivityV1::ServiceConnectionToken>]
        attr_accessor :service_connection_tokens
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @service_connection_tokens = args[:service_connection_tokens] if args.key?(:service_connection_tokens)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response for HubService.ListSpokes.
      class ListSpokesResponse
        include Google::Apis::Core::Hashable
      
        # The token for the next page of the response. To see more results, use this
        # value as the page_token for your next request. If this value is empty, there
        # are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The requested spokes.
        # Corresponds to the JSON property `spokes`
        # @return [Array<Google::Apis::NetworkconnectivityV1::Spoke>]
        attr_accessor :spokes
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spokes = args[:spokes] if args.key?(:spokes)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Metadata about locations
      class LocationMetadata
        include Google::Apis::Core::Hashable
      
        # List of supported features
        # Corresponds to the JSON property `locationFeatures`
        # @return [Array<String>]
        attr_accessor :location_features
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_features = args[:location_features] if args.key?(:location_features)
        end
      end
      
      # Specification for migration with source and target resource names.
      class Migration
        include Google::Apis::Core::Hashable
      
        # Immutable. Resource path as an URI of the source resource, for example a
        # subnet. The project for the source resource should match the project for the
        # InternalRange. An example: /projects/`project`/regions/`region`/subnetworks/`
        # subnet`
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Immutable. Resource path of the target resource. The target project can be
        # different, as in the cases when migrating to peer networks. For example: /
        # projects/`project`/regions/`region`/subnetworks/`subnet`
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source = args[:source] if args.key?(:source)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # A route next hop that leads to an interconnect attachment resource.
      class NextHopInterconnectAttachment
        include Google::Apis::Core::Hashable
      
        # Indicates whether site-to-site data transfer is allowed for this interconnect
        # attachment resource. Data transfer is available only in [supported locations](
        # https://cloud.google.com/network-connectivity/docs/network-connectivity-center/
        # concepts/locations).
        # Corresponds to the JSON property `siteToSiteDataTransfer`
        # @return [Boolean]
        attr_accessor :site_to_site_data_transfer
        alias_method :site_to_site_data_transfer?, :site_to_site_data_transfer
      
        # The URI of the interconnect attachment resource.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # The VPC network where this interconnect attachment is located.
        # Corresponds to the JSON property `vpcNetwork`
        # @return [String]
        attr_accessor :vpc_network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @site_to_site_data_transfer = args[:site_to_site_data_transfer] if args.key?(:site_to_site_data_transfer)
          @uri = args[:uri] if args.key?(:uri)
          @vpc_network = args[:vpc_network] if args.key?(:vpc_network)
        end
      end
      
      # A route next hop that leads to a Router appliance instance.
      class NextHopRouterApplianceInstance
        include Google::Apis::Core::Hashable
      
        # Indicates whether site-to-site data transfer is allowed for this Router
        # appliance instance resource. Data transfer is available only in [supported
        # locations](https://cloud.google.com/network-connectivity/docs/network-
        # connectivity-center/concepts/locations).
        # Corresponds to the JSON property `siteToSiteDataTransfer`
        # @return [Boolean]
        attr_accessor :site_to_site_data_transfer
        alias_method :site_to_site_data_transfer?, :site_to_site_data_transfer
      
        # The URI of the Router appliance instance.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # The VPC network where this VM is located.
        # Corresponds to the JSON property `vpcNetwork`
        # @return [String]
        attr_accessor :vpc_network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @site_to_site_data_transfer = args[:site_to_site_data_transfer] if args.key?(:site_to_site_data_transfer)
          @uri = args[:uri] if args.key?(:uri)
          @vpc_network = args[:vpc_network] if args.key?(:vpc_network)
        end
      end
      
      # A route next hop that leads to a spoke resource.
      class NextHopSpoke
        include Google::Apis::Core::Hashable
      
        # Indicates whether site-to-site data transfer is allowed for this spoke
        # resource. Data transfer is available only in [supported locations](https://
        # cloud.google.com/network-connectivity/docs/network-connectivity-center/
        # concepts/locations). Whether this route is accessible to other hybrid spokes
        # with site-to-site data transfer enabled. If this is false, the route is only
        # accessible to VPC spokes of the connected Hub.
        # Corresponds to the JSON property `siteToSiteDataTransfer`
        # @return [Boolean]
        attr_accessor :site_to_site_data_transfer
        alias_method :site_to_site_data_transfer?, :site_to_site_data_transfer
      
        # The URI of the spoke resource.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @site_to_site_data_transfer = args[:site_to_site_data_transfer] if args.key?(:site_to_site_data_transfer)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # A route next hop that leads to a VPN tunnel resource.
      class NextHopVpnTunnel
        include Google::Apis::Core::Hashable
      
        # Indicates whether site-to-site data transfer is allowed for this VPN tunnel
        # resource. Data transfer is available only in [supported locations](https://
        # cloud.google.com/network-connectivity/docs/network-connectivity-center/
        # concepts/locations).
        # Corresponds to the JSON property `siteToSiteDataTransfer`
        # @return [Boolean]
        attr_accessor :site_to_site_data_transfer
        alias_method :site_to_site_data_transfer?, :site_to_site_data_transfer
      
        # The URI of the VPN tunnel resource.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # The VPC network where this VPN tunnel is located.
        # Corresponds to the JSON property `vpcNetwork`
        # @return [String]
        attr_accessor :vpc_network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @site_to_site_data_transfer = args[:site_to_site_data_transfer] if args.key?(:site_to_site_data_transfer)
          @uri = args[:uri] if args.key?(:uri)
          @vpc_network = args[:vpc_network] if args.key?(:vpc_network)
        end
      end
      
      # 
      class NextHopVpcNetwork
        include Google::Apis::Core::Hashable
      
        # The URI of the VPC network resource
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been cancelled successfully have google.
        # longrunning.Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members`, or principals, to a single `role`.
      # Principals can be user accounts, service accounts, Google groups, and domains (
      # such as G Suite). A `role` is a named list of permissions; each `role` can be
      # an IAM predefined role or a user-created custom role. For some types of Google
      # Cloud resources, a `binding` can also specify a `condition`, which is a
      # logical expression that allows access to a resource only if the expression
      # evaluates to `true`. A condition can add constraints based on attributes of
      # the request, the resource, or both. To learn which resources support
      # conditions in their IAM policies, see the [IAM documentation](https://cloud.
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
      # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
      # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
      # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
      # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
      # title: expirable access description: Does not grant access after Sep 2020
      # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
      # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
      # [IAM documentation](https://cloud.google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::NetworkconnectivityV1::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::NetworkconnectivityV1::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the `etag` in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An `etag` is
        # returned in the response to `getIamPolicy`, and systems are expected to put
        # that etag in the request to `setIamPolicy` to ensure that their change will be
        # applied to the same version of the policy. **Important:** If you use IAM
        # Conditions, you must include the `etag` field whenever you call `setIamPolicy`.
        # If you omit this field, then IAM allows you to overwrite a version `3` policy
        # with a version `1` policy, and all of the conditions in the version `3` policy
        # are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
        # Requests that specify an invalid value are rejected. Any operation that
        # affects conditional role bindings must specify version `3`. This requirement
        # applies to the following operations: * Getting a policy that includes a
        # conditional role binding * Adding a conditional role binding to a policy *
        # Changing a conditional role binding in a policy * Removing any role binding,
        # with or without a condition, from a policy that includes conditions **
        # Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows you
        # to overwrite a version `3` policy with a version `1` policy, and all of the
        # conditions in the version `3` policy are lost. If a policy does not include
        # any conditions, operations on that policy may specify any valid version or
        # leave the field unset. To learn which resources support conditions in their
        # IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/
        # conditions/resource-policies).
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_configs = args[:audit_configs] if args.key?(:audit_configs)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Policy-based routes route L4 network traffic based on not just destination IP
      # address, but also source IP address, protocol, and more. If a policy-based
      # route conflicts with other types of routes, the policy-based route always
      # takes precedence.
      class PolicyBasedRoute
        include Google::Apis::Core::Hashable
      
        # Output only. Time when the policy-based route was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. An optional description of this resource. Provide this field when
        # you create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Filter matches L4 traffic.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::NetworkconnectivityV1::Filter]
        attr_accessor :filter
      
        # InterconnectAttachment that this route applies to.
        # Corresponds to the JSON property `interconnectAttachment`
        # @return [Google::Apis::NetworkconnectivityV1::InterconnectAttachment]
        attr_accessor :interconnect_attachment
      
        # Output only. Type of this resource. Always networkconnectivity#
        # policyBasedRoute for policy-based Route resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # User-defined labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Immutable. A unique name of the resource in the form of `projects/`
        # project_number`/locations/global/PolicyBasedRoutes/`policy_based_route_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Fully-qualified URL of the network that this route applies to, for
        # example: projects/my-project/global/networks/my-network.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Optional. The IP address of a global-access-enabled L4 ILB that is the next
        # hop for matching packets. For this version, only nextHopIlbIp is supported.
        # Corresponds to the JSON property `nextHopIlbIp`
        # @return [String]
        attr_accessor :next_hop_ilb_ip
      
        # Optional. Other routes that will be referenced to determine the next hop of
        # the packet.
        # Corresponds to the JSON property `nextHopOtherRoutes`
        # @return [String]
        attr_accessor :next_hop_other_routes
      
        # Optional. The priority of this policy-based route. Priority is used to break
        # ties in cases where there are more than one matching policy-based routes found.
        # In cases where multiple policy-based routes are matched, the one with the
        # lowest-numbered priority value wins. The default value is 1000. The priority
        # value must be from 1 to 65535, inclusive.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # Output only. Server-defined fully-qualified URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Output only. Time when the policy-based route was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # VM instances that this policy-based route applies to.
        # Corresponds to the JSON property `virtualMachine`
        # @return [Google::Apis::NetworkconnectivityV1::VirtualMachine]
        attr_accessor :virtual_machine
      
        # Output only. If potential misconfigurations are detected for this route, this
        # field will be populated with warning messages.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::NetworkconnectivityV1::Warnings>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @filter = args[:filter] if args.key?(:filter)
          @interconnect_attachment = args[:interconnect_attachment] if args.key?(:interconnect_attachment)
          @kind = args[:kind] if args.key?(:kind)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @next_hop_ilb_ip = args[:next_hop_ilb_ip] if args.key?(:next_hop_ilb_ip)
          @next_hop_other_routes = args[:next_hop_other_routes] if args.key?(:next_hop_other_routes)
          @priority = args[:priority] if args.key?(:priority)
          @self_link = args[:self_link] if args.key?(:self_link)
          @update_time = args[:update_time] if args.key?(:update_time)
          @virtual_machine = args[:virtual_machine] if args.key?(:virtual_machine)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # The PSC configurations on producer side.
      class ProducerPscConfig
        include Google::Apis::Core::Hashable
      
        # The resource path of a service attachment. Example: projects/`projectNumOrId`/
        # regions/`region`/serviceAttachments/`resourceId`.
        # Corresponds to the JSON property `serviceAttachmentUri`
        # @return [String]
        attr_accessor :service_attachment_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_attachment_uri = args[:service_attachment_uri] if args.key?(:service_attachment_uri)
        end
      end
      
      # Configuration used for Private Service Connect connections. Used when
      # Infrastructure is PSC.
      class PscConfig
        include Google::Apis::Core::Hashable
      
        # Optional. List of Projects, Folders, or Organizations from where the Producer
        # instance can be within. For example, a network administrator can provide both '
        # organizations/foo' and 'projects/bar' as
        # allowed_google_producers_resource_hierarchy_levels. This allowlists this
        # network to connect with any Producer instance within the 'foo' organization or
        # the 'bar' project. By default,
        # allowed_google_producers_resource_hierarchy_level is empty. The format for
        # each allowed_google_producers_resource_hierarchy_level is / where is one of '
        # projects', 'folders', or 'organizations' and is either the ID or the number of
        # the resource type. Format for each
        # allowed_google_producers_resource_hierarchy_level value: 'projects/' or '
        # folders/' or 'organizations/' Eg. [projects/my-project-id, projects/567,
        # folders/891, organizations/123]
        # Corresponds to the JSON property `allowedGoogleProducersResourceHierarchyLevel`
        # @return [Array<String>]
        attr_accessor :allowed_google_producers_resource_hierarchy_level
      
        # Optional. Max number of PSC connections for this policy.
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        # Optional. ProducerInstanceLocation is used to specify which authorization
        # mechanism to use to determine which projects the Producer instance can be
        # within.
        # Corresponds to the JSON property `producerInstanceLocation`
        # @return [String]
        attr_accessor :producer_instance_location
      
        # The resource paths of subnetworks to use for IP address management. Example:
        # projects/`projectNumOrId`/regions/`region`/subnetworks/`resourceId`.
        # Corresponds to the JSON property `subnetworks`
        # @return [Array<String>]
        attr_accessor :subnetworks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_google_producers_resource_hierarchy_level = args[:allowed_google_producers_resource_hierarchy_level] if args.key?(:allowed_google_producers_resource_hierarchy_level)
          @limit = args[:limit] if args.key?(:limit)
          @producer_instance_location = args[:producer_instance_location] if args.key?(:producer_instance_location)
          @subnetworks = args[:subnetworks] if args.key?(:subnetworks)
        end
      end
      
      # Information about a specific Private Service Connect connection.
      class PscConnection
        include Google::Apis::Core::Hashable
      
        # The resource reference of the consumer address.
        # Corresponds to the JSON property `consumerAddress`
        # @return [String]
        attr_accessor :consumer_address
      
        # The resource reference of the PSC Forwarding Rule within the consumer VPC.
        # Corresponds to the JSON property `consumerForwardingRule`
        # @return [String]
        attr_accessor :consumer_forwarding_rule
      
        # The project where the PSC connection is created.
        # Corresponds to the JSON property `consumerTargetProject`
        # @return [String]
        attr_accessor :consumer_target_project
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::NetworkconnectivityV1::GoogleRpcStatus]
        attr_accessor :error
      
        # Describes the cause of the error with structured details. Example of an error
        # when contacting the "pubsub.googleapis.com" API when it is not enabled: ` "
        # reason": "API_DISABLED" "domain": "googleapis.com" "metadata": ` "resource": "
        # projects/123", "service": "pubsub.googleapis.com" ` ` This response indicates
        # that the pubsub.googleapis.com API is not enabled. Example of an error that is
        # returned when attempting to create a Spanner instance in a region that is out
        # of stock: ` "reason": "STOCKOUT" "domain": "spanner.googleapis.com", "metadata"
        # : ` "availableRegions": "us-central1,us-east2" ` `
        # Corresponds to the JSON property `errorInfo`
        # @return [Google::Apis::NetworkconnectivityV1::GoogleRpcErrorInfo]
        attr_accessor :error_info
      
        # The error type indicates whether the error is consumer facing, producer facing
        # or system internal.
        # Corresponds to the JSON property `errorType`
        # @return [String]
        attr_accessor :error_type
      
        # The last Compute Engine operation to setup PSC connection.
        # Corresponds to the JSON property `gceOperation`
        # @return [String]
        attr_accessor :gce_operation
      
        # The requested IP version for the PSC connection.
        # Corresponds to the JSON property `ipVersion`
        # @return [String]
        attr_accessor :ip_version
      
        # Immutable. Deprecated. Use producer_instance_metadata instead. An immutable
        # identifier for the producer instance.
        # Corresponds to the JSON property `producerInstanceId`
        # @return [String]
        attr_accessor :producer_instance_id
      
        # Immutable. An immutable map for the producer instance metadata.
        # Corresponds to the JSON property `producerInstanceMetadata`
        # @return [Hash<String,String>]
        attr_accessor :producer_instance_metadata
      
        # The PSC connection id of the PSC forwarding rule.
        # Corresponds to the JSON property `pscConnectionId`
        # @return [String]
        attr_accessor :psc_connection_id
      
        # Output only. The URI of the subnetwork selected to allocate IP address for
        # this connection.
        # Corresponds to the JSON property `selectedSubnetwork`
        # @return [String]
        attr_accessor :selected_subnetwork
      
        # Output only. [Output only] The service class associated with this PSC
        # Connection. The value is derived from the SCPolicy and matches the service
        # class name provided by the customer.
        # Corresponds to the JSON property `serviceClass`
        # @return [String]
        attr_accessor :service_class
      
        # State of the PSC Connection
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumer_address = args[:consumer_address] if args.key?(:consumer_address)
          @consumer_forwarding_rule = args[:consumer_forwarding_rule] if args.key?(:consumer_forwarding_rule)
          @consumer_target_project = args[:consumer_target_project] if args.key?(:consumer_target_project)
          @error = args[:error] if args.key?(:error)
          @error_info = args[:error_info] if args.key?(:error_info)
          @error_type = args[:error_type] if args.key?(:error_type)
          @gce_operation = args[:gce_operation] if args.key?(:gce_operation)
          @ip_version = args[:ip_version] if args.key?(:ip_version)
          @producer_instance_id = args[:producer_instance_id] if args.key?(:producer_instance_id)
          @producer_instance_metadata = args[:producer_instance_metadata] if args.key?(:producer_instance_metadata)
          @psc_connection_id = args[:psc_connection_id] if args.key?(:psc_connection_id)
          @selected_subnetwork = args[:selected_subnetwork] if args.key?(:selected_subnetwork)
          @service_class = args[:service_class] if args.key?(:service_class)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The status of one or more propagated Private Service Connect connections in a
      # hub.
      class PscPropagationStatus
        include Google::Apis::Core::Hashable
      
        # The propagation status.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # The human-readable summary of the Private Service Connect connection
        # propagation status.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The name of the forwarding rule exported to the hub.
        # Corresponds to the JSON property `sourceForwardingRule`
        # @return [String]
        attr_accessor :source_forwarding_rule
      
        # The name of the group that the source spoke belongs to.
        # Corresponds to the JSON property `sourceGroup`
        # @return [String]
        attr_accessor :source_group
      
        # The name of the spoke that the source forwarding rule belongs to.
        # Corresponds to the JSON property `sourceSpoke`
        # @return [String]
        attr_accessor :source_spoke
      
        # The name of the group that the target spoke belongs to.
        # Corresponds to the JSON property `targetGroup`
        # @return [String]
        attr_accessor :target_group
      
        # The name of the spoke that the source forwarding rule propagates to.
        # Corresponds to the JSON property `targetSpoke`
        # @return [String]
        attr_accessor :target_spoke
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @message = args[:message] if args.key?(:message)
          @source_forwarding_rule = args[:source_forwarding_rule] if args.key?(:source_forwarding_rule)
          @source_group = args[:source_group] if args.key?(:source_group)
          @source_spoke = args[:source_spoke] if args.key?(:source_spoke)
          @target_group = args[:target_group] if args.key?(:target_group)
          @target_spoke = args[:target_spoke] if args.key?(:target_spoke)
        end
      end
      
      # The response for HubService.QueryHubStatus.
      class QueryHubStatusResponse
        include Google::Apis::Core::Hashable
      
        # The list of hub status.
        # Corresponds to the JSON property `hubStatusEntries`
        # @return [Array<Google::Apis::NetworkconnectivityV1::HubStatusEntry>]
        attr_accessor :hub_status_entries
      
        # The token for the next page of the response. To see more results, use this
        # value as the page_token for your next request. If this value is empty, there
        # are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hub_status_entries = args[:hub_status_entries] if args.key?(:hub_status_entries)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The RegionalEndpoint resource.
      class RegionalEndpoint
        include Google::Apis::Core::Hashable
      
        # Required. The access type of this regional endpoint. This field is reflected
        # in the PSC Forwarding Rule configuration to enable global access.
        # Corresponds to the JSON property `accessType`
        # @return [String]
        attr_accessor :access_type
      
        # Optional. The IP Address of the Regional Endpoint. When no address is provided,
        # an IP from the subnetwork is allocated. Use one of the following formats: *
        # IPv4 address as in `10.0.0.1` * Address resource URI as in `projects/`project`/
        # regions/`region`/addresses/`address_name`` for an IPv4 or IPv6 address.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Output only. Time when the RegionalEndpoint was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A description of this resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The literal IP address of the PSC Forwarding Rule created on
        # behalf of the customer. This field is deprecated. Use address instead.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # User-defined labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The name of a RegionalEndpoint. Pattern: `projects/`project`/
        # locations/`location`/regionalEndpoints/^[-a-z0-9](?:[-a-z0-9]`0,44`)[a-z0-9]$`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The name of the VPC network for this private regional endpoint. Format: `
        # projects/`project`/global/networks/`network``
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Output only. The resource reference of the PSC Forwarding Rule created on
        # behalf of the customer. Format: `//compute.googleapis.com/projects/`project`/
        # regions/`region`/forwardingRules/`forwarding_rule_name``
        # Corresponds to the JSON property `pscForwardingRule`
        # @return [String]
        attr_accessor :psc_forwarding_rule
      
        # The name of the subnetwork from which the IP address will be allocated. Format:
        # `projects/`project`/regions/`region`/subnetworks/`subnetwork``
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        # Required. The service endpoint this private regional endpoint connects to.
        # Format: ``apiname`.`region`.p.rep.googleapis.com` Example: "cloudkms.us-
        # central1.p.rep.googleapis.com".
        # Corresponds to the JSON property `targetGoogleApi`
        # @return [String]
        attr_accessor :target_google_api
      
        # Output only. Time when the RegionalEndpoint was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_type = args[:access_type] if args.key?(:access_type)
          @address = args[:address] if args.key?(:address)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @psc_forwarding_rule = args[:psc_forwarding_rule] if args.key?(:psc_forwarding_rule)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
          @target_google_api = args[:target_google_api] if args.key?(:target_google_api)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The request for HubService.RejectHubSpoke.
      class RejectHubSpokeRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Additional information provided by the hub administrator.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # Optional. A request ID to identify requests. Specify a unique request ID so
        # that if you must retry your request, the server knows to ignore the request if
        # it has already been completed. The server guarantees that a request doesn't
        # result in creation of duplicate commitments for at least 60 minutes. For
        # example, consider a situation where you make an initial request and the
        # request times out. If you make the request again with the same request ID, the
        # server can check to see whether the original operation was received. If it was,
        # the server ignores the second request. This behavior prevents clients from
        # mistakenly creating duplicate commitments. The request ID must be a valid UUID,
        # with the exception that zero UUID is not supported (00000000-0000-0000-0000-
        # 000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Required. The URI of the spoke to reject from the hub.
        # Corresponds to the JSON property `spokeUri`
        # @return [String]
        attr_accessor :spoke_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @request_id = args[:request_id] if args.key?(:request_id)
          @spoke_uri = args[:spoke_uri] if args.key?(:spoke_uri)
        end
      end
      
      # The response for HubService.RejectHubSpoke.
      class RejectHubSpokeResponse
        include Google::Apis::Core::Hashable
      
        # A Network Connectivity Center spoke represents one or more network
        # connectivity resources. When you create a spoke, you associate it with a hub.
        # You must also identify a value for exactly one of the following fields: *
        # linked_vpn_tunnels * linked_interconnect_attachments *
        # linked_router_appliance_instances * linked_vpc_network
        # Corresponds to the JSON property `spoke`
        # @return [Google::Apis::NetworkconnectivityV1::Spoke]
        attr_accessor :spoke
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @spoke = args[:spoke] if args.key?(:spoke)
        end
      end
      
      # The request for HubService.RejectSpokeUpdate.
      class RejectSpokeUpdateRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Additional information provided by the hub administrator.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # Optional. A request ID to identify requests. Specify a unique request ID so
        # that if you must retry your request, the server knows to ignore the request if
        # it has already been completed. The server guarantees that a request doesn't
        # result in creation of duplicate commitments for at least 60 minutes. For
        # example, consider a situation where you make an initial request and the
        # request times out. If you make the request again with the same request ID, the
        # server can check to see whether the original operation was received. If it was,
        # the server ignores the second request. This behavior prevents clients from
        # mistakenly creating duplicate commitments. The request ID must be a valid UUID,
        # with the exception that zero UUID is not supported (00000000-0000-0000-0000-
        # 000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Required. The etag of the spoke to reject update.
        # Corresponds to the JSON property `spokeEtag`
        # @return [String]
        attr_accessor :spoke_etag
      
        # Required. The URI of the spoke to reject update.
        # Corresponds to the JSON property `spokeUri`
        # @return [String]
        attr_accessor :spoke_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @request_id = args[:request_id] if args.key?(:request_id)
          @spoke_etag = args[:spoke_etag] if args.key?(:spoke_etag)
          @spoke_uri = args[:spoke_uri] if args.key?(:spoke_uri)
        end
      end
      
      # A route defines a path from VM instances within a spoke to a specific
      # destination resource. Only VPC spokes have routes.
      class Route
        include Google::Apis::Core::Hashable
      
        # Output only. The time the route was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # An optional description of the route.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The destination IP address range.
        # Corresponds to the JSON property `ipCidrRange`
        # @return [String]
        attr_accessor :ip_cidr_range
      
        # Optional labels in key-value pair format. For more information about labels,
        # see [Requirements for labels](https://cloud.google.com/resource-manager/docs/
        # creating-managing-labels#requirements).
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The origin location of the route. Uses the following form: "
        # projects/`project`/locations/`location`" Example: projects/1234/locations/us-
        # central1
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Immutable. The name of the route. Route names must be unique. Route names use
        # the following form: `projects/`project_number`/locations/global/hubs/`hub`/
        # routeTables/`route_table_id`/routes/`route_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A route next hop that leads to an interconnect attachment resource.
        # Corresponds to the JSON property `nextHopInterconnectAttachment`
        # @return [Google::Apis::NetworkconnectivityV1::NextHopInterconnectAttachment]
        attr_accessor :next_hop_interconnect_attachment
      
        # A route next hop that leads to a Router appliance instance.
        # Corresponds to the JSON property `nextHopRouterApplianceInstance`
        # @return [Google::Apis::NetworkconnectivityV1::NextHopRouterApplianceInstance]
        attr_accessor :next_hop_router_appliance_instance
      
        # A route next hop that leads to a spoke resource.
        # Corresponds to the JSON property `nextHopSpoke`
        # @return [Google::Apis::NetworkconnectivityV1::NextHopSpoke]
        attr_accessor :next_hop_spoke
      
        # Immutable. The destination VPC network for packets on this route.
        # Corresponds to the JSON property `nextHopVpcNetwork`
        # @return [Google::Apis::NetworkconnectivityV1::NextHopVpcNetwork]
        attr_accessor :next_hop_vpc_network
      
        # A route next hop that leads to a VPN tunnel resource.
        # Corresponds to the JSON property `nextHopVpnTunnel`
        # @return [Google::Apis::NetworkconnectivityV1::NextHopVpnTunnel]
        attr_accessor :next_hop_vpn_tunnel
      
        # Output only. The priority of this route. Priority is used to break ties in
        # cases where a destination matches more than one route. In these cases the
        # route with the lowest-numbered priority value wins.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # Immutable. The spoke that this route leads to. Example: projects/12345/
        # locations/global/spokes/SPOKE
        # Corresponds to the JSON property `spoke`
        # @return [String]
        attr_accessor :spoke
      
        # Output only. The current lifecycle state of the route.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The route's type. Its type is determined by the properties of its
        # IP address range.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. The Google-generated UUID for the route. This value is unique
        # across all Network Connectivity Center route resources. If a route is deleted
        # and another with the same name is created, the new route is assigned a
        # different `uid`.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time the route was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @ip_cidr_range = args[:ip_cidr_range] if args.key?(:ip_cidr_range)
          @labels = args[:labels] if args.key?(:labels)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @next_hop_interconnect_attachment = args[:next_hop_interconnect_attachment] if args.key?(:next_hop_interconnect_attachment)
          @next_hop_router_appliance_instance = args[:next_hop_router_appliance_instance] if args.key?(:next_hop_router_appliance_instance)
          @next_hop_spoke = args[:next_hop_spoke] if args.key?(:next_hop_spoke)
          @next_hop_vpc_network = args[:next_hop_vpc_network] if args.key?(:next_hop_vpc_network)
          @next_hop_vpn_tunnel = args[:next_hop_vpn_tunnel] if args.key?(:next_hop_vpn_tunnel)
          @priority = args[:priority] if args.key?(:priority)
          @spoke = args[:spoke] if args.key?(:spoke)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class RouteTable
        include Google::Apis::Core::Hashable
      
        # Output only. The time the route table was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # An optional description of the route table.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional labels in key-value pair format. For more information about labels,
        # see [Requirements for labels](https://cloud.google.com/resource-manager/docs/
        # creating-managing-labels#requirements).
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Immutable. The name of the route table. Route table names must be unique. They
        # use the following form: `projects/`project_number`/locations/global/hubs/`hub`/
        # routeTables/`route_table_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current lifecycle state of this route table.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The Google-generated UUID for the route table. This value is
        # unique across all route table resources. If a route table is deleted and
        # another with the same name is created, the new route table is assigned a
        # different `uid`.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time the route table was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A router appliance instance is a Compute Engine virtual machine (VM) instance
      # that acts as a BGP speaker. A router appliance instance is specified by the
      # URI of the VM and the internal IP address of one of the VM's network
      # interfaces.
      class RouterApplianceInstance
        include Google::Apis::Core::Hashable
      
        # The IP address on the VM to use for peering.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # The URI of the VM.
        # Corresponds to the JSON property `virtualMachine`
        # @return [String]
        attr_accessor :virtual_machine
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @virtual_machine = args[:virtual_machine] if args.key?(:virtual_machine)
        end
      end
      
      # RoutingVPC contains information about the VPC networks associated with the
      # spokes of a Network Connectivity Center hub.
      class RoutingVpc
        include Google::Apis::Core::Hashable
      
        # Output only. If true, indicates that this VPC network is currently associated
        # with spokes that use the data transfer feature (spokes where the
        # site_to_site_data_transfer field is set to true). If you create new spokes
        # that use data transfer, they must be associated with this VPC network. At most,
        # one VPC network will have this field set to true.
        # Corresponds to the JSON property `requiredForNewSiteToSiteDataTransferSpokes`
        # @return [Boolean]
        attr_accessor :required_for_new_site_to_site_data_transfer_spokes
        alias_method :required_for_new_site_to_site_data_transfer_spokes?, :required_for_new_site_to_site_data_transfer_spokes
      
        # The URI of the VPC network.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @required_for_new_site_to_site_data_transfer_spokes = args[:required_for_new_site_to_site_data_transfer_spokes] if args.key?(:required_for_new_site_to_site_data_transfer_spokes)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # The ServiceClass resource.
      class ServiceClass
        include Google::Apis::Core::Hashable
      
        # Output only. Time when the ServiceClass was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A description of this resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. The etag is computed by the server, and may be sent on update and
        # delete requests to ensure the client has an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # User-defined labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Immutable. The name of a ServiceClass resource. Format: projects/`project`/
        # locations/`location`/serviceClasses/`service_class` See: https://google.aip.
        # dev/122#fields-representing-resource-names
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The generated service class name. Use this name to refer to the
        # Service class in Service Connection Maps and Service Connection Policies.
        # Corresponds to the JSON property `serviceClass`
        # @return [String]
        attr_accessor :service_class
      
        # Output only. Time when the ServiceClass was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @service_class = args[:service_class] if args.key?(:service_class)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The ServiceConnectionMap resource.
      class ServiceConnectionMap
        include Google::Apis::Core::Hashable
      
        # The PSC configurations on consumer side.
        # Corresponds to the JSON property `consumerPscConfigs`
        # @return [Array<Google::Apis::NetworkconnectivityV1::ConsumerPscConfig>]
        attr_accessor :consumer_psc_configs
      
        # Output only. PSC connection details on consumer side.
        # Corresponds to the JSON property `consumerPscConnections`
        # @return [Array<Google::Apis::NetworkconnectivityV1::ConsumerPscConnection>]
        attr_accessor :consumer_psc_connections
      
        # Output only. Time when the ServiceConnectionMap was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A description of this resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. The etag is computed by the server, and may be sent on update and
        # delete requests to ensure the client has an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. The infrastructure used for connections between consumers/
        # producers.
        # Corresponds to the JSON property `infrastructure`
        # @return [String]
        attr_accessor :infrastructure
      
        # User-defined labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Immutable. The name of a ServiceConnectionMap. Format: projects/`project`/
        # locations/`location`/serviceConnectionMaps/`service_connection_map` See: https:
        # //google.aip.dev/122#fields-representing-resource-names
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The PSC configurations on producer side.
        # Corresponds to the JSON property `producerPscConfigs`
        # @return [Array<Google::Apis::NetworkconnectivityV1::ProducerPscConfig>]
        attr_accessor :producer_psc_configs
      
        # The service class identifier this ServiceConnectionMap is for. The user of
        # ServiceConnectionMap create API needs to have networkconnecitivty.
        # serviceclasses.use iam permission for the service class.
        # Corresponds to the JSON property `serviceClass`
        # @return [String]
        attr_accessor :service_class
      
        # Output only. The service class uri this ServiceConnectionMap is for.
        # Corresponds to the JSON property `serviceClassUri`
        # @return [String]
        attr_accessor :service_class_uri
      
        # The token provided by the consumer. This token authenticates that the consumer
        # can create a connection within the specified project and network.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # Output only. Time when the ServiceConnectionMap was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumer_psc_configs = args[:consumer_psc_configs] if args.key?(:consumer_psc_configs)
          @consumer_psc_connections = args[:consumer_psc_connections] if args.key?(:consumer_psc_connections)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @infrastructure = args[:infrastructure] if args.key?(:infrastructure)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @producer_psc_configs = args[:producer_psc_configs] if args.key?(:producer_psc_configs)
          @service_class = args[:service_class] if args.key?(:service_class)
          @service_class_uri = args[:service_class_uri] if args.key?(:service_class_uri)
          @token = args[:token] if args.key?(:token)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The ServiceConnectionPolicy resource.
      class ServiceConnectionPolicy
        include Google::Apis::Core::Hashable
      
        # Output only. Time when the ServiceConnectionPolicy was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A description of this resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. The etag is computed by the server, and may be sent on update and
        # delete requests to ensure the client has an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. The type of underlying resources used to create the connection.
        # Corresponds to the JSON property `infrastructure`
        # @return [String]
        attr_accessor :infrastructure
      
        # User-defined labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Immutable. The name of a ServiceConnectionPolicy. Format: projects/`project`/
        # locations/`location`/serviceConnectionPolicies/`service_connection_policy` See:
        # https://google.aip.dev/122#fields-representing-resource-names
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The resource path of the consumer network. Example: - projects/`projectNumOrId`
        # /global/networks/`resourceId`.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Configuration used for Private Service Connect connections. Used when
        # Infrastructure is PSC.
        # Corresponds to the JSON property `pscConfig`
        # @return [Google::Apis::NetworkconnectivityV1::PscConfig]
        attr_accessor :psc_config
      
        # Output only. [Output only] Information about each Private Service Connect
        # connection.
        # Corresponds to the JSON property `pscConnections`
        # @return [Array<Google::Apis::NetworkconnectivityV1::PscConnection>]
        attr_accessor :psc_connections
      
        # The service class identifier for which this ServiceConnectionPolicy is for.
        # The service class identifier is a unique, symbolic representation of a
        # ServiceClass. It is provided by the Service Producer. Google services have a
        # prefix of gcp or google-cloud. For example, gcp-memorystore-redis or google-
        # cloud-sql. 3rd party services do not. For example, test-service-a3dfcx.
        # Corresponds to the JSON property `serviceClass`
        # @return [String]
        attr_accessor :service_class
      
        # Output only. Time when the ServiceConnectionPolicy was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @infrastructure = args[:infrastructure] if args.key?(:infrastructure)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @psc_config = args[:psc_config] if args.key?(:psc_config)
          @psc_connections = args[:psc_connections] if args.key?(:psc_connections)
          @service_class = args[:service_class] if args.key?(:service_class)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The ServiceConnectionToken resource.
      class ServiceConnectionToken
        include Google::Apis::Core::Hashable
      
        # Output only. Time when the ServiceConnectionToken was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A description of this resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. The etag is computed by the server, and may be sent on update and
        # delete requests to ensure the client has an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. The time to which this token is valid.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # User-defined labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Immutable. The name of a ServiceConnectionToken. Format: projects/`project`/
        # locations/`location`/ServiceConnectionTokens/`service_connection_token` See:
        # https://google.aip.dev/122#fields-representing-resource-names
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The resource path of the network associated with this token. Example: projects/
        # `projectNumOrId`/global/networks/`resourceId`.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Output only. The token generated by Automation.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # Output only. Time when the ServiceConnectionToken was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @token = args[:token] if args.key?(:token)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members`, or principals, to a single `role`.
        # Principals can be user accounts, service accounts, Google groups, and domains (
        # such as G Suite). A `role` is a named list of permissions; each `role` can be
        # an IAM predefined role or a user-created custom role. For some types of Google
        # Cloud resources, a `binding` can also specify a `condition`, which is a
        # logical expression that allows access to a resource only if the expression
        # evaluates to `true`. A condition can add constraints based on attributes of
        # the request, the resource, or both. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
        # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
        # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
        # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
        # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
        # title: expirable access description: Does not grant access after Sep 2020
        # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
        # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
        # [IAM documentation](https://cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::NetworkconnectivityV1::Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the following
        # default mask is used: `paths: "bindings, etag"`
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # A Network Connectivity Center spoke represents one or more network
      # connectivity resources. When you create a spoke, you associate it with a hub.
      # You must also identify a value for exactly one of the following fields: *
      # linked_vpn_tunnels * linked_interconnect_attachments *
      # linked_router_appliance_instances * linked_vpc_network
      class Spoke
        include Google::Apis::Core::Hashable
      
        # Output only. The time the spoke was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. An optional description of the spoke.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. This checksum is computed by the server based on the value of other
        # fields, and may be sent on update and delete requests to ensure the client has
        # an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. The list of fields waiting for hub administration's approval.
        # Corresponds to the JSON property `fieldPathsPendingUpdate`
        # @return [Array<String>]
        attr_accessor :field_paths_pending_update
      
        # Optional. The name of the group that this spoke is associated with.
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # Immutable. The name of the hub that this spoke is attached to.
        # Corresponds to the JSON property `hub`
        # @return [String]
        attr_accessor :hub
      
        # Optional labels in key-value pair format. For more information about labels,
        # see [Requirements for labels](https://cloud.google.com/resource-manager/docs/
        # creating-managing-labels#requirements).
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # A collection of VLAN attachment resources. These resources should be redundant
        # attachments that all advertise the same prefixes to Google Cloud.
        # Alternatively, in active/passive configurations, all attachments should be
        # capable of advertising the same prefixes.
        # Corresponds to the JSON property `linkedInterconnectAttachments`
        # @return [Google::Apis::NetworkconnectivityV1::LinkedInterconnectAttachments]
        attr_accessor :linked_interconnect_attachments
      
        # Optional. The linked producer VPC that is associated with the spoke.
        # Corresponds to the JSON property `linkedProducerVpcNetwork`
        # @return [Google::Apis::NetworkconnectivityV1::LinkedProducerVpcNetwork]
        attr_accessor :linked_producer_vpc_network
      
        # A collection of router appliance instances. If you configure multiple router
        # appliance instances to receive data from the same set of sites outside of
        # Google Cloud, we recommend that you associate those instances with the same
        # spoke.
        # Corresponds to the JSON property `linkedRouterApplianceInstances`
        # @return [Google::Apis::NetworkconnectivityV1::LinkedRouterApplianceInstances]
        attr_accessor :linked_router_appliance_instances
      
        # An existing VPC network.
        # Corresponds to the JSON property `linkedVpcNetwork`
        # @return [Google::Apis::NetworkconnectivityV1::LinkedVpcNetwork]
        attr_accessor :linked_vpc_network
      
        # A collection of Cloud VPN tunnel resources. These resources should be
        # redundant HA VPN tunnels that all advertise the same prefixes to Google Cloud.
        # Alternatively, in a passive/active configuration, all tunnels should be
        # capable of advertising the same prefixes.
        # Corresponds to the JSON property `linkedVpnTunnels`
        # @return [Google::Apis::NetworkconnectivityV1::LinkedVpnTunnels]
        attr_accessor :linked_vpn_tunnels
      
        # Immutable. The name of the spoke. Spoke names must be unique. They use the
        # following form: `projects/`project_number`/locations/`region`/spokes/`spoke_id`
        # `
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The reasons for current state of the spoke.
        # Corresponds to the JSON property `reasons`
        # @return [Array<Google::Apis::NetworkconnectivityV1::StateReason>]
        attr_accessor :reasons
      
        # Output only. The type of resource associated with the spoke.
        # Corresponds to the JSON property `spokeType`
        # @return [String]
        attr_accessor :spoke_type
      
        # Output only. The current lifecycle state of this spoke.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The Google-generated UUID for the spoke. This value is unique
        # across all spoke resources. If a spoke is deleted and another with the same
        # name is created, the new spoke is assigned a different `unique_id`.
        # Corresponds to the JSON property `uniqueId`
        # @return [String]
        attr_accessor :unique_id
      
        # Output only. The time the spoke was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @field_paths_pending_update = args[:field_paths_pending_update] if args.key?(:field_paths_pending_update)
          @group = args[:group] if args.key?(:group)
          @hub = args[:hub] if args.key?(:hub)
          @labels = args[:labels] if args.key?(:labels)
          @linked_interconnect_attachments = args[:linked_interconnect_attachments] if args.key?(:linked_interconnect_attachments)
          @linked_producer_vpc_network = args[:linked_producer_vpc_network] if args.key?(:linked_producer_vpc_network)
          @linked_router_appliance_instances = args[:linked_router_appliance_instances] if args.key?(:linked_router_appliance_instances)
          @linked_vpc_network = args[:linked_vpc_network] if args.key?(:linked_vpc_network)
          @linked_vpn_tunnels = args[:linked_vpn_tunnels] if args.key?(:linked_vpn_tunnels)
          @name = args[:name] if args.key?(:name)
          @reasons = args[:reasons] if args.key?(:reasons)
          @spoke_type = args[:spoke_type] if args.key?(:spoke_type)
          @state = args[:state] if args.key?(:state)
          @unique_id = args[:unique_id] if args.key?(:unique_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The number of spokes that are in a particular state and associated with a
      # given hub.
      class SpokeStateCount
        include Google::Apis::Core::Hashable
      
        # Output only. The total number of spokes that are in this state and associated
        # with a given hub.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Output only. The state of the spokes.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The number of spokes in the hub that are inactive for this reason.
      class SpokeStateReasonCount
        include Google::Apis::Core::Hashable
      
        # Output only. The total number of spokes that are inactive for a particular
        # reason and associated with a given hub.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Output only. The reason that a spoke is inactive.
        # Corresponds to the JSON property `stateReasonCode`
        # @return [String]
        attr_accessor :state_reason_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @state_reason_code = args[:state_reason_code] if args.key?(:state_reason_code)
        end
      end
      
      # Summarizes information about the spokes associated with a hub. The summary
      # includes a count of spokes according to type and according to state. If any
      # spokes are inactive, the summary also lists the reasons they are inactive,
      # including a count for each reason.
      class SpokeSummary
        include Google::Apis::Core::Hashable
      
        # Output only. Counts the number of spokes that are in each state and associated
        # with a given hub.
        # Corresponds to the JSON property `spokeStateCounts`
        # @return [Array<Google::Apis::NetworkconnectivityV1::SpokeStateCount>]
        attr_accessor :spoke_state_counts
      
        # Output only. Counts the number of spokes that are inactive for each possible
        # reason and associated with a given hub.
        # Corresponds to the JSON property `spokeStateReasonCounts`
        # @return [Array<Google::Apis::NetworkconnectivityV1::SpokeStateReasonCount>]
        attr_accessor :spoke_state_reason_counts
      
        # Output only. Counts the number of spokes of each type that are associated with
        # a specific hub.
        # Corresponds to the JSON property `spokeTypeCounts`
        # @return [Array<Google::Apis::NetworkconnectivityV1::SpokeTypeCount>]
        attr_accessor :spoke_type_counts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @spoke_state_counts = args[:spoke_state_counts] if args.key?(:spoke_state_counts)
          @spoke_state_reason_counts = args[:spoke_state_reason_counts] if args.key?(:spoke_state_reason_counts)
          @spoke_type_counts = args[:spoke_type_counts] if args.key?(:spoke_type_counts)
        end
      end
      
      # The number of spokes of a given type that are associated with a specific hub.
      # The type indicates what kind of resource is associated with the spoke.
      class SpokeTypeCount
        include Google::Apis::Core::Hashable
      
        # Output only. The total number of spokes of this type that are associated with
        # the hub.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Output only. The type of the spokes.
        # Corresponds to the JSON property `spokeType`
        # @return [String]
        attr_accessor :spoke_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @spoke_type = args[:spoke_type] if args.key?(:spoke_type)
        end
      end
      
      # The reason a spoke is inactive.
      class StateReason
        include Google::Apis::Core::Hashable
      
        # The code associated with this reason.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Human-readable details about this reason.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Additional information provided by the user in the RejectSpoke call.
        # Corresponds to the JSON property `userDetails`
        # @return [String]
        attr_accessor :user_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @message = args[:message] if args.key?(:message)
          @user_details = args[:user_details] if args.key?(:user_details)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as `*` or `storage.*`) are not allowed. For more information see [IAM
        # Overview](https://cloud.google.com/iam/docs/overview#permissions).
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # VM instances that this policy-based route applies to.
      class VirtualMachine
        include Google::Apis::Core::Hashable
      
        # Optional. A list of VM instance tags that this policy-based route applies to.
        # VM instances that have ANY of tags specified here installs this PBR.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # Informational warning message.
      class Warnings
        include Google::Apis::Core::Hashable
      
        # Output only. A warning code, if applicable.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Output only. Metadata about this warning in key: value format. The key should
        # provides more detail on the warning being returned. For example, for warnings
        # where there are no results in a list request for a particular zone, this key
        # might be scope and the key value might be the zone name. Other examples might
        # be a key indicating a deprecated resource and a suggested replacement.
        # Corresponds to the JSON property `data`
        # @return [Hash<String,String>]
        attr_accessor :data
      
        # Output only. A human-readable description of the warning code.
        # Corresponds to the JSON property `warningMessage`
        # @return [String]
        attr_accessor :warning_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @data = args[:data] if args.key?(:data)
          @warning_message = args[:warning_message] if args.key?(:warning_message)
        end
      end
    end
  end
end
