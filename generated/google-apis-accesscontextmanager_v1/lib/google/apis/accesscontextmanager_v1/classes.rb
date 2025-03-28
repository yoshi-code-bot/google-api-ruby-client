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
    module AccesscontextmanagerV1
      
      # Metadata of Access Context Manager's Long Running Operations.
      class AccessContextManagerOperationMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An `AccessLevel` is a label that can be applied to requests to Google Cloud
      # services, along with a list of requirements necessary for the label to be
      # applied.
      class AccessLevel
        include Google::Apis::Core::Hashable
      
        # `BasicLevel` is an `AccessLevel` using a set of recommended features.
        # Corresponds to the JSON property `basic`
        # @return [Google::Apis::AccesscontextmanagerV1::BasicLevel]
        attr_accessor :basic
      
        # `CustomLevel` is an `AccessLevel` using the Cloud Common Expression Language
        # to represent the necessary conditions for the level to apply to a request. See
        # CEL spec at: https://github.com/google/cel-spec
        # Corresponds to the JSON property `custom`
        # @return [Google::Apis::AccesscontextmanagerV1::CustomLevel]
        attr_accessor :custom
      
        # Description of the `AccessLevel` and its use. Does not affect behavior.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Identifier. Resource name for the `AccessLevel`. Format: `accessPolicies/`
        # access_policy`/accessLevels/`access_level``. The `access_level` component must
        # begin with a letter, followed by alphanumeric characters or `_`. Its maximum
        # length is 50 characters. After you create an `AccessLevel`, you cannot change
        # its `name`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Human readable title. Must be unique within the Policy.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic = args[:basic] if args.key?(:basic)
          @custom = args[:custom] if args.key?(:custom)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # `AccessPolicy` is a container for `AccessLevels` (which define the necessary
      # attributes to use Google Cloud services) and `ServicePerimeters` (which define
      # regions of services able to freely pass data within a perimeter). An access
      # policy is globally visible within an organization, and the restrictions it
      # specifies apply to all projects within an organization.
      class AccessPolicy
        include Google::Apis::Core::Hashable
      
        # Output only. An opaque identifier for the current version of the `AccessPolicy`
        # . This will always be a strongly validated etag, meaning that two Access
        # Policies will be identical if and only if their etags are identical. Clients
        # should not expect this to be in any specific format.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. Identifier. Resource name of the `AccessPolicy`. Format: `
        # accessPolicies/`access_policy``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The parent of this `AccessPolicy` in the Cloud Resource Hierarchy.
        # Currently immutable once created. Format: `organizations/`organization_id``
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # The scopes of the AccessPolicy. Scopes define which resources a policy can
        # restrict and where its resources can be referenced. For example, policy A with
        # `scopes=["folders/123"]` has the following behavior: - ServicePerimeter can
        # only restrict projects within `folders/123`. - ServicePerimeter within policy
        # A can only reference access levels defined within policy A. - Only one policy
        # can include a given scope; thus, attempting to create a second policy which
        # includes `folders/123` will result in an error. If no scopes are provided,
        # then any resource within the organization can be restricted. Scopes cannot be
        # modified after a policy is created. Policies can only have a single scope.
        # Format: list of `folders/`folder_number`` or `projects/`project_number``
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # Required. Human readable title. Does not affect behavior.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @scopes = args[:scopes] if args.key?(:scopes)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Access scope represents the client scope, etc. to which the settings will be
      # applied to.
      class AccessScope
        include Google::Apis::Core::Hashable
      
        # Client scope represents the application, etc. subject to this binding's
        # restrictions.
        # Corresponds to the JSON property `clientScope`
        # @return [Google::Apis::AccesscontextmanagerV1::ClientScope]
        attr_accessor :client_scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_scope = args[:client_scope] if args.key?(:client_scope)
        end
      end
      
      # Access settings represent the set of conditions that must be met for access to
      # be granted. At least one of the fields must be set.
      class AccessSettings
        include Google::Apis::Core::Hashable
      
        # Optional. Access level that a user must have to be granted access. Only one
        # access level is supported, not multiple. This repeated field must have exactly
        # one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
        # Corresponds to the JSON property `accessLevels`
        # @return [Array<String>]
        attr_accessor :access_levels
      
        # Stores settings related to Google Cloud Session Length including session
        # duration, the type of challenge (i.e. method) they should face when their
        # session expires, and other related settings.
        # Corresponds to the JSON property `sessionSettings`
        # @return [Google::Apis::AccesscontextmanagerV1::SessionSettings]
        attr_accessor :session_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_levels = args[:access_levels] if args.key?(:access_levels)
          @session_settings = args[:session_settings] if args.key?(:session_settings)
        end
      end
      
      # Identification for an API Operation.
      class ApiOperation
        include Google::Apis::Core::Hashable
      
        # API methods or permissions to allow. Method or permission must belong to the
        # service specified by `service_name` field. A single MethodSelector entry with `
        # *` specified for the `method` field will allow all methods AND permissions for
        # the service specified in `service_name`.
        # Corresponds to the JSON property `methodSelectors`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::MethodSelector>]
        attr_accessor :method_selectors
      
        # The name of the API whose methods or permissions the IngressPolicy or
        # EgressPolicy want to allow. A single ApiOperation with `service_name` field
        # set to `*` will allow all methods AND permissions for all services.
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @method_selectors = args[:method_selectors] if args.key?(:method_selectors)
          @service_name = args[:service_name] if args.key?(:service_name)
        end
      end
      
      # An application that accesses Google Cloud APIs.
      class Application
        include Google::Apis::Core::Hashable
      
        # The OAuth client ID of the application.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # The name of the application. Example: "Cloud Console"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @name = args[:name] if args.key?(:name)
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
        # @return [Array<Google::Apis::AccesscontextmanagerV1::AuditLogConfig>]
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
      
      # `AuthorizedOrgsDesc` contains data for an organization's authorization policy.
      class AuthorizedOrgsDesc
        include Google::Apis::Core::Hashable
      
        # The asset type of this authorized orgs desc. Valid values are `
        # ASSET_TYPE_DEVICE`, and `ASSET_TYPE_CREDENTIAL_STRENGTH`.
        # Corresponds to the JSON property `assetType`
        # @return [String]
        attr_accessor :asset_type
      
        # The direction of the authorization relationship between this organization and
        # the organizations listed in the `orgs` field. The valid values for this field
        # include the following: `AUTHORIZATION_DIRECTION_FROM`: Allows this
        # organization to evaluate traffic in the organizations listed in the `orgs`
        # field. `AUTHORIZATION_DIRECTION_TO`: Allows the organizations listed in the `
        # orgs` field to evaluate the traffic in this organization. For the
        # authorization relationship to take effect, all of the organizations must
        # authorize and specify the appropriate relationship direction. For example, if
        # organization A authorized organization B and C to evaluate its traffic, by
        # specifying `AUTHORIZATION_DIRECTION_TO` as the authorization direction,
        # organizations B and C must specify `AUTHORIZATION_DIRECTION_FROM` as the
        # authorization direction in their `AuthorizedOrgsDesc` resource.
        # Corresponds to the JSON property `authorizationDirection`
        # @return [String]
        attr_accessor :authorization_direction
      
        # A granular control type for authorization levels. Valid value is `
        # AUTHORIZATION_TYPE_TRUST`.
        # Corresponds to the JSON property `authorizationType`
        # @return [String]
        attr_accessor :authorization_type
      
        # Identifier. Resource name for the `AuthorizedOrgsDesc`. Format: `
        # accessPolicies/`access_policy`/authorizedOrgsDescs/`authorized_orgs_desc``.
        # The `authorized_orgs_desc` component must begin with a letter, followed by
        # alphanumeric characters or `_`. After you create an `AuthorizedOrgsDesc`, you
        # cannot change its `name`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The list of organization ids in this AuthorizedOrgsDesc. Format: `
        # organizations/` Example: `organizations/123456`
        # Corresponds to the JSON property `orgs`
        # @return [Array<String>]
        attr_accessor :orgs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_type = args[:asset_type] if args.key?(:asset_type)
          @authorization_direction = args[:authorization_direction] if args.key?(:authorization_direction)
          @authorization_type = args[:authorization_type] if args.key?(:authorization_type)
          @name = args[:name] if args.key?(:name)
          @orgs = args[:orgs] if args.key?(:orgs)
        end
      end
      
      # `BasicLevel` is an `AccessLevel` using a set of recommended features.
      class BasicLevel
        include Google::Apis::Core::Hashable
      
        # How the `conditions` list should be combined to determine if a request is
        # granted this `AccessLevel`. If AND is used, each `Condition` in `conditions`
        # must be satisfied for the `AccessLevel` to be applied. If OR is used, at least
        # one `Condition` in `conditions` must be satisfied for the `AccessLevel` to be
        # applied. Default behavior is AND.
        # Corresponds to the JSON property `combiningFunction`
        # @return [String]
        attr_accessor :combining_function
      
        # Required. A list of requirements for the `AccessLevel` to be granted.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::Condition>]
        attr_accessor :conditions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @combining_function = args[:combining_function] if args.key?(:combining_function)
          @conditions = args[:conditions] if args.key?(:conditions)
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
        # @return [Google::Apis::AccesscontextmanagerV1::Expr]
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
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Client scope represents the application, etc. subject to this binding's
      # restrictions.
      class ClientScope
        include Google::Apis::Core::Hashable
      
        # An application that accesses Google Cloud APIs.
        # Corresponds to the JSON property `restrictedClientApplication`
        # @return [Google::Apis::AccesscontextmanagerV1::Application]
        attr_accessor :restricted_client_application
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @restricted_client_application = args[:restricted_client_application] if args.key?(:restricted_client_application)
        end
      end
      
      # A request to commit dry-run specs in all Service Perimeters belonging to an
      # Access Policy.
      class CommitServicePerimetersRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The etag for the version of the Access Policy that this commit
        # operation is to be performed on. If, at the time of commit, the etag for the
        # Access Policy stored in Access Context Manager is different from the specified
        # etag, then the commit operation will not be performed and the call will fail.
        # This field is not required. If etag is not provided, the operation will be
        # performed as if a valid etag is provided.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
        end
      end
      
      # A response to CommitServicePerimetersRequest. This will be put inside of
      # Operation.response field.
      class CommitServicePerimetersResponse
        include Google::Apis::Core::Hashable
      
        # List of all the Service Perimeter instances in the Access Policy.
        # Corresponds to the JSON property `servicePerimeters`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::ServicePerimeter>]
        attr_accessor :service_perimeters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_perimeters = args[:service_perimeters] if args.key?(:service_perimeters)
        end
      end
      
      # A condition necessary for an `AccessLevel` to be granted. The Condition is an
      # AND over its fields. So a Condition is true if: 1) the request IP is from one
      # of the listed subnetworks AND 2) the originating device complies with the
      # listed device policy AND 3) all listed access levels are granted AND 4) the
      # request was sent at a time allowed by the DateTimeRestriction.
      class Condition
        include Google::Apis::Core::Hashable
      
        # `DevicePolicy` specifies device specific restrictions necessary to acquire a
        # given access level. A `DevicePolicy` specifies requirements for requests from
        # devices to be granted access levels, it does not do any enforcement on the
        # device. `DevicePolicy` acts as an AND over all specified fields, and each
        # repeated field is an OR over its elements. Any unset fields are ignored. For
        # example, if the proto is ` os_type : DESKTOP_WINDOWS, os_type : DESKTOP_LINUX,
        # encryption_status: ENCRYPTED`, then the DevicePolicy will be true for requests
        # originating from encrypted Linux desktops and encrypted Windows desktops.
        # Corresponds to the JSON property `devicePolicy`
        # @return [Google::Apis::AccesscontextmanagerV1::DevicePolicy]
        attr_accessor :device_policy
      
        # CIDR block IP subnetwork specification. May be IPv4 or IPv6. Note that for a
        # CIDR IP address block, the specified IP address portion must be properly
        # truncated (i.e. all the host bits must be zero) or the input is considered
        # malformed. For example, "192.0.2.0/24" is accepted but "192.0.2.1/24" is not.
        # Similarly, for IPv6, "2001:db8::/32" is accepted whereas "2001:db8::1/32" is
        # not. The originating IP of a request must be in one of the listed subnets in
        # order for this Condition to be true. If empty, all IP addresses are allowed.
        # Corresponds to the JSON property `ipSubnetworks`
        # @return [Array<String>]
        attr_accessor :ip_subnetworks
      
        # The request must be made by one of the provided user or service accounts.
        # Groups are not supported. Syntax: `user:`emailid`` `serviceAccount:`emailid``
        # If not specified, a request may come from any user.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Whether to negate the Condition. If true, the Condition becomes a NAND over
        # its non-empty fields. Any non-empty field criteria evaluating to false will
        # result in the Condition to be satisfied. Defaults to false.
        # Corresponds to the JSON property `negate`
        # @return [Boolean]
        attr_accessor :negate
        alias_method :negate?, :negate
      
        # The request must originate from one of the provided countries/regions. Must be
        # valid ISO 3166-1 alpha-2 codes.
        # Corresponds to the JSON property `regions`
        # @return [Array<String>]
        attr_accessor :regions
      
        # A list of other access levels defined in the same `Policy`, referenced by
        # resource name. Referencing an `AccessLevel` which does not exist is an error.
        # All access levels listed must be granted for the Condition to be true. Example:
        # "`accessPolicies/MY_POLICY/accessLevels/LEVEL_NAME"`
        # Corresponds to the JSON property `requiredAccessLevels`
        # @return [Array<String>]
        attr_accessor :required_access_levels
      
        # The request must originate from one of the provided VPC networks in Google
        # Cloud. Cannot specify this field together with `ip_subnetworks`.
        # Corresponds to the JSON property `vpcNetworkSources`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::VpcNetworkSource>]
        attr_accessor :vpc_network_sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_policy = args[:device_policy] if args.key?(:device_policy)
          @ip_subnetworks = args[:ip_subnetworks] if args.key?(:ip_subnetworks)
          @members = args[:members] if args.key?(:members)
          @negate = args[:negate] if args.key?(:negate)
          @regions = args[:regions] if args.key?(:regions)
          @required_access_levels = args[:required_access_levels] if args.key?(:required_access_levels)
          @vpc_network_sources = args[:vpc_network_sources] if args.key?(:vpc_network_sources)
        end
      end
      
      # `CustomLevel` is an `AccessLevel` using the Cloud Common Expression Language
      # to represent the necessary conditions for the level to apply to a request. See
      # CEL spec at: https://github.com/google/cel-spec
      class CustomLevel
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
        # Corresponds to the JSON property `expr`
        # @return [Google::Apis::AccesscontextmanagerV1::Expr]
        attr_accessor :expr
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expr = args[:expr] if args.key?(:expr)
        end
      end
      
      # `DevicePolicy` specifies device specific restrictions necessary to acquire a
      # given access level. A `DevicePolicy` specifies requirements for requests from
      # devices to be granted access levels, it does not do any enforcement on the
      # device. `DevicePolicy` acts as an AND over all specified fields, and each
      # repeated field is an OR over its elements. Any unset fields are ignored. For
      # example, if the proto is ` os_type : DESKTOP_WINDOWS, os_type : DESKTOP_LINUX,
      # encryption_status: ENCRYPTED`, then the DevicePolicy will be true for requests
      # originating from encrypted Linux desktops and encrypted Windows desktops.
      class DevicePolicy
        include Google::Apis::Core::Hashable
      
        # Allowed device management levels, an empty list allows all management levels.
        # Corresponds to the JSON property `allowedDeviceManagementLevels`
        # @return [Array<String>]
        attr_accessor :allowed_device_management_levels
      
        # Allowed encryptions statuses, an empty list allows all statuses.
        # Corresponds to the JSON property `allowedEncryptionStatuses`
        # @return [Array<String>]
        attr_accessor :allowed_encryption_statuses
      
        # Allowed OS versions, an empty list allows all types and all versions.
        # Corresponds to the JSON property `osConstraints`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::OsConstraint>]
        attr_accessor :os_constraints
      
        # Whether the device needs to be approved by the customer admin.
        # Corresponds to the JSON property `requireAdminApproval`
        # @return [Boolean]
        attr_accessor :require_admin_approval
        alias_method :require_admin_approval?, :require_admin_approval
      
        # Whether the device needs to be corp owned.
        # Corresponds to the JSON property `requireCorpOwned`
        # @return [Boolean]
        attr_accessor :require_corp_owned
        alias_method :require_corp_owned?, :require_corp_owned
      
        # Whether or not screenlock is required for the DevicePolicy to be true.
        # Defaults to `false`.
        # Corresponds to the JSON property `requireScreenlock`
        # @return [Boolean]
        attr_accessor :require_screenlock
        alias_method :require_screenlock?, :require_screenlock
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_device_management_levels = args[:allowed_device_management_levels] if args.key?(:allowed_device_management_levels)
          @allowed_encryption_statuses = args[:allowed_encryption_statuses] if args.key?(:allowed_encryption_statuses)
          @os_constraints = args[:os_constraints] if args.key?(:os_constraints)
          @require_admin_approval = args[:require_admin_approval] if args.key?(:require_admin_approval)
          @require_corp_owned = args[:require_corp_owned] if args.key?(:require_corp_owned)
          @require_screenlock = args[:require_screenlock] if args.key?(:require_screenlock)
        end
      end
      
      # Defines the conditions under which an EgressPolicy matches a request.
      # Conditions based on information about the source of the request. Note that if
      # the destination of the request is also protected by a ServicePerimeter, then
      # that ServicePerimeter must have an IngressPolicy which allows access in order
      # for this request to succeed.
      class EgressFrom
        include Google::Apis::Core::Hashable
      
        # A list of identities that are allowed access through [EgressPolicy].
        # Identities can be an individual user, service account, Google group, or third-
        # party identity. For third-party identity, only single identities are supported
        # and other identity types are not supported. The `v1` identities that have the
        # prefix `user`, `group`, `serviceAccount`, and `principal` in https://cloud.
        # google.com/iam/docs/principal-identifiers#v1 are supported.
        # Corresponds to the JSON property `identities`
        # @return [Array<String>]
        attr_accessor :identities
      
        # Specifies the type of identities that are allowed access to outside the
        # perimeter. If left unspecified, then members of `identities` field will be
        # allowed access.
        # Corresponds to the JSON property `identityType`
        # @return [String]
        attr_accessor :identity_type
      
        # Whether to enforce traffic restrictions based on `sources` field. If the `
        # sources` fields is non-empty, then this field must be set to `
        # SOURCE_RESTRICTION_ENABLED`.
        # Corresponds to the JSON property `sourceRestriction`
        # @return [String]
        attr_accessor :source_restriction
      
        # Sources that this EgressPolicy authorizes access from. If this field is not
        # empty, then `source_restriction` must be set to `SOURCE_RESTRICTION_ENABLED`.
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::EgressSource>]
        attr_accessor :sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identities = args[:identities] if args.key?(:identities)
          @identity_type = args[:identity_type] if args.key?(:identity_type)
          @source_restriction = args[:source_restriction] if args.key?(:source_restriction)
          @sources = args[:sources] if args.key?(:sources)
        end
      end
      
      # Policy for egress from perimeter. EgressPolicies match requests based on `
      # egress_from` and `egress_to` stanzas. For an EgressPolicy to match, both `
      # egress_from` and `egress_to` stanzas must be matched. If an EgressPolicy
      # matches a request, the request is allowed to span the ServicePerimeter
      # boundary. For example, an EgressPolicy can be used to allow VMs on networks
      # within the ServicePerimeter to access a defined set of projects outside the
      # perimeter in certain contexts (e.g. to read data from a Cloud Storage bucket
      # or query against a BigQuery dataset). EgressPolicies are concerned with the *
      # resources* that a request relates as well as the API services and API actions
      # being used. They do not related to the direction of data movement. More
      # detailed documentation for this concept can be found in the descriptions of
      # EgressFrom and EgressTo.
      class EgressPolicy
        include Google::Apis::Core::Hashable
      
        # Defines the conditions under which an EgressPolicy matches a request.
        # Conditions based on information about the source of the request. Note that if
        # the destination of the request is also protected by a ServicePerimeter, then
        # that ServicePerimeter must have an IngressPolicy which allows access in order
        # for this request to succeed.
        # Corresponds to the JSON property `egressFrom`
        # @return [Google::Apis::AccesscontextmanagerV1::EgressFrom]
        attr_accessor :egress_from
      
        # Defines the conditions under which an EgressPolicy matches a request.
        # Conditions are based on information about the ApiOperation intended to be
        # performed on the `resources` specified. Note that if the destination of the
        # request is also protected by a ServicePerimeter, then that ServicePerimeter
        # must have an IngressPolicy which allows access in order for this request to
        # succeed. The request must match `operations` AND `resources` fields in order
        # to be allowed egress out of the perimeter.
        # Corresponds to the JSON property `egressTo`
        # @return [Google::Apis::AccesscontextmanagerV1::EgressTo]
        attr_accessor :egress_to
      
        # Optional. Human-readable title for the egress rule. The title must be unique
        # within the perimeter and can not exceed 100 characters. Within the access
        # policy, the combined length of all rule titles must not exceed 240,000
        # characters.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @egress_from = args[:egress_from] if args.key?(:egress_from)
          @egress_to = args[:egress_to] if args.key?(:egress_to)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # The source that EgressPolicy authorizes access from inside the
      # ServicePerimeter to somewhere outside the ServicePerimeter boundaries.
      class EgressSource
        include Google::Apis::Core::Hashable
      
        # An AccessLevel resource name that allows protected resources inside the
        # ServicePerimeters to access outside the ServicePerimeter boundaries.
        # AccessLevels listed must be in the same policy as this ServicePerimeter.
        # Referencing a nonexistent AccessLevel will cause an error. If an AccessLevel
        # name is not specified, only resources within the perimeter can be accessed
        # through Google Cloud calls with request origins within the perimeter. Example:
        # `accessPolicies/MY_POLICY/accessLevels/MY_LEVEL`. If a single `*` is specified
        # for `access_level`, then all EgressSources will be allowed.
        # Corresponds to the JSON property `accessLevel`
        # @return [String]
        attr_accessor :access_level
      
        # A Google Cloud resource from the service perimeter that you want to allow to
        # access data outside the perimeter. This field supports only projects. The
        # project format is `projects/`project_number``. You can't use `*` in this field
        # to allow all Google Cloud resources.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_level = args[:access_level] if args.key?(:access_level)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Defines the conditions under which an EgressPolicy matches a request.
      # Conditions are based on information about the ApiOperation intended to be
      # performed on the `resources` specified. Note that if the destination of the
      # request is also protected by a ServicePerimeter, then that ServicePerimeter
      # must have an IngressPolicy which allows access in order for this request to
      # succeed. The request must match `operations` AND `resources` fields in order
      # to be allowed egress out of the perimeter.
      class EgressTo
        include Google::Apis::Core::Hashable
      
        # A list of external resources that are allowed to be accessed. Only AWS and
        # Azure resources are supported. For Amazon S3, the supported formats are s3://
        # BUCKET_NAME, s3a://BUCKET_NAME, and s3n://BUCKET_NAME. For Azure Storage, the
        # supported format is azure://myaccount.blob.core.windows.net/CONTAINER_NAME. A
        # request matches if it contains an external resource in this list (Example: s3:/
        # /bucket/path). Currently '*' is not allowed.
        # Corresponds to the JSON property `externalResources`
        # @return [Array<String>]
        attr_accessor :external_resources
      
        # A list of ApiOperations allowed to be performed by the sources specified in
        # the corresponding EgressFrom. A request matches if it uses an operation/
        # service in this list.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::ApiOperation>]
        attr_accessor :operations
      
        # A list of resources, currently only projects in the form `projects/`, that are
        # allowed to be accessed by sources defined in the corresponding EgressFrom. A
        # request matches if it contains a resource in this list. If `*` is specified
        # for `resources`, then this EgressTo rule will authorize access to all
        # resources outside the perimeter.
        # Corresponds to the JSON property `resources`
        # @return [Array<String>]
        attr_accessor :resources
      
        # IAM roles that represent the set of operations that the sources specified in
        # the corresponding EgressFrom. are allowed to perform in this ServicePerimeter.
        # Corresponds to the JSON property `roles`
        # @return [Array<String>]
        attr_accessor :roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_resources = args[:external_resources] if args.key?(:external_resources)
          @operations = args[:operations] if args.key?(:operations)
          @resources = args[:resources] if args.key?(:resources)
          @roles = args[:roles] if args.key?(:roles)
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
      
      # Restricts access to Cloud Console and Google Cloud APIs for a set of users
      # using Context-Aware Access.
      class GcpUserAccessBinding
        include Google::Apis::Core::Hashable
      
        # Optional. Access level that a user must have to be granted access. Only one
        # access level is supported, not multiple. This repeated field must have exactly
        # one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
        # Corresponds to the JSON property `accessLevels`
        # @return [Array<String>]
        attr_accessor :access_levels
      
        # Optional. Dry run access level that will be evaluated but will not be enforced.
        # The access denial based on dry run policy will be logged. Only one access
        # level is supported, not multiple. This list must have exactly one element.
        # Example: "accessPolicies/9522/accessLevels/device_trusted"
        # Corresponds to the JSON property `dryRunAccessLevels`
        # @return [Array<String>]
        attr_accessor :dry_run_access_levels
      
        # Required. Immutable. Google Group id whose members are subject to this binding'
        # s restrictions. See "id" in the [G Suite Directory API's Groups resource] (
        # https://developers.google.com/admin-sdk/directory/v1/reference/groups#resource)
        # . If a group's email address/alias is changed, this resource will continue to
        # point at the changed group. This field does not accept group email addresses
        # or aliases. Example: "01d520gv4vjcrht"
        # Corresponds to the JSON property `groupKey`
        # @return [String]
        attr_accessor :group_key
      
        # Immutable. Assigned by the server during creation. The last segment has an
        # arbitrary length and has only URI unreserved characters (as defined by [RFC
        # 3986 Section 2.3](https://tools.ietf.org/html/rfc3986#section-2.3)). Should
        # not be specified by the client during creation. Example: "organizations/256/
        # gcpUserAccessBindings/b3-BhcX_Ud5N"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. A list of applications that are subject to this binding's
        # restrictions. If the list is empty, the binding restrictions will universally
        # apply to all applications.
        # Corresponds to the JSON property `restrictedClientApplications`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::Application>]
        attr_accessor :restricted_client_applications
      
        # Optional. A list of scoped access settings that set this binding's
        # restrictions on a subset of applications. This field cannot be set if
        # restricted_client_applications is set.
        # Corresponds to the JSON property `scopedAccessSettings`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::ScopedAccessSettings>]
        attr_accessor :scoped_access_settings
      
        # Stores settings related to Google Cloud Session Length including session
        # duration, the type of challenge (i.e. method) they should face when their
        # session expires, and other related settings.
        # Corresponds to the JSON property `sessionSettings`
        # @return [Google::Apis::AccesscontextmanagerV1::SessionSettings]
        attr_accessor :session_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_levels = args[:access_levels] if args.key?(:access_levels)
          @dry_run_access_levels = args[:dry_run_access_levels] if args.key?(:dry_run_access_levels)
          @group_key = args[:group_key] if args.key?(:group_key)
          @name = args[:name] if args.key?(:name)
          @restricted_client_applications = args[:restricted_client_applications] if args.key?(:restricted_client_applications)
          @scoped_access_settings = args[:scoped_access_settings] if args.key?(:scoped_access_settings)
          @session_settings = args[:session_settings] if args.key?(:session_settings)
        end
      end
      
      # Metadata of Google Cloud Access Binding Long Running Operations.
      class GcpUserAccessBindingOperationMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for `GetIamPolicy` method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates settings provided to GetIamPolicy.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::AccesscontextmanagerV1::GetPolicyOptions]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # Encapsulates settings provided to GetIamPolicy.
      class GetPolicyOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum policy version that will be used to format the policy.
        # Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        # rejected. Requests for policies with any conditional role bindings must
        # specify version 3. Policies with no conditional role bindings may specify any
        # valid value or leave the field unset. The policy in the response might use the
        # policy version that you specified, or it might use a lower policy version. For
        # example, if you specify version 3, but the policy has no conditional role
        # bindings, the response uses version 1. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies).
        # Corresponds to the JSON property `requestedPolicyVersion`
        # @return [Fixnum]
        attr_accessor :requested_policy_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requested_policy_version = args[:requested_policy_version] if args.key?(:requested_policy_version)
        end
      end
      
      # Defines the conditions under which an IngressPolicy matches a request.
      # Conditions are based on information about the source of the request. The
      # request must satisfy what is defined in `sources` AND identity related fields
      # in order to match.
      class IngressFrom
        include Google::Apis::Core::Hashable
      
        # A list of identities that are allowed access through [IngressPolicy].
        # Identities can be an individual user, service account, Google group, or third-
        # party identity. For third-party identity, only single identities are supported
        # and other identity types are not supported. The `v1` identities that have the
        # prefix `user`, `group`, `serviceAccount`, and `principal` in https://cloud.
        # google.com/iam/docs/principal-identifiers#v1 are supported.
        # Corresponds to the JSON property `identities`
        # @return [Array<String>]
        attr_accessor :identities
      
        # Specifies the type of identities that are allowed access from outside the
        # perimeter. If left unspecified, then members of `identities` field will be
        # allowed access.
        # Corresponds to the JSON property `identityType`
        # @return [String]
        attr_accessor :identity_type
      
        # Sources that this IngressPolicy authorizes access from.
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::IngressSource>]
        attr_accessor :sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identities = args[:identities] if args.key?(:identities)
          @identity_type = args[:identity_type] if args.key?(:identity_type)
          @sources = args[:sources] if args.key?(:sources)
        end
      end
      
      # Policy for ingress into ServicePerimeter. IngressPolicies match requests based
      # on `ingress_from` and `ingress_to` stanzas. For an ingress policy to match,
      # both the `ingress_from` and `ingress_to` stanzas must be matched. If an
      # IngressPolicy matches a request, the request is allowed through the perimeter
      # boundary from outside the perimeter. For example, access from the internet can
      # be allowed either based on an AccessLevel or, for traffic hosted on Google
      # Cloud, the project of the source network. For access from private networks,
      # using the project of the hosting network is required. Individual ingress
      # policies can be limited by restricting which services and/or actions they
      # match using the `ingress_to` field.
      class IngressPolicy
        include Google::Apis::Core::Hashable
      
        # Defines the conditions under which an IngressPolicy matches a request.
        # Conditions are based on information about the source of the request. The
        # request must satisfy what is defined in `sources` AND identity related fields
        # in order to match.
        # Corresponds to the JSON property `ingressFrom`
        # @return [Google::Apis::AccesscontextmanagerV1::IngressFrom]
        attr_accessor :ingress_from
      
        # Defines the conditions under which an IngressPolicy matches a request.
        # Conditions are based on information about the ApiOperation intended to be
        # performed on the target resource of the request. The request must satisfy what
        # is defined in `operations` AND `resources` in order to match.
        # Corresponds to the JSON property `ingressTo`
        # @return [Google::Apis::AccesscontextmanagerV1::IngressTo]
        attr_accessor :ingress_to
      
        # Optional. Human-readable title for the ingress rule. The title must be unique
        # within the perimeter and can not exceed 100 characters. Within the access
        # policy, the combined length of all rule titles must not exceed 240,000
        # characters.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ingress_from = args[:ingress_from] if args.key?(:ingress_from)
          @ingress_to = args[:ingress_to] if args.key?(:ingress_to)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # The source that IngressPolicy authorizes access from.
      class IngressSource
        include Google::Apis::Core::Hashable
      
        # An AccessLevel resource name that allow resources within the ServicePerimeters
        # to be accessed from the internet. AccessLevels listed must be in the same
        # policy as this ServicePerimeter. Referencing a nonexistent AccessLevel will
        # cause an error. If no AccessLevel names are listed, resources within the
        # perimeter can only be accessed via Google Cloud calls with request origins
        # within the perimeter. Example: `accessPolicies/MY_POLICY/accessLevels/MY_LEVEL`
        # . If a single `*` is specified for `access_level`, then all IngressSources
        # will be allowed.
        # Corresponds to the JSON property `accessLevel`
        # @return [String]
        attr_accessor :access_level
      
        # A Google Cloud resource that is allowed to ingress the perimeter. Requests
        # from these resources will be allowed to access perimeter data. Currently only
        # projects and VPCs are allowed. Project format: `projects/`project_number`` VPC
        # network format: `//compute.googleapis.com/projects/`PROJECT_ID`/global/
        # networks/`NAME``. The project may be in any Google Cloud organization, not
        # just the organization that the perimeter is defined in. `*` is not allowed,
        # the case of allowing all Google Cloud resources only is not supported.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_level = args[:access_level] if args.key?(:access_level)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Defines the conditions under which an IngressPolicy matches a request.
      # Conditions are based on information about the ApiOperation intended to be
      # performed on the target resource of the request. The request must satisfy what
      # is defined in `operations` AND `resources` in order to match.
      class IngressTo
        include Google::Apis::Core::Hashable
      
        # A list of ApiOperations allowed to be performed by the sources specified in
        # corresponding IngressFrom in this ServicePerimeter.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::ApiOperation>]
        attr_accessor :operations
      
        # A list of resources, currently only projects in the form `projects/`,
        # protected by this ServicePerimeter that are allowed to be accessed by sources
        # defined in the corresponding IngressFrom. If a single `*` is specified, then
        # access to all resources inside the perimeter are allowed.
        # Corresponds to the JSON property `resources`
        # @return [Array<String>]
        attr_accessor :resources
      
        # IAM roles that represent the set of operations that the sources specified in
        # the corresponding IngressFrom are allowed to perform in this ServicePerimeter.
        # Corresponds to the JSON property `roles`
        # @return [Array<String>]
        attr_accessor :roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operations = args[:operations] if args.key?(:operations)
          @resources = args[:resources] if args.key?(:resources)
          @roles = args[:roles] if args.key?(:roles)
        end
      end
      
      # A response to `ListAccessLevelsRequest`.
      class ListAccessLevelsResponse
        include Google::Apis::Core::Hashable
      
        # List of the Access Level instances.
        # Corresponds to the JSON property `accessLevels`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::AccessLevel>]
        attr_accessor :access_levels
      
        # The pagination token to retrieve the next page of results. If the value is
        # empty, no further results remain.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_levels = args[:access_levels] if args.key?(:access_levels)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A response to `ListAccessPoliciesRequest`.
      class ListAccessPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # List of the AccessPolicy instances.
        # Corresponds to the JSON property `accessPolicies`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::AccessPolicy>]
        attr_accessor :access_policies
      
        # The pagination token to retrieve the next page of results. If the value is
        # empty, no further results remain.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_policies = args[:access_policies] if args.key?(:access_policies)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A response to `ListAuthorizedOrgsDescsRequest`.
      class ListAuthorizedOrgsDescsResponse
        include Google::Apis::Core::Hashable
      
        # List of all the Authorized Orgs Desc instances.
        # Corresponds to the JSON property `authorizedOrgsDescs`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::AuthorizedOrgsDesc>]
        attr_accessor :authorized_orgs_descs
      
        # The pagination token to retrieve the next page of results. If the value is
        # empty, no further results remain.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorized_orgs_descs = args[:authorized_orgs_descs] if args.key?(:authorized_orgs_descs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response of ListGcpUserAccessBindings.
      class ListGcpUserAccessBindingsResponse
        include Google::Apis::Core::Hashable
      
        # GcpUserAccessBinding
        # Corresponds to the JSON property `gcpUserAccessBindings`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::GcpUserAccessBinding>]
        attr_accessor :gcp_user_access_bindings
      
        # Token to get the next page of items. If blank, there are no more items.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcp_user_access_bindings = args[:gcp_user_access_bindings] if args.key?(:gcp_user_access_bindings)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::Operation>]
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
      
      # A response to `ListServicePerimetersRequest`.
      class ListServicePerimetersResponse
        include Google::Apis::Core::Hashable
      
        # The pagination token to retrieve the next page of results. If the value is
        # empty, no further results remain.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of the Service Perimeter instances.
        # Corresponds to the JSON property `servicePerimeters`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::ServicePerimeter>]
        attr_accessor :service_perimeters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @service_perimeters = args[:service_perimeters] if args.key?(:service_perimeters)
        end
      end
      
      # A response to `ListSupportedServicesRequest`.
      class ListSupportedServicesResponse
        include Google::Apis::Core::Hashable
      
        # The pagination token to retrieve the next page of results. If the value is
        # empty, no further results remain.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of services supported by VPC Service Controls instances.
        # Corresponds to the JSON property `supportedServices`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::SupportedService>]
        attr_accessor :supported_services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @supported_services = args[:supported_services] if args.key?(:supported_services)
        end
      end
      
      # An allowed method or permission of a service specified in ApiOperation.
      class MethodSelector
        include Google::Apis::Core::Hashable
      
        # A valid method name for the corresponding `service_name` in ApiOperation. If `*
        # ` is used as the value for the `method`, then ALL methods and permissions are
        # allowed.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # A valid Cloud IAM permission for the corresponding `service_name` in
        # ApiOperation.
        # Corresponds to the JSON property `permission`
        # @return [String]
        attr_accessor :permission
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @permission = args[:permission] if args.key?(:permission)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
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
        # @return [Google::Apis::AccesscontextmanagerV1::Status]
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
      
      # A restriction on the OS type and version of devices making requests.
      class OsConstraint
        include Google::Apis::Core::Hashable
      
        # The minimum allowed OS version. If not set, any version of this OS satisfies
        # the constraint. Format: `"major.minor.patch"`. Examples: `"10.5.301"`, `"9.2.1"
        # `.
        # Corresponds to the JSON property `minimumVersion`
        # @return [String]
        attr_accessor :minimum_version
      
        # Required. The allowed OS type.
        # Corresponds to the JSON property `osType`
        # @return [String]
        attr_accessor :os_type
      
        # Only allows requests from devices with a verified Chrome OS. Verifications
        # includes requirements that the device is enterprise-managed, conformant to
        # domain policies, and the caller has permission to call the API targeted by the
        # request.
        # Corresponds to the JSON property `requireVerifiedChromeOs`
        # @return [Boolean]
        attr_accessor :require_verified_chrome_os
        alias_method :require_verified_chrome_os?, :require_verified_chrome_os
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @minimum_version = args[:minimum_version] if args.key?(:minimum_version)
          @os_type = args[:os_type] if args.key?(:os_type)
          @require_verified_chrome_os = args[:require_verified_chrome_os] if args.key?(:require_verified_chrome_os)
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
        # @return [Array<Google::Apis::AccesscontextmanagerV1::AuditConfig>]
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
        # @return [Array<Google::Apis::AccesscontextmanagerV1::Binding>]
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
      
      # A request to replace all existing Access Levels in an Access Policy with the
      # Access Levels provided. This is done atomically.
      class ReplaceAccessLevelsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The desired Access Levels that should replace all existing Access
        # Levels in the Access Policy.
        # Corresponds to the JSON property `accessLevels`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::AccessLevel>]
        attr_accessor :access_levels
      
        # Optional. The etag for the version of the Access Policy that this replace
        # operation is to be performed on. If, at the time of replace, the etag for the
        # Access Policy stored in Access Context Manager is different from the specified
        # etag, then the replace operation will not be performed and the call will fail.
        # This field is not required. If etag is not provided, the operation will be
        # performed as if a valid etag is provided.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_levels = args[:access_levels] if args.key?(:access_levels)
          @etag = args[:etag] if args.key?(:etag)
        end
      end
      
      # A response to ReplaceAccessLevelsRequest. This will be put inside of Operation.
      # response field.
      class ReplaceAccessLevelsResponse
        include Google::Apis::Core::Hashable
      
        # List of the Access Level instances.
        # Corresponds to the JSON property `accessLevels`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::AccessLevel>]
        attr_accessor :access_levels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_levels = args[:access_levels] if args.key?(:access_levels)
        end
      end
      
      # A request to replace all existing Service Perimeters in an Access Policy with
      # the Service Perimeters provided. This is done atomically.
      class ReplaceServicePerimetersRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The etag for the version of the Access Policy that this replace
        # operation is to be performed on. If, at the time of replace, the etag for the
        # Access Policy stored in Access Context Manager is different from the specified
        # etag, then the replace operation will not be performed and the call will fail.
        # This field is not required. If etag is not provided, the operation will be
        # performed as if a valid etag is provided.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Required. The desired Service Perimeters that should replace all existing
        # Service Perimeters in the Access Policy.
        # Corresponds to the JSON property `servicePerimeters`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::ServicePerimeter>]
        attr_accessor :service_perimeters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @service_perimeters = args[:service_perimeters] if args.key?(:service_perimeters)
        end
      end
      
      # A response to ReplaceServicePerimetersRequest. This will be put inside of
      # Operation.response field.
      class ReplaceServicePerimetersResponse
        include Google::Apis::Core::Hashable
      
        # List of the Service Perimeter instances.
        # Corresponds to the JSON property `servicePerimeters`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::ServicePerimeter>]
        attr_accessor :service_perimeters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_perimeters = args[:service_perimeters] if args.key?(:service_perimeters)
        end
      end
      
      # A relationship between access settings and its scope.
      class ScopedAccessSettings
        include Google::Apis::Core::Hashable
      
        # Access settings represent the set of conditions that must be met for access to
        # be granted. At least one of the fields must be set.
        # Corresponds to the JSON property `activeSettings`
        # @return [Google::Apis::AccesscontextmanagerV1::AccessSettings]
        attr_accessor :active_settings
      
        # Access settings represent the set of conditions that must be met for access to
        # be granted. At least one of the fields must be set.
        # Corresponds to the JSON property `dryRunSettings`
        # @return [Google::Apis::AccesscontextmanagerV1::AccessSettings]
        attr_accessor :dry_run_settings
      
        # Access scope represents the client scope, etc. to which the settings will be
        # applied to.
        # Corresponds to the JSON property `scope`
        # @return [Google::Apis::AccesscontextmanagerV1::AccessScope]
        attr_accessor :scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_settings = args[:active_settings] if args.key?(:active_settings)
          @dry_run_settings = args[:dry_run_settings] if args.key?(:dry_run_settings)
          @scope = args[:scope] if args.key?(:scope)
        end
      end
      
      # `ServicePerimeter` describes a set of Google Cloud resources which can freely
      # import and export data amongst themselves, but not export outside of the `
      # ServicePerimeter`. If a request with a source within this `ServicePerimeter`
      # has a target outside of the `ServicePerimeter`, the request will be blocked.
      # Otherwise the request is allowed. There are two types of Service Perimeter -
      # Regular and Bridge. Regular Service Perimeters cannot overlap, a single Google
      # Cloud project or VPC network can only belong to a single regular Service
      # Perimeter. Service Perimeter Bridges can contain only Google Cloud projects as
      # members, a single Google Cloud project may belong to multiple Service
      # Perimeter Bridges.
      class ServicePerimeter
        include Google::Apis::Core::Hashable
      
        # Description of the `ServicePerimeter` and its use. Does not affect behavior.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. An opaque identifier for the current version of the `
        # ServicePerimeter`. This identifier does not follow any specific format. If an
        # etag is not provided, the operation will be performed as if a valid etag is
        # provided.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Identifier. Resource name for the `ServicePerimeter`. Format: `accessPolicies/`
        # access_policy`/servicePerimeters/`service_perimeter``. The `service_perimeter`
        # component must begin with a letter, followed by alphanumeric characters or `_`.
        # After you create a `ServicePerimeter`, you cannot change its `name`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Perimeter type indicator. A single project or VPC network is allowed to be a
        # member of single regular perimeter, but multiple service perimeter bridges. A
        # project cannot be a included in a perimeter bridge without being included in
        # regular perimeter. For perimeter bridges, the restricted service list as well
        # as access level lists must be empty.
        # Corresponds to the JSON property `perimeterType`
        # @return [String]
        attr_accessor :perimeter_type
      
        # `ServicePerimeterConfig` specifies a set of Google Cloud resources that
        # describe specific Service Perimeter configuration.
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::AccesscontextmanagerV1::ServicePerimeterConfig]
        attr_accessor :spec
      
        # `ServicePerimeterConfig` specifies a set of Google Cloud resources that
        # describe specific Service Perimeter configuration.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::AccesscontextmanagerV1::ServicePerimeterConfig]
        attr_accessor :status
      
        # Human readable title. Must be unique within the Policy.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists
        # for all Service Perimeters, and that spec is identical to the status for those
        # Service Perimeters. When this flag is set, it inhibits the generation of the
        # implicit spec, thereby allowing the user to explicitly provide a configuration
        # ("spec") to use in a dry-run version of the Service Perimeter. This allows the
        # user to test changes to the enforced config ("status") without actually
        # enforcing them. This testing is done through analyzing the differences between
        # currently enforced and suggested restrictions. use_explicit_dry_run_spec must
        # bet set to True if any of the fields in the spec are set to non-default values.
        # Corresponds to the JSON property `useExplicitDryRunSpec`
        # @return [Boolean]
        attr_accessor :use_explicit_dry_run_spec
        alias_method :use_explicit_dry_run_spec?, :use_explicit_dry_run_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @perimeter_type = args[:perimeter_type] if args.key?(:perimeter_type)
          @spec = args[:spec] if args.key?(:spec)
          @status = args[:status] if args.key?(:status)
          @title = args[:title] if args.key?(:title)
          @use_explicit_dry_run_spec = args[:use_explicit_dry_run_spec] if args.key?(:use_explicit_dry_run_spec)
        end
      end
      
      # `ServicePerimeterConfig` specifies a set of Google Cloud resources that
      # describe specific Service Perimeter configuration.
      class ServicePerimeterConfig
        include Google::Apis::Core::Hashable
      
        # A list of `AccessLevel` resource names that allow resources within the `
        # ServicePerimeter` to be accessed from the internet. `AccessLevels` listed must
        # be in the same policy as this `ServicePerimeter`. Referencing a nonexistent `
        # AccessLevel` is a syntax error. If no `AccessLevel` names are listed,
        # resources within the perimeter can only be accessed via Google Cloud calls
        # with request origins within the perimeter. Example: `"accessPolicies/MY_POLICY/
        # accessLevels/MY_LEVEL"`. For Service Perimeter Bridge, must be empty.
        # Corresponds to the JSON property `accessLevels`
        # @return [Array<String>]
        attr_accessor :access_levels
      
        # List of EgressPolicies to apply to the perimeter. A perimeter may have
        # multiple EgressPolicies, each of which is evaluated separately. Access is
        # granted if any EgressPolicy grants it. Must be empty for a perimeter bridge.
        # Corresponds to the JSON property `egressPolicies`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::EgressPolicy>]
        attr_accessor :egress_policies
      
        # List of IngressPolicies to apply to the perimeter. A perimeter may have
        # multiple IngressPolicies, each of which is evaluated separately. Access is
        # granted if any Ingress Policy grants it. Must be empty for a perimeter bridge.
        # Corresponds to the JSON property `ingressPolicies`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::IngressPolicy>]
        attr_accessor :ingress_policies
      
        # A list of Google Cloud resources that are inside of the service perimeter.
        # Currently only projects and VPCs are allowed. Project format: `projects/`
        # project_number`` VPC network format: `//compute.googleapis.com/projects/`
        # PROJECT_ID`/global/networks/`NAME``.
        # Corresponds to the JSON property `resources`
        # @return [Array<String>]
        attr_accessor :resources
      
        # Google Cloud services that are subject to the Service Perimeter restrictions.
        # For example, if `storage.googleapis.com` is specified, access to the storage
        # buckets inside the perimeter must meet the perimeter's access restrictions.
        # Corresponds to the JSON property `restrictedServices`
        # @return [Array<String>]
        attr_accessor :restricted_services
      
        # Specifies how APIs are allowed to communicate within the Service Perimeter.
        # Corresponds to the JSON property `vpcAccessibleServices`
        # @return [Google::Apis::AccesscontextmanagerV1::VpcAccessibleServices]
        attr_accessor :vpc_accessible_services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_levels = args[:access_levels] if args.key?(:access_levels)
          @egress_policies = args[:egress_policies] if args.key?(:egress_policies)
          @ingress_policies = args[:ingress_policies] if args.key?(:ingress_policies)
          @resources = args[:resources] if args.key?(:resources)
          @restricted_services = args[:restricted_services] if args.key?(:restricted_services)
          @vpc_accessible_services = args[:vpc_accessible_services] if args.key?(:vpc_accessible_services)
        end
      end
      
      # Stores settings related to Google Cloud Session Length including session
      # duration, the type of challenge (i.e. method) they should face when their
      # session expires, and other related settings.
      class SessionSettings
        include Google::Apis::Core::Hashable
      
        # Optional. How long a user is allowed to take between actions before a new
        # access token must be issued. Only set for Google Cloud apps.
        # Corresponds to the JSON property `maxInactivity`
        # @return [String]
        attr_accessor :max_inactivity
      
        # Optional. The session length. Setting this field to zero is equal to disabling
        # session. Also can set infinite session by flipping the enabled bit to false
        # below. If use_oidc_max_age is true, for OIDC apps, the session length will be
        # the minimum of this field and OIDC max_age param.
        # Corresponds to the JSON property `sessionLength`
        # @return [String]
        attr_accessor :session_length
      
        # Optional. This field enables or disables Google Cloud session length. When
        # false, all fields set above will be disregarded and the session length is
        # basically infinite.
        # Corresponds to the JSON property `sessionLengthEnabled`
        # @return [Boolean]
        attr_accessor :session_length_enabled
        alias_method :session_length_enabled?, :session_length_enabled
      
        # Optional. Session method when user's Google Cloud session is up.
        # Corresponds to the JSON property `sessionReauthMethod`
        # @return [String]
        attr_accessor :session_reauth_method
      
        # Optional. Only useful for OIDC apps. When false, the OIDC max_age param, if
        # passed in the authentication request will be ignored. When true, the re-auth
        # period will be the minimum of the session_length field and the max_age OIDC
        # param.
        # Corresponds to the JSON property `useOidcMaxAge`
        # @return [Boolean]
        attr_accessor :use_oidc_max_age
        alias_method :use_oidc_max_age?, :use_oidc_max_age
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_inactivity = args[:max_inactivity] if args.key?(:max_inactivity)
          @session_length = args[:session_length] if args.key?(:session_length)
          @session_length_enabled = args[:session_length_enabled] if args.key?(:session_length_enabled)
          @session_reauth_method = args[:session_reauth_method] if args.key?(:session_reauth_method)
          @use_oidc_max_age = args[:use_oidc_max_age] if args.key?(:use_oidc_max_age)
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
        # @return [Google::Apis::AccesscontextmanagerV1::Policy]
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
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
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
      
      # `SupportedService` specifies the VPC Service Controls and its properties.
      class SupportedService
        include Google::Apis::Core::Hashable
      
        # True if the service is available on the restricted VIP. Services on the
        # restricted VIP typically either support VPC Service Controls or are core
        # infrastructure services required for the functioning of Google Cloud.
        # Corresponds to the JSON property `availableOnRestrictedVip`
        # @return [Boolean]
        attr_accessor :available_on_restricted_vip
        alias_method :available_on_restricted_vip?, :available_on_restricted_vip
      
        # True if the service is supported with some limitations. Check [documentation](
        # https://cloud.google.com/vpc-service-controls/docs/supported-products) for
        # details.
        # Corresponds to the JSON property `knownLimitations`
        # @return [Boolean]
        attr_accessor :known_limitations
        alias_method :known_limitations?, :known_limitations
      
        # The service name or address of the supported service, such as `service.
        # googleapis.com`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The support stage of the service.
        # Corresponds to the JSON property `serviceSupportStage`
        # @return [String]
        attr_accessor :service_support_stage
      
        # The support stage of the service.
        # Corresponds to the JSON property `supportStage`
        # @return [String]
        attr_accessor :support_stage
      
        # The list of the supported methods. This field exists only in response to
        # GetSupportedService
        # Corresponds to the JSON property `supportedMethods`
        # @return [Array<Google::Apis::AccesscontextmanagerV1::MethodSelector>]
        attr_accessor :supported_methods
      
        # The name of the supported product, such as 'Cloud Product API'.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_on_restricted_vip = args[:available_on_restricted_vip] if args.key?(:available_on_restricted_vip)
          @known_limitations = args[:known_limitations] if args.key?(:known_limitations)
          @name = args[:name] if args.key?(:name)
          @service_support_stage = args[:service_support_stage] if args.key?(:service_support_stage)
          @support_stage = args[:support_stage] if args.key?(:support_stage)
          @supported_methods = args[:supported_methods] if args.key?(:supported_methods)
          @title = args[:title] if args.key?(:title)
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
      
      # Specifies how APIs are allowed to communicate within the Service Perimeter.
      class VpcAccessibleServices
        include Google::Apis::Core::Hashable
      
        # The list of APIs usable within the Service Perimeter. Must be empty unless '
        # enable_restriction' is True. You can specify a list of individual services, as
        # well as include the 'RESTRICTED-SERVICES' value, which automatically includes
        # all of the services protected by the perimeter.
        # Corresponds to the JSON property `allowedServices`
        # @return [Array<String>]
        attr_accessor :allowed_services
      
        # Whether to restrict API calls within the Service Perimeter to the list of APIs
        # specified in 'allowed_services'.
        # Corresponds to the JSON property `enableRestriction`
        # @return [Boolean]
        attr_accessor :enable_restriction
        alias_method :enable_restriction?, :enable_restriction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_services = args[:allowed_services] if args.key?(:allowed_services)
          @enable_restriction = args[:enable_restriction] if args.key?(:enable_restriction)
        end
      end
      
      # The originating network source in Google Cloud.
      class VpcNetworkSource
        include Google::Apis::Core::Hashable
      
        # Sub-segment ranges inside of a VPC Network.
        # Corresponds to the JSON property `vpcSubnetwork`
        # @return [Google::Apis::AccesscontextmanagerV1::VpcSubNetwork]
        attr_accessor :vpc_subnetwork
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @vpc_subnetwork = args[:vpc_subnetwork] if args.key?(:vpc_subnetwork)
        end
      end
      
      # Sub-segment ranges inside of a VPC Network.
      class VpcSubNetwork
        include Google::Apis::Core::Hashable
      
        # Required. Network name. If the network is not part of the organization, the `
        # compute.network.get` permission must be granted to the caller. Format: `//
        # compute.googleapis.com/projects/`PROJECT_ID`/global/networks/`NETWORK_NAME``
        # Example: `//compute.googleapis.com/projects/my-project/global/networks/network-
        # 1`
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # CIDR block IP subnetwork specification. The IP address must be an IPv4 address
        # and can be a public or private IP address. Note that for a CIDR IP address
        # block, the specified IP address portion must be properly truncated (i.e. all
        # the host bits must be zero) or the input is considered malformed. For example,
        # "192.0.2.0/24" is accepted but "192.0.2.1/24" is not. If empty, all IP
        # addresses are allowed.
        # Corresponds to the JSON property `vpcIpSubnetworks`
        # @return [Array<String>]
        attr_accessor :vpc_ip_subnetworks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network = args[:network] if args.key?(:network)
          @vpc_ip_subnetworks = args[:vpc_ip_subnetworks] if args.key?(:vpc_ip_subnetworks)
        end
      end
    end
  end
end
