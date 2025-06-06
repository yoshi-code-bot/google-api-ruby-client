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
    module AssuredworkloadsV1
      
      # Request for acknowledging the violation
      class GoogleCloudAssuredworkloadsV1AcknowledgeViolationRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Acknowledge type of specified violation.
        # Corresponds to the JSON property `acknowledgeType`
        # @return [String]
        attr_accessor :acknowledge_type
      
        # Required. Business justification explaining the need for violation
        # acknowledgement
        # Corresponds to the JSON property `comment`
        # @return [String]
        attr_accessor :comment
      
        # Optional. This field is deprecated and will be removed in future version of
        # the API. Name of the OrgPolicy which was modified with non-compliant change
        # and resulted in this violation. Format: projects/`project_number`/policies/`
        # constraint_name` folders/`folder_id`/policies/`constraint_name` organizations/`
        # organization_id`/policies/`constraint_name`
        # Corresponds to the JSON property `nonCompliantOrgPolicy`
        # @return [String]
        attr_accessor :non_compliant_org_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acknowledge_type = args[:acknowledge_type] if args.key?(:acknowledge_type)
          @comment = args[:comment] if args.key?(:comment)
          @non_compliant_org_policy = args[:non_compliant_org_policy] if args.key?(:non_compliant_org_policy)
        end
      end
      
      # Response for violation acknowledgement
      class GoogleCloudAssuredworkloadsV1AcknowledgeViolationResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response containing the analysis results for the hypothetical resource move.
      class GoogleCloudAssuredworkloadsV1AnalyzeWorkloadMoveResponse
        include Google::Apis::Core::Hashable
      
        # List of analysis results for each asset in scope.
        # Corresponds to the JSON property `assetMoveAnalyses`
        # @return [Array<Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1AssetMoveAnalysis>]
        attr_accessor :asset_move_analyses
      
        # The next page token. Is empty if the last page is reached.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_move_analyses = args[:asset_move_analyses] if args.key?(:asset_move_analyses)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Operation metadata to give request details of ApplyWorkloadUpdate.
      class GoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The time the operation was created.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Optional. Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The resource name of the update
        # Corresponds to the JSON property `updateName`
        # @return [String]
        attr_accessor :update_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_name = args[:update_name] if args.key?(:update_name)
        end
      end
      
      # Request to apply update to a workload.
      class GoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateRequest
        include Google::Apis::Core::Hashable
      
        # The action to be performed on the update.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
        end
      end
      
      # Response for ApplyWorkloadUpdate endpoint.
      class GoogleCloudAssuredworkloadsV1ApplyWorkloadUpdateResponse
        include Google::Apis::Core::Hashable
      
        # A workload update is a change to the workload's compliance configuration.
        # Corresponds to the JSON property `appliedUpdate`
        # @return [Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadUpdate]
        attr_accessor :applied_update
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applied_update = args[:applied_update] if args.key?(:applied_update)
        end
      end
      
      # Represents move analysis results for an asset.
      class GoogleCloudAssuredworkloadsV1AssetMoveAnalysis
        include Google::Apis::Core::Hashable
      
        # List of eligible analyses performed for the asset.
        # Corresponds to the JSON property `analysisGroups`
        # @return [Array<Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1MoveAnalysisGroup>]
        attr_accessor :analysis_groups
      
        # The full resource name of the asset being analyzed. Example: //compute.
        # googleapis.com/projects/my_project_123/zones/zone1/instances/instance1
        # Corresponds to the JSON property `asset`
        # @return [String]
        attr_accessor :asset
      
        # Type of the asset being analyzed. Possible values will be among the ones
        # listed [here](https://cloud.google.com/asset-inventory/docs/supported-asset-
        # types).
        # Corresponds to the JSON property `assetType`
        # @return [String]
        attr_accessor :asset_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_groups = args[:analysis_groups] if args.key?(:analysis_groups)
          @asset = args[:asset] if args.key?(:asset)
          @asset_type = args[:asset_type] if args.key?(:asset_type)
        end
      end
      
      # Operation metadata to give request details of CreateWorkload.
      class GoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. Compliance controls that should be applied to the resources managed
        # by the workload.
        # Corresponds to the JSON property `complianceRegime`
        # @return [String]
        attr_accessor :compliance_regime
      
        # Optional. Time when the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The display name of the workload.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. The parent of the workload.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compliance_regime = args[:compliance_regime] if args.key?(:compliance_regime)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Response for EnableComplianceUpdates endpoint.
      class GoogleCloudAssuredworkloadsV1EnableComplianceUpdatesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response for EnableResourceMonitoring endpoint.
      class GoogleCloudAssuredworkloadsV1EnableResourceMonitoringResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response of ListViolations endpoint.
      class GoogleCloudAssuredworkloadsV1ListViolationsResponse
        include Google::Apis::Core::Hashable
      
        # The next page token. Returns empty if reached the last page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of Violations under a Workload.
        # Corresponds to the JSON property `violations`
        # @return [Array<Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1Violation>]
        attr_accessor :violations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @violations = args[:violations] if args.key?(:violations)
        end
      end
      
      # Response of listing the compliance updates per workload with pagination.
      class GoogleCloudAssuredworkloadsV1ListWorkloadUpdatesResponse
        include Google::Apis::Core::Hashable
      
        # The next page token. Return empty if reached the last page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of workload updates for a given workload.
        # Corresponds to the JSON property `workloadUpdates`
        # @return [Array<Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadUpdate>]
        attr_accessor :workload_updates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @workload_updates = args[:workload_updates] if args.key?(:workload_updates)
        end
      end
      
      # Response of ListWorkloads endpoint.
      class GoogleCloudAssuredworkloadsV1ListWorkloadsResponse
        include Google::Apis::Core::Hashable
      
        # The next page token. Return empty if reached the last page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of Workloads under a given parent.
        # Corresponds to the JSON property `workloads`
        # @return [Array<Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1Workload>]
        attr_accessor :workloads
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @workloads = args[:workloads] if args.key?(:workloads)
        end
      end
      
      # Represents a logical group of checks performed for an asset. If successful,
      # the group contains the analysis result, otherwise it contains an error with
      # the failure reason.
      class GoogleCloudAssuredworkloadsV1MoveAnalysisGroup
        include Google::Apis::Core::Hashable
      
        # Represents the successful move analysis results for a group.
        # Corresponds to the JSON property `analysisResult`
        # @return [Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1MoveAnalysisResult]
        attr_accessor :analysis_result
      
        # Name of the analysis group.
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
        # @return [Google::Apis::AssuredworkloadsV1::GoogleRpcStatus]
        attr_accessor :error
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_result = args[:analysis_result] if args.key?(:analysis_result)
          @display_name = args[:display_name] if args.key?(:display_name)
          @error = args[:error] if args.key?(:error)
        end
      end
      
      # Represents the successful move analysis results for a group.
      class GoogleCloudAssuredworkloadsV1MoveAnalysisResult
        include Google::Apis::Core::Hashable
      
        # List of blockers. If not resolved, these will result in compliance violations
        # in the target.
        # Corresponds to the JSON property `blockers`
        # @return [Array<Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1MoveImpact>]
        attr_accessor :blockers
      
        # List of warnings. These are risks that may or may not result in compliance
        # violations.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1MoveImpact>]
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
      
      # Represents the impact of moving the asset to the target.
      class GoogleCloudAssuredworkloadsV1MoveImpact
        include Google::Apis::Core::Hashable
      
        # Explanation of the impact.
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
      
      # Request for updating permission settings for a partner workload.
      class GoogleCloudAssuredworkloadsV1MutatePartnerPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The etag of the workload. If this is provided, it must match the
        # server's etag.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Permissions granted to the AW Partner SA account for the customer workload
        # Corresponds to the JSON property `partnerPermissions`
        # @return [Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions]
        attr_accessor :partner_permissions
      
        # Required. The list of fields to be updated. E.g. update_mask ` paths: "
        # partner_permissions.data_logs_viewer"`
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @partner_permissions = args[:partner_permissions] if args.key?(:partner_permissions)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # This assured workload service object is used to represent the org policy
      # attached to a resource. It servces the same purpose as the orgpolicy.v2.Policy
      # object but with functionality that is limited to what is supported by Assured
      # Workloads(e.g. only one rule under one OrgPolicy object, no conditions, etc).
      class GoogleCloudAssuredworkloadsV1OrgPolicy
        include Google::Apis::Core::Hashable
      
        # The constraint name of the OrgPolicy. e.g. "constraints/gcp.resourceLocations".
        # Corresponds to the JSON property `constraint`
        # @return [String]
        attr_accessor :constraint
      
        # If `inherit` is true, policy rules of the lowest ancestor in the resource
        # hierarchy chain are inherited. If it is false, policy rules are not inherited.
        # Corresponds to the JSON property `inherit`
        # @return [Boolean]
        attr_accessor :inherit
        alias_method :inherit?, :inherit
      
        # Ignores policies set above this resource and restores to the `
        # constraint_default` value. `reset` can only be true when `rules` is empty and `
        # inherit` is false.
        # Corresponds to the JSON property `reset`
        # @return [Boolean]
        attr_accessor :reset
        alias_method :reset?, :reset
      
        # Resource that the OrgPolicy attaches to. Format: folders/123" projects/123".
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # A rule used to express this policy.
        # Corresponds to the JSON property `rule`
        # @return [Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1OrgPolicyPolicyRule]
        attr_accessor :rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @constraint = args[:constraint] if args.key?(:constraint)
          @inherit = args[:inherit] if args.key?(:inherit)
          @reset = args[:reset] if args.key?(:reset)
          @resource = args[:resource] if args.key?(:resource)
          @rule = args[:rule] if args.key?(:rule)
        end
      end
      
      # A rule used to express this policy.
      class GoogleCloudAssuredworkloadsV1OrgPolicyPolicyRule
        include Google::Apis::Core::Hashable
      
        # ListPolicy only when all values are allowed.
        # Corresponds to the JSON property `allowAll`
        # @return [Boolean]
        attr_accessor :allow_all
        alias_method :allow_all?, :allow_all
      
        # ListPolicy only when all values are denied.
        # Corresponds to the JSON property `denyAll`
        # @return [Boolean]
        attr_accessor :deny_all
        alias_method :deny_all?, :deny_all
      
        # BooleanPolicy only.
        # Corresponds to the JSON property `enforce`
        # @return [Boolean]
        attr_accessor :enforce
        alias_method :enforce?, :enforce
      
        # The values allowed for a ListPolicy.
        # Corresponds to the JSON property `values`
        # @return [Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1OrgPolicyPolicyRuleStringValues]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_all = args[:allow_all] if args.key?(:allow_all)
          @deny_all = args[:deny_all] if args.key?(:deny_all)
          @enforce = args[:enforce] if args.key?(:enforce)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # The values allowed for a ListPolicy.
      class GoogleCloudAssuredworkloadsV1OrgPolicyPolicyRuleStringValues
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
      
      # Represents an update for an org policy control applied on an Assured Workload
      # resource. The inherited org policy is not considered.
      class GoogleCloudAssuredworkloadsV1OrgPolicyUpdate
        include Google::Apis::Core::Hashable
      
        # This assured workload service object is used to represent the org policy
        # attached to a resource. It servces the same purpose as the orgpolicy.v2.Policy
        # object but with functionality that is limited to what is supported by Assured
        # Workloads(e.g. only one rule under one OrgPolicy object, no conditions, etc).
        # Corresponds to the JSON property `appliedPolicy`
        # @return [Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1OrgPolicy]
        attr_accessor :applied_policy
      
        # This assured workload service object is used to represent the org policy
        # attached to a resource. It servces the same purpose as the orgpolicy.v2.Policy
        # object but with functionality that is limited to what is supported by Assured
        # Workloads(e.g. only one rule under one OrgPolicy object, no conditions, etc).
        # Corresponds to the JSON property `suggestedPolicy`
        # @return [Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1OrgPolicy]
        attr_accessor :suggested_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applied_policy = args[:applied_policy] if args.key?(:applied_policy)
          @suggested_policy = args[:suggested_policy] if args.key?(:suggested_policy)
        end
      end
      
      # Request for restricting list of available resources in Workload environment.
      class GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The type of restriction for using gcp products in the Workload
        # environment.
        # Corresponds to the JSON property `restrictionType`
        # @return [String]
        attr_accessor :restriction_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @restriction_type = args[:restriction_type] if args.key?(:restriction_type)
        end
      end
      
      # Response for restricting the list of allowed resources.
      class GoogleCloudAssuredworkloadsV1RestrictAllowedResourcesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The details of the update.
      class GoogleCloudAssuredworkloadsV1UpdateDetails
        include Google::Apis::Core::Hashable
      
        # Represents an update for an org policy control applied on an Assured Workload
        # resource. The inherited org policy is not considered.
        # Corresponds to the JSON property `orgPolicyUpdate`
        # @return [Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1OrgPolicyUpdate]
        attr_accessor :org_policy_update
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @org_policy_update = args[:org_policy_update] if args.key?(:org_policy_update)
        end
      end
      
      # Workload monitoring Violation.
      class GoogleCloudAssuredworkloadsV1Violation
        include Google::Apis::Core::Hashable
      
        # A boolean that indicates if the violation is acknowledged
        # Corresponds to the JSON property `acknowledged`
        # @return [Boolean]
        attr_accessor :acknowledged
        alias_method :acknowledged?, :acknowledged
      
        # Optional. Timestamp when this violation was acknowledged first. Check
        # exception_contexts to find the last time the violation was acknowledged when
        # there are more than one violations. This field will be absent when
        # acknowledged field is marked as false.
        # Corresponds to the JSON property `acknowledgementTime`
        # @return [String]
        attr_accessor :acknowledgement_time
      
        # Optional. Output only. Violation Id of the org-policy violation due to which
        # the resource violation is caused. Empty for org-policy violations.
        # Corresponds to the JSON property `associatedOrgPolicyViolationId`
        # @return [String]
        attr_accessor :associated_org_policy_violation_id
      
        # Output only. Immutable. Audit Log Link for violated resource Format: https://
        # console.cloud.google.com/logs/query;query=`logName``protoPayload.resourceName``
        # timeRange``folder`
        # Corresponds to the JSON property `auditLogLink`
        # @return [String]
        attr_accessor :audit_log_link
      
        # Output only. Time of the event which triggered the Violation.
        # Corresponds to the JSON property `beginTime`
        # @return [String]
        attr_accessor :begin_time
      
        # Output only. Category under which this violation is mapped. e.g. Location,
        # Service Usage, Access, Encryption, etc.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Output only. Description for the Violation. e.g. OrgPolicy gcp.
        # resourceLocations has non compliant value.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Immutable. Audit Log link to find business justification provided
        # for violation exception. Format: https://console.cloud.google.com/logs/query;
        # query=`logName``protoPayload.resourceName``protoPayload.methodName``timeRange``
        # organization`
        # Corresponds to the JSON property `exceptionAuditLogLink`
        # @return [String]
        attr_accessor :exception_audit_log_link
      
        # Output only. List of all the exception detail added for the violation.
        # Corresponds to the JSON property `exceptionContexts`
        # @return [Array<Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1ViolationExceptionContext>]
        attr_accessor :exception_contexts
      
        # Output only. Immutable. Name of the Violation. Format: organizations/`
        # organization`/locations/`location`/workloads/`workload_id`/violations/`
        # violations_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Immutable. Name of the OrgPolicy which was modified with non-
        # compliant change and resulted this violation. Format: projects/`project_number`
        # /policies/`constraint_name` folders/`folder_id`/policies/`constraint_name`
        # organizations/`organization_id`/policies/`constraint_name`
        # Corresponds to the JSON property `nonCompliantOrgPolicy`
        # @return [String]
        attr_accessor :non_compliant_org_policy
      
        # Output only. Immutable. The org-policy-constraint that was incorrectly changed,
        # which resulted in this violation.
        # Corresponds to the JSON property `orgPolicyConstraint`
        # @return [String]
        attr_accessor :org_policy_constraint
      
        # Optional. Output only. Parent project number where resource is present. Empty
        # for org-policy violations.
        # Corresponds to the JSON property `parentProjectNumber`
        # @return [String]
        attr_accessor :parent_project_number
      
        # Represents remediation guidance to resolve compliance violation for
        # AssuredWorkload
        # Corresponds to the JSON property `remediation`
        # @return [Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1ViolationRemediation]
        attr_accessor :remediation
      
        # Output only. Time of the event which fixed the Violation. If the violation is
        # ACTIVE this will be empty.
        # Corresponds to the JSON property `resolveTime`
        # @return [String]
        attr_accessor :resolve_time
      
        # Optional. Output only. Name of the resource like //storage.googleapis.com/
        # myprojectxyz-testbucket. Empty for org-policy violations.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Optional. Output only. Type of the resource like compute.googleapis.com/Disk,
        # etc. Empty for org-policy violations.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # Output only. State of the violation
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The last time when the Violation record was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. Type of the violation
        # Corresponds to the JSON property `violationType`
        # @return [String]
        attr_accessor :violation_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acknowledged = args[:acknowledged] if args.key?(:acknowledged)
          @acknowledgement_time = args[:acknowledgement_time] if args.key?(:acknowledgement_time)
          @associated_org_policy_violation_id = args[:associated_org_policy_violation_id] if args.key?(:associated_org_policy_violation_id)
          @audit_log_link = args[:audit_log_link] if args.key?(:audit_log_link)
          @begin_time = args[:begin_time] if args.key?(:begin_time)
          @category = args[:category] if args.key?(:category)
          @description = args[:description] if args.key?(:description)
          @exception_audit_log_link = args[:exception_audit_log_link] if args.key?(:exception_audit_log_link)
          @exception_contexts = args[:exception_contexts] if args.key?(:exception_contexts)
          @name = args[:name] if args.key?(:name)
          @non_compliant_org_policy = args[:non_compliant_org_policy] if args.key?(:non_compliant_org_policy)
          @org_policy_constraint = args[:org_policy_constraint] if args.key?(:org_policy_constraint)
          @parent_project_number = args[:parent_project_number] if args.key?(:parent_project_number)
          @remediation = args[:remediation] if args.key?(:remediation)
          @resolve_time = args[:resolve_time] if args.key?(:resolve_time)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
          @violation_type = args[:violation_type] if args.key?(:violation_type)
        end
      end
      
      # Violation exception detail.
      class GoogleCloudAssuredworkloadsV1ViolationExceptionContext
        include Google::Apis::Core::Hashable
      
        # Timestamp when the violation was acknowledged.
        # Corresponds to the JSON property `acknowledgementTime`
        # @return [String]
        attr_accessor :acknowledgement_time
      
        # Business justification provided towards the acknowledgement of the violation.
        # Corresponds to the JSON property `comment`
        # @return [String]
        attr_accessor :comment
      
        # Name of the user (or service account) who acknowledged the violation.
        # Corresponds to the JSON property `userName`
        # @return [String]
        attr_accessor :user_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acknowledgement_time = args[:acknowledgement_time] if args.key?(:acknowledgement_time)
          @comment = args[:comment] if args.key?(:comment)
          @user_name = args[:user_name] if args.key?(:user_name)
        end
      end
      
      # Represents remediation guidance to resolve compliance violation for
      # AssuredWorkload
      class GoogleCloudAssuredworkloadsV1ViolationRemediation
        include Google::Apis::Core::Hashable
      
        # Values that can resolve the violation For example: for list org policy
        # violations, this will either be the list of allowed or denied values
        # Corresponds to the JSON property `compliantValues`
        # @return [Array<String>]
        attr_accessor :compliant_values
      
        # Instructions to remediate violation
        # Corresponds to the JSON property `instructions`
        # @return [Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions]
        attr_accessor :instructions
      
        # Output only. Reemediation type based on the type of org policy values violated
        # Corresponds to the JSON property `remediationType`
        # @return [String]
        attr_accessor :remediation_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compliant_values = args[:compliant_values] if args.key?(:compliant_values)
          @instructions = args[:instructions] if args.key?(:instructions)
          @remediation_type = args[:remediation_type] if args.key?(:remediation_type)
        end
      end
      
      # Instructions to remediate violation
      class GoogleCloudAssuredworkloadsV1ViolationRemediationInstructions
        include Google::Apis::Core::Hashable
      
        # Remediation instructions to resolve violation via cloud console
        # Corresponds to the JSON property `consoleInstructions`
        # @return [Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole]
        attr_accessor :console_instructions
      
        # Remediation instructions to resolve violation via gcloud cli
        # Corresponds to the JSON property `gcloudInstructions`
        # @return [Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud]
        attr_accessor :gcloud_instructions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @console_instructions = args[:console_instructions] if args.key?(:console_instructions)
          @gcloud_instructions = args[:gcloud_instructions] if args.key?(:gcloud_instructions)
        end
      end
      
      # Remediation instructions to resolve violation via cloud console
      class GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsConsole
        include Google::Apis::Core::Hashable
      
        # Additional urls for more information about steps
        # Corresponds to the JSON property `additionalLinks`
        # @return [Array<String>]
        attr_accessor :additional_links
      
        # Link to console page where violations can be resolved
        # Corresponds to the JSON property `consoleUris`
        # @return [Array<String>]
        attr_accessor :console_uris
      
        # Steps to resolve violation via cloud console
        # Corresponds to the JSON property `steps`
        # @return [Array<String>]
        attr_accessor :steps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_links = args[:additional_links] if args.key?(:additional_links)
          @console_uris = args[:console_uris] if args.key?(:console_uris)
          @steps = args[:steps] if args.key?(:steps)
        end
      end
      
      # Remediation instructions to resolve violation via gcloud cli
      class GoogleCloudAssuredworkloadsV1ViolationRemediationInstructionsGcloud
        include Google::Apis::Core::Hashable
      
        # Additional urls for more information about steps
        # Corresponds to the JSON property `additionalLinks`
        # @return [Array<String>]
        attr_accessor :additional_links
      
        # Gcloud command to resolve violation
        # Corresponds to the JSON property `gcloudCommands`
        # @return [Array<String>]
        attr_accessor :gcloud_commands
      
        # Steps to resolve violation via gcloud cli
        # Corresponds to the JSON property `steps`
        # @return [Array<String>]
        attr_accessor :steps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_links = args[:additional_links] if args.key?(:additional_links)
          @gcloud_commands = args[:gcloud_commands] if args.key?(:gcloud_commands)
          @steps = args[:steps] if args.key?(:steps)
        end
      end
      
      # A Workload object for managing highly regulated workloads of cloud customers.
      class GoogleCloudAssuredworkloadsV1Workload
        include Google::Apis::Core::Hashable
      
        # Optional. The billing account used for the resources which are direct children
        # of workload. This billing account is initially associated with the resources
        # created as part of Workload creation. After the initial creation of these
        # resources, the customer can change the assigned billing account. The resource
        # name has the form `billingAccounts/`billing_account_id``. For example, `
        # billingAccounts/012345-567890-ABCDEF`.
        # Corresponds to the JSON property `billingAccount`
        # @return [String]
        attr_accessor :billing_account
      
        # Required. Immutable. Compliance Regime associated with this workload.
        # Corresponds to the JSON property `complianceRegime`
        # @return [String]
        attr_accessor :compliance_regime
      
        # Represents the Compliance Status of this workload
        # Corresponds to the JSON property `complianceStatus`
        # @return [Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus]
        attr_accessor :compliance_status
      
        # Output only. Urls for services which are compliant for this Assured Workload,
        # but which are currently disallowed by the ResourceUsageRestriction org policy.
        # Invoke RestrictAllowedResources endpoint to allow your project developers to
        # use these services in their environment.
        # Corresponds to the JSON property `compliantButDisallowedServices`
        # @return [Array<String>]
        attr_accessor :compliant_but_disallowed_services
      
        # Output only. Immutable. The Workload creation timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The user-assigned display name of the Workload. When present it must
        # be between 4 to 30 characters. Allowed characters are: lowercase and uppercase
        # letters, numbers, hyphen, and spaces. Example: My Workload
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # External key management systems(EKM) Provisioning response
        # Corresponds to the JSON property `ekmProvisioningResponse`
        # @return [Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse]
        attr_accessor :ekm_provisioning_response
      
        # Optional. Indicates the sovereignty status of the given workload. Currently
        # meant to be used by Europe/Canada customers.
        # Corresponds to the JSON property `enableSovereignControls`
        # @return [Boolean]
        attr_accessor :enable_sovereign_controls
        alias_method :enable_sovereign_controls?, :enable_sovereign_controls
      
        # Optional. ETag of the workload, it is calculated on the basis of the Workload
        # contents. It will be used in Update & Delete operations.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. Represents the KAJ enrollment state of the given workload.
        # Corresponds to the JSON property `kajEnrollmentState`
        # @return [String]
        attr_accessor :kaj_enrollment_state
      
        # Settings specific to the Key Management Service.
        # Corresponds to the JSON property `kmsSettings`
        # @return [Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadKmsSettings]
        attr_accessor :kms_settings
      
        # Optional. Labels applied to the workload.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. The resource name of the workload. Format: organizations/`
        # organization`/locations/`location`/workloads/`workload` Read-only.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Partner regime associated with this workload.
        # Corresponds to the JSON property `partner`
        # @return [String]
        attr_accessor :partner
      
        # Permissions granted to the AW Partner SA account for the customer workload
        # Corresponds to the JSON property `partnerPermissions`
        # @return [Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions]
        attr_accessor :partner_permissions
      
        # Optional. Billing account necessary for purchasing services from Sovereign
        # Partners. This field is required for creating SIA/PSN/CNTXT partner workloads.
        # The caller should have 'billing.resourceAssociations.create' IAM permission on
        # this billing-account. The format of this string is billingAccounts/AAAAAA-
        # BBBBBB-CCCCCC
        # Corresponds to the JSON property `partnerServicesBillingAccount`
        # @return [String]
        attr_accessor :partner_services_billing_account
      
        # Input only. The parent resource for the resources managed by this Assured
        # Workload. May be either empty or a folder resource which is a child of the
        # Workload parent. If not specified all resources are created under the parent
        # organization. Format: folders/`folder_id`
        # Corresponds to the JSON property `provisionedResourcesParent`
        # @return [String]
        attr_accessor :provisioned_resources_parent
      
        # Output only. Indicates whether resource monitoring is enabled for workload or
        # not. It is true when Resource feed is subscribed to AWM topic and AWM Service
        # Agent Role is binded to AW Service Account for resource Assured workload.
        # Corresponds to the JSON property `resourceMonitoringEnabled`
        # @return [Boolean]
        attr_accessor :resource_monitoring_enabled
        alias_method :resource_monitoring_enabled?, :resource_monitoring_enabled
      
        # Input only. Resource properties that are used to customize workload resources.
        # These properties (such as custom project id) will be used to create workload
        # resources if possible. This field is optional.
        # Corresponds to the JSON property `resourceSettings`
        # @return [Array<Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadResourceSettings>]
        attr_accessor :resource_settings
      
        # Output only. The resources associated with this workload. These resources will
        # be created when creating the workload. If any of the projects already exist,
        # the workload creation will fail. Always read only.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadResourceInfo>]
        attr_accessor :resources
      
        # Signed Access Approvals (SAA) enrollment response.
        # Corresponds to the JSON property `saaEnrollmentResponse`
        # @return [Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse]
        attr_accessor :saa_enrollment_response
      
        # Optional. Indicates whether the e-mail notification for a violation is enabled
        # for a workload. This value will be by default True, and if not present will be
        # considered as true. This should only be updated via updateWorkload call. Any
        # Changes to this field during the createWorkload call will not be honored. This
        # will always be true while creating the workload.
        # Corresponds to the JSON property `violationNotificationsEnabled`
        # @return [Boolean]
        attr_accessor :violation_notifications_enabled
        alias_method :violation_notifications_enabled?, :violation_notifications_enabled
      
        # Options to be set for the given created workload.
        # Corresponds to the JSON property `workloadOptions`
        # @return [Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1WorkloadWorkloadOptions]
        attr_accessor :workload_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account = args[:billing_account] if args.key?(:billing_account)
          @compliance_regime = args[:compliance_regime] if args.key?(:compliance_regime)
          @compliance_status = args[:compliance_status] if args.key?(:compliance_status)
          @compliant_but_disallowed_services = args[:compliant_but_disallowed_services] if args.key?(:compliant_but_disallowed_services)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @ekm_provisioning_response = args[:ekm_provisioning_response] if args.key?(:ekm_provisioning_response)
          @enable_sovereign_controls = args[:enable_sovereign_controls] if args.key?(:enable_sovereign_controls)
          @etag = args[:etag] if args.key?(:etag)
          @kaj_enrollment_state = args[:kaj_enrollment_state] if args.key?(:kaj_enrollment_state)
          @kms_settings = args[:kms_settings] if args.key?(:kms_settings)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @partner = args[:partner] if args.key?(:partner)
          @partner_permissions = args[:partner_permissions] if args.key?(:partner_permissions)
          @partner_services_billing_account = args[:partner_services_billing_account] if args.key?(:partner_services_billing_account)
          @provisioned_resources_parent = args[:provisioned_resources_parent] if args.key?(:provisioned_resources_parent)
          @resource_monitoring_enabled = args[:resource_monitoring_enabled] if args.key?(:resource_monitoring_enabled)
          @resource_settings = args[:resource_settings] if args.key?(:resource_settings)
          @resources = args[:resources] if args.key?(:resources)
          @saa_enrollment_response = args[:saa_enrollment_response] if args.key?(:saa_enrollment_response)
          @violation_notifications_enabled = args[:violation_notifications_enabled] if args.key?(:violation_notifications_enabled)
          @workload_options = args[:workload_options] if args.key?(:workload_options)
        end
      end
      
      # Represents the Compliance Status of this workload
      class GoogleCloudAssuredworkloadsV1WorkloadComplianceStatus
        include Google::Apis::Core::Hashable
      
        # Number of current resource violations which are not acknowledged.
        # Corresponds to the JSON property `acknowledgedResourceViolationCount`
        # @return [Fixnum]
        attr_accessor :acknowledged_resource_violation_count
      
        # Number of current orgPolicy violations which are acknowledged.
        # Corresponds to the JSON property `acknowledgedViolationCount`
        # @return [Fixnum]
        attr_accessor :acknowledged_violation_count
      
        # Number of current resource violations which are acknowledged.
        # Corresponds to the JSON property `activeResourceViolationCount`
        # @return [Fixnum]
        attr_accessor :active_resource_violation_count
      
        # Number of current orgPolicy violations which are not acknowledged.
        # Corresponds to the JSON property `activeViolationCount`
        # @return [Fixnum]
        attr_accessor :active_violation_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acknowledged_resource_violation_count = args[:acknowledged_resource_violation_count] if args.key?(:acknowledged_resource_violation_count)
          @acknowledged_violation_count = args[:acknowledged_violation_count] if args.key?(:acknowledged_violation_count)
          @active_resource_violation_count = args[:active_resource_violation_count] if args.key?(:active_resource_violation_count)
          @active_violation_count = args[:active_violation_count] if args.key?(:active_violation_count)
        end
      end
      
      # External key management systems(EKM) Provisioning response
      class GoogleCloudAssuredworkloadsV1WorkloadEkmProvisioningResponse
        include Google::Apis::Core::Hashable
      
        # Indicates Ekm provisioning error if any.
        # Corresponds to the JSON property `ekmProvisioningErrorDomain`
        # @return [String]
        attr_accessor :ekm_provisioning_error_domain
      
        # Detailed error message if Ekm provisioning fails
        # Corresponds to the JSON property `ekmProvisioningErrorMapping`
        # @return [String]
        attr_accessor :ekm_provisioning_error_mapping
      
        # Output only. Indicates Ekm enrollment Provisioning of a given workload.
        # Corresponds to the JSON property `ekmProvisioningState`
        # @return [String]
        attr_accessor :ekm_provisioning_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ekm_provisioning_error_domain = args[:ekm_provisioning_error_domain] if args.key?(:ekm_provisioning_error_domain)
          @ekm_provisioning_error_mapping = args[:ekm_provisioning_error_mapping] if args.key?(:ekm_provisioning_error_mapping)
          @ekm_provisioning_state = args[:ekm_provisioning_state] if args.key?(:ekm_provisioning_state)
        end
      end
      
      # Settings specific to the Key Management Service.
      class GoogleCloudAssuredworkloadsV1WorkloadKmsSettings
        include Google::Apis::Core::Hashable
      
        # Required. Input only. Immutable. The time at which the Key Management Service
        # will automatically create a new version of the crypto key and mark it as the
        # primary.
        # Corresponds to the JSON property `nextRotationTime`
        # @return [String]
        attr_accessor :next_rotation_time
      
        # Required. Input only. Immutable. [next_rotation_time] will be advanced by this
        # period when the Key Management Service automatically rotates a key. Must be at
        # least 24 hours and at most 876,000 hours.
        # Corresponds to the JSON property `rotationPeriod`
        # @return [String]
        attr_accessor :rotation_period
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_rotation_time = args[:next_rotation_time] if args.key?(:next_rotation_time)
          @rotation_period = args[:rotation_period] if args.key?(:rotation_period)
        end
      end
      
      # Permissions granted to the AW Partner SA account for the customer workload
      class GoogleCloudAssuredworkloadsV1WorkloadPartnerPermissions
        include Google::Apis::Core::Hashable
      
        # Optional. Allow partner to view support case details for an AXT log
        # Corresponds to the JSON property `accessTransparencyLogsSupportCaseViewer`
        # @return [Boolean]
        attr_accessor :access_transparency_logs_support_case_viewer
        alias_method :access_transparency_logs_support_case_viewer?, :access_transparency_logs_support_case_viewer
      
        # Optional. Allow partner to view violation alerts.
        # Corresponds to the JSON property `assuredWorkloadsMonitoring`
        # @return [Boolean]
        attr_accessor :assured_workloads_monitoring
        alias_method :assured_workloads_monitoring?, :assured_workloads_monitoring
      
        # Optional. Allow the partner to view inspectability logs and monitoring
        # violations.
        # Corresponds to the JSON property `dataLogsViewer`
        # @return [Boolean]
        attr_accessor :data_logs_viewer
        alias_method :data_logs_viewer?, :data_logs_viewer
      
        # Optional. Allow partner to view access approval logs.
        # Corresponds to the JSON property `serviceAccessApprover`
        # @return [Boolean]
        attr_accessor :service_access_approver
        alias_method :service_access_approver?, :service_access_approver
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_transparency_logs_support_case_viewer = args[:access_transparency_logs_support_case_viewer] if args.key?(:access_transparency_logs_support_case_viewer)
          @assured_workloads_monitoring = args[:assured_workloads_monitoring] if args.key?(:assured_workloads_monitoring)
          @data_logs_viewer = args[:data_logs_viewer] if args.key?(:data_logs_viewer)
          @service_access_approver = args[:service_access_approver] if args.key?(:service_access_approver)
        end
      end
      
      # Represent the resources that are children of this Workload.
      class GoogleCloudAssuredworkloadsV1WorkloadResourceInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Resource identifier. For a project this represents project_number.
        # Corresponds to the JSON property `resourceId`
        # @return [Fixnum]
        attr_accessor :resource_id
      
        # Indicates the type of resource.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # Represent the custom settings for the resources to be created.
      class GoogleCloudAssuredworkloadsV1WorkloadResourceSettings
        include Google::Apis::Core::Hashable
      
        # User-assigned resource display name. If not empty it will be used to create a
        # resource with the specified name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource identifier. For a project this represents project_id. If the project
        # is already taken, the workload creation will fail. For KeyRing, this
        # represents the keyring_id. For a folder, don't set this value as folder_id is
        # assigned by Google.
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # Indicates the type of resource. This field should be specified to correspond
        # the id to the right project type (CONSUMER_PROJECT or ENCRYPTION_KEYS_PROJECT)
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # Signed Access Approvals (SAA) enrollment response.
      class GoogleCloudAssuredworkloadsV1WorkloadSaaEnrollmentResponse
        include Google::Apis::Core::Hashable
      
        # Indicates SAA enrollment setup error if any.
        # Corresponds to the JSON property `setupErrors`
        # @return [Array<String>]
        attr_accessor :setup_errors
      
        # Output only. Indicates SAA enrollment status of a given workload.
        # Corresponds to the JSON property `setupStatus`
        # @return [String]
        attr_accessor :setup_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @setup_errors = args[:setup_errors] if args.key?(:setup_errors)
          @setup_status = args[:setup_status] if args.key?(:setup_status)
        end
      end
      
      # A workload update is a change to the workload's compliance configuration.
      class GoogleCloudAssuredworkloadsV1WorkloadUpdate
        include Google::Apis::Core::Hashable
      
        # The time the update was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The details of the update.
        # Corresponds to the JSON property `details`
        # @return [Google::Apis::AssuredworkloadsV1::GoogleCloudAssuredworkloadsV1UpdateDetails]
        attr_accessor :details
      
        # Output only. Immutable. Identifier. Resource name of the WorkloadUpdate.
        # Format: organizations/`organization`/locations/`location`/workloads/`workload`/
        # updates/`update`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the update.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The time the update was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @details = args[:details] if args.key?(:details)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Options to be set for the given created workload.
      class GoogleCloudAssuredworkloadsV1WorkloadWorkloadOptions
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies type of KAJ Enrollment if provided.
        # Corresponds to the JSON property `kajEnrollmentType`
        # @return [String]
        attr_accessor :kaj_enrollment_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kaj_enrollment_type = args[:kaj_enrollment_type] if args.key?(:kaj_enrollment_type)
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
        # @return [Array<Google::Apis::AssuredworkloadsV1::GoogleLongrunningOperation>]
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
        # @return [Google::Apis::AssuredworkloadsV1::GoogleRpcStatus]
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
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
    end
  end
end
