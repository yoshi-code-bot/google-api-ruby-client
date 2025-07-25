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
    module CloudassetV1
      
      # Specifies roles and/or permissions to analyze, to determine both the
      # identities possessing them and the resources they control. If multiple values
      # are specified, results will include roles or permissions matching any of them.
      # The total number of roles and permissions should be equal or less than 10.
      class AccessSelector
        include Google::Apis::Core::Hashable
      
        # Optional. The permissions to appear in result.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        # Optional. The roles to appear in result.
        # Corresponds to the JSON property `roles`
        # @return [Array<String>]
        attr_accessor :roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
          @roles = args[:roles] if args.key?(:roles)
        end
      end
      
      # Represents the metadata of the longrunning operation for the
      # AnalyzeIamPolicyLongrunning RPC.
      class AnalyzeIamPolicyLongrunningMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
        end
      end
      
      # A request message for AssetService.AnalyzeIamPolicyLongrunning.
      class AnalyzeIamPolicyLongrunningRequest
        include Google::Apis::Core::Hashable
      
        # IAM policy analysis query message.
        # Corresponds to the JSON property `analysisQuery`
        # @return [Google::Apis::CloudassetV1::IamPolicyAnalysisQuery]
        attr_accessor :analysis_query
      
        # Output configuration for export IAM policy analysis destination.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::CloudassetV1::IamPolicyAnalysisOutputConfig]
        attr_accessor :output_config
      
        # Optional. The name of a saved query, which must be in the format of: *
        # projects/project_number/savedQueries/saved_query_id * folders/folder_number/
        # savedQueries/saved_query_id * organizations/organization_number/savedQueries/
        # saved_query_id If both `analysis_query` and `saved_analysis_query` are
        # provided, they will be merged together with the `saved_analysis_query` as base
        # and the `analysis_query` as overrides. For more details of the merge behavior,
        # refer to the [MergeFrom](https://developers.google.com/protocol-buffers/docs/
        # reference/cpp/google.protobuf.message#Message.MergeFrom.details) doc. Note
        # that you cannot override primitive fields with default value, such as 0 or
        # empty string, etc., because we use proto3, which doesn't support field
        # presence yet.
        # Corresponds to the JSON property `savedAnalysisQuery`
        # @return [String]
        attr_accessor :saved_analysis_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_query = args[:analysis_query] if args.key?(:analysis_query)
          @output_config = args[:output_config] if args.key?(:output_config)
          @saved_analysis_query = args[:saved_analysis_query] if args.key?(:saved_analysis_query)
        end
      end
      
      # A response message for AssetService.AnalyzeIamPolicyLongrunning.
      class AnalyzeIamPolicyLongrunningResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A response message for AssetService.AnalyzeIamPolicy.
      class AnalyzeIamPolicyResponse
        include Google::Apis::Core::Hashable
      
        # Represents whether all entries in the main_analysis and
        # service_account_impersonation_analysis have been fully explored to answer the
        # query in the request.
        # Corresponds to the JSON property `fullyExplored`
        # @return [Boolean]
        attr_accessor :fully_explored
        alias_method :fully_explored?, :fully_explored
      
        # An analysis message to group the query and results.
        # Corresponds to the JSON property `mainAnalysis`
        # @return [Google::Apis::CloudassetV1::IamPolicyAnalysis]
        attr_accessor :main_analysis
      
        # The service account impersonation analysis if IamPolicyAnalysisQuery.Options.
        # analyze_service_account_impersonation is enabled.
        # Corresponds to the JSON property `serviceAccountImpersonationAnalysis`
        # @return [Array<Google::Apis::CloudassetV1::IamPolicyAnalysis>]
        attr_accessor :service_account_impersonation_analysis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fully_explored = args[:fully_explored] if args.key?(:fully_explored)
          @main_analysis = args[:main_analysis] if args.key?(:main_analysis)
          @service_account_impersonation_analysis = args[:service_account_impersonation_analysis] if args.key?(:service_account_impersonation_analysis)
        end
      end
      
      # The response message for resource move analysis.
      class AnalyzeMoveResponse
        include Google::Apis::Core::Hashable
      
        # The list of analyses returned from performing the intended resource move
        # analysis. The analysis is grouped by different Google Cloud services.
        # Corresponds to the JSON property `moveAnalysis`
        # @return [Array<Google::Apis::CloudassetV1::MoveAnalysis>]
        attr_accessor :move_analysis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @move_analysis = args[:move_analysis] if args.key?(:move_analysis)
        end
      end
      
      # The response message for AssetService.AnalyzeOrgPolicies.
      class AnalyzeOrgPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # The organization policy constraint definition.
        # Corresponds to the JSON property `constraint`
        # @return [Google::Apis::CloudassetV1::AnalyzerOrgPolicyConstraint]
        attr_accessor :constraint
      
        # The page token to fetch the next page for AnalyzeOrgPoliciesResponse.
        # org_policy_results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The organization policies under the AnalyzeOrgPoliciesRequest.scope with the
        # AnalyzeOrgPoliciesRequest.constraint.
        # Corresponds to the JSON property `orgPolicyResults`
        # @return [Array<Google::Apis::CloudassetV1::OrgPolicyResult>]
        attr_accessor :org_policy_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @constraint = args[:constraint] if args.key?(:constraint)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @org_policy_results = args[:org_policy_results] if args.key?(:org_policy_results)
        end
      end
      
      # The response message for AssetService.AnalyzeOrgPolicyGovernedAssets.
      class AnalyzeOrgPolicyGovernedAssetsResponse
        include Google::Apis::Core::Hashable
      
        # The organization policy constraint definition.
        # Corresponds to the JSON property `constraint`
        # @return [Google::Apis::CloudassetV1::AnalyzerOrgPolicyConstraint]
        attr_accessor :constraint
      
        # The list of the analyzed governed assets.
        # Corresponds to the JSON property `governedAssets`
        # @return [Array<Google::Apis::CloudassetV1::GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset>]
        attr_accessor :governed_assets
      
        # The page token to fetch the next page for
        # AnalyzeOrgPolicyGovernedAssetsResponse.governed_assets.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @constraint = args[:constraint] if args.key?(:constraint)
          @governed_assets = args[:governed_assets] if args.key?(:governed_assets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for AssetService.AnalyzeOrgPolicyGovernedContainers.
      class AnalyzeOrgPolicyGovernedContainersResponse
        include Google::Apis::Core::Hashable
      
        # The organization policy constraint definition.
        # Corresponds to the JSON property `constraint`
        # @return [Google::Apis::CloudassetV1::AnalyzerOrgPolicyConstraint]
        attr_accessor :constraint
      
        # The list of the analyzed governed containers.
        # Corresponds to the JSON property `governedContainers`
        # @return [Array<Google::Apis::CloudassetV1::GoogleCloudAssetV1GovernedContainer>]
        attr_accessor :governed_containers
      
        # The page token to fetch the next page for
        # AnalyzeOrgPolicyGovernedContainersResponse.governed_containers.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @constraint = args[:constraint] if args.key?(:constraint)
          @governed_containers = args[:governed_containers] if args.key?(:governed_containers)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # This organization policy message is a modified version of the one defined in
      # the Organization Policy system. This message contains several fields defined
      # in the original organization policy with some new fields for analysis purpose.
      class AnalyzerOrgPolicy
        include Google::Apis::Core::Hashable
      
        # The [full resource name] (https://cloud.google.com/asset-inventory/docs/
        # resource-name-format) of an organization/folder/project resource where this
        # organization policy applies to. For any user defined org policies, this field
        # has the same value as the [attached_resource] field. Only for default policy,
        # this field has the different value.
        # Corresponds to the JSON property `appliedResource`
        # @return [String]
        attr_accessor :applied_resource
      
        # The [full resource name] (https://cloud.google.com/asset-inventory/docs/
        # resource-name-format) of an organization/folder/project resource where this
        # organization policy is set. Notice that some type of constraints are defined
        # with default policy. This field will be empty for them.
        # Corresponds to the JSON property `attachedResource`
        # @return [String]
        attr_accessor :attached_resource
      
        # If `inherit_from_parent` is true, Rules set higher up in the hierarchy (up to
        # the closest root) are inherited and present in the effective policy. If it is
        # false, then no rules are inherited, and this policy becomes the effective root
        # for evaluation.
        # Corresponds to the JSON property `inheritFromParent`
        # @return [Boolean]
        attr_accessor :inherit_from_parent
        alias_method :inherit_from_parent?, :inherit_from_parent
      
        # Ignores policies set above this resource and restores the default behavior of
        # the constraint at this resource. This field can be set in policies for either
        # list or boolean constraints. If set, `rules` must be empty and `
        # inherit_from_parent` must be set to false.
        # Corresponds to the JSON property `reset`
        # @return [Boolean]
        attr_accessor :reset
        alias_method :reset?, :reset
      
        # List of rules for this organization policy.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::CloudassetV1::GoogleCloudAssetV1Rule>]
        attr_accessor :rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applied_resource = args[:applied_resource] if args.key?(:applied_resource)
          @attached_resource = args[:attached_resource] if args.key?(:attached_resource)
          @inherit_from_parent = args[:inherit_from_parent] if args.key?(:inherit_from_parent)
          @reset = args[:reset] if args.key?(:reset)
          @rules = args[:rules] if args.key?(:rules)
        end
      end
      
      # The organization policy constraint definition.
      class AnalyzerOrgPolicyConstraint
        include Google::Apis::Core::Hashable
      
        # The definition of a custom constraint.
        # Corresponds to the JSON property `customConstraint`
        # @return [Google::Apis::CloudassetV1::GoogleCloudAssetV1CustomConstraint]
        attr_accessor :custom_constraint
      
        # The definition of a constraint.
        # Corresponds to the JSON property `googleDefinedConstraint`
        # @return [Google::Apis::CloudassetV1::GoogleCloudAssetV1Constraint]
        attr_accessor :google_defined_constraint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_constraint = args[:custom_constraint] if args.key?(:custom_constraint)
          @google_defined_constraint = args[:google_defined_constraint] if args.key?(:google_defined_constraint)
        end
      end
      
      # An asset in Google Cloud. An asset can be any resource in the Google Cloud [
      # resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-
      # platform-resource-hierarchy), a resource outside the Google Cloud resource
      # hierarchy (such as Google Kubernetes Engine clusters and objects), or a policy
      # (e.g. IAM policy), or a relationship (e.g. an INSTANCE_TO_INSTANCEGROUP
      # relationship). See [Supported asset types](https://cloud.google.com/asset-
      # inventory/docs/supported-asset-types) for more information.
      class Asset
        include Google::Apis::Core::Hashable
      
        # An `AccessLevel` is a label that can be applied to requests to Google Cloud
        # services, along with a list of requirements necessary for the label to be
        # applied.
        # Corresponds to the JSON property `accessLevel`
        # @return [Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1AccessLevel]
        attr_accessor :access_level
      
        # `AccessPolicy` is a container for `AccessLevels` (which define the necessary
        # attributes to use Google Cloud services) and `ServicePerimeters` (which define
        # regions of services able to freely pass data within a perimeter). An access
        # policy is globally visible within an organization, and the restrictions it
        # specifies apply to all projects within an organization.
        # Corresponds to the JSON property `accessPolicy`
        # @return [Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1AccessPolicy]
        attr_accessor :access_policy
      
        # The ancestry path of an asset in Google Cloud [resource hierarchy](https://
        # cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy),
        # represented as a list of relative resource names. An ancestry path starts with
        # the closest ancestor in the hierarchy and ends at root. If the asset is a
        # project, folder, or organization, the ancestry path starts from the asset
        # itself. Example: `["projects/123456789", "folders/5432", "organizations/1234"]`
        # Corresponds to the JSON property `ancestors`
        # @return [Array<String>]
        attr_accessor :ancestors
      
        # The type of the asset. Example: `compute.googleapis.com/Disk` See [Supported
        # asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-
        # types) for more information.
        # Corresponds to the JSON property `assetType`
        # @return [String]
        attr_accessor :asset_type
      
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
        # Corresponds to the JSON property `iamPolicy`
        # @return [Google::Apis::CloudassetV1::Policy]
        attr_accessor :iam_policy
      
        # The full name of the asset. Example: `//compute.googleapis.com/projects/
        # my_project_123/zones/zone1/instances/instance1` See [Resource names](https://
        # cloud.google.com/apis/design/resource_names#full_resource_name) for more
        # information.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A representation of an [organization policy](https://cloud.google.com/resource-
        # manager/docs/organization-policy/overview#organization_policy). There can be
        # more than one organization policy with different constraints set on a given
        # resource.
        # Corresponds to the JSON property `orgPolicy`
        # @return [Array<Google::Apis::CloudassetV1::GoogleCloudOrgpolicyV1Policy>]
        attr_accessor :org_policy
      
        # This API resource represents the available inventory data for a Compute Engine
        # virtual machine (VM) instance at a given point in time. You can use this API
        # resource to determine the inventory data of your VM. For more information, see
        # [Information provided by OS inventory management](https://cloud.google.com/
        # compute/docs/instances/os-inventory-management#data-collected).
        # Corresponds to the JSON property `osInventory`
        # @return [Google::Apis::CloudassetV1::Inventory]
        attr_accessor :os_inventory
      
        # An asset identifier in Google Cloud which contains its name, type and
        # ancestors. An asset can be any resource in the Google Cloud [resource
        # hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-
        # resource-hierarchy), a resource outside the Google Cloud resource hierarchy (
        # such as Google Kubernetes Engine clusters and objects), or a policy (e.g. IAM
        # policy). See [Supported asset types](https://cloud.google.com/asset-inventory/
        # docs/supported-asset-types) for more information.
        # Corresponds to the JSON property `relatedAsset`
        # @return [Google::Apis::CloudassetV1::RelatedAsset]
        attr_accessor :related_asset
      
        # DEPRECATED. This message only presents for the purpose of backward-
        # compatibility. The server will never populate this message in responses. The
        # detailed related assets with the `relationship_type`.
        # Corresponds to the JSON property `relatedAssets`
        # @return [Google::Apis::CloudassetV1::RelatedAssets]
        attr_accessor :related_assets
      
        # A representation of a Google Cloud resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::CloudassetV1::Resource]
        attr_accessor :resource
      
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
        # Corresponds to the JSON property `servicePerimeter`
        # @return [Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1ServicePerimeter]
        attr_accessor :service_perimeter
      
        # The last update timestamp of an asset. update_time is updated when create/
        # update/delete operation is performed.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_level = args[:access_level] if args.key?(:access_level)
          @access_policy = args[:access_policy] if args.key?(:access_policy)
          @ancestors = args[:ancestors] if args.key?(:ancestors)
          @asset_type = args[:asset_type] if args.key?(:asset_type)
          @iam_policy = args[:iam_policy] if args.key?(:iam_policy)
          @name = args[:name] if args.key?(:name)
          @org_policy = args[:org_policy] if args.key?(:org_policy)
          @os_inventory = args[:os_inventory] if args.key?(:os_inventory)
          @related_asset = args[:related_asset] if args.key?(:related_asset)
          @related_assets = args[:related_assets] if args.key?(:related_assets)
          @resource = args[:resource] if args.key?(:resource)
          @service_perimeter = args[:service_perimeter] if args.key?(:service_perimeter)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The enhanced metadata information for a resource.
      class AssetEnrichment
        include Google::Apis::Core::Hashable
      
        # The resource owners information.
        # Corresponds to the JSON property `resourceOwners`
        # @return [Google::Apis::CloudassetV1::ResourceOwners]
        attr_accessor :resource_owners
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_owners = args[:resource_owners] if args.key?(:resource_owners)
        end
      end
      
      # Attached resource representation, which is defined by the corresponding
      # service provider. It represents an attached resource's payload.
      class AttachedResource
        include Google::Apis::Core::Hashable
      
        # The type of this attached resource. Example: `osconfig.googleapis.com/
        # Inventory` You can find the supported attached asset types of each resource in
        # this table: `https://cloud.google.com/asset-inventory/docs/supported-asset-
        # types`
        # Corresponds to the JSON property `assetType`
        # @return [String]
        attr_accessor :asset_type
      
        # Versioned resource representations of this attached resource. This is repeated
        # because there could be multiple versions of the attached resource
        # representations during version migration.
        # Corresponds to the JSON property `versionedResources`
        # @return [Array<Google::Apis::CloudassetV1::VersionedResource>]
        attr_accessor :versioned_resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_type = args[:asset_type] if args.key?(:asset_type)
          @versioned_resources = args[:versioned_resources] if args.key?(:versioned_resources)
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
        # @return [Array<Google::Apis::CloudassetV1::AuditLogConfig>]
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
      
      # Batch get assets history response.
      class BatchGetAssetsHistoryResponse
        include Google::Apis::Core::Hashable
      
        # A list of assets with valid time windows.
        # Corresponds to the JSON property `assets`
        # @return [Array<Google::Apis::CloudassetV1::TemporalAsset>]
        attr_accessor :assets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assets = args[:assets] if args.key?(:assets)
        end
      end
      
      # A response message for AssetService.BatchGetEffectiveIamPolicies.
      class BatchGetEffectiveIamPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # The effective policies for a batch of resources. Note that the results order
        # is the same as the order of BatchGetEffectiveIamPoliciesRequest.names. When a
        # resource does not have any effective IAM policies, its corresponding
        # policy_result will contain empty EffectiveIamPolicy.policies.
        # Corresponds to the JSON property `policyResults`
        # @return [Array<Google::Apis::CloudassetV1::EffectiveIamPolicy>]
        attr_accessor :policy_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_results = args[:policy_results] if args.key?(:policy_results)
        end
      end
      
      # A BigQuery destination for exporting assets to.
      class BigQueryDestination
        include Google::Apis::Core::Hashable
      
        # Required. The BigQuery dataset in format "projects/projectId/datasets/
        # datasetId", to which the snapshot result should be exported. If this dataset
        # does not exist, the export call returns an INVALID_ARGUMENT error. Setting the
        # `contentType` for `exportAssets` determines the [schema](/asset-inventory/docs/
        # exporting-to-bigquery#bigquery-schema) of the BigQuery table. Setting `
        # separateTablesPerAssetType` to `TRUE` also influences the schema.
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # If the destination table already exists and this flag is `TRUE`, the table
        # will be overwritten by the contents of assets snapshot. If the flag is `FALSE`
        # or unset and the destination table already exists, the export call returns an
        # INVALID_ARGUMENT error.
        # Corresponds to the JSON property `force`
        # @return [Boolean]
        attr_accessor :force
        alias_method :force?, :force
      
        # Specifications of BigQuery partitioned table as export destination.
        # Corresponds to the JSON property `partitionSpec`
        # @return [Google::Apis::CloudassetV1::PartitionSpec]
        attr_accessor :partition_spec
      
        # If this flag is `TRUE`, the snapshot results will be written to one or
        # multiple tables, each of which contains results of one asset type. The [force]
        # and [partition_spec] fields will apply to each of them. Field [table] will be
        # concatenated with "_" and the asset type names (see https://cloud.google.com/
        # asset-inventory/docs/supported-asset-types for supported asset types) to
        # construct per-asset-type table names, in which all non-alphanumeric characters
        # like "." and "/" will be substituted by "_". Example: if field [table] is "
        # mytable" and snapshot results contain "storage.googleapis.com/Bucket" assets,
        # the corresponding table name will be "mytable_storage_googleapis_com_Bucket".
        # If any of these tables does not exist, a new table with the concatenated name
        # will be created. When [content_type] in the ExportAssetsRequest is `RESOURCE`,
        # the schema of each table will include RECORD-type columns mapped to the nested
        # fields in the Asset.resource.data field of that asset type (up to the 15
        # nested level BigQuery supports (https://cloud.google.com/bigquery/docs/nested-
        # repeated#limitations)). The fields in >15 nested levels will be stored in JSON
        # format string as a child column of its parent RECORD column. If error occurs
        # when exporting to any table, the whole export call will return an error but
        # the export results that already succeed will persist. Example: if exporting to
        # table_type_A succeeds when exporting to table_type_B fails during one export
        # call, the results in table_type_A will persist and there will not be partial
        # results persisting in a table.
        # Corresponds to the JSON property `separateTablesPerAssetType`
        # @return [Boolean]
        attr_accessor :separate_tables_per_asset_type
        alias_method :separate_tables_per_asset_type?, :separate_tables_per_asset_type
      
        # Required. The BigQuery table to which the snapshot result should be written.
        # If this table does not exist, a new table with the given name will be created.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset = args[:dataset] if args.key?(:dataset)
          @force = args[:force] if args.key?(:force)
          @partition_spec = args[:partition_spec] if args.key?(:partition_spec)
          @separate_tables_per_asset_type = args[:separate_tables_per_asset_type] if args.key?(:separate_tables_per_asset_type)
          @table = args[:table] if args.key?(:table)
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
        # @return [Google::Apis::CloudassetV1::Expr]
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
      
      # The IAM conditions context.
      class ConditionContext
        include Google::Apis::Core::Hashable
      
        # The hypothetical access timestamp to evaluate IAM conditions. Note that this
        # value must not be earlier than the current time; otherwise, an
        # INVALID_ARGUMENT error will be returned.
        # Corresponds to the JSON property `accessTime`
        # @return [String]
        attr_accessor :access_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_time = args[:access_time] if args.key?(:access_time)
        end
      end
      
      # The condition evaluation.
      class ConditionEvaluation
        include Google::Apis::Core::Hashable
      
        # The evaluation result.
        # Corresponds to the JSON property `evaluationValue`
        # @return [String]
        attr_accessor :evaluation_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @evaluation_value = args[:evaluation_value] if args.key?(:evaluation_value)
        end
      end
      
      # Create asset feed request.
      class CreateFeedRequest
        include Google::Apis::Core::Hashable
      
        # An asset feed used to export asset updates to a destinations. An asset feed
        # filter controls what updates are exported. The asset feed must be created
        # within a project, organization, or folder. Supported destinations are: Pub/Sub
        # topics.
        # Corresponds to the JSON property `feed`
        # @return [Google::Apis::CloudassetV1::Feed]
        attr_accessor :feed
      
        # Required. This is the client-assigned asset feed identifier and it needs to be
        # unique under a specific parent project/folder/organization.
        # Corresponds to the JSON property `feedId`
        # @return [String]
        attr_accessor :feed_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @feed = args[:feed] if args.key?(:feed)
          @feed_id = args[:feed_id] if args.key?(:feed_id)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # The effective IAM policies on one resource.
      class EffectiveIamPolicy
        include Google::Apis::Core::Hashable
      
        # The [full_resource_name] (https://cloud.google.com/asset-inventory/docs/
        # resource-name-format) for which the policies are computed. This is one of the
        # BatchGetEffectiveIamPoliciesRequest.names the caller provides in the request.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        # The effective policies for the full_resource_name. These policies include the
        # policy set on the full_resource_name and those set on its parents and
        # ancestors up to the BatchGetEffectiveIamPoliciesRequest.scope. Note that these
        # policies are not filtered according to the resource type of the
        # full_resource_name. These policies are hierarchically ordered by PolicyInfo.
        # attached_resource starting from full_resource_name itself to its parents and
        # ancestors, such that policies[i]'s PolicyInfo.attached_resource is the child
        # of policies[i+1]'s PolicyInfo.attached_resource, if policies[i+1] exists.
        # Corresponds to the JSON property `policies`
        # @return [Array<Google::Apis::CloudassetV1::PolicyInfo>]
        attr_accessor :policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
          @policies = args[:policies] if args.key?(:policies)
        end
      end
      
      # The effective tags and the ancestor resources from which they were inherited.
      class EffectiveTagDetails
        include Google::Apis::Core::Hashable
      
        # The [full resource name](https://cloud.google.com/asset-inventory/docs/
        # resource-name-format) of the ancestor from which effective_tags are inherited,
        # according to [tag inheritance](https://cloud.google.com/resource-manager/docs/
        # tags/tags-overview#inheritance).
        # Corresponds to the JSON property `attachedResource`
        # @return [String]
        attr_accessor :attached_resource
      
        # The effective tags inherited from the attached_resource. Note that tags with
        # the same key but different values may attach to resources at a different
        # hierarchy levels. The lower hierarchy tag value will overwrite the higher
        # hierarchy tag value of the same tag key. In this case, the tag value at the
        # higher hierarchy level will be removed. For more information, see [tag
        # inheritance](https://cloud.google.com/resource-manager/docs/tags/tags-overview#
        # inheritance).
        # Corresponds to the JSON property `effectiveTags`
        # @return [Array<Google::Apis::CloudassetV1::Tag>]
        attr_accessor :effective_tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attached_resource = args[:attached_resource] if args.key?(:attached_resource)
          @effective_tags = args[:effective_tags] if args.key?(:effective_tags)
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
      
      # Explanation about the IAM policy search result.
      class Explanation
        include Google::Apis::Core::Hashable
      
        # The map from roles to their included permissions that match the permission
        # query (i.e., a query containing `policy.role.permissions:`). Example: if query
        # `policy.role.permissions:compute.disk.get` matches a policy binding that
        # contains owner role, the matched_permissions will be ``"roles/owner": ["
        # compute.disk.get"]``. The roles can also be found in the returned `policy`
        # bindings. Note that the map is populated only for requests with permission
        # queries.
        # Corresponds to the JSON property `matchedPermissions`
        # @return [Hash<String,Google::Apis::CloudassetV1::Permissions>]
        attr_accessor :matched_permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @matched_permissions = args[:matched_permissions] if args.key?(:matched_permissions)
        end
      end
      
      # Export asset request.
      class ExportAssetsRequest
        include Google::Apis::Core::Hashable
      
        # A list of asset types to take a snapshot for. For example: "compute.googleapis.
        # com/Disk". Regular expressions are also supported. For example: * "compute.
        # googleapis.com.*" snapshots resources whose asset type starts with "compute.
        # googleapis.com". * ".*Instance" snapshots resources whose asset type ends with
        # "Instance". * ".*Instance.*" snapshots resources whose asset type contains "
        # Instance". See [RE2](https://github.com/google/re2/wiki/Syntax) for all
        # supported regular expression syntax. If the regular expression does not match
        # any supported asset type, an INVALID_ARGUMENT error will be returned. If
        # specified, only matching assets will be returned, otherwise, it will snapshot
        # all asset types. See [Introduction to Cloud Asset Inventory](https://cloud.
        # google.com/asset-inventory/docs/overview) for all supported asset types.
        # Corresponds to the JSON property `assetTypes`
        # @return [Array<String>]
        attr_accessor :asset_types
      
        # Asset content type. If not specified, no content but the asset name will be
        # returned.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # Output configuration for export assets destination.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::CloudassetV1::OutputConfig]
        attr_accessor :output_config
      
        # Timestamp to take an asset snapshot. This can only be set to a timestamp
        # between the current time and the current time minus 35 days (inclusive). If
        # not specified, the current time will be used. Due to delays in resource data
        # collection and indexing, there is a volatile window during which running the
        # same query may get different results.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # A list of relationship types to export, for example: `
        # INSTANCE_TO_INSTANCEGROUP`. This field should only be specified if
        # content_type=RELATIONSHIP. * If specified: it snapshots specified
        # relationships. It returns an error if any of the [relationship_types] doesn't
        # belong to the supported relationship types of the [asset_types] or if any of
        # the [asset_types] doesn't belong to the source types of the [
        # relationship_types]. * Otherwise: it snapshots the supported relationships for
        # all [asset_types] or returns an error if any of the [asset_types] has no
        # relationship support. An unspecified asset types field means all supported
        # asset_types. See [Introduction to Cloud Asset Inventory](https://cloud.google.
        # com/asset-inventory/docs/overview) for all supported asset types and
        # relationship types.
        # Corresponds to the JSON property `relationshipTypes`
        # @return [Array<String>]
        attr_accessor :relationship_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_types = args[:asset_types] if args.key?(:asset_types)
          @content_type = args[:content_type] if args.key?(:content_type)
          @output_config = args[:output_config] if args.key?(:output_config)
          @read_time = args[:read_time] if args.key?(:read_time)
          @relationship_types = args[:relationship_types] if args.key?(:relationship_types)
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
      
      # An asset feed used to export asset updates to a destinations. An asset feed
      # filter controls what updates are exported. The asset feed must be created
      # within a project, organization, or folder. Supported destinations are: Pub/Sub
      # topics.
      class Feed
        include Google::Apis::Core::Hashable
      
        # A list of the full names of the assets to receive updates. You must specify
        # either or both of asset_names and asset_types. Only asset updates matching
        # specified asset_names or asset_types are exported to the feed. Example: `//
        # compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`
        # . For a list of the full names for supported asset types, see [Resource name
        # format](/asset-inventory/docs/resource-name-format).
        # Corresponds to the JSON property `assetNames`
        # @return [Array<String>]
        attr_accessor :asset_names
      
        # A list of types of the assets to receive updates. You must specify either or
        # both of asset_names and asset_types. Only asset updates matching specified
        # asset_names or asset_types are exported to the feed. Example: `"compute.
        # googleapis.com/Disk"` For a list of all supported asset types, see [Supported
        # asset types](/asset-inventory/docs/supported-asset-types).
        # Corresponds to the JSON property `assetTypes`
        # @return [Array<String>]
        attr_accessor :asset_types
      
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
        # @return [Google::Apis::CloudassetV1::Expr]
        attr_accessor :condition
      
        # Asset content type. If not specified, no content but the asset name and type
        # will be returned.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # Output configuration for asset feed destination.
        # Corresponds to the JSON property `feedOutputConfig`
        # @return [Google::Apis::CloudassetV1::FeedOutputConfig]
        attr_accessor :feed_output_config
      
        # Required. The format will be projects/`project_number`/feeds/`client-
        # assigned_feed_identifier` or folders/`folder_number`/feeds/`client-
        # assigned_feed_identifier` or organizations/`organization_number`/feeds/`client-
        # assigned_feed_identifier` The client-assigned feed identifier must be unique
        # within the parent project/folder/organization.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A list of relationship types to output, for example: `
        # INSTANCE_TO_INSTANCEGROUP`. This field should only be specified if
        # content_type=RELATIONSHIP. * If specified: it outputs specified relationship
        # updates on the [asset_names] or the [asset_types]. It returns an error if any
        # of the [relationship_types] doesn't belong to the supported relationship types
        # of the [asset_names] or [asset_types], or any of the [asset_names] or the [
        # asset_types] doesn't belong to the source types of the [relationship_types]. *
        # Otherwise: it outputs the supported relationships of the types of [asset_names]
        # and [asset_types] or returns an error if any of the [asset_names] or the [
        # asset_types] has no replationship support. See [Introduction to Cloud Asset
        # Inventory](https://cloud.google.com/asset-inventory/docs/overview) for all
        # supported asset types and relationship types.
        # Corresponds to the JSON property `relationshipTypes`
        # @return [Array<String>]
        attr_accessor :relationship_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_names = args[:asset_names] if args.key?(:asset_names)
          @asset_types = args[:asset_types] if args.key?(:asset_types)
          @condition = args[:condition] if args.key?(:condition)
          @content_type = args[:content_type] if args.key?(:content_type)
          @feed_output_config = args[:feed_output_config] if args.key?(:feed_output_config)
          @name = args[:name] if args.key?(:name)
          @relationship_types = args[:relationship_types] if args.key?(:relationship_types)
        end
      end
      
      # Output configuration for asset feed destination.
      class FeedOutputConfig
        include Google::Apis::Core::Hashable
      
        # A Pub/Sub destination.
        # Corresponds to the JSON property `pubsubDestination`
        # @return [Google::Apis::CloudassetV1::PubsubDestination]
        attr_accessor :pubsub_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pubsub_destination = args[:pubsub_destination] if args.key?(:pubsub_destination)
        end
      end
      
      # A Cloud Storage location.
      class GcsDestination
        include Google::Apis::Core::Hashable
      
        # The URI of the Cloud Storage object. It's the same URI that is used by gsutil.
        # Example: "gs://bucket_name/object_name". See [Viewing and Editing Object
        # Metadata](https://cloud.google.com/storage/docs/viewing-editing-metadata) for
        # more information. If the specified Cloud Storage object already exists and
        # there is no [hold](https://cloud.google.com/storage/docs/object-holds), it
        # will be overwritten with the exported result.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # The URI prefix of all generated Cloud Storage objects. Example: "gs://
        # bucket_name/object_name_prefix". Each object URI is in format: "gs://
        # bucket_name/object_name_prefix// and only contains assets for that type.
        # starts from 0. Example: "gs://bucket_name/object_name_prefix/compute.
        # googleapis.com/Disk/0" is the first shard of output objects containing all
        # compute.googleapis.com/Disk assets. An INVALID_ARGUMENT error will be returned
        # if file with the same name "gs://bucket_name/object_name_prefix" already
        # exists.
        # Corresponds to the JSON property `uriPrefix`
        # @return [String]
        attr_accessor :uri_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
          @uri_prefix = args[:uri_prefix] if args.key?(:uri_prefix)
        end
      end
      
      # An IAM role or permission under analysis.
      class GoogleCloudAssetV1Access
        include Google::Apis::Core::Hashable
      
        # Represents the detailed state of an entity under analysis, such as a resource,
        # an identity or an access.
        # Corresponds to the JSON property `analysisState`
        # @return [Google::Apis::CloudassetV1::IamPolicyAnalysisState]
        attr_accessor :analysis_state
      
        # The permission.
        # Corresponds to the JSON property `permission`
        # @return [String]
        attr_accessor :permission
      
        # The role.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_state = args[:analysis_state] if args.key?(:analysis_state)
          @permission = args[:permission] if args.key?(:permission)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # An access control list, derived from the above IAM policy binding, which
      # contains a set of resources and accesses. May include one item from each set
      # to compose an access control entry. NOTICE that there could be multiple access
      # control lists for one IAM policy binding. The access control lists are created
      # based on resource and access combinations. For example, assume we have the
      # following cases in one IAM policy binding: - Permission P1 and P2 apply to
      # resource R1 and R2; - Permission P3 applies to resource R2 and R3; This will
      # result in the following access control lists: - AccessControlList 1: [R1, R2],
      # [P1, P2] - AccessControlList 2: [R2, R3], [P3]
      class GoogleCloudAssetV1AccessControlList
        include Google::Apis::Core::Hashable
      
        # The accesses that match one of the following conditions: - The access_selector,
        # if it is specified in request; - Otherwise, access specifiers reachable from
        # the policy binding's role.
        # Corresponds to the JSON property `accesses`
        # @return [Array<Google::Apis::CloudassetV1::GoogleCloudAssetV1Access>]
        attr_accessor :accesses
      
        # The condition evaluation.
        # Corresponds to the JSON property `conditionEvaluation`
        # @return [Google::Apis::CloudassetV1::ConditionEvaluation]
        attr_accessor :condition_evaluation
      
        # Resource edges of the graph starting from the policy attached resource to any
        # descendant resources. The Edge.source_node contains the full resource name of
        # a parent resource and Edge.target_node contains the full resource name of a
        # child resource. This field is present only if the output_resource_edges option
        # is enabled in request.
        # Corresponds to the JSON property `resourceEdges`
        # @return [Array<Google::Apis::CloudassetV1::GoogleCloudAssetV1Edge>]
        attr_accessor :resource_edges
      
        # The resources that match one of the following conditions: - The
        # resource_selector, if it is specified in request; - Otherwise, resources
        # reachable from the policy attached resource.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::CloudassetV1::GoogleCloudAssetV1Resource>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accesses = args[:accesses] if args.key?(:accesses)
          @condition_evaluation = args[:condition_evaluation] if args.key?(:condition_evaluation)
          @resource_edges = args[:resource_edges] if args.key?(:resource_edges)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # Represents a Google Cloud asset(resource or IAM policy) governed by the
      # organization policies of the AnalyzeOrgPolicyGovernedAssetsRequest.constraint.
      class GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset
        include Google::Apis::Core::Hashable
      
        # This organization policy message is a modified version of the one defined in
        # the Organization Policy system. This message contains several fields defined
        # in the original organization policy with some new fields for analysis purpose.
        # Corresponds to the JSON property `consolidatedPolicy`
        # @return [Google::Apis::CloudassetV1::AnalyzerOrgPolicy]
        attr_accessor :consolidated_policy
      
        # The IAM policies governed by the organization policies of the
        # AnalyzeOrgPolicyGovernedAssetsRequest.constraint.
        # Corresponds to the JSON property `governedIamPolicy`
        # @return [Google::Apis::CloudassetV1::GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy]
        attr_accessor :governed_iam_policy
      
        # The Google Cloud resources governed by the organization policies of the
        # AnalyzeOrgPolicyGovernedAssetsRequest.constraint.
        # Corresponds to the JSON property `governedResource`
        # @return [Google::Apis::CloudassetV1::GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource]
        attr_accessor :governed_resource
      
        # The ordered list of all organization policies from the consolidated_policy.
        # attached_resource to the scope specified in the request. If the constraint is
        # defined with default policy, it will also appear in the list.
        # Corresponds to the JSON property `policyBundle`
        # @return [Array<Google::Apis::CloudassetV1::AnalyzerOrgPolicy>]
        attr_accessor :policy_bundle
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consolidated_policy = args[:consolidated_policy] if args.key?(:consolidated_policy)
          @governed_iam_policy = args[:governed_iam_policy] if args.key?(:governed_iam_policy)
          @governed_resource = args[:governed_resource] if args.key?(:governed_resource)
          @policy_bundle = args[:policy_bundle] if args.key?(:policy_bundle)
        end
      end
      
      # The IAM policies governed by the organization policies of the
      # AnalyzeOrgPolicyGovernedAssetsRequest.constraint.
      class GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy
        include Google::Apis::Core::Hashable
      
        # The asset type of the AnalyzeOrgPolicyGovernedAssetsResponse.GovernedIamPolicy.
        # attached_resource. Example: `cloudresourcemanager.googleapis.com/Project` See [
        # Cloud Asset Inventory Supported Asset Types](https://cloud.google.com/asset-
        # inventory/docs/supported-asset-types) for all supported asset types.
        # Corresponds to the JSON property `assetType`
        # @return [String]
        attr_accessor :asset_type
      
        # The full resource name of the resource on which this IAM policy is set.
        # Example: `//compute.googleapis.com/projects/my_project_123/zones/zone1/
        # instances/instance1`. See [Cloud Asset Inventory Resource Name Format](https://
        # cloud.google.com/asset-inventory/docs/resource-name-format) for more
        # information.
        # Corresponds to the JSON property `attachedResource`
        # @return [String]
        attr_accessor :attached_resource
      
        # The folder(s) that this IAM policy belongs to, in the format of folders/`
        # FOLDER_NUMBER`. This field is available when the IAM policy belongs (directly
        # or cascadingly) to one or more folders.
        # Corresponds to the JSON property `folders`
        # @return [Array<String>]
        attr_accessor :folders
      
        # The organization that this IAM policy belongs to, in the format of
        # organizations/`ORGANIZATION_NUMBER`. This field is available when the IAM
        # policy belongs (directly or cascadingly) to an organization.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
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
        # @return [Google::Apis::CloudassetV1::Policy]
        attr_accessor :policy
      
        # The project that this IAM policy belongs to, in the format of projects/`
        # PROJECT_NUMBER`. This field is available when the IAM policy belongs to a
        # project.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_type = args[:asset_type] if args.key?(:asset_type)
          @attached_resource = args[:attached_resource] if args.key?(:attached_resource)
          @folders = args[:folders] if args.key?(:folders)
          @organization = args[:organization] if args.key?(:organization)
          @policy = args[:policy] if args.key?(:policy)
          @project = args[:project] if args.key?(:project)
        end
      end
      
      # The Google Cloud resources governed by the organization policies of the
      # AnalyzeOrgPolicyGovernedAssetsRequest.constraint.
      class GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource
        include Google::Apis::Core::Hashable
      
        # The asset type of the AnalyzeOrgPolicyGovernedAssetsResponse.GovernedResource.
        # full_resource_name Example: `cloudresourcemanager.googleapis.com/Project` See [
        # Cloud Asset Inventory Supported Asset Types](https://cloud.google.com/asset-
        # inventory/docs/supported-asset-types) for all supported asset types.
        # Corresponds to the JSON property `assetType`
        # @return [String]
        attr_accessor :asset_type
      
        # The effective tags on this resource.
        # Corresponds to the JSON property `effectiveTags`
        # @return [Array<Google::Apis::CloudassetV1::EffectiveTagDetails>]
        attr_accessor :effective_tags
      
        # The folder(s) that this resource belongs to, in the format of folders/`
        # FOLDER_NUMBER`. This field is available when the resource belongs (directly or
        # cascadingly) to one or more folders.
        # Corresponds to the JSON property `folders`
        # @return [Array<String>]
        attr_accessor :folders
      
        # The [full resource name] (https://cloud.google.com/asset-inventory/docs/
        # resource-name-format) of the Google Cloud resource.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        # The organization that this resource belongs to, in the format of organizations/
        # `ORGANIZATION_NUMBER`. This field is available when the resource belongs (
        # directly or cascadingly) to an organization.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # The [full resource name] (https://cloud.google.com/asset-inventory/docs/
        # resource-name-format) of the parent of AnalyzeOrgPolicyGovernedAssetsResponse.
        # GovernedResource.full_resource_name.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # The project that this resource belongs to, in the format of projects/`
        # PROJECT_NUMBER`. This field is available when the resource belongs to a
        # project.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_type = args[:asset_type] if args.key?(:asset_type)
          @effective_tags = args[:effective_tags] if args.key?(:effective_tags)
          @folders = args[:folders] if args.key?(:folders)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
          @organization = args[:organization] if args.key?(:organization)
          @parent = args[:parent] if args.key?(:parent)
          @project = args[:project] if args.key?(:project)
        end
      end
      
      # A BigQuery destination.
      class GoogleCloudAssetV1BigQueryDestination
        include Google::Apis::Core::Hashable
      
        # Required. The BigQuery dataset in format "projects/projectId/datasets/
        # datasetId", to which the analysis results should be exported. If this dataset
        # does not exist, the export call will return an INVALID_ARGUMENT error.
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # The partition key for BigQuery partitioned table.
        # Corresponds to the JSON property `partitionKey`
        # @return [String]
        attr_accessor :partition_key
      
        # Required. The prefix of the BigQuery tables to which the analysis results will
        # be written. Tables will be created based on this table_prefix if not exist: *
        # _analysis table will contain export operation's metadata. * _analysis_result
        # will contain all the IamPolicyAnalysisResult. When [partition_key] is
        # specified, both tables will be partitioned based on the [partition_key].
        # Corresponds to the JSON property `tablePrefix`
        # @return [String]
        attr_accessor :table_prefix
      
        # Optional. Specifies the action that occurs if the destination table or
        # partition already exists. The following values are supported: * WRITE_TRUNCATE:
        # If the table or partition already exists, BigQuery overwrites the entire
        # table or all the partitions data. * WRITE_APPEND: If the table or partition
        # already exists, BigQuery appends the data to the table or the latest partition.
        # * WRITE_EMPTY: If the table already exists and contains data, an error is
        # returned. The default value is WRITE_APPEND. Each action is atomic and only
        # occurs if BigQuery is able to complete the job successfully. Details are at
        # https://cloud.google.com/bigquery/docs/loading-data-local#
        # appending_to_or_overwriting_a_table_using_a_local_file.
        # Corresponds to the JSON property `writeDisposition`
        # @return [String]
        attr_accessor :write_disposition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset = args[:dataset] if args.key?(:dataset)
          @partition_key = args[:partition_key] if args.key?(:partition_key)
          @table_prefix = args[:table_prefix] if args.key?(:table_prefix)
          @write_disposition = args[:write_disposition] if args.key?(:write_disposition)
        end
      end
      
      # A `Constraint` that is either enforced or not. For example a constraint `
      # constraints/compute.disableSerialPortAccess`. If it is enforced on a VM
      # instance, serial port connections will not be opened to that instance.
      class GoogleCloudAssetV1BooleanConstraint
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The definition of a constraint.
      class GoogleCloudAssetV1Constraint
        include Google::Apis::Core::Hashable
      
        # A `Constraint` that is either enforced or not. For example a constraint `
        # constraints/compute.disableSerialPortAccess`. If it is enforced on a VM
        # instance, serial port connections will not be opened to that instance.
        # Corresponds to the JSON property `booleanConstraint`
        # @return [Google::Apis::CloudassetV1::GoogleCloudAssetV1BooleanConstraint]
        attr_accessor :boolean_constraint
      
        # The evaluation behavior of this constraint in the absence of 'Policy'.
        # Corresponds to the JSON property `constraintDefault`
        # @return [String]
        attr_accessor :constraint_default
      
        # Detailed description of what this `Constraint` controls as well as how and
        # where it is enforced.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The human readable name of the constraint.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A `Constraint` that allows or disallows a list of string values, which are
        # configured by an organization's policy administrator with a `Policy`.
        # Corresponds to the JSON property `listConstraint`
        # @return [Google::Apis::CloudassetV1::GoogleCloudAssetV1ListConstraint]
        attr_accessor :list_constraint
      
        # The unique name of the constraint. Format of the name should be * `constraints/
        # `constraint_name`` For example, `constraints/compute.disableSerialPortAccess`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_constraint = args[:boolean_constraint] if args.key?(:boolean_constraint)
          @constraint_default = args[:constraint_default] if args.key?(:constraint_default)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @list_constraint = args[:list_constraint] if args.key?(:list_constraint)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The definition of a custom constraint.
      class GoogleCloudAssetV1CustomConstraint
        include Google::Apis::Core::Hashable
      
        # Allow or deny type.
        # Corresponds to the JSON property `actionType`
        # @return [String]
        attr_accessor :action_type
      
        # Organization Policy condition/expression. For example: `resource.instanceName.
        # matches("[production|test]_.*_(\d)+")'` or, `resource.management.auto_upgrade =
        # = true`
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # Detailed information about this custom policy constraint.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # One line display name for the UI.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # All the operations being applied for this constraint.
        # Corresponds to the JSON property `methodTypes`
        # @return [Array<String>]
        attr_accessor :method_types
      
        # Name of the constraint. This is unique within the organization. Format of the
        # name should be * `organizations/`organization_id`/customConstraints/`
        # custom_constraint_id`` Example : "organizations/123/customConstraints/custom.
        # createOnlyE2TypeVms"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The Resource Instance type on which this policy applies to. Format will be of
        # the form : "/" Example: * `compute.googleapis.com/Instance`.
        # Corresponds to the JSON property `resourceTypes`
        # @return [Array<String>]
        attr_accessor :resource_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_type = args[:action_type] if args.key?(:action_type)
          @condition = args[:condition] if args.key?(:condition)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @method_types = args[:method_types] if args.key?(:method_types)
          @name = args[:name] if args.key?(:name)
          @resource_types = args[:resource_types] if args.key?(:resource_types)
        end
      end
      
      # A directional edge.
      class GoogleCloudAssetV1Edge
        include Google::Apis::Core::Hashable
      
        # The source node of the edge. For example, it could be a full resource name for
        # a resource node or an email of an identity.
        # Corresponds to the JSON property `sourceNode`
        # @return [String]
        attr_accessor :source_node
      
        # The target node of the edge. For example, it could be a full resource name for
        # a resource node or an email of an identity.
        # Corresponds to the JSON property `targetNode`
        # @return [String]
        attr_accessor :target_node
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_node = args[:source_node] if args.key?(:source_node)
          @target_node = args[:target_node] if args.key?(:target_node)
        end
      end
      
      # A Cloud Storage location.
      class GoogleCloudAssetV1GcsDestination
        include Google::Apis::Core::Hashable
      
        # Required. The URI of the Cloud Storage object. It's the same URI that is used
        # by gsutil. Example: "gs://bucket_name/object_name". See [Viewing and Editing
        # Object Metadata](https://cloud.google.com/storage/docs/viewing-editing-
        # metadata) for more information. If the specified Cloud Storage object already
        # exists and there is no [hold](https://cloud.google.com/storage/docs/object-
        # holds), it will be overwritten with the analysis result.
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
      
      # The organization/folder/project resource governed by organization policies of
      # AnalyzeOrgPolicyGovernedContainersRequest.constraint.
      class GoogleCloudAssetV1GovernedContainer
        include Google::Apis::Core::Hashable
      
        # This organization policy message is a modified version of the one defined in
        # the Organization Policy system. This message contains several fields defined
        # in the original organization policy with some new fields for analysis purpose.
        # Corresponds to the JSON property `consolidatedPolicy`
        # @return [Google::Apis::CloudassetV1::AnalyzerOrgPolicy]
        attr_accessor :consolidated_policy
      
        # The effective tags on this resource.
        # Corresponds to the JSON property `effectiveTags`
        # @return [Array<Google::Apis::CloudassetV1::EffectiveTagDetails>]
        attr_accessor :effective_tags
      
        # The folder(s) that this resource belongs to, in the format of folders/`
        # FOLDER_NUMBER`. This field is available when the resource belongs (directly or
        # cascadingly) to one or more folders.
        # Corresponds to the JSON property `folders`
        # @return [Array<String>]
        attr_accessor :folders
      
        # The [full resource name] (https://cloud.google.com/asset-inventory/docs/
        # resource-name-format) of an organization/folder/project resource.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        # The organization that this resource belongs to, in the format of organizations/
        # `ORGANIZATION_NUMBER`. This field is available when the resource belongs (
        # directly or cascadingly) to an organization.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # The [full resource name] (https://cloud.google.com/asset-inventory/docs/
        # resource-name-format) of the parent of
        # AnalyzeOrgPolicyGovernedContainersResponse.GovernedContainer.
        # full_resource_name.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # The ordered list of all organization policies from the consolidated_policy.
        # attached_resource. to the scope specified in the request. If the constraint is
        # defined with default policy, it will also appear in the list.
        # Corresponds to the JSON property `policyBundle`
        # @return [Array<Google::Apis::CloudassetV1::AnalyzerOrgPolicy>]
        attr_accessor :policy_bundle
      
        # The project that this resource belongs to, in the format of projects/`
        # PROJECT_NUMBER`. This field is available when the resource belongs to a
        # project.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consolidated_policy = args[:consolidated_policy] if args.key?(:consolidated_policy)
          @effective_tags = args[:effective_tags] if args.key?(:effective_tags)
          @folders = args[:folders] if args.key?(:folders)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
          @organization = args[:organization] if args.key?(:organization)
          @parent = args[:parent] if args.key?(:parent)
          @policy_bundle = args[:policy_bundle] if args.key?(:policy_bundle)
          @project = args[:project] if args.key?(:project)
        end
      end
      
      # An identity under analysis.
      class GoogleCloudAssetV1Identity
        include Google::Apis::Core::Hashable
      
        # Represents the detailed state of an entity under analysis, such as a resource,
        # an identity or an access.
        # Corresponds to the JSON property `analysisState`
        # @return [Google::Apis::CloudassetV1::IamPolicyAnalysisState]
        attr_accessor :analysis_state
      
        # The identity of members, formatted as appear in an [IAM policy binding](https:/
        # /cloud.google.com/iam/reference/rest/v1/Binding). For example, they might be
        # formatted like the following: - user:foo@google.com - group:group1@google.com -
        # serviceAccount:s1@prj1.iam.gserviceaccount.com - projectOwner:some_project_id
        # - domain:google.com - allUsers
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_state = args[:analysis_state] if args.key?(:analysis_state)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The identities and group edges.
      class GoogleCloudAssetV1IdentityList
        include Google::Apis::Core::Hashable
      
        # Group identity edges of the graph starting from the binding's group members to
        # any node of the identities. The Edge.source_node contains a group, such as `
        # group:parent@google.com`. The Edge.target_node contains a member of the group,
        # such as `group:child@google.com` or `user:foo@google.com`. This field is
        # present only if the output_group_edges option is enabled in request.
        # Corresponds to the JSON property `groupEdges`
        # @return [Array<Google::Apis::CloudassetV1::GoogleCloudAssetV1Edge>]
        attr_accessor :group_edges
      
        # Only the identities that match one of the following conditions will be
        # presented: - The identity_selector, if it is specified in request; - Otherwise,
        # identities reachable from the policy binding's members.
        # Corresponds to the JSON property `identities`
        # @return [Array<Google::Apis::CloudassetV1::GoogleCloudAssetV1Identity>]
        attr_accessor :identities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_edges = args[:group_edges] if args.key?(:group_edges)
          @identities = args[:identities] if args.key?(:identities)
        end
      end
      
      # A `Constraint` that allows or disallows a list of string values, which are
      # configured by an organization's policy administrator with a `Policy`.
      class GoogleCloudAssetV1ListConstraint
        include Google::Apis::Core::Hashable
      
        # Indicates whether values grouped into categories can be used in `Policy.
        # allowed_values` and `Policy.denied_values`. For example, `"in:Python"` would
        # match any value in the 'Python' group.
        # Corresponds to the JSON property `supportsIn`
        # @return [Boolean]
        attr_accessor :supports_in
        alias_method :supports_in?, :supports_in
      
        # Indicates whether subtrees of Cloud Resource Manager resource hierarchy can be
        # used in `Policy.allowed_values` and `Policy.denied_values`. For example, `"
        # under:folders/123"` would match any resource under the 'folders/123' folder.
        # Corresponds to the JSON property `supportsUnder`
        # @return [Boolean]
        attr_accessor :supports_under
        alias_method :supports_under?, :supports_under
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @supports_in = args[:supports_in] if args.key?(:supports_in)
          @supports_under = args[:supports_under] if args.key?(:supports_under)
        end
      end
      
      # BigQuery destination.
      class GoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination
        include Google::Apis::Core::Hashable
      
        # Required. The BigQuery dataset where the query results will be saved. It has
        # the format of "projects/`projectId`/datasets/`datasetId`".
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Required. The BigQuery table where the query results will be saved. If this
        # table does not exist, a new table with the given name will be created.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        # Specifies the action that occurs if the destination table or partition already
        # exists. The following values are supported: * WRITE_TRUNCATE: If the table or
        # partition already exists, BigQuery overwrites the entire table or all the
        # partitions data. * WRITE_APPEND: If the table or partition already exists,
        # BigQuery appends the data to the table or the latest partition. * WRITE_EMPTY:
        # If the table already exists and contains data, a 'duplicate' error is returned
        # in the job result. The default value is WRITE_EMPTY.
        # Corresponds to the JSON property `writeDisposition`
        # @return [String]
        attr_accessor :write_disposition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset = args[:dataset] if args.key?(:dataset)
          @table = args[:table] if args.key?(:table)
          @write_disposition = args[:write_disposition] if args.key?(:write_disposition)
        end
      end
      
      # A Google Cloud resource under analysis.
      class GoogleCloudAssetV1Resource
        include Google::Apis::Core::Hashable
      
        # Represents the detailed state of an entity under analysis, such as a resource,
        # an identity or an access.
        # Corresponds to the JSON property `analysisState`
        # @return [Google::Apis::CloudassetV1::IamPolicyAnalysisState]
        attr_accessor :analysis_state
      
        # The [full resource name](https://cloud.google.com/asset-inventory/docs/
        # resource-name-format)
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_state = args[:analysis_state] if args.key?(:analysis_state)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
        end
      end
      
      # This rule message is a customized version of the one defined in the
      # Organization Policy system. In addition to the fields defined in the original
      # organization policy, it contains additional field(s) under specific
      # circumstances to support analysis results.
      class GoogleCloudAssetV1Rule
        include Google::Apis::Core::Hashable
      
        # Setting this to true means that all values are allowed. This field can be set
        # only in Policies for list constraints.
        # Corresponds to the JSON property `allowAll`
        # @return [Boolean]
        attr_accessor :allow_all
        alias_method :allow_all?, :allow_all
      
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
        # @return [Google::Apis::CloudassetV1::Expr]
        attr_accessor :condition
      
        # The condition evaluation.
        # Corresponds to the JSON property `conditionEvaluation`
        # @return [Google::Apis::CloudassetV1::ConditionEvaluation]
        attr_accessor :condition_evaluation
      
        # Setting this to true means that all values are denied. This field can be set
        # only in Policies for list constraints.
        # Corresponds to the JSON property `denyAll`
        # @return [Boolean]
        attr_accessor :deny_all
        alias_method :deny_all?, :deny_all
      
        # If `true`, then the `Policy` is enforced. If `false`, then any configuration
        # is acceptable. This field can be set only in Policies for boolean constraints.
        # Corresponds to the JSON property `enforce`
        # @return [Boolean]
        attr_accessor :enforce
        alias_method :enforce?, :enforce
      
        # The string values for the list constraints.
        # Corresponds to the JSON property `values`
        # @return [Google::Apis::CloudassetV1::GoogleCloudAssetV1StringValues]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_all = args[:allow_all] if args.key?(:allow_all)
          @condition = args[:condition] if args.key?(:condition)
          @condition_evaluation = args[:condition_evaluation] if args.key?(:condition_evaluation)
          @deny_all = args[:deny_all] if args.key?(:deny_all)
          @enforce = args[:enforce] if args.key?(:enforce)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # The string values for the list constraints.
      class GoogleCloudAssetV1StringValues
        include Google::Apis::Core::Hashable
      
        # List of values allowed at this resource.
        # Corresponds to the JSON property `allowedValues`
        # @return [Array<String>]
        attr_accessor :allowed_values
      
        # List of values denied at this resource.
        # Corresponds to the JSON property `deniedValues`
        # @return [Array<String>]
        attr_accessor :denied_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_values = args[:allowed_values] if args.key?(:allowed_values)
          @denied_values = args[:denied_values] if args.key?(:denied_values)
        end
      end
      
      # An asset in Google Cloud. An asset can be any resource in the Google Cloud [
      # resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-
      # platform-resource-hierarchy), a resource outside the Google Cloud resource
      # hierarchy (such as Google Kubernetes Engine clusters and objects), or a policy
      # (e.g. IAM policy). See [Supported asset types](https://cloud.google.com/asset-
      # inventory/docs/supported-asset-types) for more information.
      class GoogleCloudAssetV1p7beta1Asset
        include Google::Apis::Core::Hashable
      
        # An `AccessLevel` is a label that can be applied to requests to Google Cloud
        # services, along with a list of requirements necessary for the label to be
        # applied.
        # Corresponds to the JSON property `accessLevel`
        # @return [Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1AccessLevel]
        attr_accessor :access_level
      
        # `AccessPolicy` is a container for `AccessLevels` (which define the necessary
        # attributes to use Google Cloud services) and `ServicePerimeters` (which define
        # regions of services able to freely pass data within a perimeter). An access
        # policy is globally visible within an organization, and the restrictions it
        # specifies apply to all projects within an organization.
        # Corresponds to the JSON property `accessPolicy`
        # @return [Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1AccessPolicy]
        attr_accessor :access_policy
      
        # The ancestry path of an asset in Google Cloud [resource hierarchy](https://
        # cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy),
        # represented as a list of relative resource names. An ancestry path starts with
        # the closest ancestor in the hierarchy and ends at root. If the asset is a
        # project, folder, or organization, the ancestry path starts from the asset
        # itself. Example: `["projects/123456789", "folders/5432", "organizations/1234"]`
        # Corresponds to the JSON property `ancestors`
        # @return [Array<String>]
        attr_accessor :ancestors
      
        # The type of the asset. Example: `compute.googleapis.com/Disk` See [Supported
        # asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-
        # types) for more information.
        # Corresponds to the JSON property `assetType`
        # @return [String]
        attr_accessor :asset_type
      
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
        # Corresponds to the JSON property `iamPolicy`
        # @return [Google::Apis::CloudassetV1::Policy]
        attr_accessor :iam_policy
      
        # The full name of the asset. Example: `//compute.googleapis.com/projects/
        # my_project_123/zones/zone1/instances/instance1` See [Resource names](https://
        # cloud.google.com/apis/design/resource_names#full_resource_name) for more
        # information.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A representation of an [organization policy](https://cloud.google.com/resource-
        # manager/docs/organization-policy/overview#organization_policy). There can be
        # more than one organization policy with different constraints set on a given
        # resource.
        # Corresponds to the JSON property `orgPolicy`
        # @return [Array<Google::Apis::CloudassetV1::GoogleCloudOrgpolicyV1Policy>]
        attr_accessor :org_policy
      
        # The detailed related assets with the `relationship_type`.
        # Corresponds to the JSON property `relatedAssets`
        # @return [Google::Apis::CloudassetV1::GoogleCloudAssetV1p7beta1RelatedAssets]
        attr_accessor :related_assets
      
        # A representation of a Google Cloud resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::CloudassetV1::GoogleCloudAssetV1p7beta1Resource]
        attr_accessor :resource
      
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
        # Corresponds to the JSON property `servicePerimeter`
        # @return [Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1ServicePerimeter]
        attr_accessor :service_perimeter
      
        # The last update timestamp of an asset. update_time is updated when create/
        # update/delete operation is performed.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_level = args[:access_level] if args.key?(:access_level)
          @access_policy = args[:access_policy] if args.key?(:access_policy)
          @ancestors = args[:ancestors] if args.key?(:ancestors)
          @asset_type = args[:asset_type] if args.key?(:asset_type)
          @iam_policy = args[:iam_policy] if args.key?(:iam_policy)
          @name = args[:name] if args.key?(:name)
          @org_policy = args[:org_policy] if args.key?(:org_policy)
          @related_assets = args[:related_assets] if args.key?(:related_assets)
          @resource = args[:resource] if args.key?(:resource)
          @service_perimeter = args[:service_perimeter] if args.key?(:service_perimeter)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # An asset identify in Google Cloud which contains its name, type and ancestors.
      # An asset can be any resource in the Google Cloud [resource hierarchy](https://
      # cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy), a
      # resource outside the Google Cloud resource hierarchy (such as Google
      # Kubernetes Engine clusters and objects), or a policy (e.g. IAM policy). See [
      # Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-
      # asset-types) for more information.
      class GoogleCloudAssetV1p7beta1RelatedAsset
        include Google::Apis::Core::Hashable
      
        # The ancestors of an asset in Google Cloud [resource hierarchy](https://cloud.
        # google.com/resource-manager/docs/cloud-platform-resource-hierarchy),
        # represented as a list of relative resource names. An ancestry path starts with
        # the closest ancestor in the hierarchy and ends at root. Example: `["projects/
        # 123456789", "folders/5432", "organizations/1234"]`
        # Corresponds to the JSON property `ancestors`
        # @return [Array<String>]
        attr_accessor :ancestors
      
        # The full name of the asset. Example: `//compute.googleapis.com/projects/
        # my_project_123/zones/zone1/instances/instance1` See [Resource names](https://
        # cloud.google.com/apis/design/resource_names#full_resource_name) for more
        # information.
        # Corresponds to the JSON property `asset`
        # @return [String]
        attr_accessor :asset
      
        # The type of the asset. Example: `compute.googleapis.com/Disk` See [Supported
        # asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-
        # types) for more information.
        # Corresponds to the JSON property `assetType`
        # @return [String]
        attr_accessor :asset_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ancestors = args[:ancestors] if args.key?(:ancestors)
          @asset = args[:asset] if args.key?(:asset)
          @asset_type = args[:asset_type] if args.key?(:asset_type)
        end
      end
      
      # The detailed related assets with the `relationship_type`.
      class GoogleCloudAssetV1p7beta1RelatedAssets
        include Google::Apis::Core::Hashable
      
        # The peer resources of the relationship.
        # Corresponds to the JSON property `assets`
        # @return [Array<Google::Apis::CloudassetV1::GoogleCloudAssetV1p7beta1RelatedAsset>]
        attr_accessor :assets
      
        # The relationship attributes which include `type`, `source_resource_type`, `
        # target_resource_type` and `action`.
        # Corresponds to the JSON property `relationshipAttributes`
        # @return [Google::Apis::CloudassetV1::GoogleCloudAssetV1p7beta1RelationshipAttributes]
        attr_accessor :relationship_attributes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assets = args[:assets] if args.key?(:assets)
          @relationship_attributes = args[:relationship_attributes] if args.key?(:relationship_attributes)
        end
      end
      
      # The relationship attributes which include `type`, `source_resource_type`, `
      # target_resource_type` and `action`.
      class GoogleCloudAssetV1p7beta1RelationshipAttributes
        include Google::Apis::Core::Hashable
      
        # The detail of the relationship, e.g. `contains`, `attaches`
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # The source asset type. Example: `compute.googleapis.com/Instance`
        # Corresponds to the JSON property `sourceResourceType`
        # @return [String]
        attr_accessor :source_resource_type
      
        # The target asset type. Example: `compute.googleapis.com/Disk`
        # Corresponds to the JSON property `targetResourceType`
        # @return [String]
        attr_accessor :target_resource_type
      
        # The unique identifier of the relationship type. Example: `
        # INSTANCE_TO_INSTANCEGROUP`
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @source_resource_type = args[:source_resource_type] if args.key?(:source_resource_type)
          @target_resource_type = args[:target_resource_type] if args.key?(:target_resource_type)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A representation of a Google Cloud resource.
      class GoogleCloudAssetV1p7beta1Resource
        include Google::Apis::Core::Hashable
      
        # The content of the resource, in which some sensitive fields are removed and
        # may not be present.
        # Corresponds to the JSON property `data`
        # @return [Hash<String,Object>]
        attr_accessor :data
      
        # The URL of the discovery document containing the resource's JSON schema.
        # Example: `https://www.googleapis.com/discovery/v1/apis/compute/v1/rest` This
        # value is unspecified for resources that do not have an API based on a
        # discovery document, such as Cloud Bigtable.
        # Corresponds to the JSON property `discoveryDocumentUri`
        # @return [String]
        attr_accessor :discovery_document_uri
      
        # The JSON schema name listed in the discovery document. Example: `Project` This
        # value is unspecified for resources that do not have an API based on a
        # discovery document, such as Cloud Bigtable.
        # Corresponds to the JSON property `discoveryName`
        # @return [String]
        attr_accessor :discovery_name
      
        # The location of the resource in Google Cloud, such as its zone and region. For
        # more information, see https://cloud.google.com/about/locations/.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The full name of the immediate parent of this resource. See [Resource Names](
        # https://cloud.google.com/apis/design/resource_names#full_resource_name) for
        # more information. For Google Cloud assets, this value is the parent resource
        # defined in the [IAM policy hierarchy](https://cloud.google.com/iam/docs/
        # overview#policy_hierarchy). Example: `//cloudresourcemanager.googleapis.com/
        # projects/my_project_123` For third-party assets, this field may be set
        # differently.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # The REST URL for accessing the resource. An HTTP `GET` request using this URL
        # returns the resource itself. Example: `https://cloudresourcemanager.googleapis.
        # com/v1/projects/my-project-123` This value is unspecified for resources
        # without a REST API.
        # Corresponds to the JSON property `resourceUrl`
        # @return [String]
        attr_accessor :resource_url
      
        # The API version. Example: `v1`
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @discovery_document_uri = args[:discovery_document_uri] if args.key?(:discovery_document_uri)
          @discovery_name = args[:discovery_name] if args.key?(:discovery_name)
          @location = args[:location] if args.key?(:location)
          @parent = args[:parent] if args.key?(:parent)
          @resource_url = args[:resource_url] if args.key?(:resource_url)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Used in `policy_type` to specify how `boolean_policy` will behave at this
      # resource.
      class GoogleCloudOrgpolicyV1BooleanPolicy
        include Google::Apis::Core::Hashable
      
        # If `true`, then the `Policy` is enforced. If `false`, then any configuration
        # is acceptable. Suppose you have a `Constraint` `constraints/compute.
        # disableSerialPortAccess` with `constraint_default` set to `ALLOW`. A `Policy`
        # for that `Constraint` exhibits the following behavior: - If the `Policy` at
        # this resource has enforced set to `false`, serial port connection attempts
        # will be allowed. - If the `Policy` at this resource has enforced set to `true`,
        # serial port connection attempts will be refused. - If the `Policy` at this
        # resource is `RestoreDefault`, serial port connection attempts will be allowed.
        # - If no `Policy` is set at this resource or anywhere higher in the resource
        # hierarchy, serial port connection attempts will be allowed. - If no `Policy`
        # is set at this resource, but one exists higher in the resource hierarchy, the
        # behavior is as if the`Policy` were set at this resource. The following
        # examples demonstrate the different possible layerings: Example 1 (nearest `
        # Constraint` wins): `organizations/foo` has a `Policy` with: `enforced: false` `
        # projects/bar` has no `Policy` set. The constraint at `projects/bar` and `
        # organizations/foo` will not be enforced. Example 2 (enforcement gets replaced):
        # `organizations/foo` has a `Policy` with: `enforced: false` `projects/bar` has
        # a `Policy` with: `enforced: true` The constraint at `organizations/foo` is not
        # enforced. The constraint at `projects/bar` is enforced. Example 3 (
        # RestoreDefault): `organizations/foo` has a `Policy` with: `enforced: true` `
        # projects/bar` has a `Policy` with: `RestoreDefault: ``` The constraint at `
        # organizations/foo` is enforced. The constraint at `projects/bar` is not
        # enforced, because `constraint_default` for the `Constraint` is `ALLOW`.
        # Corresponds to the JSON property `enforced`
        # @return [Boolean]
        attr_accessor :enforced
        alias_method :enforced?, :enforced
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enforced = args[:enforced] if args.key?(:enforced)
        end
      end
      
      # Used in `policy_type` to specify how `list_policy` behaves at this resource. `
      # ListPolicy` can define specific values and subtrees of Cloud Resource Manager
      # resource hierarchy (`Organizations`, `Folders`, `Projects`) that are allowed
      # or denied by setting the `allowed_values` and `denied_values` fields. This is
      # achieved by using the `under:` and optional `is:` prefixes. The `under:`
      # prefix is used to denote resource subtree values. The `is:` prefix is used to
      # denote specific values, and is required only if the value contains a ":".
      # Values prefixed with "is:" are treated the same as values with no prefix.
      # Ancestry subtrees must be in one of the following formats: - "projects/", e.g.
      # "projects/tokyo-rain-123" - "folders/", e.g. "folders/1234" - "organizations/",
      # e.g. "organizations/1234" The `supports_under` field of the associated `
      # Constraint` defines whether ancestry prefixes can be used. You can set `
      # allowed_values` and `denied_values` in the same `Policy` if `all_values` is `
      # ALL_VALUES_UNSPECIFIED`. `ALLOW` or `DENY` are used to allow or deny all
      # values. If `all_values` is set to either `ALLOW` or `DENY`, `allowed_values`
      # and `denied_values` must be unset.
      class GoogleCloudOrgpolicyV1ListPolicy
        include Google::Apis::Core::Hashable
      
        # The policy all_values state.
        # Corresponds to the JSON property `allValues`
        # @return [String]
        attr_accessor :all_values
      
        # List of values allowed at this resource. Can only be set if `all_values` is
        # set to `ALL_VALUES_UNSPECIFIED`.
        # Corresponds to the JSON property `allowedValues`
        # @return [Array<String>]
        attr_accessor :allowed_values
      
        # List of values denied at this resource. Can only be set if `all_values` is set
        # to `ALL_VALUES_UNSPECIFIED`.
        # Corresponds to the JSON property `deniedValues`
        # @return [Array<String>]
        attr_accessor :denied_values
      
        # Determines the inheritance behavior for this `Policy`. By default, a `
        # ListPolicy` set at a resource supersedes any `Policy` set anywhere up the
        # resource hierarchy. However, if `inherit_from_parent` is set to `true`, then
        # the values from the effective `Policy` of the parent resource are inherited,
        # meaning the values set in this `Policy` are added to the values inherited up
        # the hierarchy. Setting `Policy` hierarchies that inherit both allowed values
        # and denied values isn't recommended in most circumstances to keep the
        # configuration simple and understandable. However, it is possible to set a `
        # Policy` with `allowed_values` set that inherits a `Policy` with `denied_values`
        # set. In this case, the values that are allowed must be in `allowed_values`
        # and not present in `denied_values`. For example, suppose you have a `
        # Constraint` `constraints/serviceuser.services`, which has a `constraint_type`
        # of `list_constraint`, and with `constraint_default` set to `ALLOW`. Suppose
        # that at the Organization level, a `Policy` is applied that restricts the
        # allowed API activations to ``E1`, `E2``. Then, if a `Policy` is applied to a
        # project below the Organization that has `inherit_from_parent` set to `false`
        # and field all_values set to DENY, then an attempt to activate any API will be
        # denied. The following examples demonstrate different possible layerings for `
        # projects/bar` parented by `organizations/foo`: Example 1 (no inherited values):
        # `organizations/foo` has a `Policy` with values: `allowed_values: "E1"
        # allowed_values:"E2"` `projects/bar` has `inherit_from_parent` `false` and
        # values: `allowed_values: "E3" allowed_values: "E4"` The accepted values at `
        # organizations/foo` are `E1`, `E2`. The accepted values at `projects/bar` are `
        # E3`, and `E4`. Example 2 (inherited values): `organizations/foo` has a `Policy`
        # with values: `allowed_values: "E1" allowed_values:"E2"` `projects/bar` has a `
        # Policy` with values: `value: "E3" value: "E4" inherit_from_parent: true` The
        # accepted values at `organizations/foo` are `E1`, `E2`. The accepted values at `
        # projects/bar` are `E1`, `E2`, `E3`, and `E4`. Example 3 (inheriting both
        # allowed and denied values): `organizations/foo` has a `Policy` with values: `
        # allowed_values: "E1" allowed_values: "E2"` `projects/bar` has a `Policy` with:
        # `denied_values: "E1"` The accepted values at `organizations/foo` are `E1`, `E2`
        # . The value accepted at `projects/bar` is `E2`. Example 4 (RestoreDefault): `
        # organizations/foo` has a `Policy` with values: `allowed_values: "E1"
        # allowed_values:"E2"` `projects/bar` has a `Policy` with values: `
        # RestoreDefault: ``` The accepted values at `organizations/foo` are `E1`, `E2`.
        # The accepted values at `projects/bar` are either all or none depending on the
        # value of `constraint_default` (if `ALLOW`, all; if `DENY`, none). Example 5 (
        # no policy inherits parent policy): `organizations/foo` has no `Policy` set. `
        # projects/bar` has no `Policy` set. The accepted values at both levels are
        # either all or none depending on the value of `constraint_default` (if `ALLOW`,
        # all; if `DENY`, none). Example 6 (ListConstraint allowing all): `organizations/
        # foo` has a `Policy` with values: `allowed_values: "E1" allowed_values: "E2"` `
        # projects/bar` has a `Policy` with: `all: ALLOW` The accepted values at `
        # organizations/foo` are `E1`, E2`. Any value is accepted at `projects/bar`.
        # Example 7 (ListConstraint allowing none): `organizations/foo` has a `Policy`
        # with values: `allowed_values: "E1" allowed_values: "E2"` `projects/bar` has a `
        # Policy` with: `all: DENY` The accepted values at `organizations/foo` are `E1`,
        # E2`. No value is accepted at `projects/bar`. Example 10 (allowed and denied
        # subtrees of Resource Manager hierarchy): Given the following resource
        # hierarchy O1->`F1, F2`; F1->`P1`; F2->`P2, P3`, `organizations/foo` has a `
        # Policy` with values: `allowed_values: "under:organizations/O1"` `projects/bar`
        # has a `Policy` with: `allowed_values: "under:projects/P3"` `denied_values: "
        # under:folders/F2"` The accepted values at `organizations/foo` are `
        # organizations/O1`, `folders/F1`, `folders/F2`, `projects/P1`, `projects/P2`, `
        # projects/P3`. The accepted values at `projects/bar` are `organizations/O1`, `
        # folders/F1`, `projects/P1`.
        # Corresponds to the JSON property `inheritFromParent`
        # @return [Boolean]
        attr_accessor :inherit_from_parent
        alias_method :inherit_from_parent?, :inherit_from_parent
      
        # Optional. The Google Cloud Console will try to default to a configuration that
        # matches the value specified in this `Policy`. If `suggested_value` is not set,
        # it will inherit the value specified higher in the hierarchy, unless `
        # inherit_from_parent` is `false`.
        # Corresponds to the JSON property `suggestedValue`
        # @return [String]
        attr_accessor :suggested_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_values = args[:all_values] if args.key?(:all_values)
          @allowed_values = args[:allowed_values] if args.key?(:allowed_values)
          @denied_values = args[:denied_values] if args.key?(:denied_values)
          @inherit_from_parent = args[:inherit_from_parent] if args.key?(:inherit_from_parent)
          @suggested_value = args[:suggested_value] if args.key?(:suggested_value)
        end
      end
      
      # Defines a Cloud Organization `Policy` which is used to specify `Constraints`
      # for configurations of Cloud Platform resources.
      class GoogleCloudOrgpolicyV1Policy
        include Google::Apis::Core::Hashable
      
        # Used in `policy_type` to specify how `boolean_policy` will behave at this
        # resource.
        # Corresponds to the JSON property `booleanPolicy`
        # @return [Google::Apis::CloudassetV1::GoogleCloudOrgpolicyV1BooleanPolicy]
        attr_accessor :boolean_policy
      
        # The name of the `Constraint` the `Policy` is configuring, for example, `
        # constraints/serviceuser.services`. A [list of available constraints](/resource-
        # manager/docs/organization-policy/org-policy-constraints) is available.
        # Immutable after creation.
        # Corresponds to the JSON property `constraint`
        # @return [String]
        attr_accessor :constraint
      
        # An opaque tag indicating the current version of the `Policy`, used for
        # concurrency control. When the `Policy` is returned from either a `GetPolicy`
        # or a `ListOrgPolicy` request, this `etag` indicates the version of the current
        # `Policy` to use when executing a read-modify-write loop. When the `Policy` is
        # returned from a `GetEffectivePolicy` request, the `etag` will be unset. When
        # the `Policy` is used in a `SetOrgPolicy` method, use the `etag` value that was
        # returned from a `GetOrgPolicy` request as part of a read-modify-write loop for
        # concurrency control. Not setting the `etag`in a `SetOrgPolicy` request will
        # result in an unconditional write of the `Policy`.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Used in `policy_type` to specify how `list_policy` behaves at this resource. `
        # ListPolicy` can define specific values and subtrees of Cloud Resource Manager
        # resource hierarchy (`Organizations`, `Folders`, `Projects`) that are allowed
        # or denied by setting the `allowed_values` and `denied_values` fields. This is
        # achieved by using the `under:` and optional `is:` prefixes. The `under:`
        # prefix is used to denote resource subtree values. The `is:` prefix is used to
        # denote specific values, and is required only if the value contains a ":".
        # Values prefixed with "is:" are treated the same as values with no prefix.
        # Ancestry subtrees must be in one of the following formats: - "projects/", e.g.
        # "projects/tokyo-rain-123" - "folders/", e.g. "folders/1234" - "organizations/",
        # e.g. "organizations/1234" The `supports_under` field of the associated `
        # Constraint` defines whether ancestry prefixes can be used. You can set `
        # allowed_values` and `denied_values` in the same `Policy` if `all_values` is `
        # ALL_VALUES_UNSPECIFIED`. `ALLOW` or `DENY` are used to allow or deny all
        # values. If `all_values` is set to either `ALLOW` or `DENY`, `allowed_values`
        # and `denied_values` must be unset.
        # Corresponds to the JSON property `listPolicy`
        # @return [Google::Apis::CloudassetV1::GoogleCloudOrgpolicyV1ListPolicy]
        attr_accessor :list_policy
      
        # Ignores policies set above this resource and restores the `constraint_default`
        # enforcement behavior of the specific `Constraint` at this resource. Suppose
        # that `constraint_default` is set to `ALLOW` for the `Constraint` `constraints/
        # serviceuser.services`. Suppose that organization foo.com sets a `Policy` at
        # their Organization resource node that restricts the allowed service
        # activations to deny all service activations. They could then set a `Policy`
        # with the `policy_type` `restore_default` on several experimental projects,
        # restoring the `constraint_default` enforcement of the `Constraint` for only
        # those projects, allowing those projects to have all services activated.
        # Corresponds to the JSON property `restoreDefault`
        # @return [Google::Apis::CloudassetV1::GoogleCloudOrgpolicyV1RestoreDefault]
        attr_accessor :restore_default
      
        # The time stamp the `Policy` was previously updated. This is set by the server,
        # not specified by the caller, and represents the last time a call to `
        # SetOrgPolicy` was made for that `Policy`. Any value set by the client will be
        # ignored.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Version of the `Policy`. Default version is 0;
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_policy = args[:boolean_policy] if args.key?(:boolean_policy)
          @constraint = args[:constraint] if args.key?(:constraint)
          @etag = args[:etag] if args.key?(:etag)
          @list_policy = args[:list_policy] if args.key?(:list_policy)
          @restore_default = args[:restore_default] if args.key?(:restore_default)
          @update_time = args[:update_time] if args.key?(:update_time)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Ignores policies set above this resource and restores the `constraint_default`
      # enforcement behavior of the specific `Constraint` at this resource. Suppose
      # that `constraint_default` is set to `ALLOW` for the `Constraint` `constraints/
      # serviceuser.services`. Suppose that organization foo.com sets a `Policy` at
      # their Organization resource node that restricts the allowed service
      # activations to deny all service activations. They could then set a `Policy`
      # with the `policy_type` `restore_default` on several experimental projects,
      # restoring the `constraint_default` enforcement of the `Constraint` for only
      # those projects, allowing those projects to have all services activated.
      class GoogleCloudOrgpolicyV1RestoreDefault
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
      class GoogleIdentityAccesscontextmanagerV1AccessLevel
        include Google::Apis::Core::Hashable
      
        # `BasicLevel` is an `AccessLevel` using a set of recommended features.
        # Corresponds to the JSON property `basic`
        # @return [Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1BasicLevel]
        attr_accessor :basic
      
        # `CustomLevel` is an `AccessLevel` using the Cloud Common Expression Language
        # to represent the necessary conditions for the level to apply to a request. See
        # CEL spec at: https://github.com/google/cel-spec
        # Corresponds to the JSON property `custom`
        # @return [Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1CustomLevel]
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
      class GoogleIdentityAccesscontextmanagerV1AccessPolicy
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
      
      # Identification for an API Operation.
      class GoogleIdentityAccesscontextmanagerV1ApiOperation
        include Google::Apis::Core::Hashable
      
        # API methods or permissions to allow. Method or permission must belong to the
        # service specified by `service_name` field. A single MethodSelector entry with `
        # *` specified for the `method` field will allow all methods AND permissions for
        # the service specified in `service_name`.
        # Corresponds to the JSON property `methodSelectors`
        # @return [Array<Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1MethodSelector>]
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
      
      # `BasicLevel` is an `AccessLevel` using a set of recommended features.
      class GoogleIdentityAccesscontextmanagerV1BasicLevel
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
        # @return [Array<Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1Condition>]
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
      
      # A condition necessary for an `AccessLevel` to be granted. The Condition is an
      # AND over its fields. So a Condition is true if: 1) the request IP is from one
      # of the listed subnetworks AND 2) the originating device complies with the
      # listed device policy AND 3) all listed access levels are granted AND 4) the
      # request was sent at a time allowed by the DateTimeRestriction.
      class GoogleIdentityAccesscontextmanagerV1Condition
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
        # @return [Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1DevicePolicy]
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
        # @return [Array<Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1VpcNetworkSource>]
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
      class GoogleIdentityAccesscontextmanagerV1CustomLevel
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
        # @return [Google::Apis::CloudassetV1::Expr]
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
      class GoogleIdentityAccesscontextmanagerV1DevicePolicy
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
        # @return [Array<Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1OsConstraint>]
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
      class GoogleIdentityAccesscontextmanagerV1EgressFrom
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
        # @return [Array<Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1EgressSource>]
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
      class GoogleIdentityAccesscontextmanagerV1EgressPolicy
        include Google::Apis::Core::Hashable
      
        # Defines the conditions under which an EgressPolicy matches a request.
        # Conditions based on information about the source of the request. Note that if
        # the destination of the request is also protected by a ServicePerimeter, then
        # that ServicePerimeter must have an IngressPolicy which allows access in order
        # for this request to succeed.
        # Corresponds to the JSON property `egressFrom`
        # @return [Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1EgressFrom]
        attr_accessor :egress_from
      
        # Defines the conditions under which an EgressPolicy matches a request.
        # Conditions are based on information about the ApiOperation intended to be
        # performed on the `resources` specified. Note that if the destination of the
        # request is also protected by a ServicePerimeter, then that ServicePerimeter
        # must have an IngressPolicy which allows access in order for this request to
        # succeed. The request must match `operations` AND `resources` fields in order
        # to be allowed egress out of the perimeter.
        # Corresponds to the JSON property `egressTo`
        # @return [Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1EgressTo]
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
      class GoogleIdentityAccesscontextmanagerV1EgressSource
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
      class GoogleIdentityAccesscontextmanagerV1EgressTo
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
        # @return [Array<Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1ApiOperation>]
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
      
      # Defines the conditions under which an IngressPolicy matches a request.
      # Conditions are based on information about the source of the request. The
      # request must satisfy what is defined in `sources` AND identity related fields
      # in order to match.
      class GoogleIdentityAccesscontextmanagerV1IngressFrom
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
        # @return [Array<Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1IngressSource>]
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
      class GoogleIdentityAccesscontextmanagerV1IngressPolicy
        include Google::Apis::Core::Hashable
      
        # Defines the conditions under which an IngressPolicy matches a request.
        # Conditions are based on information about the source of the request. The
        # request must satisfy what is defined in `sources` AND identity related fields
        # in order to match.
        # Corresponds to the JSON property `ingressFrom`
        # @return [Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1IngressFrom]
        attr_accessor :ingress_from
      
        # Defines the conditions under which an IngressPolicy matches a request.
        # Conditions are based on information about the ApiOperation intended to be
        # performed on the target resource of the request. The request must satisfy what
        # is defined in `operations` AND `resources` in order to match.
        # Corresponds to the JSON property `ingressTo`
        # @return [Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1IngressTo]
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
      class GoogleIdentityAccesscontextmanagerV1IngressSource
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
      class GoogleIdentityAccesscontextmanagerV1IngressTo
        include Google::Apis::Core::Hashable
      
        # A list of ApiOperations allowed to be performed by the sources specified in
        # corresponding IngressFrom in this ServicePerimeter.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1ApiOperation>]
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
      
      # An allowed method or permission of a service specified in ApiOperation.
      class GoogleIdentityAccesscontextmanagerV1MethodSelector
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
      
      # A restriction on the OS type and version of devices making requests.
      class GoogleIdentityAccesscontextmanagerV1OsConstraint
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
      class GoogleIdentityAccesscontextmanagerV1ServicePerimeter
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
        # @return [Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig]
        attr_accessor :spec
      
        # `ServicePerimeterConfig` specifies a set of Google Cloud resources that
        # describe specific Service Perimeter configuration.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig]
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
      class GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig
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
        # @return [Array<Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1EgressPolicy>]
        attr_accessor :egress_policies
      
        # List of IngressPolicies to apply to the perimeter. A perimeter may have
        # multiple IngressPolicies, each of which is evaluated separately. Access is
        # granted if any Ingress Policy grants it. Must be empty for a perimeter bridge.
        # Corresponds to the JSON property `ingressPolicies`
        # @return [Array<Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1IngressPolicy>]
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
        # @return [Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices]
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
      
      # Specifies how APIs are allowed to communicate within the Service Perimeter.
      class GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices
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
      class GoogleIdentityAccesscontextmanagerV1VpcNetworkSource
        include Google::Apis::Core::Hashable
      
        # Sub-segment ranges inside of a VPC Network.
        # Corresponds to the JSON property `vpcSubnetwork`
        # @return [Google::Apis::CloudassetV1::GoogleIdentityAccesscontextmanagerV1VpcSubNetwork]
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
      class GoogleIdentityAccesscontextmanagerV1VpcSubNetwork
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
      
      # An analysis message to group the query and results.
      class IamPolicyAnalysis
        include Google::Apis::Core::Hashable
      
        # IAM policy analysis query message.
        # Corresponds to the JSON property `analysisQuery`
        # @return [Google::Apis::CloudassetV1::IamPolicyAnalysisQuery]
        attr_accessor :analysis_query
      
        # A list of IamPolicyAnalysisResult that matches the analysis query, or empty if
        # no result is found.
        # Corresponds to the JSON property `analysisResults`
        # @return [Array<Google::Apis::CloudassetV1::IamPolicyAnalysisResult>]
        attr_accessor :analysis_results
      
        # Represents whether all entries in the analysis_results have been fully
        # explored to answer the query.
        # Corresponds to the JSON property `fullyExplored`
        # @return [Boolean]
        attr_accessor :fully_explored
        alias_method :fully_explored?, :fully_explored
      
        # A list of non-critical errors happened during the query handling.
        # Corresponds to the JSON property `nonCriticalErrors`
        # @return [Array<Google::Apis::CloudassetV1::IamPolicyAnalysisState>]
        attr_accessor :non_critical_errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_query = args[:analysis_query] if args.key?(:analysis_query)
          @analysis_results = args[:analysis_results] if args.key?(:analysis_results)
          @fully_explored = args[:fully_explored] if args.key?(:fully_explored)
          @non_critical_errors = args[:non_critical_errors] if args.key?(:non_critical_errors)
        end
      end
      
      # Output configuration for export IAM policy analysis destination.
      class IamPolicyAnalysisOutputConfig
        include Google::Apis::Core::Hashable
      
        # A BigQuery destination.
        # Corresponds to the JSON property `bigqueryDestination`
        # @return [Google::Apis::CloudassetV1::GoogleCloudAssetV1BigQueryDestination]
        attr_accessor :bigquery_destination
      
        # A Cloud Storage location.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::CloudassetV1::GoogleCloudAssetV1GcsDestination]
        attr_accessor :gcs_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_destination = args[:bigquery_destination] if args.key?(:bigquery_destination)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
        end
      end
      
      # IAM policy analysis query message.
      class IamPolicyAnalysisQuery
        include Google::Apis::Core::Hashable
      
        # Specifies roles and/or permissions to analyze, to determine both the
        # identities possessing them and the resources they control. If multiple values
        # are specified, results will include roles or permissions matching any of them.
        # The total number of roles and permissions should be equal or less than 10.
        # Corresponds to the JSON property `accessSelector`
        # @return [Google::Apis::CloudassetV1::AccessSelector]
        attr_accessor :access_selector
      
        # The IAM conditions context.
        # Corresponds to the JSON property `conditionContext`
        # @return [Google::Apis::CloudassetV1::ConditionContext]
        attr_accessor :condition_context
      
        # Specifies an identity for which to determine resource access, based on roles
        # assigned either directly to them or to the groups they belong to, directly or
        # indirectly.
        # Corresponds to the JSON property `identitySelector`
        # @return [Google::Apis::CloudassetV1::IdentitySelector]
        attr_accessor :identity_selector
      
        # Contains query options.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::CloudassetV1::Options]
        attr_accessor :options
      
        # Specifies the resource to analyze for access policies, which may be set
        # directly on the resource, or on ancestors such as organizations, folders or
        # projects.
        # Corresponds to the JSON property `resourceSelector`
        # @return [Google::Apis::CloudassetV1::ResourceSelector]
        attr_accessor :resource_selector
      
        # Required. The relative name of the root asset. Only resources and IAM policies
        # within the scope will be analyzed. This can only be an organization number (
        # such as "organizations/123"), a folder number (such as "folders/123"), a
        # project ID (such as "projects/my-project-id"), or a project number (such as "
        # projects/12345"). To know how to get organization ID, visit [here ](https://
        # cloud.google.com/resource-manager/docs/creating-managing-organization#
        # retrieving_your_organization_id). To know how to get folder or project ID,
        # visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-
        # folders#viewing_or_listing_folders_and_projects).
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_selector = args[:access_selector] if args.key?(:access_selector)
          @condition_context = args[:condition_context] if args.key?(:condition_context)
          @identity_selector = args[:identity_selector] if args.key?(:identity_selector)
          @options = args[:options] if args.key?(:options)
          @resource_selector = args[:resource_selector] if args.key?(:resource_selector)
          @scope = args[:scope] if args.key?(:scope)
        end
      end
      
      # IAM Policy analysis result, consisting of one IAM policy binding and derived
      # access control lists.
      class IamPolicyAnalysisResult
        include Google::Apis::Core::Hashable
      
        # The access control lists derived from the iam_binding that match or
        # potentially match resource and access selectors specified in the request.
        # Corresponds to the JSON property `accessControlLists`
        # @return [Array<Google::Apis::CloudassetV1::GoogleCloudAssetV1AccessControlList>]
        attr_accessor :access_control_lists
      
        # The [full resource name](https://cloud.google.com/asset-inventory/docs/
        # resource-name-format) of the resource to which the iam_binding policy attaches.
        # Corresponds to the JSON property `attachedResourceFullName`
        # @return [String]
        attr_accessor :attached_resource_full_name
      
        # Represents whether all analyses on the iam_binding have successfully finished.
        # Corresponds to the JSON property `fullyExplored`
        # @return [Boolean]
        attr_accessor :fully_explored
        alias_method :fully_explored?, :fully_explored
      
        # Associates `members`, or principals, with a `role`.
        # Corresponds to the JSON property `iamBinding`
        # @return [Google::Apis::CloudassetV1::Binding]
        attr_accessor :iam_binding
      
        # The identities and group edges.
        # Corresponds to the JSON property `identityList`
        # @return [Google::Apis::CloudassetV1::GoogleCloudAssetV1IdentityList]
        attr_accessor :identity_list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_control_lists = args[:access_control_lists] if args.key?(:access_control_lists)
          @attached_resource_full_name = args[:attached_resource_full_name] if args.key?(:attached_resource_full_name)
          @fully_explored = args[:fully_explored] if args.key?(:fully_explored)
          @iam_binding = args[:iam_binding] if args.key?(:iam_binding)
          @identity_list = args[:identity_list] if args.key?(:identity_list)
        end
      end
      
      # Represents the detailed state of an entity under analysis, such as a resource,
      # an identity or an access.
      class IamPolicyAnalysisState
        include Google::Apis::Core::Hashable
      
        # The human-readable description of the cause of failure.
        # Corresponds to the JSON property `cause`
        # @return [String]
        attr_accessor :cause
      
        # The Google standard error code that best describes the state. For example: -
        # OK means the analysis on this entity has been successfully finished; -
        # PERMISSION_DENIED means an access denied error is encountered; -
        # DEADLINE_EXCEEDED means the analysis on this entity hasn't been started in
        # time;
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cause = args[:cause] if args.key?(:cause)
          @code = args[:code] if args.key?(:code)
        end
      end
      
      # A result of IAM Policy search, containing information of an IAM policy.
      class IamPolicySearchResult
        include Google::Apis::Core::Hashable
      
        # The type of the resource associated with this IAM policy. Example: `compute.
        # googleapis.com/Disk`. To search against the `asset_type`: * specify the `
        # asset_types` field in your search request.
        # Corresponds to the JSON property `assetType`
        # @return [String]
        attr_accessor :asset_type
      
        # Explanation about the IAM policy search result.
        # Corresponds to the JSON property `explanation`
        # @return [Google::Apis::CloudassetV1::Explanation]
        attr_accessor :explanation
      
        # The folder(s) that the IAM policy belongs to, in the form of folders/`
        # FOLDER_NUMBER`. This field is available when the IAM policy belongs to one or
        # more folders. To search against `folders`: * use a field query. Example: `
        # folders:(123 OR 456)` * use a free text query. Example: `123` * specify the `
        # scope` field as this folder in your search request.
        # Corresponds to the JSON property `folders`
        # @return [Array<String>]
        attr_accessor :folders
      
        # The organization that the IAM policy belongs to, in the form of organizations/`
        # ORGANIZATION_NUMBER`. This field is available when the IAM policy belongs to
        # an organization. To search against `organization`: * use a field query.
        # Example: `organization:123` * use a free text query. Example: `123` * specify
        # the `scope` field as this organization in your search request.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
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
        # @return [Google::Apis::CloudassetV1::Policy]
        attr_accessor :policy
      
        # The project that the associated Google Cloud resource belongs to, in the form
        # of projects/`PROJECT_NUMBER`. If an IAM policy is set on a resource (like VM
        # instance, Cloud Storage bucket), the project field will indicate the project
        # that contains the resource. If an IAM policy is set on a folder or
        # organization, this field will be empty. To search against the `project`: *
        # specify the `scope` field as this project in your search request.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # The full resource name of the resource associated with this IAM policy.
        # Example: `//compute.googleapis.com/projects/my_project_123/zones/zone1/
        # instances/instance1`. See [Cloud Asset Inventory Resource Name Format](https://
        # cloud.google.com/asset-inventory/docs/resource-name-format) for more
        # information. To search against the `resource`: * use a field query. Example: `
        # resource:organizations/123`
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_type = args[:asset_type] if args.key?(:asset_type)
          @explanation = args[:explanation] if args.key?(:explanation)
          @folders = args[:folders] if args.key?(:folders)
          @organization = args[:organization] if args.key?(:organization)
          @policy = args[:policy] if args.key?(:policy)
          @project = args[:project] if args.key?(:project)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Specifies an identity for which to determine resource access, based on roles
      # assigned either directly to them or to the groups they belong to, directly or
      # indirectly.
      class IdentitySelector
        include Google::Apis::Core::Hashable
      
        # Required. The identity appear in the form of principals in [IAM policy binding]
        # (https://cloud.google.com/iam/reference/rest/v1/Binding). The examples of
        # supported forms are: "user:mike@example.com", "group:admins@example.com", "
        # domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com".
        # Notice that wildcard characters (such as * and ?) are not supported. You must
        # give a specific identity.
        # Corresponds to the JSON property `identity`
        # @return [String]
        attr_accessor :identity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identity = args[:identity] if args.key?(:identity)
        end
      end
      
      # This API resource represents the available inventory data for a Compute Engine
      # virtual machine (VM) instance at a given point in time. You can use this API
      # resource to determine the inventory data of your VM. For more information, see
      # [Information provided by OS inventory management](https://cloud.google.com/
      # compute/docs/instances/os-inventory-management#data-collected).
      class Inventory
        include Google::Apis::Core::Hashable
      
        # Inventory items related to the VM keyed by an opaque unique identifier for
        # each inventory item. The identifier is unique to each distinct and addressable
        # inventory item and will change, when there is a new package version.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::CloudassetV1::Item>]
        attr_accessor :items
      
        # Output only. The `Inventory` API resource name. Format: `projects/`
        # project_number`/locations/`location`/instances/`instance_id`/inventory`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Operating system information for the VM.
        # Corresponds to the JSON property `osInfo`
        # @return [Google::Apis::CloudassetV1::OsInfo]
        attr_accessor :os_info
      
        # Output only. Timestamp of the last reported inventory for the VM.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @name = args[:name] if args.key?(:name)
          @os_info = args[:os_info] if args.key?(:os_info)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A single piece of inventory on a VM.
      class Item
        include Google::Apis::Core::Hashable
      
        # Software package information of the operating system.
        # Corresponds to the JSON property `availablePackage`
        # @return [Google::Apis::CloudassetV1::SoftwarePackage]
        attr_accessor :available_package
      
        # When this inventory item was first detected.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Identifier for this item, unique across items for this VM.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Software package information of the operating system.
        # Corresponds to the JSON property `installedPackage`
        # @return [Google::Apis::CloudassetV1::SoftwarePackage]
        attr_accessor :installed_package
      
        # The origin of this inventory item.
        # Corresponds to the JSON property `originType`
        # @return [String]
        attr_accessor :origin_type
      
        # The specific type of inventory, correlating to its specific details.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # When this inventory item was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_package = args[:available_package] if args.key?(:available_package)
          @create_time = args[:create_time] if args.key?(:create_time)
          @id = args[:id] if args.key?(:id)
          @installed_package = args[:installed_package] if args.key?(:installed_package)
          @origin_type = args[:origin_type] if args.key?(:origin_type)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # ListAssets response.
      class ListAssetsResponse
        include Google::Apis::Core::Hashable
      
        # Assets.
        # Corresponds to the JSON property `assets`
        # @return [Array<Google::Apis::CloudassetV1::Asset>]
        attr_accessor :assets
      
        # Token to retrieve the next page of results. It expires 72 hours after the page
        # token for the first page is generated. Set to empty if there are no remaining
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Time the snapshot was taken.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assets = args[:assets] if args.key?(:assets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
        end
      end
      
      # 
      class ListFeedsResponse
        include Google::Apis::Core::Hashable
      
        # A list of feeds.
        # Corresponds to the JSON property `feeds`
        # @return [Array<Google::Apis::CloudassetV1::Feed>]
        attr_accessor :feeds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @feeds = args[:feeds] if args.key?(:feeds)
        end
      end
      
      # Response of listing saved queries.
      class ListSavedQueriesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of savedQueries.
        # Corresponds to the JSON property `savedQueries`
        # @return [Array<Google::Apis::CloudassetV1::SavedQuery>]
        attr_accessor :saved_queries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @saved_queries = args[:saved_queries] if args.key?(:saved_queries)
        end
      end
      
      # A message to group the analysis information.
      class MoveAnalysis
        include Google::Apis::Core::Hashable
      
        # An analysis result including blockers and warnings.
        # Corresponds to the JSON property `analysis`
        # @return [Google::Apis::CloudassetV1::MoveAnalysisResult]
        attr_accessor :analysis
      
        # The user friendly display name of the analysis. E.g. IAM, organization policy
        # etc.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::CloudassetV1::Status]
        attr_accessor :error
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis = args[:analysis] if args.key?(:analysis)
          @display_name = args[:display_name] if args.key?(:display_name)
          @error = args[:error] if args.key?(:error)
        end
      end
      
      # An analysis result including blockers and warnings.
      class MoveAnalysisResult
        include Google::Apis::Core::Hashable
      
        # Blocking information that would prevent the target resource from moving to the
        # specified destination at runtime.
        # Corresponds to the JSON property `blockers`
        # @return [Array<Google::Apis::CloudassetV1::MoveImpact>]
        attr_accessor :blockers
      
        # Warning information indicating that moving the target resource to the
        # specified destination might be unsafe. This can include important policy
        # information and configuration changes, but will not block moves at runtime.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::CloudassetV1::MoveImpact>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blockers = args[:blockers] if args.key?(:blockers)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # A message to group impacts of moving the target resource.
      class MoveImpact
        include Google::Apis::Core::Hashable
      
        # User friendly impact detail in a free form message.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detail = args[:detail] if args.key?(:detail)
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
        # @return [Google::Apis::CloudassetV1::Status]
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
      
      # Contains query options.
      class Options
        include Google::Apis::Core::Hashable
      
        # Optional. If true, the response will include access analysis from identities
        # to resources via service account impersonation. This is a very expensive
        # operation, because many derived queries will be executed. We highly recommend
        # you use AssetService.AnalyzeIamPolicyLongrunning RPC instead. For example, if
        # the request analyzes for which resources user A has permission P, and there's
        # an IAM policy states user A has iam.serviceAccounts.getAccessToken permission
        # to a service account SA, and there's another IAM policy states service account
        # SA has permission P to a Google Cloud folder F, then user A potentially has
        # access to the Google Cloud folder F. And those advanced analysis results will
        # be included in AnalyzeIamPolicyResponse.service_account_impersonation_analysis.
        # Another example, if the request analyzes for who has permission P to a Google
        # Cloud folder F, and there's an IAM policy states user A has iam.
        # serviceAccounts.actAs permission to a service account SA, and there's another
        # IAM policy states service account SA has permission P to the Google Cloud
        # folder F, then user A potentially has access to the Google Cloud folder F. And
        # those advanced analysis results will be included in AnalyzeIamPolicyResponse.
        # service_account_impersonation_analysis. Only the following permissions are
        # considered in this analysis: * `iam.serviceAccounts.actAs` * `iam.
        # serviceAccounts.signBlob` * `iam.serviceAccounts.signJwt` * `iam.
        # serviceAccounts.getAccessToken` * `iam.serviceAccounts.getOpenIdToken` * `iam.
        # serviceAccounts.implicitDelegation` Default is false.
        # Corresponds to the JSON property `analyzeServiceAccountImpersonation`
        # @return [Boolean]
        attr_accessor :analyze_service_account_impersonation
        alias_method :analyze_service_account_impersonation?, :analyze_service_account_impersonation
      
        # Optional. If true, the identities section of the result will expand any Google
        # groups appearing in an IAM policy binding. If IamPolicyAnalysisQuery.
        # identity_selector is specified, the identity in the result will be determined
        # by the selector, and this flag is not allowed to set. If true, the default max
        # expansion per group is 1000 for AssetService.AnalyzeIamPolicy][]. Default is
        # false.
        # Corresponds to the JSON property `expandGroups`
        # @return [Boolean]
        attr_accessor :expand_groups
        alias_method :expand_groups?, :expand_groups
      
        # Optional. If true and IamPolicyAnalysisQuery.resource_selector is not
        # specified, the resource section of the result will expand any resource
        # attached to an IAM policy to include resources lower in the resource hierarchy.
        # For example, if the request analyzes for which resources user A has
        # permission P, and the results include an IAM policy with P on a Google Cloud
        # folder, the results will also include resources in that folder with permission
        # P. If true and IamPolicyAnalysisQuery.resource_selector is specified, the
        # resource section of the result will expand the specified resource to include
        # resources lower in the resource hierarchy. Only project or lower resources are
        # supported. Folder and organization resources cannot be used together with this
        # option. For example, if the request analyzes for which users have permission P
        # on a Google Cloud project with this option enabled, the results will include
        # all users who have permission P on that project or any lower resource. If true,
        # the default max expansion per resource is 1000 for AssetService.
        # AnalyzeIamPolicy][] and 100000 for AssetService.AnalyzeIamPolicyLongrunning][].
        # Default is false.
        # Corresponds to the JSON property `expandResources`
        # @return [Boolean]
        attr_accessor :expand_resources
        alias_method :expand_resources?, :expand_resources
      
        # Optional. If true, the access section of result will expand any roles
        # appearing in IAM policy bindings to include their permissions. If
        # IamPolicyAnalysisQuery.access_selector is specified, the access section of the
        # result will be determined by the selector, and this flag is not allowed to set.
        # Default is false.
        # Corresponds to the JSON property `expandRoles`
        # @return [Boolean]
        attr_accessor :expand_roles
        alias_method :expand_roles?, :expand_roles
      
        # Optional. If true, the result will output the relevant membership
        # relationships between groups and other groups, and between groups and
        # principals. Default is false.
        # Corresponds to the JSON property `outputGroupEdges`
        # @return [Boolean]
        attr_accessor :output_group_edges
        alias_method :output_group_edges?, :output_group_edges
      
        # Optional. If true, the result will output the relevant parent/child
        # relationships between resources. Default is false.
        # Corresponds to the JSON property `outputResourceEdges`
        # @return [Boolean]
        attr_accessor :output_resource_edges
        alias_method :output_resource_edges?, :output_resource_edges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analyze_service_account_impersonation = args[:analyze_service_account_impersonation] if args.key?(:analyze_service_account_impersonation)
          @expand_groups = args[:expand_groups] if args.key?(:expand_groups)
          @expand_resources = args[:expand_resources] if args.key?(:expand_resources)
          @expand_roles = args[:expand_roles] if args.key?(:expand_roles)
          @output_group_edges = args[:output_group_edges] if args.key?(:output_group_edges)
          @output_resource_edges = args[:output_resource_edges] if args.key?(:output_resource_edges)
        end
      end
      
      # The organization policy result to the query.
      class OrgPolicyResult
        include Google::Apis::Core::Hashable
      
        # This organization policy message is a modified version of the one defined in
        # the Organization Policy system. This message contains several fields defined
        # in the original organization policy with some new fields for analysis purpose.
        # Corresponds to the JSON property `consolidatedPolicy`
        # @return [Google::Apis::CloudassetV1::AnalyzerOrgPolicy]
        attr_accessor :consolidated_policy
      
        # The folder(s) that this consolidated policy belongs to, in the format of
        # folders/`FOLDER_NUMBER`. This field is available when the consolidated policy
        # belongs (directly or cascadingly) to one or more folders.
        # Corresponds to the JSON property `folders`
        # @return [Array<String>]
        attr_accessor :folders
      
        # The organization that this consolidated policy belongs to, in the format of
        # organizations/`ORGANIZATION_NUMBER`. This field is available when the
        # consolidated policy belongs (directly or cascadingly) to an organization.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # The ordered list of all organization policies from the consolidated_policy.
        # attached_resource. to the scope specified in the request. If the constraint is
        # defined with default policy, it will also appear in the list.
        # Corresponds to the JSON property `policyBundle`
        # @return [Array<Google::Apis::CloudassetV1::AnalyzerOrgPolicy>]
        attr_accessor :policy_bundle
      
        # The project that this consolidated policy belongs to, in the format of
        # projects/`PROJECT_NUMBER`. This field is available when the consolidated
        # policy belongs to a project.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consolidated_policy = args[:consolidated_policy] if args.key?(:consolidated_policy)
          @folders = args[:folders] if args.key?(:folders)
          @organization = args[:organization] if args.key?(:organization)
          @policy_bundle = args[:policy_bundle] if args.key?(:policy_bundle)
          @project = args[:project] if args.key?(:project)
        end
      end
      
      # Operating system information for the VM.
      class OsInfo
        include Google::Apis::Core::Hashable
      
        # The system architecture of the operating system.
        # Corresponds to the JSON property `architecture`
        # @return [String]
        attr_accessor :architecture
      
        # The VM hostname.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # The kernel release of the operating system.
        # Corresponds to the JSON property `kernelRelease`
        # @return [String]
        attr_accessor :kernel_release
      
        # The kernel version of the operating system.
        # Corresponds to the JSON property `kernelVersion`
        # @return [String]
        attr_accessor :kernel_version
      
        # The operating system long name. For example 'Debian GNU/Linux 9' or 'Microsoft
        # Window Server 2019 Datacenter'.
        # Corresponds to the JSON property `longName`
        # @return [String]
        attr_accessor :long_name
      
        # The current version of the OS Config agent running on the VM.
        # Corresponds to the JSON property `osconfigAgentVersion`
        # @return [String]
        attr_accessor :osconfig_agent_version
      
        # The operating system short name. For example, 'windows' or 'debian'.
        # Corresponds to the JSON property `shortName`
        # @return [String]
        attr_accessor :short_name
      
        # The version of the operating system.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @architecture = args[:architecture] if args.key?(:architecture)
          @hostname = args[:hostname] if args.key?(:hostname)
          @kernel_release = args[:kernel_release] if args.key?(:kernel_release)
          @kernel_version = args[:kernel_version] if args.key?(:kernel_version)
          @long_name = args[:long_name] if args.key?(:long_name)
          @osconfig_agent_version = args[:osconfig_agent_version] if args.key?(:osconfig_agent_version)
          @short_name = args[:short_name] if args.key?(:short_name)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Output configuration for export assets destination.
      class OutputConfig
        include Google::Apis::Core::Hashable
      
        # A BigQuery destination for exporting assets to.
        # Corresponds to the JSON property `bigqueryDestination`
        # @return [Google::Apis::CloudassetV1::BigQueryDestination]
        attr_accessor :bigquery_destination
      
        # A Cloud Storage location.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::CloudassetV1::GcsDestination]
        attr_accessor :gcs_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_destination = args[:bigquery_destination] if args.key?(:bigquery_destination)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
        end
      end
      
      # Specifications of BigQuery partitioned table as export destination.
      class PartitionSpec
        include Google::Apis::Core::Hashable
      
        # The partition key for BigQuery partitioned table.
        # Corresponds to the JSON property `partitionKey`
        # @return [String]
        attr_accessor :partition_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partition_key = args[:partition_key] if args.key?(:partition_key)
        end
      end
      
      # IAM permissions
      class Permissions
        include Google::Apis::Core::Hashable
      
        # A list of permissions. A sample permission string: `compute.disk.get`.
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
        # @return [Array<Google::Apis::CloudassetV1::AuditConfig>]
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
        # @return [Array<Google::Apis::CloudassetV1::Binding>]
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
      
      # The IAM policy and its attached resource.
      class PolicyInfo
        include Google::Apis::Core::Hashable
      
        # The full resource name the policy is directly attached to.
        # Corresponds to the JSON property `attachedResource`
        # @return [String]
        attr_accessor :attached_resource
      
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
        # @return [Google::Apis::CloudassetV1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attached_resource = args[:attached_resource] if args.key?(:attached_resource)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # A Pub/Sub destination.
      class PubsubDestination
        include Google::Apis::Core::Hashable
      
        # The name of the Pub/Sub topic to publish to. Example: `projects/PROJECT_ID/
        # topics/TOPIC_ID`.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # Output configuration query assets.
      class QueryAssetsOutputConfig
        include Google::Apis::Core::Hashable
      
        # BigQuery destination.
        # Corresponds to the JSON property `bigqueryDestination`
        # @return [Google::Apis::CloudassetV1::GoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination]
        attr_accessor :bigquery_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_destination = args[:bigquery_destination] if args.key?(:bigquery_destination)
        end
      end
      
      # QueryAssets request.
      class QueryAssetsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Reference to the query job, which is from the `QueryAssetsResponse`
        # of previous `QueryAssets` call.
        # Corresponds to the JSON property `jobReference`
        # @return [String]
        attr_accessor :job_reference
      
        # Output configuration query assets.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::CloudassetV1::QueryAssetsOutputConfig]
        attr_accessor :output_config
      
        # Optional. The maximum number of rows to return in the results. Responses are
        # limited to 10 MB and 1000 rows. By default, the maximum row count is 1000.
        # When the byte or row count limit is reached, the rest of the query results
        # will be paginated. The field will be ignored when [output_config] is specified.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. A page token received from previous `QueryAssets`. The field will be
        # ignored when [output_config] is specified.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Optional. Queries cloud assets as they appeared at the specified point in time.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # A time window specified by its `start_time` and `end_time`.
        # Corresponds to the JSON property `readTimeWindow`
        # @return [Google::Apis::CloudassetV1::TimeWindow]
        attr_accessor :read_time_window
      
        # Optional. A SQL statement that's compatible with [BigQuery SQL](https://cloud.
        # google.com/bigquery/docs/introduction-sql).
        # Corresponds to the JSON property `statement`
        # @return [String]
        attr_accessor :statement
      
        # Optional. Specifies the maximum amount of time that the client is willing to
        # wait for the query to complete. By default, this limit is 5 min for the first
        # query, and 1 minute for the following queries. If the query is complete, the `
        # done` field in the `QueryAssetsResponse` is true, otherwise false. Like
        # BigQuery [jobs.query API](https://cloud.google.com/bigquery/docs/reference/
        # rest/v2/jobs/query#queryrequest) The call is not guaranteed to wait for the
        # specified timeout; it typically returns after around 200 seconds (200,000
        # milliseconds), even if the query is not complete. The field will be ignored
        # when [output_config] is specified.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_reference = args[:job_reference] if args.key?(:job_reference)
          @output_config = args[:output_config] if args.key?(:output_config)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
          @read_time_window = args[:read_time_window] if args.key?(:read_time_window)
          @statement = args[:statement] if args.key?(:statement)
          @timeout = args[:timeout] if args.key?(:timeout)
        end
      end
      
      # QueryAssets response.
      class QueryAssetsResponse
        include Google::Apis::Core::Hashable
      
        # The query response, which can be either an `error` or a valid `response`. If `
        # done` == `false` and the query result is being saved in an output, the
        # output_config field will be set. If `done` == `true`, exactly one of `error`, `
        # query_result` or `output_config` will be set. [done] is unset unless the [
        # QueryAssetsResponse] contains a [QueryAssetsResponse.job_reference].
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
        # @return [Google::Apis::CloudassetV1::Status]
        attr_accessor :error
      
        # Reference to a query job.
        # Corresponds to the JSON property `jobReference`
        # @return [String]
        attr_accessor :job_reference
      
        # Output configuration query assets.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::CloudassetV1::QueryAssetsOutputConfig]
        attr_accessor :output_config
      
        # Execution results of the query. The result is formatted as rows represented by
        # BigQuery compatible [schema]. When pagination is necessary, it will contains
        # the page token to retrieve the results of following pages.
        # Corresponds to the JSON property `queryResult`
        # @return [Google::Apis::CloudassetV1::QueryResult]
        attr_accessor :query_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @job_reference = args[:job_reference] if args.key?(:job_reference)
          @output_config = args[:output_config] if args.key?(:output_config)
          @query_result = args[:query_result] if args.key?(:query_result)
        end
      end
      
      # The query content.
      class QueryContent
        include Google::Apis::Core::Hashable
      
        # IAM policy analysis query message.
        # Corresponds to the JSON property `iamPolicyAnalysisQuery`
        # @return [Google::Apis::CloudassetV1::IamPolicyAnalysisQuery]
        attr_accessor :iam_policy_analysis_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @iam_policy_analysis_query = args[:iam_policy_analysis_query] if args.key?(:iam_policy_analysis_query)
        end
      end
      
      # Execution results of the query. The result is formatted as rows represented by
      # BigQuery compatible [schema]. When pagination is necessary, it will contains
      # the page token to retrieve the results of following pages.
      class QueryResult
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Each row hold a query result in the format of `Struct`.
        # Corresponds to the JSON property `rows`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :rows
      
        # BigQuery Compatible table schema.
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::CloudassetV1::TableSchema]
        attr_accessor :schema
      
        # Total rows of the whole query results.
        # Corresponds to the JSON property `totalRows`
        # @return [Fixnum]
        attr_accessor :total_rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rows = args[:rows] if args.key?(:rows)
          @schema = args[:schema] if args.key?(:schema)
          @total_rows = args[:total_rows] if args.key?(:total_rows)
        end
      end
      
      # An asset identifier in Google Cloud which contains its name, type and
      # ancestors. An asset can be any resource in the Google Cloud [resource
      # hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-
      # resource-hierarchy), a resource outside the Google Cloud resource hierarchy (
      # such as Google Kubernetes Engine clusters and objects), or a policy (e.g. IAM
      # policy). See [Supported asset types](https://cloud.google.com/asset-inventory/
      # docs/supported-asset-types) for more information.
      class RelatedAsset
        include Google::Apis::Core::Hashable
      
        # The ancestors of an asset in Google Cloud [resource hierarchy](https://cloud.
        # google.com/resource-manager/docs/cloud-platform-resource-hierarchy),
        # represented as a list of relative resource names. An ancestry path starts with
        # the closest ancestor in the hierarchy and ends at root. Example: `["projects/
        # 123456789", "folders/5432", "organizations/1234"]`
        # Corresponds to the JSON property `ancestors`
        # @return [Array<String>]
        attr_accessor :ancestors
      
        # The full name of the asset. Example: `//compute.googleapis.com/projects/
        # my_project_123/zones/zone1/instances/instance1` See [Resource names](https://
        # cloud.google.com/apis/design/resource_names#full_resource_name) for more
        # information.
        # Corresponds to the JSON property `asset`
        # @return [String]
        attr_accessor :asset
      
        # The type of the asset. Example: `compute.googleapis.com/Disk` See [Supported
        # asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-
        # types) for more information.
        # Corresponds to the JSON property `assetType`
        # @return [String]
        attr_accessor :asset_type
      
        # The unique identifier of the relationship type. Example: `
        # INSTANCE_TO_INSTANCEGROUP`
        # Corresponds to the JSON property `relationshipType`
        # @return [String]
        attr_accessor :relationship_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ancestors = args[:ancestors] if args.key?(:ancestors)
          @asset = args[:asset] if args.key?(:asset)
          @asset_type = args[:asset_type] if args.key?(:asset_type)
          @relationship_type = args[:relationship_type] if args.key?(:relationship_type)
        end
      end
      
      # DEPRECATED. This message only presents for the purpose of backward-
      # compatibility. The server will never populate this message in responses. The
      # detailed related assets with the `relationship_type`.
      class RelatedAssets
        include Google::Apis::Core::Hashable
      
        # The peer resources of the relationship.
        # Corresponds to the JSON property `assets`
        # @return [Array<Google::Apis::CloudassetV1::RelatedAsset>]
        attr_accessor :assets
      
        # DEPRECATED. This message only presents for the purpose of backward-
        # compatibility. The server will never populate this message in responses. The
        # relationship attributes which include `type`, `source_resource_type`, `
        # target_resource_type` and `action`.
        # Corresponds to the JSON property `relationshipAttributes`
        # @return [Google::Apis::CloudassetV1::RelationshipAttributes]
        attr_accessor :relationship_attributes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assets = args[:assets] if args.key?(:assets)
          @relationship_attributes = args[:relationship_attributes] if args.key?(:relationship_attributes)
        end
      end
      
      # The detailed related resource.
      class RelatedResource
        include Google::Apis::Core::Hashable
      
        # The type of the asset. Example: `compute.googleapis.com/Instance`
        # Corresponds to the JSON property `assetType`
        # @return [String]
        attr_accessor :asset_type
      
        # The full resource name of the related resource. Example: `//compute.googleapis.
        # com/projects/my_proj_123/zones/instance/instance123`
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_type = args[:asset_type] if args.key?(:asset_type)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
        end
      end
      
      # The related resources of the primary resource.
      class RelatedResources
        include Google::Apis::Core::Hashable
      
        # The detailed related resources of the primary resource.
        # Corresponds to the JSON property `relatedResources`
        # @return [Array<Google::Apis::CloudassetV1::RelatedResource>]
        attr_accessor :related_resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @related_resources = args[:related_resources] if args.key?(:related_resources)
        end
      end
      
      # DEPRECATED. This message only presents for the purpose of backward-
      # compatibility. The server will never populate this message in responses. The
      # relationship attributes which include `type`, `source_resource_type`, `
      # target_resource_type` and `action`.
      class RelationshipAttributes
        include Google::Apis::Core::Hashable
      
        # The detail of the relationship, e.g. `contains`, `attaches`
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # The source asset type. Example: `compute.googleapis.com/Instance`
        # Corresponds to the JSON property `sourceResourceType`
        # @return [String]
        attr_accessor :source_resource_type
      
        # The target asset type. Example: `compute.googleapis.com/Disk`
        # Corresponds to the JSON property `targetResourceType`
        # @return [String]
        attr_accessor :target_resource_type
      
        # The unique identifier of the relationship type. Example: `
        # INSTANCE_TO_INSTANCEGROUP`
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @source_resource_type = args[:source_resource_type] if args.key?(:source_resource_type)
          @target_resource_type = args[:target_resource_type] if args.key?(:target_resource_type)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A representation of a Google Cloud resource.
      class Resource
        include Google::Apis::Core::Hashable
      
        # The content of the resource, in which some sensitive fields are removed and
        # may not be present.
        # Corresponds to the JSON property `data`
        # @return [Hash<String,Object>]
        attr_accessor :data
      
        # The URL of the discovery document containing the resource's JSON schema.
        # Example: `https://www.googleapis.com/discovery/v1/apis/compute/v1/rest` This
        # value is unspecified for resources that do not have an API based on a
        # discovery document, such as Cloud Bigtable.
        # Corresponds to the JSON property `discoveryDocumentUri`
        # @return [String]
        attr_accessor :discovery_document_uri
      
        # The JSON schema name listed in the discovery document. Example: `Project` This
        # value is unspecified for resources that do not have an API based on a
        # discovery document, such as Cloud Bigtable.
        # Corresponds to the JSON property `discoveryName`
        # @return [String]
        attr_accessor :discovery_name
      
        # The location of the resource in Google Cloud, such as its zone and region. For
        # more information, see https://cloud.google.com/about/locations/.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The full name of the immediate parent of this resource. See [Resource Names](
        # https://cloud.google.com/apis/design/resource_names#full_resource_name) for
        # more information. For Google Cloud assets, this value is the parent resource
        # defined in the [IAM policy hierarchy](https://cloud.google.com/iam/docs/
        # overview#policy_hierarchy). Example: `//cloudresourcemanager.googleapis.com/
        # projects/my_project_123`
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # The REST URL for accessing the resource. An HTTP `GET` request using this URL
        # returns the resource itself. Example: `https://cloudresourcemanager.googleapis.
        # com/v1/projects/my-project-123` This value is unspecified for resources
        # without a REST API.
        # Corresponds to the JSON property `resourceUrl`
        # @return [String]
        attr_accessor :resource_url
      
        # The API version. Example: `v1`
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @discovery_document_uri = args[:discovery_document_uri] if args.key?(:discovery_document_uri)
          @discovery_name = args[:discovery_name] if args.key?(:discovery_name)
          @location = args[:location] if args.key?(:location)
          @parent = args[:parent] if args.key?(:parent)
          @resource_url = args[:resource_url] if args.key?(:resource_url)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The resource owners information.
      class ResourceOwners
        include Google::Apis::Core::Hashable
      
        # List of resource owners.
        # Corresponds to the JSON property `resourceOwners`
        # @return [Array<String>]
        attr_accessor :resource_owners
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_owners = args[:resource_owners] if args.key?(:resource_owners)
        end
      end
      
      # A result of Resource Search, containing information of a cloud resource.
      class ResourceSearchResult
        include Google::Apis::Core::Hashable
      
        # The additional searchable attributes of this resource. The attributes may vary
        # from one resource type to another. Examples: `projectId` for Project, `dnsName`
        # for DNS ManagedZone. This field contains a subset of the resource metadata
        # fields that are returned by the List or Get APIs provided by the corresponding
        # Google Cloud service (e.g., Compute Engine). see [API references and supported
        # searchable attributes](https://cloud.google.com/asset-inventory/docs/supported-
        # asset-types) to see which fields are included. You can search values of these
        # fields through free text search. However, you should not consume the field
        # programically as the field names and values may change as the Google Cloud
        # service updates to a new incompatible API version. To search against the `
        # additional_attributes`: * Use a free text query to match the attributes values.
        # Example: to search `additional_attributes = ` dnsName: "foobar" ``, you can
        # issue a query `foobar`.
        # Corresponds to the JSON property `additionalAttributes`
        # @return [Hash<String,Object>]
        attr_accessor :additional_attributes
      
        # The type of this resource. Example: `compute.googleapis.com/Disk`. To search
        # against the `asset_type`: * Specify the `asset_type` field in your search
        # request.
        # Corresponds to the JSON property `assetType`
        # @return [String]
        attr_accessor :asset_type
      
        # Attached resources of this resource. For example, an OSConfig Inventory is an
        # attached resource of a Compute Instance. This field is repeated because a
        # resource could have multiple attached resources. This `attached_resources`
        # field is not searchable. Some attributes of the attached resources are exposed
        # in `additional_attributes` field, so as to allow users to search on them.
        # Corresponds to the JSON property `attachedResources`
        # @return [Array<Google::Apis::CloudassetV1::AttachedResource>]
        attr_accessor :attached_resources
      
        # The create timestamp of this resource, at which the resource was created. The
        # granularity is in seconds. Timestamp.nanos will always be 0. This field is
        # available only when the resource's Protobuf contains it. To search against `
        # create_time`: * Use a field query. - value in seconds since unix epoch.
        # Example: `createTime > 1609459200` - value in date string. Example: `
        # createTime > 2021-01-01` - value in date-time string (must be quoted). Example:
        # `createTime > "2021-01-01T00:00:00"`
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # One or more paragraphs of text description of this resource. Maximum length
        # could be up to 1M bytes. This field is available only when the resource's
        # Protobuf contains it. To search against the `description`: * Use a field query.
        # Example: `description:"important instance"` * Use a free text query. Example:
        # `"important instance"`
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The display name of this resource. This field is available only when the
        # resource's Protobuf contains it. To search against the `display_name`: * Use a
        # field query. Example: `displayName:"My Instance"` * Use a free text query.
        # Example: `"My Instance"`
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The effective tags on this resource. All of the tags that are both attached to
        # and inherited by a resource are collectively called the effective tags. For
        # more information, see [tag inheritance](https://cloud.google.com/resource-
        # manager/docs/tags/tags-overview#inheritance). To search against the `
        # effective_tags`: * Use a field query. Example: - `effectiveTagKeys:"123456789/
        # env*"` - `effectiveTagKeys="123456789/env"` - `effectiveTagKeys:"env"` - `
        # effectiveTagKeyIds="tagKeys/123"` - `effectiveTagValues:"env"` - `
        # effectiveTagValues:"env/prod"` - `effectiveTagValues:"123456789/env/prod*"` - `
        # effectiveTagValues="123456789/env/prod"` - `effectiveTagValueIds="tagValues/
        # 456"`
        # Corresponds to the JSON property `effectiveTags`
        # @return [Array<Google::Apis::CloudassetV1::EffectiveTagDetails>]
        attr_accessor :effective_tags
      
        # Enrichments of the asset. Currently supported enrichment types with
        # SearchAllResources API: * RESOURCE_OWNERS The corresponding read masks in
        # order to get the enrichment: * enrichments.resource_owners The corresponding
        # required permissions: * cloudasset.assets.searchEnrichmentResourceOwners
        # Example query to get resource owner enrichment: ``` scope: "projects/my-
        # project" query: "name: my-project" assetTypes: "cloudresourcemanager.
        # googleapis.com/Project" readMask: ` paths: "asset_type" paths: "name" paths: "
        # enrichments.resource_owners" ` ```
        # Corresponds to the JSON property `enrichments`
        # @return [Array<Google::Apis::CloudassetV1::AssetEnrichment>]
        attr_accessor :enrichments
      
        # The folder(s) that this resource belongs to, in the form of folders/`
        # FOLDER_NUMBER`. This field is available when the resource belongs to one or
        # more folders. To search against `folders`: * Use a field query. Example: `
        # folders:(123 OR 456)` * Use a free text query. Example: `123` * Specify the `
        # scope` field as this folder in your search request.
        # Corresponds to the JSON property `folders`
        # @return [Array<String>]
        attr_accessor :folders
      
        # The Cloud KMS [CryptoKey](https://cloud.google.com/kms/docs/reference/rest/v1/
        # projects.locations.keyRings.cryptoKeys) name or [CryptoKeyVersion](https://
        # cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.
        # cryptoKeys.cryptoKeyVersions) name. This field only presents for the purpose
        # of backward compatibility. Use the `kms_keys` field to retrieve Cloud KMS key
        # information. This field is available only when the resource's Protobuf
        # contains it and will only be populated for [these resource types](https://
        # cloud.google.com/asset-inventory/docs/legacy-field-names#
        # resource_types_with_the_to_be_deprecated_kmskey_field) for backward compatible
        # purposes. To search against the `kms_key`: * Use a field query. Example: `
        # kmsKey:key` * Use a free text query. Example: `key`
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        # The Cloud KMS [CryptoKey](https://cloud.google.com/kms/docs/reference/rest/v1/
        # projects.locations.keyRings.cryptoKeys) names or [CryptoKeyVersion](https://
        # cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.
        # cryptoKeys.cryptoKeyVersions) names. This field is available only when the
        # resource's Protobuf contains it. To search against the `kms_keys`: * Use a
        # field query. Example: `kmsKeys:key` * Use a free text query. Example: `key`
        # Corresponds to the JSON property `kmsKeys`
        # @return [Array<String>]
        attr_accessor :kms_keys
      
        # User labels associated with this resource. See [Labelling and grouping Google
        # Cloud resources](https://cloud.google.com/blog/products/gcp/labelling-and-
        # grouping-your-google-cloud-platform-resources) for more information. This
        # field is available only when the resource's Protobuf contains it. To search
        # against the `labels`: * Use a field query: - query on any label's key or value.
        # Example: `labels:prod` - query by a given label. Example: `labels.env:prod` -
        # query by a given label's existence. Example: `labels.env:*` * Use a free text
        # query. Example: `prod`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Location can be `global`, regional like `us-east1`, or zonal like `us-west1-b`.
        # This field is available only when the resource's Protobuf contains it. To
        # search against the `location`: * Use a field query. Example: `location:us-west*
        # ` * Use a free text query. Example: `us-west*`
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The full resource name of this resource. Example: `//compute.googleapis.com/
        # projects/my_project_123/zones/zone1/instances/instance1`. See [Cloud Asset
        # Inventory Resource Name Format](https://cloud.google.com/asset-inventory/docs/
        # resource-name-format) for more information. To search against the `name`: *
        # Use a field query. Example: `name:instance1` * Use a free text query. Example:
        # `instance1`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Network tags associated with this resource. Like labels, network tags are a
        # type of annotations used to group Google Cloud resources. See [Labelling
        # Google Cloud resources](https://cloud.google.com/blog/products/gcp/labelling-
        # and-grouping-your-google-cloud-platform-resources) for more information. This
        # field is available only when the resource's Protobuf contains it. To search
        # against the `network_tags`: * Use a field query. Example: `networkTags:
        # internal` * Use a free text query. Example: `internal`
        # Corresponds to the JSON property `networkTags`
        # @return [Array<String>]
        attr_accessor :network_tags
      
        # The organization that this resource belongs to, in the form of organizations/`
        # ORGANIZATION_NUMBER`. This field is available when the resource belongs to an
        # organization. To search against `organization`: * Use a field query. Example: `
        # organization:123` * Use a free text query. Example: `123` * Specify the `scope`
        # field as this organization in your search request.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # The type of this resource's immediate parent, if there is one. To search
        # against the `parent_asset_type`: * Use a field query. Example: `
        # parentAssetType:"cloudresourcemanager.googleapis.com/Project"` * Use a free
        # text query. Example: `cloudresourcemanager.googleapis.com/Project`
        # Corresponds to the JSON property `parentAssetType`
        # @return [String]
        attr_accessor :parent_asset_type
      
        # The full resource name of this resource's parent, if it has one. To search
        # against the `parent_full_resource_name`: * Use a field query. Example: `
        # parentFullResourceName:"project-name"` * Use a free text query. Example: `
        # project-name`
        # Corresponds to the JSON property `parentFullResourceName`
        # @return [String]
        attr_accessor :parent_full_resource_name
      
        # The project that this resource belongs to, in the form of projects/`
        # PROJECT_NUMBER`. This field is available when the resource belongs to a
        # project. To search against `project`: * Use a field query. Example: `project:
        # 12345` * Use a free text query. Example: `12345` * Specify the `scope` field
        # as this project in your search request.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # A map of related resources of this resource, keyed by the relationship type. A
        # relationship type is in the format of `SourceType`_`ACTION`_`DestType`.
        # Example: `DISK_TO_INSTANCE`, `DISK_TO_NETWORK`, `INSTANCE_TO_INSTANCEGROUP`.
        # See [supported relationship types](https://cloud.google.com/asset-inventory/
        # docs/supported-asset-types#supported_relationship_types).
        # Corresponds to the JSON property `relationships`
        # @return [Hash<String,Google::Apis::CloudassetV1::RelatedResources>]
        attr_accessor :relationships
      
        # The actual content of Security Command Center security marks associated with
        # the asset. To search against SCC SecurityMarks field: * Use a field query: -
        # query by a given key value pair. Example: `sccSecurityMarks.foo=bar` - query
        # by a given key's existence. Example: `sccSecurityMarks.foo:*`
        # Corresponds to the JSON property `sccSecurityMarks`
        # @return [Hash<String,String>]
        attr_accessor :scc_security_marks
      
        # The state of this resource. Different resources types have different state
        # definitions that are mapped from various fields of different resource types.
        # This field is available only when the resource's Protobuf contains it. Example:
        # If the resource is an instance provided by Compute Engine, its state will
        # include PROVISIONING, STAGING, RUNNING, STOPPING, SUSPENDING, SUSPENDED,
        # REPAIRING, and TERMINATED. See `status` definition in [API Reference](https://
        # cloud.google.com/compute/docs/reference/rest/v1/instances). If the resource is
        # a project provided by Resource Manager, its state will include
        # LIFECYCLE_STATE_UNSPECIFIED, ACTIVE, DELETE_REQUESTED and DELETE_IN_PROGRESS.
        # See `lifecycleState` definition in [API Reference](https://cloud.google.com/
        # resource-manager/reference/rest/v1/projects). To search against the `state`: *
        # Use a field query. Example: `state:RUNNING` * Use a free text query. Example: `
        # RUNNING`
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # This field is only present for the purpose of backward compatibility. Use the `
        # tags` field instead. TagKey namespaced names, in the format of `ORG_ID`/`
        # TAG_KEY_SHORT_NAME`. To search against the `tagKeys`: * Use a field query.
        # Example: - `tagKeys:"123456789/env*"` - `tagKeys="123456789/env"` - `tagKeys:"
        # env"` * Use a free text query. Example: - `env`
        # Corresponds to the JSON property `tagKeys`
        # @return [Array<String>]
        attr_accessor :tag_keys
      
        # This field is only present for the purpose of backward compatibility. Use the `
        # tags` field instead. TagValue IDs, in the format of tagValues/`TAG_VALUE_ID`.
        # To search against the `tagValueIds`: * Use a field query. Example: - `
        # tagValueIds="tagValues/456"` * Use a free text query. Example: - `456`
        # Corresponds to the JSON property `tagValueIds`
        # @return [Array<String>]
        attr_accessor :tag_value_ids
      
        # This field is only present for the purpose of backward compatibility. Use the `
        # tags` field instead. TagValue namespaced names, in the format of `ORG_ID`/`
        # TAG_KEY_SHORT_NAME`/`TAG_VALUE_SHORT_NAME`. To search against the `tagValues`:
        # * Use a field query. Example: - `tagValues:"env"` - `tagValues:"env/prod"` - `
        # tagValues:"123456789/env/prod*"` - `tagValues="123456789/env/prod"` * Use a
        # free text query. Example: - `prod`
        # Corresponds to the JSON property `tagValues`
        # @return [Array<String>]
        attr_accessor :tag_values
      
        # The tags directly attached to this resource. To search against the `tags`: *
        # Use a field query. Example: - `tagKeys:"123456789/env*"` - `tagKeys="123456789/
        # env"` - `tagKeys:"env"` - `tagKeyIds="tagKeys/123"` - `tagValues:"env"` - `
        # tagValues:"env/prod"` - `tagValues:"123456789/env/prod*"` - `tagValues="
        # 123456789/env/prod"` - `tagValueIds="tagValues/456"` * Use a free text query.
        # Example: - `env/prod`
        # Corresponds to the JSON property `tags`
        # @return [Array<Google::Apis::CloudassetV1::Tag>]
        attr_accessor :tags
      
        # The last update timestamp of this resource, at which the resource was last
        # modified or deleted. The granularity is in seconds. Timestamp.nanos will
        # always be 0. This field is available only when the resource's Protobuf
        # contains it. To search against `update_time`: * Use a field query. - value in
        # seconds since unix epoch. Example: `updateTime < 1609459200` - value in date
        # string. Example: `updateTime < 2021-01-01` - value in date-time string (must
        # be quoted). Example: `updateTime < "2021-01-01T00:00:00"`
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Versioned resource representations of this resource. This is repeated because
        # there could be multiple versions of resource representations during version
        # migration. This `versioned_resources` field is not searchable. Some attributes
        # of the resource representations are exposed in `additional_attributes` field,
        # so as to allow users to search on them.
        # Corresponds to the JSON property `versionedResources`
        # @return [Array<Google::Apis::CloudassetV1::VersionedResource>]
        attr_accessor :versioned_resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_attributes = args[:additional_attributes] if args.key?(:additional_attributes)
          @asset_type = args[:asset_type] if args.key?(:asset_type)
          @attached_resources = args[:attached_resources] if args.key?(:attached_resources)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @effective_tags = args[:effective_tags] if args.key?(:effective_tags)
          @enrichments = args[:enrichments] if args.key?(:enrichments)
          @folders = args[:folders] if args.key?(:folders)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
          @kms_keys = args[:kms_keys] if args.key?(:kms_keys)
          @labels = args[:labels] if args.key?(:labels)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @network_tags = args[:network_tags] if args.key?(:network_tags)
          @organization = args[:organization] if args.key?(:organization)
          @parent_asset_type = args[:parent_asset_type] if args.key?(:parent_asset_type)
          @parent_full_resource_name = args[:parent_full_resource_name] if args.key?(:parent_full_resource_name)
          @project = args[:project] if args.key?(:project)
          @relationships = args[:relationships] if args.key?(:relationships)
          @scc_security_marks = args[:scc_security_marks] if args.key?(:scc_security_marks)
          @state = args[:state] if args.key?(:state)
          @tag_keys = args[:tag_keys] if args.key?(:tag_keys)
          @tag_value_ids = args[:tag_value_ids] if args.key?(:tag_value_ids)
          @tag_values = args[:tag_values] if args.key?(:tag_values)
          @tags = args[:tags] if args.key?(:tags)
          @update_time = args[:update_time] if args.key?(:update_time)
          @versioned_resources = args[:versioned_resources] if args.key?(:versioned_resources)
        end
      end
      
      # Specifies the resource to analyze for access policies, which may be set
      # directly on the resource, or on ancestors such as organizations, folders or
      # projects.
      class ResourceSelector
        include Google::Apis::Core::Hashable
      
        # Required. The [full resource name] (https://cloud.google.com/asset-inventory/
        # docs/resource-name-format) of a resource of [supported resource types](https://
        # cloud.google.com/asset-inventory/docs/supported-asset-types#
        # analyzable_asset_types).
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
        end
      end
      
      # A saved query which can be shared with others or used later.
      class SavedQuery
        include Google::Apis::Core::Hashable
      
        # The query content.
        # Corresponds to the JSON property `content`
        # @return [Google::Apis::CloudassetV1::QueryContent]
        attr_accessor :content
      
        # Output only. The create time of this saved query.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The account's email address who has created this saved query.
        # Corresponds to the JSON property `creator`
        # @return [String]
        attr_accessor :creator
      
        # The description of this saved query. This value should be fewer than 255
        # characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Labels applied on the resource. This value should not contain more than 10
        # entries. The key and value of each entry must be non-empty and fewer than 64
        # characters.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The last update time of this saved query.
        # Corresponds to the JSON property `lastUpdateTime`
        # @return [String]
        attr_accessor :last_update_time
      
        # Output only. The account's email address who has updated this saved query most
        # recently.
        # Corresponds to the JSON property `lastUpdater`
        # @return [String]
        attr_accessor :last_updater
      
        # The resource name of the saved query. The format must be: * projects/
        # project_number/savedQueries/saved_query_id * folders/folder_number/
        # savedQueries/saved_query_id * organizations/organization_number/savedQueries/
        # saved_query_id
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator = args[:creator] if args.key?(:creator)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @last_update_time = args[:last_update_time] if args.key?(:last_update_time)
          @last_updater = args[:last_updater] if args.key?(:last_updater)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Search all IAM policies response.
      class SearchAllIamPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # Set if there are more results than those appearing in this response; to get
        # the next set of results, call this method again, using this value as the `
        # page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of IAM policies that match the search query. Related information such
        # as the associated resource is returned along with the policy.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::CloudassetV1::IamPolicySearchResult>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # Search all resources response.
      class SearchAllResourcesResponse
        include Google::Apis::Core::Hashable
      
        # If there are more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of Resources that match the search query. It contains the resource
        # standard metadata information.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::CloudassetV1::ResourceSearchResult>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # Software package information of the operating system.
      class SoftwarePackage
        include Google::Apis::Core::Hashable
      
        # Information related to the a standard versioned package. This includes package
        # info for APT, Yum, Zypper, and Googet package managers.
        # Corresponds to the JSON property `aptPackage`
        # @return [Google::Apis::CloudassetV1::VersionedPackage]
        attr_accessor :apt_package
      
        # Information related to the a standard versioned package. This includes package
        # info for APT, Yum, Zypper, and Googet package managers.
        # Corresponds to the JSON property `cosPackage`
        # @return [Google::Apis::CloudassetV1::VersionedPackage]
        attr_accessor :cos_package
      
        # Information related to the a standard versioned package. This includes package
        # info for APT, Yum, Zypper, and Googet package managers.
        # Corresponds to the JSON property `googetPackage`
        # @return [Google::Apis::CloudassetV1::VersionedPackage]
        attr_accessor :googet_package
      
        # Information related to a Quick Fix Engineering package. Fields are taken from
        # Windows QuickFixEngineering Interface and match the source names: https://docs.
        # microsoft.com/en-us/windows/win32/cimwin32prov/win32-quickfixengineering
        # Corresponds to the JSON property `qfePackage`
        # @return [Google::Apis::CloudassetV1::WindowsQuickFixEngineeringPackage]
        attr_accessor :qfe_package
      
        # Contains information about a Windows application that is retrieved from the
        # Windows Registry. For more information about these fields, see: https://docs.
        # microsoft.com/en-us/windows/win32/msi/uninstall-registry-key
        # Corresponds to the JSON property `windowsApplication`
        # @return [Google::Apis::CloudassetV1::WindowsApplication]
        attr_accessor :windows_application
      
        # Details related to a Windows Update package. Field data and names are taken
        # from Windows Update API IUpdate Interface: https://docs.microsoft.com/en-us/
        # windows/win32/api/_wua/ Descriptive fields like title, and description are
        # localized based on the locale of the VM being updated.
        # Corresponds to the JSON property `wuaPackage`
        # @return [Google::Apis::CloudassetV1::WindowsUpdatePackage]
        attr_accessor :wua_package
      
        # Information related to the a standard versioned package. This includes package
        # info for APT, Yum, Zypper, and Googet package managers.
        # Corresponds to the JSON property `yumPackage`
        # @return [Google::Apis::CloudassetV1::VersionedPackage]
        attr_accessor :yum_package
      
        # Information related to the a standard versioned package. This includes package
        # info for APT, Yum, Zypper, and Googet package managers.
        # Corresponds to the JSON property `zypperPackage`
        # @return [Google::Apis::CloudassetV1::VersionedPackage]
        attr_accessor :zypper_package
      
        # Details related to a Zypper Patch.
        # Corresponds to the JSON property `zypperPatch`
        # @return [Google::Apis::CloudassetV1::ZypperPatch]
        attr_accessor :zypper_patch
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apt_package = args[:apt_package] if args.key?(:apt_package)
          @cos_package = args[:cos_package] if args.key?(:cos_package)
          @googet_package = args[:googet_package] if args.key?(:googet_package)
          @qfe_package = args[:qfe_package] if args.key?(:qfe_package)
          @windows_application = args[:windows_application] if args.key?(:windows_application)
          @wua_package = args[:wua_package] if args.key?(:wua_package)
          @yum_package = args[:yum_package] if args.key?(:yum_package)
          @zypper_package = args[:zypper_package] if args.key?(:zypper_package)
          @zypper_patch = args[:zypper_patch] if args.key?(:zypper_patch)
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
      
      # A field in TableSchema.
      class TableFieldSchema
        include Google::Apis::Core::Hashable
      
        # The field name. The name must contain only letters (a-z, A-Z), numbers (0-9),
        # or underscores (_), and must start with a letter or underscore. The maximum
        # length is 128 characters.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # Describes the nested schema fields if the type property is set to RECORD.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::CloudassetV1::TableFieldSchema>]
        attr_accessor :fields
      
        # The field mode. Possible values include NULLABLE, REQUIRED and REPEATED. The
        # default value is NULLABLE.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # The field data type. Possible values include * STRING * BYTES * INTEGER *
        # FLOAT * BOOLEAN * TIMESTAMP * DATE * TIME * DATETIME * GEOGRAPHY, * NUMERIC, *
        # BIGNUMERIC, * RECORD (where RECORD indicates that the field contains a nested
        # schema).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
          @fields = args[:fields] if args.key?(:fields)
          @mode = args[:mode] if args.key?(:mode)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # BigQuery Compatible table schema.
      class TableSchema
        include Google::Apis::Core::Hashable
      
        # Describes the fields in a table.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::CloudassetV1::TableFieldSchema>]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # The key and value for a [tag](https://cloud.google.com/resource-manager/docs/
      # tags/tags-overview).
      class Tag
        include Google::Apis::Core::Hashable
      
        # TagKey namespaced name, in the format of `ORG_ID`/`TAG_KEY_SHORT_NAME`.
        # Corresponds to the JSON property `tagKey`
        # @return [String]
        attr_accessor :tag_key
      
        # TagKey ID, in the format of tagKeys/`TAG_KEY_ID`.
        # Corresponds to the JSON property `tagKeyId`
        # @return [String]
        attr_accessor :tag_key_id
      
        # TagValue namespaced name, in the format of `ORG_ID`/`TAG_KEY_SHORT_NAME`/`
        # TAG_VALUE_SHORT_NAME`.
        # Corresponds to the JSON property `tagValue`
        # @return [String]
        attr_accessor :tag_value
      
        # TagValue ID, in the format of tagValues/`TAG_VALUE_ID`.
        # Corresponds to the JSON property `tagValueId`
        # @return [String]
        attr_accessor :tag_value_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tag_key = args[:tag_key] if args.key?(:tag_key)
          @tag_key_id = args[:tag_key_id] if args.key?(:tag_key_id)
          @tag_value = args[:tag_value] if args.key?(:tag_value)
          @tag_value_id = args[:tag_value_id] if args.key?(:tag_value_id)
        end
      end
      
      # An asset in Google Cloud and its temporal metadata, including the time window
      # when it was observed and its status during that window.
      class TemporalAsset
        include Google::Apis::Core::Hashable
      
        # An asset in Google Cloud. An asset can be any resource in the Google Cloud [
        # resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-
        # platform-resource-hierarchy), a resource outside the Google Cloud resource
        # hierarchy (such as Google Kubernetes Engine clusters and objects), or a policy
        # (e.g. IAM policy), or a relationship (e.g. an INSTANCE_TO_INSTANCEGROUP
        # relationship). See [Supported asset types](https://cloud.google.com/asset-
        # inventory/docs/supported-asset-types) for more information.
        # Corresponds to the JSON property `asset`
        # @return [Google::Apis::CloudassetV1::Asset]
        attr_accessor :asset
      
        # Whether the asset has been deleted or not.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # An asset in Google Cloud. An asset can be any resource in the Google Cloud [
        # resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-
        # platform-resource-hierarchy), a resource outside the Google Cloud resource
        # hierarchy (such as Google Kubernetes Engine clusters and objects), or a policy
        # (e.g. IAM policy), or a relationship (e.g. an INSTANCE_TO_INSTANCEGROUP
        # relationship). See [Supported asset types](https://cloud.google.com/asset-
        # inventory/docs/supported-asset-types) for more information.
        # Corresponds to the JSON property `priorAsset`
        # @return [Google::Apis::CloudassetV1::Asset]
        attr_accessor :prior_asset
      
        # State of prior_asset.
        # Corresponds to the JSON property `priorAssetState`
        # @return [String]
        attr_accessor :prior_asset_state
      
        # A time window specified by its `start_time` and `end_time`.
        # Corresponds to the JSON property `window`
        # @return [Google::Apis::CloudassetV1::TimeWindow]
        attr_accessor :window
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
          @deleted = args[:deleted] if args.key?(:deleted)
          @prior_asset = args[:prior_asset] if args.key?(:prior_asset)
          @prior_asset_state = args[:prior_asset_state] if args.key?(:prior_asset_state)
          @window = args[:window] if args.key?(:window)
        end
      end
      
      # A time window specified by its `start_time` and `end_time`.
      class TimeWindow
        include Google::Apis::Core::Hashable
      
        # End time of the time window (inclusive). If not specified, the current
        # timestamp is used instead.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Start time of the time window (exclusive).
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Update asset feed request.
      class UpdateFeedRequest
        include Google::Apis::Core::Hashable
      
        # An asset feed used to export asset updates to a destinations. An asset feed
        # filter controls what updates are exported. The asset feed must be created
        # within a project, organization, or folder. Supported destinations are: Pub/Sub
        # topics.
        # Corresponds to the JSON property `feed`
        # @return [Google::Apis::CloudassetV1::Feed]
        attr_accessor :feed
      
        # Required. Only updates the `feed` fields indicated by this mask. The field
        # mask must not be empty, and it must not contain fields that are immutable or
        # only set by the server.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @feed = args[:feed] if args.key?(:feed)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Information related to the a standard versioned package. This includes package
      # info for APT, Yum, Zypper, and Googet package managers.
      class VersionedPackage
        include Google::Apis::Core::Hashable
      
        # The system architecture this package is intended for.
        # Corresponds to the JSON property `architecture`
        # @return [String]
        attr_accessor :architecture
      
        # The name of the package.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # The version of the package.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @architecture = args[:architecture] if args.key?(:architecture)
          @package_name = args[:package_name] if args.key?(:package_name)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Resource representation as defined by the corresponding service providing the
      # resource for a given API version.
      class VersionedResource
        include Google::Apis::Core::Hashable
      
        # JSON representation of the resource as defined by the corresponding service
        # providing this resource. Example: If the resource is an instance provided by
        # Compute Engine, this field will contain the JSON representation of the
        # instance as defined by Compute Engine: `https://cloud.google.com/compute/docs/
        # reference/rest/v1/instances`. You can find the resource definition for each
        # supported resource type in this table: `https://cloud.google.com/asset-
        # inventory/docs/supported-asset-types`
        # Corresponds to the JSON property `resource`
        # @return [Hash<String,Object>]
        attr_accessor :resource
      
        # API version of the resource. Example: If the resource is an instance provided
        # by Compute Engine v1 API as defined in `https://cloud.google.com/compute/docs/
        # reference/rest/v1/instances`, version will be "v1".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Contains information about a Windows application that is retrieved from the
      # Windows Registry. For more information about these fields, see: https://docs.
      # microsoft.com/en-us/windows/win32/msi/uninstall-registry-key
      class WindowsApplication
        include Google::Apis::Core::Hashable
      
        # The name of the application or product.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The version of the product or application in string format.
        # Corresponds to the JSON property `displayVersion`
        # @return [String]
        attr_accessor :display_version
      
        # The internet address for technical support.
        # Corresponds to the JSON property `helpLink`
        # @return [String]
        attr_accessor :help_link
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `installDate`
        # @return [Google::Apis::CloudassetV1::Date]
        attr_accessor :install_date
      
        # The name of the manufacturer for the product or application.
        # Corresponds to the JSON property `publisher`
        # @return [String]
        attr_accessor :publisher
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @display_version = args[:display_version] if args.key?(:display_version)
          @help_link = args[:help_link] if args.key?(:help_link)
          @install_date = args[:install_date] if args.key?(:install_date)
          @publisher = args[:publisher] if args.key?(:publisher)
        end
      end
      
      # Information related to a Quick Fix Engineering package. Fields are taken from
      # Windows QuickFixEngineering Interface and match the source names: https://docs.
      # microsoft.com/en-us/windows/win32/cimwin32prov/win32-quickfixengineering
      class WindowsQuickFixEngineeringPackage
        include Google::Apis::Core::Hashable
      
        # A short textual description of the QFE update.
        # Corresponds to the JSON property `caption`
        # @return [String]
        attr_accessor :caption
      
        # A textual description of the QFE update.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Unique identifier associated with a particular QFE update.
        # Corresponds to the JSON property `hotFixId`
        # @return [String]
        attr_accessor :hot_fix_id
      
        # Date that the QFE update was installed. Mapped from installed_on field.
        # Corresponds to the JSON property `installTime`
        # @return [String]
        attr_accessor :install_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @caption = args[:caption] if args.key?(:caption)
          @description = args[:description] if args.key?(:description)
          @hot_fix_id = args[:hot_fix_id] if args.key?(:hot_fix_id)
          @install_time = args[:install_time] if args.key?(:install_time)
        end
      end
      
      # Categories specified by the Windows Update.
      class WindowsUpdateCategory
        include Google::Apis::Core::Hashable
      
        # The identifier of the windows update category.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The name of the windows update category.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Details related to a Windows Update package. Field data and names are taken
      # from Windows Update API IUpdate Interface: https://docs.microsoft.com/en-us/
      # windows/win32/api/_wua/ Descriptive fields like title, and description are
      # localized based on the locale of the VM being updated.
      class WindowsUpdatePackage
        include Google::Apis::Core::Hashable
      
        # The categories that are associated with this update package.
        # Corresponds to the JSON property `categories`
        # @return [Array<Google::Apis::CloudassetV1::WindowsUpdateCategory>]
        attr_accessor :categories
      
        # The localized description of the update package.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A collection of Microsoft Knowledge Base article IDs that are associated with
        # the update package.
        # Corresponds to the JSON property `kbArticleIds`
        # @return [Array<String>]
        attr_accessor :kb_article_ids
      
        # The last published date of the update, in (UTC) date and time.
        # Corresponds to the JSON property `lastDeploymentChangeTime`
        # @return [String]
        attr_accessor :last_deployment_change_time
      
        # A collection of URLs that provide more information about the update package.
        # Corresponds to the JSON property `moreInfoUrls`
        # @return [Array<String>]
        attr_accessor :more_info_urls
      
        # The revision number of this update package.
        # Corresponds to the JSON property `revisionNumber`
        # @return [Fixnum]
        attr_accessor :revision_number
      
        # A hyperlink to the language-specific support information for the update.
        # Corresponds to the JSON property `supportUrl`
        # @return [String]
        attr_accessor :support_url
      
        # The localized title of the update package.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Gets the identifier of an update package. Stays the same across revisions.
        # Corresponds to the JSON property `updateId`
        # @return [String]
        attr_accessor :update_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
          @description = args[:description] if args.key?(:description)
          @kb_article_ids = args[:kb_article_ids] if args.key?(:kb_article_ids)
          @last_deployment_change_time = args[:last_deployment_change_time] if args.key?(:last_deployment_change_time)
          @more_info_urls = args[:more_info_urls] if args.key?(:more_info_urls)
          @revision_number = args[:revision_number] if args.key?(:revision_number)
          @support_url = args[:support_url] if args.key?(:support_url)
          @title = args[:title] if args.key?(:title)
          @update_id = args[:update_id] if args.key?(:update_id)
        end
      end
      
      # Details related to a Zypper Patch.
      class ZypperPatch
        include Google::Apis::Core::Hashable
      
        # The category of the patch.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The name of the patch.
        # Corresponds to the JSON property `patchName`
        # @return [String]
        attr_accessor :patch_name
      
        # The severity specified for this patch
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Any summary information provided about this patch.
        # Corresponds to the JSON property `summary`
        # @return [String]
        attr_accessor :summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @patch_name = args[:patch_name] if args.key?(:patch_name)
          @severity = args[:severity] if args.key?(:severity)
          @summary = args[:summary] if args.key?(:summary)
        end
      end
    end
  end
end
