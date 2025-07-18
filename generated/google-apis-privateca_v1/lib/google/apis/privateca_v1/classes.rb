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
    module PrivatecaV1
      
      # URLs where a CertificateAuthority will publish content.
      class AccessUrls
        include Google::Apis::Core::Hashable
      
        # The URL where this CertificateAuthority's CA certificate is published. This
        # will only be set for CAs that have been activated.
        # Corresponds to the JSON property `caCertificateAccessUrl`
        # @return [String]
        attr_accessor :ca_certificate_access_url
      
        # The URLs where this CertificateAuthority's CRLs are published. This will only
        # be set for CAs that have been activated.
        # Corresponds to the JSON property `crlAccessUrls`
        # @return [Array<String>]
        attr_accessor :crl_access_urls
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_certificate_access_url = args[:ca_certificate_access_url] if args.key?(:ca_certificate_access_url)
          @crl_access_urls = args[:crl_access_urls] if args.key?(:crl_access_urls)
        end
      end
      
      # Request message for CertificateAuthorityService.ActivateCertificateAuthority.
      class ActivateCertificateAuthorityRequest
        include Google::Apis::Core::Hashable
      
        # Required. The signed CA certificate issued from
        # FetchCertificateAuthorityCsrResponse.pem_csr.
        # Corresponds to the JSON property `pemCaCertificate`
        # @return [String]
        attr_accessor :pem_ca_certificate
      
        # Optional. An ID to identify requests. Specify a unique request ID so that if
        # you must retry your request, the server will know to ignore the request if it
        # has already been completed. The server will guarantee that for at least 60
        # minutes since the first request. For example, consider a situation where you
        # make an initial request and the request times out. If you make the request
        # again with the same request ID, the server can check if original operation
        # with the same request ID was received, and if so, will ignore the second
        # request. This prevents clients from accidentally creating duplicate
        # commitments. The request ID must be a valid UUID with the exception that zero
        # UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Describes a subordinate CA's issuers. This is either a resource name to a
        # known issuing CertificateAuthority, or a PEM issuer certificate chain.
        # Corresponds to the JSON property `subordinateConfig`
        # @return [Google::Apis::PrivatecaV1::SubordinateConfig]
        attr_accessor :subordinate_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pem_ca_certificate = args[:pem_ca_certificate] if args.key?(:pem_ca_certificate)
          @request_id = args[:request_id] if args.key?(:request_id)
          @subordinate_config = args[:subordinate_config] if args.key?(:subordinate_config)
        end
      end
      
      # Describes a "type" of key that may be used in a Certificate issued from a
      # CaPool. Note that a single AllowedKeyType may refer to either a fully-
      # qualified key algorithm, such as RSA 4096, or a family of key algorithms, such
      # as any RSA key.
      class AllowedKeyType
        include Google::Apis::Core::Hashable
      
        # Describes an Elliptic Curve key that may be used in a Certificate issued from
        # a CaPool.
        # Corresponds to the JSON property `ellipticCurve`
        # @return [Google::Apis::PrivatecaV1::EcKeyType]
        attr_accessor :elliptic_curve
      
        # Describes an RSA key that may be used in a Certificate issued from a CaPool.
        # Corresponds to the JSON property `rsa`
        # @return [Google::Apis::PrivatecaV1::RsaKeyType]
        attr_accessor :rsa
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @elliptic_curve = args[:elliptic_curve] if args.key?(:elliptic_curve)
          @rsa = args[:rsa] if args.key?(:rsa)
        end
      end
      
      # AttributeTypeAndValue specifies an attribute type and value. It can use either
      # a OID or enum value to specify the attribute type.
      class AttributeTypeAndValue
        include Google::Apis::Core::Hashable
      
        # An ObjectId specifies an object identifier (OID). These provide context and
        # describe types in ASN.1 messages.
        # Corresponds to the JSON property `objectId`
        # @return [Google::Apis::PrivatecaV1::ObjectIdProp]
        attr_accessor :object_id_prop
      
        # The attribute type of the attribute and value pair.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The value for the attribute type.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
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
        # @return [Array<Google::Apis::PrivatecaV1::AuditLogConfig>]
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
        # @return [Google::Apis::PrivatecaV1::Expr]
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
      
      # Describes the X.509 basic constraints extension, per [RFC 5280 section 4.2.1.9]
      # (https://tools.ietf.org/html/rfc5280#section-4.2.1.9)
      class CaOptions
        include Google::Apis::Core::Hashable
      
        # Optional. Refers to the "CA" boolean field in the X.509 extension. When this
        # value is missing, the basic constraints extension will be omitted from the
        # certificate.
        # Corresponds to the JSON property `isCa`
        # @return [Boolean]
        attr_accessor :is_ca
        alias_method :is_ca?, :is_ca
      
        # Optional. Refers to the path length constraint field in the X.509 extension.
        # For a CA certificate, this value describes the depth of subordinate CA
        # certificates that are allowed. If this value is less than 0, the request will
        # fail. If this value is missing, the max path length will be omitted from the
        # certificate.
        # Corresponds to the JSON property `maxIssuerPathLength`
        # @return [Fixnum]
        attr_accessor :max_issuer_path_length
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_ca = args[:is_ca] if args.key?(:is_ca)
          @max_issuer_path_length = args[:max_issuer_path_length] if args.key?(:max_issuer_path_length)
        end
      end
      
      # A CaPool represents a group of CertificateAuthorities that form a trust anchor.
      # A CaPool can be used to manage issuance policies for one or more
      # CertificateAuthority resources and to rotate CA certificates in and out of the
      # trust anchor.
      class CaPool
        include Google::Apis::Core::Hashable
      
        # Defines controls over all certificate issuance within a CaPool.
        # Corresponds to the JSON property `issuancePolicy`
        # @return [Google::Apis::PrivatecaV1::IssuancePolicy]
        attr_accessor :issuance_policy
      
        # Optional. Labels with user-defined metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name for this CaPool in the format `projects/*/
        # locations/*/caPools/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Options relating to the publication of each CertificateAuthority's CA
        # certificate and CRLs and their inclusion as extensions in issued Certificates.
        # The options set here apply to certificates issued by any CertificateAuthority
        # in the CaPool.
        # Corresponds to the JSON property `publishingOptions`
        # @return [Google::Apis::PrivatecaV1::PublishingOptions]
        attr_accessor :publishing_options
      
        # Required. Immutable. The Tier of this CaPool.
        # Corresponds to the JSON property `tier`
        # @return [String]
        attr_accessor :tier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issuance_policy = args[:issuance_policy] if args.key?(:issuance_policy)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @publishing_options = args[:publishing_options] if args.key?(:publishing_options)
          @tier = args[:tier] if args.key?(:tier)
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
      
      # 
      class CertChain
        include Google::Apis::Core::Hashable
      
        # The certificates that form the CA chain, from leaf to root order.
        # Corresponds to the JSON property `certificates`
        # @return [Array<String>]
        attr_accessor :certificates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificates = args[:certificates] if args.key?(:certificates)
        end
      end
      
      # A Certificate corresponds to a signed X.509 certificate issued by a
      # CertificateAuthority.
      class Certificate
        include Google::Apis::Core::Hashable
      
        # A CertificateDescription describes an X.509 certificate or CSR that has been
        # issued, as an alternative to using ASN.1 / X.509.
        # Corresponds to the JSON property `certificateDescription`
        # @return [Google::Apis::PrivatecaV1::CertificateDescription]
        attr_accessor :certificate_description
      
        # Immutable. The resource name for a CertificateTemplate used to issue this
        # certificate, in the format `projects/*/locations/*/certificateTemplates/*`. If
        # this is specified, the caller must have the necessary permission to use this
        # template. If this is omitted, no template will be used. This template must be
        # in the same location as the Certificate.
        # Corresponds to the JSON property `certificateTemplate`
        # @return [String]
        attr_accessor :certificate_template
      
        # A CertificateConfig describes an X.509 certificate or CSR that is to be
        # created, as an alternative to using ASN.1.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::PrivatecaV1::CertificateConfig]
        attr_accessor :config
      
        # Output only. The time at which this Certificate was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The resource name of the issuing CertificateAuthority in the
        # format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.
        # Corresponds to the JSON property `issuerCertificateAuthority`
        # @return [String]
        attr_accessor :issuer_certificate_authority
      
        # Optional. Labels with user-defined metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. Immutable. The desired lifetime of a certificate. Used to create the
        # "not_before_time" and "not_after_time" fields inside an X.509 certificate.
        # Note that the lifetime may be truncated if it would extend past the life of
        # any certificate authority in the issuing chain.
        # Corresponds to the JSON property `lifetime`
        # @return [String]
        attr_accessor :lifetime
      
        # Identifier. The resource name for this Certificate in the format `projects/*/
        # locations/*/caPools/*/certificates/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The pem-encoded, signed X.509 certificate.
        # Corresponds to the JSON property `pemCertificate`
        # @return [String]
        attr_accessor :pem_certificate
      
        # Output only. The chain that may be used to verify the X.509 certificate.
        # Expected to be in issuer-to-root order according to RFC 5246.
        # Corresponds to the JSON property `pemCertificateChain`
        # @return [Array<String>]
        attr_accessor :pem_certificate_chain
      
        # Immutable. A pem-encoded X.509 certificate signing request (CSR).
        # Corresponds to the JSON property `pemCsr`
        # @return [String]
        attr_accessor :pem_csr
      
        # Describes fields that are relavent to the revocation of a Certificate.
        # Corresponds to the JSON property `revocationDetails`
        # @return [Google::Apis::PrivatecaV1::RevocationDetails]
        attr_accessor :revocation_details
      
        # Immutable. Specifies how the Certificate's identity fields are to be decided.
        # If this is omitted, the `DEFAULT` subject mode will be used.
        # Corresponds to the JSON property `subjectMode`
        # @return [String]
        attr_accessor :subject_mode
      
        # Output only. The time at which this Certificate was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_description = args[:certificate_description] if args.key?(:certificate_description)
          @certificate_template = args[:certificate_template] if args.key?(:certificate_template)
          @config = args[:config] if args.key?(:config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @issuer_certificate_authority = args[:issuer_certificate_authority] if args.key?(:issuer_certificate_authority)
          @labels = args[:labels] if args.key?(:labels)
          @lifetime = args[:lifetime] if args.key?(:lifetime)
          @name = args[:name] if args.key?(:name)
          @pem_certificate = args[:pem_certificate] if args.key?(:pem_certificate)
          @pem_certificate_chain = args[:pem_certificate_chain] if args.key?(:pem_certificate_chain)
          @pem_csr = args[:pem_csr] if args.key?(:pem_csr)
          @revocation_details = args[:revocation_details] if args.key?(:revocation_details)
          @subject_mode = args[:subject_mode] if args.key?(:subject_mode)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A CertificateAuthority represents an individual Certificate Authority. A
      # CertificateAuthority can be used to create Certificates.
      class CertificateAuthority
        include Google::Apis::Core::Hashable
      
        # URLs where a CertificateAuthority will publish content.
        # Corresponds to the JSON property `accessUrls`
        # @return [Google::Apis::PrivatecaV1::AccessUrls]
        attr_accessor :access_urls
      
        # Output only. A structured description of this CertificateAuthority's CA
        # certificate and its issuers. Ordered as self-to-root.
        # Corresponds to the JSON property `caCertificateDescriptions`
        # @return [Array<Google::Apis::PrivatecaV1::CertificateDescription>]
        attr_accessor :ca_certificate_descriptions
      
        # A CertificateConfig describes an X.509 certificate or CSR that is to be
        # created, as an alternative to using ASN.1.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::PrivatecaV1::CertificateConfig]
        attr_accessor :config
      
        # Output only. The time at which this CertificateAuthority was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time at which this CertificateAuthority was soft deleted, if
        # it is in the DELETED state.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Output only. The time at which this CertificateAuthority will be permanently
        # purged, if it is in the DELETED state.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Immutable. The name of a Cloud Storage bucket where this CertificateAuthority
        # will publish content, such as the CA certificate and CRLs. This must be a
        # bucket name, without any prefixes (such as `gs://`) or suffixes (such as `.
        # googleapis.com`). For example, to use a bucket named `my-bucket`, you would
        # simply specify `my-bucket`. If not specified, a managed bucket will be created.
        # Corresponds to the JSON property `gcsBucket`
        # @return [String]
        attr_accessor :gcs_bucket
      
        # A Cloud KMS key configuration that a CertificateAuthority will use.
        # Corresponds to the JSON property `keySpec`
        # @return [Google::Apis::PrivatecaV1::KeyVersionSpec]
        attr_accessor :key_spec
      
        # Optional. Labels with user-defined metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. Immutable. The desired lifetime of the CA certificate. Used to
        # create the "not_before_time" and "not_after_time" fields inside an X.509
        # certificate.
        # Corresponds to the JSON property `lifetime`
        # @return [String]
        attr_accessor :lifetime
      
        # Identifier. The resource name for this CertificateAuthority in the format `
        # projects/*/locations/*/caPools/*/certificateAuthorities/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. This CertificateAuthority's certificate chain, including the
        # current CertificateAuthority's certificate. Ordered such that the root issuer
        # is the final element (consistent with RFC 5246). For a self-signed CA, this
        # will only list the current CertificateAuthority's certificate.
        # Corresponds to the JSON property `pemCaCertificates`
        # @return [Array<String>]
        attr_accessor :pem_ca_certificates
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Output only. The State for this CertificateAuthority.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Describes a subordinate CA's issuers. This is either a resource name to a
        # known issuing CertificateAuthority, or a PEM issuer certificate chain.
        # Corresponds to the JSON property `subordinateConfig`
        # @return [Google::Apis::PrivatecaV1::SubordinateConfig]
        attr_accessor :subordinate_config
      
        # Output only. The CaPool.Tier of the CaPool that includes this
        # CertificateAuthority.
        # Corresponds to the JSON property `tier`
        # @return [String]
        attr_accessor :tier
      
        # Required. Immutable. The Type of this CertificateAuthority.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. The time at which this CertificateAuthority was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # User-defined URLs for accessing content published by this CertificateAuthority.
        # Corresponds to the JSON property `userDefinedAccessUrls`
        # @return [Google::Apis::PrivatecaV1::UserDefinedAccessUrls]
        attr_accessor :user_defined_access_urls
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_urls = args[:access_urls] if args.key?(:access_urls)
          @ca_certificate_descriptions = args[:ca_certificate_descriptions] if args.key?(:ca_certificate_descriptions)
          @config = args[:config] if args.key?(:config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @gcs_bucket = args[:gcs_bucket] if args.key?(:gcs_bucket)
          @key_spec = args[:key_spec] if args.key?(:key_spec)
          @labels = args[:labels] if args.key?(:labels)
          @lifetime = args[:lifetime] if args.key?(:lifetime)
          @name = args[:name] if args.key?(:name)
          @pem_ca_certificates = args[:pem_ca_certificates] if args.key?(:pem_ca_certificates)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @state = args[:state] if args.key?(:state)
          @subordinate_config = args[:subordinate_config] if args.key?(:subordinate_config)
          @tier = args[:tier] if args.key?(:tier)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
          @user_defined_access_urls = args[:user_defined_access_urls] if args.key?(:user_defined_access_urls)
        end
      end
      
      # A CertificateConfig describes an X.509 certificate or CSR that is to be
      # created, as an alternative to using ASN.1.
      class CertificateConfig
        include Google::Apis::Core::Hashable
      
        # A PublicKey describes a public key.
        # Corresponds to the JSON property `publicKey`
        # @return [Google::Apis::PrivatecaV1::PublicKey]
        attr_accessor :public_key
      
        # These values are used to create the distinguished name and subject alternative
        # name fields in an X.509 certificate.
        # Corresponds to the JSON property `subjectConfig`
        # @return [Google::Apis::PrivatecaV1::SubjectConfig]
        attr_accessor :subject_config
      
        # A KeyId identifies a specific public key, usually by hashing the public key.
        # Corresponds to the JSON property `subjectKeyId`
        # @return [Google::Apis::PrivatecaV1::CertificateConfigKeyId]
        attr_accessor :subject_key_id
      
        # An X509Parameters is used to describe certain fields of an X.509 certificate,
        # such as the key usage fields, fields specific to CA certificates, certificate
        # policy extensions and custom extensions.
        # Corresponds to the JSON property `x509Config`
        # @return [Google::Apis::PrivatecaV1::X509Parameters]
        attr_accessor :x509_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @public_key = args[:public_key] if args.key?(:public_key)
          @subject_config = args[:subject_config] if args.key?(:subject_config)
          @subject_key_id = args[:subject_key_id] if args.key?(:subject_key_id)
          @x509_config = args[:x509_config] if args.key?(:x509_config)
        end
      end
      
      # A KeyId identifies a specific public key, usually by hashing the public key.
      class CertificateConfigKeyId
        include Google::Apis::Core::Hashable
      
        # Required. The value of this KeyId encoded in lowercase hexadecimal. This is
        # most likely the 160 bit SHA-1 hash of the public key.
        # Corresponds to the JSON property `keyId`
        # @return [String]
        attr_accessor :key_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_id = args[:key_id] if args.key?(:key_id)
        end
      end
      
      # A CertificateDescription describes an X.509 certificate or CSR that has been
      # issued, as an alternative to using ASN.1 / X.509.
      class CertificateDescription
        include Google::Apis::Core::Hashable
      
        # Describes lists of issuer CA certificate URLs that appear in the "Authority
        # Information Access" extension in the certificate.
        # Corresponds to the JSON property `aiaIssuingCertificateUrls`
        # @return [Array<String>]
        attr_accessor :aia_issuing_certificate_urls
      
        # A KeyId identifies a specific public key, usually by hashing the public key.
        # Corresponds to the JSON property `authorityKeyId`
        # @return [Google::Apis::PrivatecaV1::KeyId]
        attr_accessor :authority_key_id
      
        # A group of fingerprints for the x509 certificate.
        # Corresponds to the JSON property `certFingerprint`
        # @return [Google::Apis::PrivatecaV1::CertificateFingerprint]
        attr_accessor :cert_fingerprint
      
        # Describes a list of locations to obtain CRL information, i.e. the
        # DistributionPoint.fullName described by https://tools.ietf.org/html/rfc5280#
        # section-4.2.1.13
        # Corresponds to the JSON property `crlDistributionPoints`
        # @return [Array<String>]
        attr_accessor :crl_distribution_points
      
        # A PublicKey describes a public key.
        # Corresponds to the JSON property `publicKey`
        # @return [Google::Apis::PrivatecaV1::PublicKey]
        attr_accessor :public_key
      
        # These values describe fields in an issued X.509 certificate such as the
        # distinguished name, subject alternative names, serial number, and lifetime.
        # Corresponds to the JSON property `subjectDescription`
        # @return [Google::Apis::PrivatecaV1::SubjectDescription]
        attr_accessor :subject_description
      
        # A KeyId identifies a specific public key, usually by hashing the public key.
        # Corresponds to the JSON property `subjectKeyId`
        # @return [Google::Apis::PrivatecaV1::KeyId]
        attr_accessor :subject_key_id
      
        # The hash of the pre-signed certificate, which will be signed by the CA.
        # Corresponds to the TBS Certificate in https://tools.ietf.org/html/rfc5280#
        # section-4.1.2. The field will always be populated.
        # Corresponds to the JSON property `tbsCertificateDigest`
        # @return [String]
        attr_accessor :tbs_certificate_digest
      
        # An X509Parameters is used to describe certain fields of an X.509 certificate,
        # such as the key usage fields, fields specific to CA certificates, certificate
        # policy extensions and custom extensions.
        # Corresponds to the JSON property `x509Description`
        # @return [Google::Apis::PrivatecaV1::X509Parameters]
        attr_accessor :x509_description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aia_issuing_certificate_urls = args[:aia_issuing_certificate_urls] if args.key?(:aia_issuing_certificate_urls)
          @authority_key_id = args[:authority_key_id] if args.key?(:authority_key_id)
          @cert_fingerprint = args[:cert_fingerprint] if args.key?(:cert_fingerprint)
          @crl_distribution_points = args[:crl_distribution_points] if args.key?(:crl_distribution_points)
          @public_key = args[:public_key] if args.key?(:public_key)
          @subject_description = args[:subject_description] if args.key?(:subject_description)
          @subject_key_id = args[:subject_key_id] if args.key?(:subject_key_id)
          @tbs_certificate_digest = args[:tbs_certificate_digest] if args.key?(:tbs_certificate_digest)
          @x509_description = args[:x509_description] if args.key?(:x509_description)
        end
      end
      
      # Describes a set of X.509 extensions that may be part of some certificate
      # issuance controls.
      class CertificateExtensionConstraints
        include Google::Apis::Core::Hashable
      
        # Optional. A set of ObjectIds identifying custom X.509 extensions. Will be
        # combined with known_extensions to determine the full set of X.509 extensions.
        # Corresponds to the JSON property `additionalExtensions`
        # @return [Array<Google::Apis::PrivatecaV1::ObjectIdProp>]
        attr_accessor :additional_extensions
      
        # Optional. A set of named X.509 extensions. Will be combined with
        # additional_extensions to determine the full set of X.509 extensions.
        # Corresponds to the JSON property `knownExtensions`
        # @return [Array<String>]
        attr_accessor :known_extensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_extensions = args[:additional_extensions] if args.key?(:additional_extensions)
          @known_extensions = args[:known_extensions] if args.key?(:known_extensions)
        end
      end
      
      # A group of fingerprints for the x509 certificate.
      class CertificateFingerprint
        include Google::Apis::Core::Hashable
      
        # The SHA 256 hash, encoded in hexadecimal, of the DER x509 certificate.
        # Corresponds to the JSON property `sha256Hash`
        # @return [String]
        attr_accessor :sha256_hash
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sha256_hash = args[:sha256_hash] if args.key?(:sha256_hash)
        end
      end
      
      # Describes constraints on a Certificate's Subject and SubjectAltNames.
      class CertificateIdentityConstraints
        include Google::Apis::Core::Hashable
      
        # Required. If this is true, the SubjectAltNames extension may be copied from a
        # certificate request into the signed certificate. Otherwise, the requested
        # SubjectAltNames will be discarded.
        # Corresponds to the JSON property `allowSubjectAltNamesPassthrough`
        # @return [Boolean]
        attr_accessor :allow_subject_alt_names_passthrough
        alias_method :allow_subject_alt_names_passthrough?, :allow_subject_alt_names_passthrough
      
        # Required. If this is true, the Subject field may be copied from a certificate
        # request into the signed certificate. Otherwise, the requested Subject will be
        # discarded.
        # Corresponds to the JSON property `allowSubjectPassthrough`
        # @return [Boolean]
        attr_accessor :allow_subject_passthrough
        alias_method :allow_subject_passthrough?, :allow_subject_passthrough
      
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
        # Corresponds to the JSON property `celExpression`
        # @return [Google::Apis::PrivatecaV1::Expr]
        attr_accessor :cel_expression
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_subject_alt_names_passthrough = args[:allow_subject_alt_names_passthrough] if args.key?(:allow_subject_alt_names_passthrough)
          @allow_subject_passthrough = args[:allow_subject_passthrough] if args.key?(:allow_subject_passthrough)
          @cel_expression = args[:cel_expression] if args.key?(:cel_expression)
        end
      end
      
      # A CertificateRevocationList corresponds to a signed X.509 certificate
      # Revocation List (CRL). A CRL contains the serial numbers of certificates that
      # should no longer be trusted.
      class CertificateRevocationList
        include Google::Apis::Core::Hashable
      
        # Output only. The location where 'pem_crl' can be accessed.
        # Corresponds to the JSON property `accessUrl`
        # @return [String]
        attr_accessor :access_url
      
        # Output only. The time at which this CertificateRevocationList was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Labels with user-defined metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name for this CertificateRevocationList in the format
        # `projects/*/locations/*/caPools/*certificateAuthorities/*/
        # certificateRevocationLists/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The PEM-encoded X.509 CRL.
        # Corresponds to the JSON property `pemCrl`
        # @return [String]
        attr_accessor :pem_crl
      
        # Output only. The revision ID of this CertificateRevocationList. A new revision
        # is committed whenever a new CRL is published. The format is an 8-character
        # hexadecimal string.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        # Output only. The revoked serial numbers that appear in pem_crl.
        # Corresponds to the JSON property `revokedCertificates`
        # @return [Array<Google::Apis::PrivatecaV1::RevokedCertificate>]
        attr_accessor :revoked_certificates
      
        # Output only. The CRL sequence number that appears in pem_crl.
        # Corresponds to the JSON property `sequenceNumber`
        # @return [Fixnum]
        attr_accessor :sequence_number
      
        # Output only. The State for this CertificateRevocationList.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time at which this CertificateRevocationList was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_url = args[:access_url] if args.key?(:access_url)
          @create_time = args[:create_time] if args.key?(:create_time)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @pem_crl = args[:pem_crl] if args.key?(:pem_crl)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @revoked_certificates = args[:revoked_certificates] if args.key?(:revoked_certificates)
          @sequence_number = args[:sequence_number] if args.key?(:sequence_number)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A CertificateTemplate refers to a managed template for certificate issuance.
      class CertificateTemplate
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which this CertificateTemplate was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A human-readable description of scenarios this template is intended
        # for.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Describes constraints on a Certificate's Subject and SubjectAltNames.
        # Corresponds to the JSON property `identityConstraints`
        # @return [Google::Apis::PrivatecaV1::CertificateIdentityConstraints]
        attr_accessor :identity_constraints
      
        # Optional. Labels with user-defined metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. The maximum lifetime allowed for issued Certificates that use this
        # template. If the issuing CaPool resource's IssuancePolicy specifies a
        # maximum_lifetime the minimum of the two durations will be the maximum lifetime
        # for issued Certificates. Note that if the issuing CertificateAuthority expires
        # before a Certificate's requested maximum_lifetime, the effective lifetime will
        # be explicitly truncated to match it.
        # Corresponds to the JSON property `maximumLifetime`
        # @return [String]
        attr_accessor :maximum_lifetime
      
        # Identifier. The resource name for this CertificateTemplate in the format `
        # projects/*/locations/*/certificateTemplates/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Describes a set of X.509 extensions that may be part of some certificate
        # issuance controls.
        # Corresponds to the JSON property `passthroughExtensions`
        # @return [Google::Apis::PrivatecaV1::CertificateExtensionConstraints]
        attr_accessor :passthrough_extensions
      
        # An X509Parameters is used to describe certain fields of an X.509 certificate,
        # such as the key usage fields, fields specific to CA certificates, certificate
        # policy extensions and custom extensions.
        # Corresponds to the JSON property `predefinedValues`
        # @return [Google::Apis::PrivatecaV1::X509Parameters]
        attr_accessor :predefined_values
      
        # Output only. The time at which this CertificateTemplate was updated.
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
          @identity_constraints = args[:identity_constraints] if args.key?(:identity_constraints)
          @labels = args[:labels] if args.key?(:labels)
          @maximum_lifetime = args[:maximum_lifetime] if args.key?(:maximum_lifetime)
          @name = args[:name] if args.key?(:name)
          @passthrough_extensions = args[:passthrough_extensions] if args.key?(:passthrough_extensions)
          @predefined_values = args[:predefined_values] if args.key?(:predefined_values)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request message for CertificateAuthorityService.DisableCertificateAuthority.
      class DisableCertificateAuthorityRequest
        include Google::Apis::Core::Hashable
      
        # Optional. This field allows this CA to be disabled even if it's being depended
        # on by another resource. However, doing so may result in unintended and
        # unrecoverable effects on any dependent resources since the CA will no longer
        # be able to issue certificates.
        # Corresponds to the JSON property `ignoreDependentResources`
        # @return [Boolean]
        attr_accessor :ignore_dependent_resources
        alias_method :ignore_dependent_resources?, :ignore_dependent_resources
      
        # Optional. An ID to identify requests. Specify a unique request ID so that if
        # you must retry your request, the server will know to ignore the request if it
        # has already been completed. The server will guarantee that for at least 60
        # minutes since the first request. For example, consider a situation where you
        # make an initial request and the request times out. If you make the request
        # again with the same request ID, the server can check if original operation
        # with the same request ID was received, and if so, will ignore the second
        # request. This prevents clients from accidentally creating duplicate
        # commitments. The request ID must be a valid UUID with the exception that zero
        # UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ignore_dependent_resources = args[:ignore_dependent_resources] if args.key?(:ignore_dependent_resources)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Describes an Elliptic Curve key that may be used in a Certificate issued from
      # a CaPool.
      class EcKeyType
        include Google::Apis::Core::Hashable
      
        # Optional. A signature algorithm that must be used. If this is omitted, any EC-
        # based signature algorithm will be allowed.
        # Corresponds to the JSON property `signatureAlgorithm`
        # @return [String]
        attr_accessor :signature_algorithm
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @signature_algorithm = args[:signature_algorithm] if args.key?(:signature_algorithm)
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
      
      # Request message for CertificateAuthorityService.EnableCertificateAuthority.
      class EnableCertificateAuthorityRequest
        include Google::Apis::Core::Hashable
      
        # Optional. An ID to identify requests. Specify a unique request ID so that if
        # you must retry your request, the server will know to ignore the request if it
        # has already been completed. The server will guarantee that for at least 60
        # minutes since the first request. For example, consider a situation where you
        # make an initial request and the request times out. If you make the request
        # again with the same request ID, the server can check if original operation
        # with the same request ID was received, and if so, will ignore the second
        # request. This prevents clients from accidentally creating duplicate
        # commitments. The request ID must be a valid UUID with the exception that zero
        # UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
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
      
      # KeyUsage.ExtendedKeyUsageOptions has fields that correspond to certain common
      # OIDs that could be specified as an extended key usage value.
      class ExtendedKeyUsageOptions
        include Google::Apis::Core::Hashable
      
        # Corresponds to OID 1.3.6.1.5.5.7.3.2. Officially described as "TLS WWW client
        # authentication", though regularly used for non-WWW TLS.
        # Corresponds to the JSON property `clientAuth`
        # @return [Boolean]
        attr_accessor :client_auth
        alias_method :client_auth?, :client_auth
      
        # Corresponds to OID 1.3.6.1.5.5.7.3.3. Officially described as "Signing of
        # downloadable executable code client authentication".
        # Corresponds to the JSON property `codeSigning`
        # @return [Boolean]
        attr_accessor :code_signing
        alias_method :code_signing?, :code_signing
      
        # Corresponds to OID 1.3.6.1.5.5.7.3.4. Officially described as "Email
        # protection".
        # Corresponds to the JSON property `emailProtection`
        # @return [Boolean]
        attr_accessor :email_protection
        alias_method :email_protection?, :email_protection
      
        # Corresponds to OID 1.3.6.1.5.5.7.3.9. Officially described as "Signing OCSP
        # responses".
        # Corresponds to the JSON property `ocspSigning`
        # @return [Boolean]
        attr_accessor :ocsp_signing
        alias_method :ocsp_signing?, :ocsp_signing
      
        # Corresponds to OID 1.3.6.1.5.5.7.3.1. Officially described as "TLS WWW server
        # authentication", though regularly used for non-WWW TLS.
        # Corresponds to the JSON property `serverAuth`
        # @return [Boolean]
        attr_accessor :server_auth
        alias_method :server_auth?, :server_auth
      
        # Corresponds to OID 1.3.6.1.5.5.7.3.8. Officially described as "Binding the
        # hash of an object to a time".
        # Corresponds to the JSON property `timeStamping`
        # @return [Boolean]
        attr_accessor :time_stamping
        alias_method :time_stamping?, :time_stamping
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_auth = args[:client_auth] if args.key?(:client_auth)
          @code_signing = args[:code_signing] if args.key?(:code_signing)
          @email_protection = args[:email_protection] if args.key?(:email_protection)
          @ocsp_signing = args[:ocsp_signing] if args.key?(:ocsp_signing)
          @server_auth = args[:server_auth] if args.key?(:server_auth)
          @time_stamping = args[:time_stamping] if args.key?(:time_stamping)
        end
      end
      
      # Request message for CertificateAuthorityService.FetchCaCerts.
      class FetchCaCertsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. An ID to identify requests. Specify a unique request ID so that if
        # you must retry your request, the server will know to ignore the request if it
        # has already been completed. The server will guarantee that for at least 60
        # minutes since the first request. For example, consider a situation where you
        # make an initial request and the request times out. If you make the request
        # again with the same request ID, the server can check if original operation
        # with the same request ID was received, and if so, will ignore the second
        # request. This prevents clients from accidentally creating duplicate
        # commitments. The request ID must be a valid UUID with the exception that zero
        # UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Response message for CertificateAuthorityService.FetchCaCerts.
      class FetchCaCertsResponse
        include Google::Apis::Core::Hashable
      
        # The PEM encoded CA certificate chains of all certificate authorities in this
        # CaPool in the ENABLED, DISABLED, or STAGED states.
        # Corresponds to the JSON property `caCerts`
        # @return [Array<Google::Apis::PrivatecaV1::CertChain>]
        attr_accessor :ca_certs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_certs = args[:ca_certs] if args.key?(:ca_certs)
        end
      end
      
      # Response message for CertificateAuthorityService.FetchCertificateAuthorityCsr.
      class FetchCertificateAuthorityCsrResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The PEM-encoded signed certificate signing request (CSR).
        # Corresponds to the JSON property `pemCsr`
        # @return [String]
        attr_accessor :pem_csr
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pem_csr = args[:pem_csr] if args.key?(:pem_csr)
        end
      end
      
      # IssuanceModes specifies the allowed ways in which Certificates may be
      # requested from this CaPool.
      class IssuanceModes
        include Google::Apis::Core::Hashable
      
        # Optional. When true, allows callers to create Certificates by specifying a
        # CertificateConfig.
        # Corresponds to the JSON property `allowConfigBasedIssuance`
        # @return [Boolean]
        attr_accessor :allow_config_based_issuance
        alias_method :allow_config_based_issuance?, :allow_config_based_issuance
      
        # Optional. When true, allows callers to create Certificates by specifying a CSR.
        # Corresponds to the JSON property `allowCsrBasedIssuance`
        # @return [Boolean]
        attr_accessor :allow_csr_based_issuance
        alias_method :allow_csr_based_issuance?, :allow_csr_based_issuance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_config_based_issuance = args[:allow_config_based_issuance] if args.key?(:allow_config_based_issuance)
          @allow_csr_based_issuance = args[:allow_csr_based_issuance] if args.key?(:allow_csr_based_issuance)
        end
      end
      
      # Defines controls over all certificate issuance within a CaPool.
      class IssuancePolicy
        include Google::Apis::Core::Hashable
      
        # IssuanceModes specifies the allowed ways in which Certificates may be
        # requested from this CaPool.
        # Corresponds to the JSON property `allowedIssuanceModes`
        # @return [Google::Apis::PrivatecaV1::IssuanceModes]
        attr_accessor :allowed_issuance_modes
      
        # Optional. If any AllowedKeyType is specified, then the certificate request's
        # public key must match one of the key types listed here. Otherwise, any key may
        # be used.
        # Corresponds to the JSON property `allowedKeyTypes`
        # @return [Array<Google::Apis::PrivatecaV1::AllowedKeyType>]
        attr_accessor :allowed_key_types
      
        # Optional. The duration to backdate all certificates issued from this CaPool.
        # If not set, the certificates will be issued with a not_before_time of the
        # issuance time (i.e. the current time). If set, the certificates will be issued
        # with a not_before_time of the issuance time minus the backdate_duration. The
        # not_after_time will be adjusted to preserve the requested lifetime. The
        # backdate_duration must be less than or equal to 48 hours.
        # Corresponds to the JSON property `backdateDuration`
        # @return [String]
        attr_accessor :backdate_duration
      
        # An X509Parameters is used to describe certain fields of an X.509 certificate,
        # such as the key usage fields, fields specific to CA certificates, certificate
        # policy extensions and custom extensions.
        # Corresponds to the JSON property `baselineValues`
        # @return [Google::Apis::PrivatecaV1::X509Parameters]
        attr_accessor :baseline_values
      
        # Describes constraints on a Certificate's Subject and SubjectAltNames.
        # Corresponds to the JSON property `identityConstraints`
        # @return [Google::Apis::PrivatecaV1::CertificateIdentityConstraints]
        attr_accessor :identity_constraints
      
        # Optional. The maximum lifetime allowed for issued Certificates. Note that if
        # the issuing CertificateAuthority expires before a Certificate resource's
        # requested maximum_lifetime, the effective lifetime will be explicitly
        # truncated to match it.
        # Corresponds to the JSON property `maximumLifetime`
        # @return [String]
        attr_accessor :maximum_lifetime
      
        # Describes a set of X.509 extensions that may be part of some certificate
        # issuance controls.
        # Corresponds to the JSON property `passthroughExtensions`
        # @return [Google::Apis::PrivatecaV1::CertificateExtensionConstraints]
        attr_accessor :passthrough_extensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_issuance_modes = args[:allowed_issuance_modes] if args.key?(:allowed_issuance_modes)
          @allowed_key_types = args[:allowed_key_types] if args.key?(:allowed_key_types)
          @backdate_duration = args[:backdate_duration] if args.key?(:backdate_duration)
          @baseline_values = args[:baseline_values] if args.key?(:baseline_values)
          @identity_constraints = args[:identity_constraints] if args.key?(:identity_constraints)
          @maximum_lifetime = args[:maximum_lifetime] if args.key?(:maximum_lifetime)
          @passthrough_extensions = args[:passthrough_extensions] if args.key?(:passthrough_extensions)
        end
      end
      
      # A KeyId identifies a specific public key, usually by hashing the public key.
      class KeyId
        include Google::Apis::Core::Hashable
      
        # Optional. The value of this KeyId encoded in lowercase hexadecimal. This is
        # most likely the 160 bit SHA-1 hash of the public key.
        # Corresponds to the JSON property `keyId`
        # @return [String]
        attr_accessor :key_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_id = args[:key_id] if args.key?(:key_id)
        end
      end
      
      # A KeyUsage describes key usage values that may appear in an X.509 certificate.
      class KeyUsage
        include Google::Apis::Core::Hashable
      
        # KeyUsage.KeyUsageOptions corresponds to the key usage values described in
        # https://tools.ietf.org/html/rfc5280#section-4.2.1.3.
        # Corresponds to the JSON property `baseKeyUsage`
        # @return [Google::Apis::PrivatecaV1::KeyUsageOptions]
        attr_accessor :base_key_usage
      
        # KeyUsage.ExtendedKeyUsageOptions has fields that correspond to certain common
        # OIDs that could be specified as an extended key usage value.
        # Corresponds to the JSON property `extendedKeyUsage`
        # @return [Google::Apis::PrivatecaV1::ExtendedKeyUsageOptions]
        attr_accessor :extended_key_usage
      
        # Used to describe extended key usages that are not listed in the KeyUsage.
        # ExtendedKeyUsageOptions message.
        # Corresponds to the JSON property `unknownExtendedKeyUsages`
        # @return [Array<Google::Apis::PrivatecaV1::ObjectIdProp>]
        attr_accessor :unknown_extended_key_usages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_key_usage = args[:base_key_usage] if args.key?(:base_key_usage)
          @extended_key_usage = args[:extended_key_usage] if args.key?(:extended_key_usage)
          @unknown_extended_key_usages = args[:unknown_extended_key_usages] if args.key?(:unknown_extended_key_usages)
        end
      end
      
      # KeyUsage.KeyUsageOptions corresponds to the key usage values described in
      # https://tools.ietf.org/html/rfc5280#section-4.2.1.3.
      class KeyUsageOptions
        include Google::Apis::Core::Hashable
      
        # The key may be used to sign certificates.
        # Corresponds to the JSON property `certSign`
        # @return [Boolean]
        attr_accessor :cert_sign
        alias_method :cert_sign?, :cert_sign
      
        # The key may be used for cryptographic commitments. Note that this may also be
        # referred to as "non-repudiation".
        # Corresponds to the JSON property `contentCommitment`
        # @return [Boolean]
        attr_accessor :content_commitment
        alias_method :content_commitment?, :content_commitment
      
        # The key may be used sign certificate revocation lists.
        # Corresponds to the JSON property `crlSign`
        # @return [Boolean]
        attr_accessor :crl_sign
        alias_method :crl_sign?, :crl_sign
      
        # The key may be used to encipher data.
        # Corresponds to the JSON property `dataEncipherment`
        # @return [Boolean]
        attr_accessor :data_encipherment
        alias_method :data_encipherment?, :data_encipherment
      
        # The key may be used to decipher only.
        # Corresponds to the JSON property `decipherOnly`
        # @return [Boolean]
        attr_accessor :decipher_only
        alias_method :decipher_only?, :decipher_only
      
        # The key may be used for digital signatures.
        # Corresponds to the JSON property `digitalSignature`
        # @return [Boolean]
        attr_accessor :digital_signature
        alias_method :digital_signature?, :digital_signature
      
        # The key may be used to encipher only.
        # Corresponds to the JSON property `encipherOnly`
        # @return [Boolean]
        attr_accessor :encipher_only
        alias_method :encipher_only?, :encipher_only
      
        # The key may be used in a key agreement protocol.
        # Corresponds to the JSON property `keyAgreement`
        # @return [Boolean]
        attr_accessor :key_agreement
        alias_method :key_agreement?, :key_agreement
      
        # The key may be used to encipher other keys.
        # Corresponds to the JSON property `keyEncipherment`
        # @return [Boolean]
        attr_accessor :key_encipherment
        alias_method :key_encipherment?, :key_encipherment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cert_sign = args[:cert_sign] if args.key?(:cert_sign)
          @content_commitment = args[:content_commitment] if args.key?(:content_commitment)
          @crl_sign = args[:crl_sign] if args.key?(:crl_sign)
          @data_encipherment = args[:data_encipherment] if args.key?(:data_encipherment)
          @decipher_only = args[:decipher_only] if args.key?(:decipher_only)
          @digital_signature = args[:digital_signature] if args.key?(:digital_signature)
          @encipher_only = args[:encipher_only] if args.key?(:encipher_only)
          @key_agreement = args[:key_agreement] if args.key?(:key_agreement)
          @key_encipherment = args[:key_encipherment] if args.key?(:key_encipherment)
        end
      end
      
      # A Cloud KMS key configuration that a CertificateAuthority will use.
      class KeyVersionSpec
        include Google::Apis::Core::Hashable
      
        # The algorithm to use for creating a managed Cloud KMS key for a for a
        # simplified experience. All managed keys will be have their ProtectionLevel as `
        # HSM`.
        # Corresponds to the JSON property `algorithm`
        # @return [String]
        attr_accessor :algorithm
      
        # The resource name for an existing Cloud KMS CryptoKeyVersion in the format `
        # projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`. This
        # option enables full flexibility in the key's capabilities and properties.
        # Corresponds to the JSON property `cloudKmsKeyVersion`
        # @return [String]
        attr_accessor :cloud_kms_key_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @algorithm = args[:algorithm] if args.key?(:algorithm)
          @cloud_kms_key_version = args[:cloud_kms_key_version] if args.key?(:cloud_kms_key_version)
        end
      end
      
      # Response message for CertificateAuthorityService.ListCaPools.
      class ListCaPoolsResponse
        include Google::Apis::Core::Hashable
      
        # The list of CaPools.
        # Corresponds to the JSON property `caPools`
        # @return [Array<Google::Apis::PrivatecaV1::CaPool>]
        attr_accessor :ca_pools
      
        # A token to retrieve next page of results. Pass this value in
        # ListCertificateAuthoritiesRequest.page_token to retrieve the next page of
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of locations (e.g. "us-west1") that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_pools = args[:ca_pools] if args.key?(:ca_pools)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for CertificateAuthorityService.ListCertificateAuthorities.
      class ListCertificateAuthoritiesResponse
        include Google::Apis::Core::Hashable
      
        # The list of CertificateAuthorities.
        # Corresponds to the JSON property `certificateAuthorities`
        # @return [Array<Google::Apis::PrivatecaV1::CertificateAuthority>]
        attr_accessor :certificate_authorities
      
        # A token to retrieve next page of results. Pass this value in
        # ListCertificateAuthoritiesRequest.page_token to retrieve the next page of
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of locations (e.g. "us-west1") that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_authorities = args[:certificate_authorities] if args.key?(:certificate_authorities)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for CertificateAuthorityService.
      # ListCertificateRevocationLists.
      class ListCertificateRevocationListsResponse
        include Google::Apis::Core::Hashable
      
        # The list of CertificateRevocationLists.
        # Corresponds to the JSON property `certificateRevocationLists`
        # @return [Array<Google::Apis::PrivatecaV1::CertificateRevocationList>]
        attr_accessor :certificate_revocation_lists
      
        # A token to retrieve next page of results. Pass this value in
        # ListCertificateRevocationListsRequest.page_token to retrieve the next page of
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of locations (e.g. "us-west1") that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_revocation_lists = args[:certificate_revocation_lists] if args.key?(:certificate_revocation_lists)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for CertificateAuthorityService.ListCertificateTemplates.
      class ListCertificateTemplatesResponse
        include Google::Apis::Core::Hashable
      
        # The list of CertificateTemplates.
        # Corresponds to the JSON property `certificateTemplates`
        # @return [Array<Google::Apis::PrivatecaV1::CertificateTemplate>]
        attr_accessor :certificate_templates
      
        # A token to retrieve next page of results. Pass this value in
        # ListCertificateTemplatesRequest.page_token to retrieve the next page of
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of locations (e.g. "us-west1") that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_templates = args[:certificate_templates] if args.key?(:certificate_templates)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for CertificateAuthorityService.ListCertificates.
      class ListCertificatesResponse
        include Google::Apis::Core::Hashable
      
        # The list of Certificates.
        # Corresponds to the JSON property `certificates`
        # @return [Array<Google::Apis::PrivatecaV1::Certificate>]
        attr_accessor :certificates
      
        # A token to retrieve next page of results. Pass this value in
        # ListCertificatesRequest.page_token to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of locations (e.g. "us-west1") that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificates = args[:certificates] if args.key?(:certificates)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::PrivatecaV1::Location>]
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
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::PrivatecaV1::Operation>]
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
      
      # Describes the X.509 name constraints extension, per https://tools.ietf.org/
      # html/rfc5280#section-4.2.1.10
      class NameConstraints
        include Google::Apis::Core::Hashable
      
        # Indicates whether or not the name constraints are marked critical.
        # Corresponds to the JSON property `critical`
        # @return [Boolean]
        attr_accessor :critical
        alias_method :critical?, :critical
      
        # Contains excluded DNS names. Any DNS name that can be constructed by simply
        # adding zero or more labels to the left-hand side of the name satisfies the
        # name constraint. For example, `example.com`, `www.example.com`, `www.sub.
        # example.com` would satisfy `example.com` while `example1.com` does not.
        # Corresponds to the JSON property `excludedDnsNames`
        # @return [Array<String>]
        attr_accessor :excluded_dns_names
      
        # Contains the excluded email addresses. The value can be a particular email
        # address, a hostname to indicate all email addresses on that host or a domain
        # with a leading period (e.g. `.example.com`) to indicate all email addresses in
        # that domain.
        # Corresponds to the JSON property `excludedEmailAddresses`
        # @return [Array<String>]
        attr_accessor :excluded_email_addresses
      
        # Contains the excluded IP ranges. For IPv4 addresses, the ranges are expressed
        # using CIDR notation as specified in RFC 4632. For IPv6 addresses, the ranges
        # are expressed in similar encoding as IPv4 addresses.
        # Corresponds to the JSON property `excludedIpRanges`
        # @return [Array<String>]
        attr_accessor :excluded_ip_ranges
      
        # Contains the excluded URIs that apply to the host part of the name. The value
        # can be a hostname or a domain with a leading period (like `.example.com`)
        # Corresponds to the JSON property `excludedUris`
        # @return [Array<String>]
        attr_accessor :excluded_uris
      
        # Contains permitted DNS names. Any DNS name that can be constructed by simply
        # adding zero or more labels to the left-hand side of the name satisfies the
        # name constraint. For example, `example.com`, `www.example.com`, `www.sub.
        # example.com` would satisfy `example.com` while `example1.com` does not.
        # Corresponds to the JSON property `permittedDnsNames`
        # @return [Array<String>]
        attr_accessor :permitted_dns_names
      
        # Contains the permitted email addresses. The value can be a particular email
        # address, a hostname to indicate all email addresses on that host or a domain
        # with a leading period (e.g. `.example.com`) to indicate all email addresses in
        # that domain.
        # Corresponds to the JSON property `permittedEmailAddresses`
        # @return [Array<String>]
        attr_accessor :permitted_email_addresses
      
        # Contains the permitted IP ranges. For IPv4 addresses, the ranges are expressed
        # using CIDR notation as specified in RFC 4632. For IPv6 addresses, the ranges
        # are expressed in similar encoding as IPv4 addresses.
        # Corresponds to the JSON property `permittedIpRanges`
        # @return [Array<String>]
        attr_accessor :permitted_ip_ranges
      
        # Contains the permitted URIs that apply to the host part of the name. The value
        # can be a hostname or a domain with a leading period (like `.example.com`)
        # Corresponds to the JSON property `permittedUris`
        # @return [Array<String>]
        attr_accessor :permitted_uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @critical = args[:critical] if args.key?(:critical)
          @excluded_dns_names = args[:excluded_dns_names] if args.key?(:excluded_dns_names)
          @excluded_email_addresses = args[:excluded_email_addresses] if args.key?(:excluded_email_addresses)
          @excluded_ip_ranges = args[:excluded_ip_ranges] if args.key?(:excluded_ip_ranges)
          @excluded_uris = args[:excluded_uris] if args.key?(:excluded_uris)
          @permitted_dns_names = args[:permitted_dns_names] if args.key?(:permitted_dns_names)
          @permitted_email_addresses = args[:permitted_email_addresses] if args.key?(:permitted_email_addresses)
          @permitted_ip_ranges = args[:permitted_ip_ranges] if args.key?(:permitted_ip_ranges)
          @permitted_uris = args[:permitted_uris] if args.key?(:permitted_uris)
        end
      end
      
      # An ObjectId specifies an object identifier (OID). These provide context and
      # describe types in ASN.1 messages.
      class ObjectIdProp
        include Google::Apis::Core::Hashable
      
        # Required. The parts of an OID path. The most significant parts of the path
        # come first.
        # Corresponds to the JSON property `objectIdPath`
        # @return [Array<Fixnum>]
        attr_accessor :object_id_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_path = args[:object_id_path] if args.key?(:object_id_path)
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
        # @return [Google::Apis::PrivatecaV1::Status]
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
        # operation. Operations that have successfully been cancelled have google.
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
        # @return [Array<Google::Apis::PrivatecaV1::AuditConfig>]
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
        # @return [Array<Google::Apis::PrivatecaV1::Binding>]
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
      
      # A PublicKey describes a public key.
      class PublicKey
        include Google::Apis::Core::Hashable
      
        # Required. The format of the public key.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Required. A public key. The padding and encoding must match with the `
        # KeyFormat` value specified for the `format` field.
        # Corresponds to the JSON property `key`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @format = args[:format] if args.key?(:format)
          @key = args[:key] if args.key?(:key)
        end
      end
      
      # Options relating to the publication of each CertificateAuthority's CA
      # certificate and CRLs and their inclusion as extensions in issued Certificates.
      # The options set here apply to certificates issued by any CertificateAuthority
      # in the CaPool.
      class PublishingOptions
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies the encoding format of each CertificateAuthority resource'
        # s CA certificate and CRLs. If this is omitted, CA certificates and CRLs will
        # be published in PEM.
        # Corresponds to the JSON property `encodingFormat`
        # @return [String]
        attr_accessor :encoding_format
      
        # Optional. When true, publishes each CertificateAuthority's CA certificate and
        # includes its URL in the "Authority Information Access" X.509 extension in all
        # issued Certificates. If this is false, the CA certificate will not be
        # published and the corresponding X.509 extension will not be written in issued
        # certificates.
        # Corresponds to the JSON property `publishCaCert`
        # @return [Boolean]
        attr_accessor :publish_ca_cert
        alias_method :publish_ca_cert?, :publish_ca_cert
      
        # Optional. When true, publishes each CertificateAuthority's CRL and includes
        # its URL in the "CRL Distribution Points" X.509 extension in all issued
        # Certificates. If this is false, CRLs will not be published and the
        # corresponding X.509 extension will not be written in issued certificates. CRLs
        # will expire 7 days from their creation. However, we will rebuild daily. CRLs
        # are also rebuilt shortly after a certificate is revoked.
        # Corresponds to the JSON property `publishCrl`
        # @return [Boolean]
        attr_accessor :publish_crl
        alias_method :publish_crl?, :publish_crl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encoding_format = args[:encoding_format] if args.key?(:encoding_format)
          @publish_ca_cert = args[:publish_ca_cert] if args.key?(:publish_ca_cert)
          @publish_crl = args[:publish_crl] if args.key?(:publish_crl)
        end
      end
      
      # Operation metadata returned by the CLH during resource state reconciliation.
      class ReconciliationOperationMetadata
        include Google::Apis::Core::Hashable
      
        # DEPRECATED. Use exclusive_action instead.
        # Corresponds to the JSON property `deleteResource`
        # @return [Boolean]
        attr_accessor :delete_resource
        alias_method :delete_resource?, :delete_resource
      
        # Excluisive action returned by the CLH.
        # Corresponds to the JSON property `exclusiveAction`
        # @return [String]
        attr_accessor :exclusive_action
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delete_resource = args[:delete_resource] if args.key?(:delete_resource)
          @exclusive_action = args[:exclusive_action] if args.key?(:exclusive_action)
        end
      end
      
      # RelativeDistinguishedName specifies a relative distinguished name which will
      # be used to build a distinguished name.
      class RelativeDistinguishedName
        include Google::Apis::Core::Hashable
      
        # Attributes describes the attribute value assertions in the RDN.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::PrivatecaV1::AttributeTypeAndValue>]
        attr_accessor :attributes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
        end
      end
      
      # Describes fields that are relavent to the revocation of a Certificate.
      class RevocationDetails
        include Google::Apis::Core::Hashable
      
        # Indicates why a Certificate was revoked.
        # Corresponds to the JSON property `revocationState`
        # @return [String]
        attr_accessor :revocation_state
      
        # The time at which this Certificate was revoked.
        # Corresponds to the JSON property `revocationTime`
        # @return [String]
        attr_accessor :revocation_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @revocation_state = args[:revocation_state] if args.key?(:revocation_state)
          @revocation_time = args[:revocation_time] if args.key?(:revocation_time)
        end
      end
      
      # Request message for CertificateAuthorityService.RevokeCertificate.
      class RevokeCertificateRequest
        include Google::Apis::Core::Hashable
      
        # Required. The RevocationReason for revoking this certificate.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # Optional. An ID to identify requests. Specify a unique request ID so that if
        # you must retry your request, the server will know to ignore the request if it
        # has already been completed. The server will guarantee that for at least 60
        # minutes since the first request. For example, consider a situation where you
        # make an initial request and the request times out. If you make the request
        # again with the same request ID, the server can check if original operation
        # with the same request ID was received, and if so, will ignore the second
        # request. This prevents clients from accidentally creating duplicate
        # commitments. The request ID must be a valid UUID with the exception that zero
        # UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reason = args[:reason] if args.key?(:reason)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Describes a revoked Certificate.
      class RevokedCertificate
        include Google::Apis::Core::Hashable
      
        # The resource name for the Certificate in the format `projects/*/locations/*/
        # caPools/*/certificates/*`.
        # Corresponds to the JSON property `certificate`
        # @return [String]
        attr_accessor :certificate
      
        # The serial number of the Certificate.
        # Corresponds to the JSON property `hexSerialNumber`
        # @return [String]
        attr_accessor :hex_serial_number
      
        # The reason the Certificate was revoked.
        # Corresponds to the JSON property `revocationReason`
        # @return [String]
        attr_accessor :revocation_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate = args[:certificate] if args.key?(:certificate)
          @hex_serial_number = args[:hex_serial_number] if args.key?(:hex_serial_number)
          @revocation_reason = args[:revocation_reason] if args.key?(:revocation_reason)
        end
      end
      
      # Describes an RSA key that may be used in a Certificate issued from a CaPool.
      class RsaKeyType
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum allowed RSA modulus size (inclusive), in bits. If this
        # is not set, or if set to zero, the service will not enforce an explicit upper
        # bound on RSA modulus sizes.
        # Corresponds to the JSON property `maxModulusSize`
        # @return [Fixnum]
        attr_accessor :max_modulus_size
      
        # Optional. The minimum allowed RSA modulus size (inclusive), in bits. If this
        # is not set, or if set to zero, the service-level min RSA modulus size will
        # continue to apply.
        # Corresponds to the JSON property `minModulusSize`
        # @return [Fixnum]
        attr_accessor :min_modulus_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_modulus_size = args[:max_modulus_size] if args.key?(:max_modulus_size)
          @min_modulus_size = args[:min_modulus_size] if args.key?(:min_modulus_size)
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
        # @return [Google::Apis::PrivatecaV1::Policy]
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
      
      # Subject describes parts of a distinguished name that, in turn, describes the
      # subject of the certificate.
      class Subject
        include Google::Apis::Core::Hashable
      
        # The "common name" of the subject.
        # Corresponds to the JSON property `commonName`
        # @return [String]
        attr_accessor :common_name
      
        # The country code of the subject.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # The locality or city of the subject.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # The organization of the subject.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # The organizational_unit of the subject.
        # Corresponds to the JSON property `organizationalUnit`
        # @return [String]
        attr_accessor :organizational_unit
      
        # The postal code of the subject.
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # The province, territory, or regional state of the subject.
        # Corresponds to the JSON property `province`
        # @return [String]
        attr_accessor :province
      
        # This field can be used in place of the named subject fields.
        # Corresponds to the JSON property `rdnSequence`
        # @return [Array<Google::Apis::PrivatecaV1::RelativeDistinguishedName>]
        attr_accessor :rdn_sequence
      
        # The street address of the subject.
        # Corresponds to the JSON property `streetAddress`
        # @return [String]
        attr_accessor :street_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_name = args[:common_name] if args.key?(:common_name)
          @country_code = args[:country_code] if args.key?(:country_code)
          @locality = args[:locality] if args.key?(:locality)
          @organization = args[:organization] if args.key?(:organization)
          @organizational_unit = args[:organizational_unit] if args.key?(:organizational_unit)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @province = args[:province] if args.key?(:province)
          @rdn_sequence = args[:rdn_sequence] if args.key?(:rdn_sequence)
          @street_address = args[:street_address] if args.key?(:street_address)
        end
      end
      
      # SubjectAltNames corresponds to a more modern way of listing what the asserted
      # identity is in a certificate (i.e., compared to the "common name" in the
      # distinguished name).
      class SubjectAltNames
        include Google::Apis::Core::Hashable
      
        # Contains additional subject alternative name values. For each custom_san, the `
        # value` field must contain an ASN.1 encoded UTF8String.
        # Corresponds to the JSON property `customSans`
        # @return [Array<Google::Apis::PrivatecaV1::X509Extension>]
        attr_accessor :custom_sans
      
        # Contains only valid, fully-qualified host names.
        # Corresponds to the JSON property `dnsNames`
        # @return [Array<String>]
        attr_accessor :dns_names
      
        # Contains only valid RFC 2822 E-mail addresses.
        # Corresponds to the JSON property `emailAddresses`
        # @return [Array<String>]
        attr_accessor :email_addresses
      
        # Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6 addresses.
        # Corresponds to the JSON property `ipAddresses`
        # @return [Array<String>]
        attr_accessor :ip_addresses
      
        # Contains only valid RFC 3986 URIs.
        # Corresponds to the JSON property `uris`
        # @return [Array<String>]
        attr_accessor :uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_sans = args[:custom_sans] if args.key?(:custom_sans)
          @dns_names = args[:dns_names] if args.key?(:dns_names)
          @email_addresses = args[:email_addresses] if args.key?(:email_addresses)
          @ip_addresses = args[:ip_addresses] if args.key?(:ip_addresses)
          @uris = args[:uris] if args.key?(:uris)
        end
      end
      
      # These values are used to create the distinguished name and subject alternative
      # name fields in an X.509 certificate.
      class SubjectConfig
        include Google::Apis::Core::Hashable
      
        # Subject describes parts of a distinguished name that, in turn, describes the
        # subject of the certificate.
        # Corresponds to the JSON property `subject`
        # @return [Google::Apis::PrivatecaV1::Subject]
        attr_accessor :subject
      
        # SubjectAltNames corresponds to a more modern way of listing what the asserted
        # identity is in a certificate (i.e., compared to the "common name" in the
        # distinguished name).
        # Corresponds to the JSON property `subjectAltName`
        # @return [Google::Apis::PrivatecaV1::SubjectAltNames]
        attr_accessor :subject_alt_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subject = args[:subject] if args.key?(:subject)
          @subject_alt_name = args[:subject_alt_name] if args.key?(:subject_alt_name)
        end
      end
      
      # These values describe fields in an issued X.509 certificate such as the
      # distinguished name, subject alternative names, serial number, and lifetime.
      class SubjectDescription
        include Google::Apis::Core::Hashable
      
        # The serial number encoded in lowercase hexadecimal.
        # Corresponds to the JSON property `hexSerialNumber`
        # @return [String]
        attr_accessor :hex_serial_number
      
        # For convenience, the actual lifetime of an issued certificate.
        # Corresponds to the JSON property `lifetime`
        # @return [String]
        attr_accessor :lifetime
      
        # The time after which the certificate is expired. Per RFC 5280, the validity
        # period for a certificate is the period of time from not_before_time through
        # not_after_time, inclusive. Corresponds to 'not_before_time' + 'lifetime' - 1
        # second.
        # Corresponds to the JSON property `notAfterTime`
        # @return [String]
        attr_accessor :not_after_time
      
        # The time at which the certificate becomes valid.
        # Corresponds to the JSON property `notBeforeTime`
        # @return [String]
        attr_accessor :not_before_time
      
        # Subject describes parts of a distinguished name that, in turn, describes the
        # subject of the certificate.
        # Corresponds to the JSON property `subject`
        # @return [Google::Apis::PrivatecaV1::Subject]
        attr_accessor :subject
      
        # SubjectAltNames corresponds to a more modern way of listing what the asserted
        # identity is in a certificate (i.e., compared to the "common name" in the
        # distinguished name).
        # Corresponds to the JSON property `subjectAltName`
        # @return [Google::Apis::PrivatecaV1::SubjectAltNames]
        attr_accessor :subject_alt_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hex_serial_number = args[:hex_serial_number] if args.key?(:hex_serial_number)
          @lifetime = args[:lifetime] if args.key?(:lifetime)
          @not_after_time = args[:not_after_time] if args.key?(:not_after_time)
          @not_before_time = args[:not_before_time] if args.key?(:not_before_time)
          @subject = args[:subject] if args.key?(:subject)
          @subject_alt_name = args[:subject_alt_name] if args.key?(:subject_alt_name)
        end
      end
      
      # Describes a subordinate CA's issuers. This is either a resource name to a
      # known issuing CertificateAuthority, or a PEM issuer certificate chain.
      class SubordinateConfig
        include Google::Apis::Core::Hashable
      
        # Required. This can refer to a CertificateAuthority that was used to create a
        # subordinate CertificateAuthority. This field is used for information and
        # usability purposes only. The resource name is in the format `projects/*/
        # locations/*/caPools/*/certificateAuthorities/*`.
        # Corresponds to the JSON property `certificateAuthority`
        # @return [String]
        attr_accessor :certificate_authority
      
        # This message describes a subordinate CA's issuer certificate chain. This
        # wrapper exists for compatibility reasons.
        # Corresponds to the JSON property `pemIssuerChain`
        # @return [Google::Apis::PrivatecaV1::SubordinateConfigChain]
        attr_accessor :pem_issuer_chain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_authority = args[:certificate_authority] if args.key?(:certificate_authority)
          @pem_issuer_chain = args[:pem_issuer_chain] if args.key?(:pem_issuer_chain)
        end
      end
      
      # This message describes a subordinate CA's issuer certificate chain. This
      # wrapper exists for compatibility reasons.
      class SubordinateConfigChain
        include Google::Apis::Core::Hashable
      
        # Required. Expected to be in leaf-to-root order according to RFC 5246.
        # Corresponds to the JSON property `pemCertificates`
        # @return [Array<String>]
        attr_accessor :pem_certificates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pem_certificates = args[:pem_certificates] if args.key?(:pem_certificates)
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
      
      # Request message for CertificateAuthorityService.UndeleteCertificateAuthority.
      class UndeleteCertificateAuthorityRequest
        include Google::Apis::Core::Hashable
      
        # Optional. An ID to identify requests. Specify a unique request ID so that if
        # you must retry your request, the server will know to ignore the request if it
        # has already been completed. The server will guarantee that for at least 60
        # minutes since the first request. For example, consider a situation where you
        # make an initial request and the request times out. If you make the request
        # again with the same request ID, the server can check if original operation
        # with the same request ID was received, and if so, will ignore the second
        # request. This prevents clients from accidentally creating duplicate
        # commitments. The request ID must be a valid UUID with the exception that zero
        # UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # User-defined URLs for accessing content published by this CertificateAuthority.
      class UserDefinedAccessUrls
        include Google::Apis::Core::Hashable
      
        # Optional. A list of URLs where the issuer CA certificate may be downloaded,
        # which appears in the "Authority Information Access" extension in the
        # certificate. If specified, the default Cloud Storage URLs will be omitted.
        # Corresponds to the JSON property `aiaIssuingCertificateUrls`
        # @return [Array<String>]
        attr_accessor :aia_issuing_certificate_urls
      
        # Optional. A list of URLs where to obtain CRL information, i.e. the
        # DistributionPoint.fullName described by https://tools.ietf.org/html/rfc5280#
        # section-4.2.1.13. If specified, the default Cloud Storage URLs will be omitted.
        # Corresponds to the JSON property `crlAccessUrls`
        # @return [Array<String>]
        attr_accessor :crl_access_urls
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aia_issuing_certificate_urls = args[:aia_issuing_certificate_urls] if args.key?(:aia_issuing_certificate_urls)
          @crl_access_urls = args[:crl_access_urls] if args.key?(:crl_access_urls)
        end
      end
      
      # An X509Extension specifies an X.509 extension, which may be used in different
      # parts of X.509 objects like certificates, CSRs, and CRLs.
      class X509Extension
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates whether or not this extension is critical (i.e., if the
        # client does not know how to handle this extension, the client should consider
        # this to be an error).
        # Corresponds to the JSON property `critical`
        # @return [Boolean]
        attr_accessor :critical
        alias_method :critical?, :critical
      
        # An ObjectId specifies an object identifier (OID). These provide context and
        # describe types in ASN.1 messages.
        # Corresponds to the JSON property `objectId`
        # @return [Google::Apis::PrivatecaV1::ObjectIdProp]
        attr_accessor :object_id_prop
      
        # Required. The value of this X.509 extension.
        # Corresponds to the JSON property `value`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @critical = args[:critical] if args.key?(:critical)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # An X509Parameters is used to describe certain fields of an X.509 certificate,
      # such as the key usage fields, fields specific to CA certificates, certificate
      # policy extensions and custom extensions.
      class X509Parameters
        include Google::Apis::Core::Hashable
      
        # Optional. Describes custom X.509 extensions.
        # Corresponds to the JSON property `additionalExtensions`
        # @return [Array<Google::Apis::PrivatecaV1::X509Extension>]
        attr_accessor :additional_extensions
      
        # Optional. Describes Online Certificate Status Protocol (OCSP) endpoint
        # addresses that appear in the "Authority Information Access" extension in the
        # certificate.
        # Corresponds to the JSON property `aiaOcspServers`
        # @return [Array<String>]
        attr_accessor :aia_ocsp_servers
      
        # Describes the X.509 basic constraints extension, per [RFC 5280 section 4.2.1.9]
        # (https://tools.ietf.org/html/rfc5280#section-4.2.1.9)
        # Corresponds to the JSON property `caOptions`
        # @return [Google::Apis::PrivatecaV1::CaOptions]
        attr_accessor :ca_options
      
        # A KeyUsage describes key usage values that may appear in an X.509 certificate.
        # Corresponds to the JSON property `keyUsage`
        # @return [Google::Apis::PrivatecaV1::KeyUsage]
        attr_accessor :key_usage
      
        # Describes the X.509 name constraints extension, per https://tools.ietf.org/
        # html/rfc5280#section-4.2.1.10
        # Corresponds to the JSON property `nameConstraints`
        # @return [Google::Apis::PrivatecaV1::NameConstraints]
        attr_accessor :name_constraints
      
        # Optional. Describes the X.509 certificate policy object identifiers, per https:
        # //tools.ietf.org/html/rfc5280#section-4.2.1.4.
        # Corresponds to the JSON property `policyIds`
        # @return [Array<Google::Apis::PrivatecaV1::ObjectIdProp>]
        attr_accessor :policy_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_extensions = args[:additional_extensions] if args.key?(:additional_extensions)
          @aia_ocsp_servers = args[:aia_ocsp_servers] if args.key?(:aia_ocsp_servers)
          @ca_options = args[:ca_options] if args.key?(:ca_options)
          @key_usage = args[:key_usage] if args.key?(:key_usage)
          @name_constraints = args[:name_constraints] if args.key?(:name_constraints)
          @policy_ids = args[:policy_ids] if args.key?(:policy_ids)
        end
      end
    end
  end
end
