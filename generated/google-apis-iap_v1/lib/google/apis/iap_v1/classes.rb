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
    module IapV1
      
      # Custom content configuration for access denied page. IAP allows customers to
      # define a custom URI to use as the error page when access is denied to users.
      # If IAP prevents access to this page, the default IAP error page will be
      # displayed instead.
      class AccessDeniedPageSettings
        include Google::Apis::Core::Hashable
      
        # The URI to be redirected to when access is denied.
        # Corresponds to the JSON property `accessDeniedPageUri`
        # @return [String]
        attr_accessor :access_denied_page_uri
      
        # Whether to generate a troubleshooting URL on access denied events to this
        # application.
        # Corresponds to the JSON property `generateTroubleshootingUri`
        # @return [Boolean]
        attr_accessor :generate_troubleshooting_uri
        alias_method :generate_troubleshooting_uri?, :generate_troubleshooting_uri
      
        # Whether to generate remediation token on access denied events to this
        # application.
        # Corresponds to the JSON property `remediationTokenGenerationEnabled`
        # @return [Boolean]
        attr_accessor :remediation_token_generation_enabled
        alias_method :remediation_token_generation_enabled?, :remediation_token_generation_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_denied_page_uri = args[:access_denied_page_uri] if args.key?(:access_denied_page_uri)
          @generate_troubleshooting_uri = args[:generate_troubleshooting_uri] if args.key?(:generate_troubleshooting_uri)
          @remediation_token_generation_enabled = args[:remediation_token_generation_enabled] if args.key?(:remediation_token_generation_enabled)
        end
      end
      
      # Access related settings for IAP protected apps.
      class AccessSettings
        include Google::Apis::Core::Hashable
      
        # Configuration for IAP allowed domains. Lets you to restrict access to an app
        # and allow access to only the domains that you list.
        # Corresponds to the JSON property `allowedDomainsSettings`
        # @return [Google::Apis::IapV1::AllowedDomainsSettings]
        attr_accessor :allowed_domains_settings
      
        # Allows customers to configure HTTP request paths that'll allow HTTP `OPTIONS`
        # call to bypass authentication and authorization.
        # Corresponds to the JSON property `corsSettings`
        # @return [Google::Apis::IapV1::CorsSettings]
        attr_accessor :cors_settings
      
        # Allows customers to configure tenant IDs for a Cloud Identity Platform (GCIP)
        # instance for each application.
        # Corresponds to the JSON property `gcipSettings`
        # @return [Google::Apis::IapV1::GcipSettings]
        attr_accessor :gcip_settings
      
        # Optional. Identity sources that IAP can use to authenticate the end user. Only
        # one identity source can be configured.
        # Corresponds to the JSON property `identitySources`
        # @return [Array<String>]
        attr_accessor :identity_sources
      
        # Configuration for OAuth login&consent flow behavior as well as for OAuth
        # Credentials.
        # Corresponds to the JSON property `oauthSettings`
        # @return [Google::Apis::IapV1::OAuthSettings]
        attr_accessor :oauth_settings
      
        # PolicyDelegationConfig allows google-internal teams to use IAP for apps hosted
        # in a tenant project. Using these settings, the app can delegate permission
        # check to happen against the linked customer project. This is only ever
        # supposed to be used by google internal teams, hence the restriction on the
        # proto.
        # Corresponds to the JSON property `policyDelegationSettings`
        # @return [Google::Apis::IapV1::PolicyDelegationSettings]
        attr_accessor :policy_delegation_settings
      
        # Configuration for IAP reauthentication policies.
        # Corresponds to the JSON property `reauthSettings`
        # @return [Google::Apis::IapV1::ReauthSettings]
        attr_accessor :reauth_settings
      
        # WorkforceIdentitySettings allows customers to configure workforce pools and
        # OAuth 2.0 settings to gate their applications using a third-party IdP with
        # access control.
        # Corresponds to the JSON property `workforceIdentitySettings`
        # @return [Google::Apis::IapV1::WorkforceIdentitySettings]
        attr_accessor :workforce_identity_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_domains_settings = args[:allowed_domains_settings] if args.key?(:allowed_domains_settings)
          @cors_settings = args[:cors_settings] if args.key?(:cors_settings)
          @gcip_settings = args[:gcip_settings] if args.key?(:gcip_settings)
          @identity_sources = args[:identity_sources] if args.key?(:identity_sources)
          @oauth_settings = args[:oauth_settings] if args.key?(:oauth_settings)
          @policy_delegation_settings = args[:policy_delegation_settings] if args.key?(:policy_delegation_settings)
          @reauth_settings = args[:reauth_settings] if args.key?(:reauth_settings)
          @workforce_identity_settings = args[:workforce_identity_settings] if args.key?(:workforce_identity_settings)
        end
      end
      
      # Configuration for IAP allowed domains. Lets you to restrict access to an app
      # and allow access to only the domains that you list.
      class AllowedDomainsSettings
        include Google::Apis::Core::Hashable
      
        # Optional. List of trusted domains.
        # Corresponds to the JSON property `domains`
        # @return [Array<String>]
        attr_accessor :domains
      
        # Optional. Configuration for customers to opt in for the feature.
        # Corresponds to the JSON property `enable`
        # @return [Boolean]
        attr_accessor :enable
        alias_method :enable?, :enable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domains = args[:domains] if args.key?(:domains)
          @enable = args[:enable] if args.key?(:enable)
        end
      end
      
      # Wrapper over application specific settings for IAP.
      class ApplicationSettings
        include Google::Apis::Core::Hashable
      
        # Custom content configuration for access denied page. IAP allows customers to
        # define a custom URI to use as the error page when access is denied to users.
        # If IAP prevents access to this page, the default IAP error page will be
        # displayed instead.
        # Corresponds to the JSON property `accessDeniedPageSettings`
        # @return [Google::Apis::IapV1::AccessDeniedPageSettings]
        attr_accessor :access_denied_page_settings
      
        # Configuration for propagating attributes to applications protected by IAP.
        # Corresponds to the JSON property `attributePropagationSettings`
        # @return [Google::Apis::IapV1::AttributePropagationSettings]
        attr_accessor :attribute_propagation_settings
      
        # The Domain value to set for cookies generated by IAP. This value is not
        # validated by the API, but will be ignored at runtime if invalid.
        # Corresponds to the JSON property `cookieDomain`
        # @return [String]
        attr_accessor :cookie_domain
      
        # Configuration for RCToken generated for service mesh workloads protected by
        # IAP. RCToken are IAP generated JWTs that can be verified at the application.
        # The RCToken is primarily used for service mesh deployments, and can be scoped
        # to a single mesh by configuring the audience field accordingly.
        # Corresponds to the JSON property `csmSettings`
        # @return [Google::Apis::IapV1::CsmSettings]
        attr_accessor :csm_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_denied_page_settings = args[:access_denied_page_settings] if args.key?(:access_denied_page_settings)
          @attribute_propagation_settings = args[:attribute_propagation_settings] if args.key?(:attribute_propagation_settings)
          @cookie_domain = args[:cookie_domain] if args.key?(:cookie_domain)
          @csm_settings = args[:csm_settings] if args.key?(:csm_settings)
        end
      end
      
      # Configuration for propagating attributes to applications protected by IAP.
      class AttributePropagationSettings
        include Google::Apis::Core::Hashable
      
        # Optional. Whether the provided attribute propagation settings should be
        # evaluated on user requests. If set to true, attributes returned from the
        # expression will be propagated in the set output credentials.
        # Corresponds to the JSON property `enable`
        # @return [Boolean]
        attr_accessor :enable
        alias_method :enable?, :enable
      
        # Optional. Raw string CEL expression. Must return a list of attributes. A
        # maximum of 45 attributes can be selected. Expressions can select different
        # attribute types from `attributes`: `attributes.saml_attributes`, `attributes.
        # iap_attributes`. The following functions are supported: - filter `.filter(, )`:
        # Returns a subset of `` where `` is true for every item. - in ` in `: Returns
        # true if `` contains ``. - selectByName `.selectByName()`: Returns the
        # attribute in `` with the given `` name, otherwise returns empty. - emitAs `.
        # emitAs()`: Sets the `` name field to the given `` for propagation in selected
        # output credentials. - strict `.strict()`: Ignores the `x-goog-iap-attr-`
        # prefix for the provided `` when propagating with the `HEADER` output
        # credential, such as request headers. - append `.append()` OR `.append()`:
        # Appends the provided `` or `` to the end of ``. Example expression: `
        # attributes.saml_attributes.filter(x, x.name in ['test']).append(attributes.
        # iap_attributes.selectByName('exact').emitAs('custom').strict())`
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Optional. Which output credentials attributes selected by the CEL expression
        # should be propagated in. All attributes will be fully duplicated in each
        # selected output credential.
        # Corresponds to the JSON property `outputCredentials`
        # @return [Array<String>]
        attr_accessor :output_credentials
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable = args[:enable] if args.key?(:enable)
          @expression = args[:expression] if args.key?(:expression)
          @output_credentials = args[:output_credentials] if args.key?(:output_credentials)
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
        # @return [Google::Apis::IapV1::Expr]
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
      
      # OAuth brand data. NOTE: Only contains a portion of the data that describes a
      # brand.
      class Brand
        include Google::Apis::Core::Hashable
      
        # Application name displayed on OAuth consent screen.
        # Corresponds to the JSON property `applicationTitle`
        # @return [String]
        attr_accessor :application_title
      
        # Output only. Identifier of the brand. NOTE: GCP project number achieves the
        # same brand identification purpose as only one brand per project can be created.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Whether the brand is only intended for usage inside the G Suite
        # organization only.
        # Corresponds to the JSON property `orgInternalOnly`
        # @return [Boolean]
        attr_accessor :org_internal_only
        alias_method :org_internal_only?, :org_internal_only
      
        # Support email displayed on the OAuth consent screen.
        # Corresponds to the JSON property `supportEmail`
        # @return [String]
        attr_accessor :support_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_title = args[:application_title] if args.key?(:application_title)
          @name = args[:name] if args.key?(:name)
          @org_internal_only = args[:org_internal_only] if args.key?(:org_internal_only)
          @support_email = args[:support_email] if args.key?(:support_email)
        end
      end
      
      # Allows customers to configure HTTP request paths that'll allow HTTP `OPTIONS`
      # call to bypass authentication and authorization.
      class CorsSettings
        include Google::Apis::Core::Hashable
      
        # Configuration to allow HTTP `OPTIONS` calls to skip authentication and
        # authorization. If undefined, IAP will not apply any special logic to `OPTIONS`
        # requests.
        # Corresponds to the JSON property `allowHttpOptions`
        # @return [Boolean]
        attr_accessor :allow_http_options
        alias_method :allow_http_options?, :allow_http_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_http_options = args[:allow_http_options] if args.key?(:allow_http_options)
        end
      end
      
      # Configuration for RCToken generated for service mesh workloads protected by
      # IAP. RCToken are IAP generated JWTs that can be verified at the application.
      # The RCToken is primarily used for service mesh deployments, and can be scoped
      # to a single mesh by configuring the audience field accordingly.
      class CsmSettings
        include Google::Apis::Core::Hashable
      
        # Audience claim set in the generated RCToken. This value is not validated by
        # IAP.
        # Corresponds to the JSON property `rctokenAud`
        # @return [String]
        attr_accessor :rctoken_aud
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rctoken_aud = args[:rctoken_aud] if args.key?(:rctoken_aud)
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
      
      # Allows customers to configure tenant IDs for a Cloud Identity Platform (GCIP)
      # instance for each application.
      class GcipSettings
        include Google::Apis::Core::Hashable
      
        # Login page URI associated with the GCIP tenants. Typically, all resources
        # within the same project share the same login page, though it could be
        # overridden at the sub resource level.
        # Corresponds to the JSON property `loginPageUri`
        # @return [String]
        attr_accessor :login_page_uri
      
        # Optional. GCIP tenant IDs that are linked to the IAP resource. `tenant_ids`
        # could be a string beginning with a number character to indicate authenticating
        # with GCIP tenant flow, or in the format of `_` to indicate authenticating with
        # GCIP agent flow. If agent flow is used, `tenant_ids` should only contain one
        # single element, while for tenant flow, `tenant_ids` can contain multiple
        # elements.
        # Corresponds to the JSON property `tenantIds`
        # @return [Array<String>]
        attr_accessor :tenant_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @login_page_uri = args[:login_page_uri] if args.key?(:login_page_uri)
          @tenant_ids = args[:tenant_ids] if args.key?(:tenant_ids)
        end
      end
      
      # Request message for `GetIamPolicy` method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates settings provided to GetIamPolicy.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::IapV1::GetPolicyOptions]
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
      
      # The IAP configurable settings.
      class IapSettings
        include Google::Apis::Core::Hashable
      
        # Access related settings for IAP protected apps.
        # Corresponds to the JSON property `accessSettings`
        # @return [Google::Apis::IapV1::AccessSettings]
        attr_accessor :access_settings
      
        # Wrapper over application specific settings for IAP.
        # Corresponds to the JSON property `applicationSettings`
        # @return [Google::Apis::IapV1::ApplicationSettings]
        attr_accessor :application_settings
      
        # Required. The resource name of the IAP protected resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_settings = args[:access_settings] if args.key?(:access_settings)
          @application_settings = args[:application_settings] if args.key?(:application_settings)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Contains the data that describes an Identity Aware Proxy owned client.
      class IdentityAwareProxyClient
        include Google::Apis::Core::Hashable
      
        # Human-friendly name given to the OAuth client.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Unique identifier of the OAuth client.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Client secret of the OAuth client.
        # Corresponds to the JSON property `secret`
        # @return [String]
        attr_accessor :secret
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @secret = args[:secret] if args.key?(:secret)
        end
      end
      
      # Response message for ListBrands.
      class ListBrandsResponse
        include Google::Apis::Core::Hashable
      
        # Brands existing in the project.
        # Corresponds to the JSON property `brands`
        # @return [Array<Google::Apis::IapV1::Brand>]
        attr_accessor :brands
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @brands = args[:brands] if args.key?(:brands)
        end
      end
      
      # Response message for ListIdentityAwareProxyClients.
      class ListIdentityAwareProxyClientsResponse
        include Google::Apis::Core::Hashable
      
        # Clients existing in the brand.
        # Corresponds to the JSON property `identityAwareProxyClients`
        # @return [Array<Google::Apis::IapV1::IdentityAwareProxyClient>]
        attr_accessor :identity_aware_proxy_clients
      
        # A token, which can be send as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identity_aware_proxy_clients = args[:identity_aware_proxy_clients] if args.key?(:identity_aware_proxy_clients)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response from ListTunnelDestGroups.
      class ListTunnelDestGroupsResponse
        include Google::Apis::Core::Hashable
      
        # A token that you can send as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # TunnelDestGroup existing in the project.
        # Corresponds to the JSON property `tunnelDestGroups`
        # @return [Array<Google::Apis::IapV1::TunnelDestGroup>]
        attr_accessor :tunnel_dest_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tunnel_dest_groups = args[:tunnel_dest_groups] if args.key?(:tunnel_dest_groups)
        end
      end
      
      # Used for calculating the next state of tags on the resource being passed for
      # the CheckCustomConstraints RPC call. The detail evaluation of each field is
      # described in go/op-create-update-time-tags and go/tags-in-orgpolicy-requests.
      class NextStateOfTags
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `tagsFullState`
        # @return [Google::Apis::IapV1::TagsFullState]
        attr_accessor :tags_full_state
      
        # 
        # Corresponds to the JSON property `tagsFullStateForChildResource`
        # @return [Google::Apis::IapV1::TagsFullStateForChildResource]
        attr_accessor :tags_full_state_for_child_resource
      
        # 
        # Corresponds to the JSON property `tagsPartialState`
        # @return [Google::Apis::IapV1::TagsPartialState]
        attr_accessor :tags_partial_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tags_full_state = args[:tags_full_state] if args.key?(:tags_full_state)
          @tags_full_state_for_child_resource = args[:tags_full_state_for_child_resource] if args.key?(:tags_full_state_for_child_resource)
          @tags_partial_state = args[:tags_partial_state] if args.key?(:tags_partial_state)
        end
      end
      
      # The OAuth 2.0 Settings
      class OAuth2
        include Google::Apis::Core::Hashable
      
        # The OAuth 2.0 client ID registered in the workforce identity federation OAuth
        # 2.0 Server.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Input only. The OAuth 2.0 client secret created while registering the client
        # ID.
        # Corresponds to the JSON property `clientSecret`
        # @return [String]
        attr_accessor :client_secret
      
        # Output only. SHA256 hash value for the client secret. This field is returned
        # by IAP when the settings are retrieved.
        # Corresponds to the JSON property `clientSecretSha256`
        # @return [String]
        attr_accessor :client_secret_sha256
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @client_secret = args[:client_secret] if args.key?(:client_secret)
          @client_secret_sha256 = args[:client_secret_sha256] if args.key?(:client_secret_sha256)
        end
      end
      
      # Configuration for OAuth login&consent flow behavior as well as for OAuth
      # Credentials.
      class OAuthSettings
        include Google::Apis::Core::Hashable
      
        # Domain hint to send as hd=? parameter in OAuth request flow. Enables redirect
        # to primary IDP by skipping Google's login screen. https://developers.google.
        # com/identity/protocols/OpenIDConnect#hd-param Note: IAP does not verify that
        # the id token's hd claim matches this value since access behavior is managed by
        # IAM policies.
        # Corresponds to the JSON property `loginHint`
        # @return [String]
        attr_accessor :login_hint
      
        # Optional. List of client ids allowed to use IAP programmatically.
        # Corresponds to the JSON property `programmaticClients`
        # @return [Array<String>]
        attr_accessor :programmatic_clients
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @login_hint = args[:login_hint] if args.key?(:login_hint)
          @programmatic_clients = args[:programmatic_clients] if args.key?(:programmatic_clients)
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
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::IapV1::Binding>]
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
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # PolicyDelegationConfig allows google-internal teams to use IAP for apps hosted
      # in a tenant project. Using these settings, the app can delegate permission
      # check to happen against the linked customer project. This is only ever
      # supposed to be used by google internal teams, hence the restriction on the
      # proto.
      class PolicyDelegationSettings
        include Google::Apis::Core::Hashable
      
        # Permission to check in IAM.
        # Corresponds to the JSON property `iamPermission`
        # @return [String]
        attr_accessor :iam_permission
      
        # The DNS name of the service (e.g. "resourcemanager.googleapis.com"). This
        # should be the domain name part of the full resource names (see https://aip.dev/
        # 122#full-resource-names), which is usually the same as IamServiceSpec.service
        # of the service where the resource type is defined.
        # Corresponds to the JSON property `iamServiceName`
        # @return [String]
        attr_accessor :iam_service_name
      
        # An internal name for an IAM policy, based on the resource to which the policy
        # applies. Not to be confused with a resource's external full resource name. For
        # more information on this distinction, see go/iam-full-resource-names.
        # Corresponds to the JSON property `policyName`
        # @return [Google::Apis::IapV1::PolicyName]
        attr_accessor :policy_name
      
        # IAM resource to check permission on
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::IapV1::Resource]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @iam_permission = args[:iam_permission] if args.key?(:iam_permission)
          @iam_service_name = args[:iam_service_name] if args.key?(:iam_service_name)
          @policy_name = args[:policy_name] if args.key?(:policy_name)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # An internal name for an IAM policy, based on the resource to which the policy
      # applies. Not to be confused with a resource's external full resource name. For
      # more information on this distinction, see go/iam-full-resource-names.
      class PolicyName
        include Google::Apis::Core::Hashable
      
        # Identifies an instance of the type. ID format varies by type. The ID format is
        # defined in the IAM .service file that defines the type, either in path_mapping
        # or in a comment.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # For Cloud IAM: The location of the Policy. Must be empty or "global" for
        # Policies owned by global IAM. Must name a region from prodspec/cloud-iam-
        # cloudspec for Regional IAM Policies, see go/iam-faq#where-is-iam-currently-
        # deployed. For Local IAM: This field should be set to "local".
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Resource type. Types are defined in IAM's .service files. Valid values for
        # type might be 'storage_buckets', 'compute_instances', '
        # resourcemanager_customers', 'billing_accounts', etc.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @region = args[:region] if args.key?(:region)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Configuration for IAP reauthentication policies.
      class ReauthSettings
        include Google::Apis::Core::Hashable
      
        # Optional. Reauth session lifetime, how long before a user has to
        # reauthenticate again.
        # Corresponds to the JSON property `maxAge`
        # @return [String]
        attr_accessor :max_age
      
        # Optional. Reauth method requested.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Optional. How IAP determines the effective policy in cases of hierarchical
        # policies. Policies are merged from higher in the hierarchy to lower in the
        # hierarchy.
        # Corresponds to the JSON property `policyType`
        # @return [String]
        attr_accessor :policy_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_age = args[:max_age] if args.key?(:max_age)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @policy_type = args[:policy_type] if args.key?(:policy_type)
        end
      end
      
      # The request sent to ResetIdentityAwareProxyClientSecret.
      class ResetIdentityAwareProxyClientSecretRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class Resource
        include Google::Apis::Core::Hashable
      
        # The proto or JSON formatted expected next state of the resource, wrapped in a
        # google.protobuf.Any proto, against which the policy rules are evaluated.
        # Services not integrated with custom org policy can omit this field. Services
        # integrated with custom org policy must populate this field for all requests
        # where the API call changes the state of the resource. Custom org policy
        # backend uses these attributes to enforce custom org policies. For create
        # operations, GCP service is expected to pass resource from customer request as
        # is. For update/patch operations, GCP service is expected to compute the next
        # state with the patch provided by the user. See go/federated-custom-org-policy-
        # integration-guide for additional details.
        # Corresponds to the JSON property `expectedNextState`
        # @return [Hash<String,Object>]
        attr_accessor :expected_next_state
      
        # The service defined labels of the resource on which the conditions will be
        # evaluated. The semantics - including the key names - are vague to IAM. If the
        # effective condition has a reference to a `resource.labels[foo]` construct, IAM
        # consults with this map to retrieve the values associated with `foo` key for
        # Conditions evaluation. If the provided key is not found in the labels map, the
        # condition would evaluate to false. This field is in limited use. If your
        # intended use case is not expected to express resource.labels attribute in IAM
        # Conditions, leave this field empty. Before planning on using this attribute
        # please: * Read go/iam-conditions-labels-comm and ensure your service can meet
        # the data availability and management requirements. * Talk to iam-conditions-
        # eng@ about your use case.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The locations of the resource. This field is used to determine whether the
        # request is compliant with Trust Boundaries. Usage: - If unset or empty, the
        # location of authorization is used as the target location. - For global
        # resources: use a single value of "global". - For regional/multi-regional
        # resources: use name of the GCP region(s) where the resource exists (e.g., ["us-
        # east1", "us-west1"]). For multi-regional resources specify the name of each
        # GCP region in the resource's multi-region. NOTE: Only GCP cloud region names
        # are supported - go/cloud-region-names.
        # Corresponds to the JSON property `locations`
        # @return [Array<String>]
        attr_accessor :locations
      
        # The **relative** name of the resource, which is the URI path of the resource
        # without the leading "/". See https://cloud.google.com/iam/docs/conditions-
        # resource-attributes#resource-name for examples used by other GCP Services.
        # This field is **required** for services integrated with resource-attribute-
        # based IAM conditions and/or CustomOrgPolicy. This field requires special
        # handling for parents-only permissions such as `create` and `list`. See the
        # document linked below for further details. See go/iam-conditions-sig-g3#
        # populate-resource-attributes for specific details on populating this field.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Used for calculating the next state of tags on the resource being passed for
        # the CheckCustomConstraints RPC call. The detail evaluation of each field is
        # described in go/op-create-update-time-tags and go/tags-in-orgpolicy-requests.
        # Corresponds to the JSON property `nextStateOfTags`
        # @return [Google::Apis::IapV1::NextStateOfTags]
        attr_accessor :next_state_of_tags
      
        # The name of the service this resource belongs to. It is configured using the
        # official_service_name of the Service as defined in service configurations
        # under //configs/cloud/resourcetypes. For example, the official_service_name of
        # cloud resource manager service is set as 'cloudresourcemanager.googleapis.com'
        # according to //configs/cloud/resourcetypes/google/cloud/resourcemanager/prod.
        # yaml This field is **required** for services integrated with resource-
        # attribute-based IAM conditions and/or CustomOrgPolicy. This field requires
        # special handling for parents-only permissions such as `create` and `list`. See
        # the document linked below for further details. See go/iam-conditions-sig-g3#
        # populate-resource-attributes for specific details on populating this field.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # The public resource type name of the resource. It is configured using the
        # official_name of the ResourceType as defined in service configurations under //
        # configs/cloud/resourcetypes. For example, the official_name for GCP projects
        # is set as 'cloudresourcemanager.googleapis.com/Project' according to //configs/
        # cloud/resourcetypes/google/cloud/resourcemanager/prod.yaml This field is **
        # required** for services integrated with resource-attribute-based IAM
        # conditions and/or CustomOrgPolicy. This field requires special handling for
        # parents-only permissions such as `create` and `list`. See the document linked
        # below for further details. See go/iam-conditions-sig-g3#populate-resource-
        # attributes for specific details on populating this field.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expected_next_state = args[:expected_next_state] if args.key?(:expected_next_state)
          @labels = args[:labels] if args.key?(:labels)
          @locations = args[:locations] if args.key?(:locations)
          @name = args[:name] if args.key?(:name)
          @next_state_of_tags = args[:next_state_of_tags] if args.key?(:next_state_of_tags)
          @service = args[:service] if args.key?(:service)
          @type = args[:type] if args.key?(:type)
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
        # @return [Google::Apis::IapV1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # 
      class TagsFullState
        include Google::Apis::Core::Hashable
      
        # If TagsFullState is initialized, the values in this field fully represent all
        # the tags in the next state (the current tag values are not used). If tags.size(
        # ) == 0, the next state of tags would be no tags for evaluation purposes. Only
        # one type of tags reference (numeric or namespace) is required to be passed.
        # Corresponds to the JSON property `tags`
        # @return [Hash<String,String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # 
      class TagsFullStateForChildResource
        include Google::Apis::Core::Hashable
      
        # If TagsFullStateForChildResource is initialized, the values in this field
        # represent all the tags in the next state for the child resource. Only one type
        # of tags reference (numeric or namespace) is required to be passed. IMPORTANT:
        # This field should only be used when the target resource IAM policy name is
        # UNKNOWN and the resource's parent IAM policy name is being passed in the
        # request.
        # Corresponds to the JSON property `tags`
        # @return [Hash<String,String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # 
      class TagsPartialState
        include Google::Apis::Core::Hashable
      
        # Keys of the tags that should be removed for evaluation purposes. IMPORTANT:
        # Currently only numeric references are supported. Once support for namespace
        # references is added, both the tag references (numeric and namespace) will be
        # removed.
        # Corresponds to the JSON property `tagKeysToRemove`
        # @return [Array<String>]
        attr_accessor :tag_keys_to_remove
      
        # Tags that’ll be updated or added to the current state of tags for evaluation
        # purposes. If a key exists in both "tags_to_upsert" and "tag_keys_to_remove",
        # the one in "tag_keys_to_remove" is ignored. Only one type of tags reference (
        # numeric or namespace) is required to be passed.
        # Corresponds to the JSON property `tagsToUpsert`
        # @return [Hash<String,String>]
        attr_accessor :tags_to_upsert
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tag_keys_to_remove = args[:tag_keys_to_remove] if args.key?(:tag_keys_to_remove)
          @tags_to_upsert = args[:tags_to_upsert] if args.key?(:tags_to_upsert)
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
      
      # A TunnelDestGroup.
      class TunnelDestGroup
        include Google::Apis::Core::Hashable
      
        # Optional. Unordered list. List of CIDRs that this group applies to.
        # Corresponds to the JSON property `cidrs`
        # @return [Array<String>]
        attr_accessor :cidrs
      
        # Optional. Unordered list. List of FQDNs that this group applies to.
        # Corresponds to the JSON property `fqdns`
        # @return [Array<String>]
        attr_accessor :fqdns
      
        # Identifier. Identifier for the TunnelDestGroup. Must be unique within the
        # project and contain only lower case letters (a-z) and dashes (-).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cidrs = args[:cidrs] if args.key?(:cidrs)
          @fqdns = args[:fqdns] if args.key?(:fqdns)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # IAP Expression Linter endpoint returns empty response body.
      class ValidateIapAttributeExpressionResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # WorkforceIdentitySettings allows customers to configure workforce pools and
      # OAuth 2.0 settings to gate their applications using a third-party IdP with
      # access control.
      class WorkforceIdentitySettings
        include Google::Apis::Core::Hashable
      
        # The OAuth 2.0 Settings
        # Corresponds to the JSON property `oauth2`
        # @return [Google::Apis::IapV1::OAuth2]
        attr_accessor :oauth2
      
        # The workforce pool resources. Only one workforce pool is accepted.
        # Corresponds to the JSON property `workforcePools`
        # @return [Array<String>]
        attr_accessor :workforce_pools
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @oauth2 = args[:oauth2] if args.key?(:oauth2)
          @workforce_pools = args[:workforce_pools] if args.key?(:workforce_pools)
        end
      end
    end
  end
end
