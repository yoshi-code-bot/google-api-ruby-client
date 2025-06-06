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
    module MonitoringV3
      
      # Describes how to combine multiple time series to provide a different view of
      # the data. Aggregation of time series is done in two steps. First, each time
      # series in the set is aligned to the same time interval boundaries, then the
      # set of time series is optionally reduced in number.Alignment consists of
      # applying the per_series_aligner operation to each time series after its data
      # has been divided into regular alignment_period time intervals. This process
      # takes all of the data points in an alignment period, applies a mathematical
      # transformation such as averaging, minimum, maximum, delta, etc., and converts
      # them into a single data point per period.Reduction is when the aligned and
      # transformed time series can optionally be combined, reducing the number of
      # time series through similar mathematical transformations. Reduction involves
      # applying a cross_series_reducer to all the time series, optionally sorting the
      # time series into subsets with group_by_fields, and applying the reducer to
      # each subset.The raw time series data can contain a huge amount of information
      # from multiple sources. Alignment and reduction transforms this mass of data
      # into a more manageable and representative collection of data, for example "the
      # 95% latency across the average of all tasks in a cluster". This representative
      # data can be more easily graphed and comprehended, and the individual time
      # series data is still available for later drilldown. For more details, see
      # Filtering and aggregation (https://cloud.google.com/monitoring/api/v3/
      # aggregation).
      class Aggregation
        include Google::Apis::Core::Hashable
      
        # The alignment_period specifies a time interval, in seconds, that is used to
        # divide the data in all the time series into consistent blocks of time. This
        # will be done before the per-series aligner can be applied to the data.The
        # value must be at least 60 seconds. If a per-series aligner other than
        # ALIGN_NONE is specified, this field is required or an error is returned. If no
        # per-series aligner is specified, or the aligner ALIGN_NONE is specified, then
        # this field is ignored.The maximum value of the alignment_period is 104 weeks (
        # 2 years) for charts, and 90,000 seconds (25 hours) for alerting policies.
        # Corresponds to the JSON property `alignmentPeriod`
        # @return [String]
        attr_accessor :alignment_period
      
        # The reduction operation to be used to combine time series into a single time
        # series, where the value of each data point in the resulting series is a
        # function of all the already aligned values in the input time series.Not all
        # reducer operations can be applied to all time series. The valid choices depend
        # on the metric_kind and the value_type of the original time series. Reduction
        # can yield a time series with a different metric_kind or value_type than the
        # input time series.Time series data must first be aligned (see
        # per_series_aligner) in order to perform cross-time series reduction. If
        # cross_series_reducer is specified, then per_series_aligner must be specified,
        # and must not be ALIGN_NONE. An alignment_period must also be specified;
        # otherwise, an error is returned.
        # Corresponds to the JSON property `crossSeriesReducer`
        # @return [String]
        attr_accessor :cross_series_reducer
      
        # The set of fields to preserve when cross_series_reducer is specified. The
        # group_by_fields determine how the time series are partitioned into subsets
        # prior to applying the aggregation operation. Each subset contains time series
        # that have the same value for each of the grouping fields. Each individual time
        # series is a member of exactly one subset. The cross_series_reducer is applied
        # to each subset of time series. It is not possible to reduce across different
        # resource types, so this field implicitly contains resource.type. Fields not
        # specified in group_by_fields are aggregated away. If group_by_fields is not
        # specified and all the time series have the same resource type, then the time
        # series are aggregated into a single output time series. If
        # cross_series_reducer is not defined, this field is ignored.
        # Corresponds to the JSON property `groupByFields`
        # @return [Array<String>]
        attr_accessor :group_by_fields
      
        # An Aligner describes how to bring the data points in a single time series into
        # temporal alignment. Except for ALIGN_NONE, all alignments cause all the data
        # points in an alignment_period to be mathematically grouped together, resulting
        # in a single data point for each alignment_period with end timestamp at the end
        # of the period.Not all alignment operations may be applied to all time series.
        # The valid choices depend on the metric_kind and value_type of the original
        # time series. Alignment can change the metric_kind or the value_type of the
        # time series.Time series data must be aligned in order to perform cross-time
        # series reduction. If cross_series_reducer is specified, then
        # per_series_aligner must be specified and not equal to ALIGN_NONE and
        # alignment_period must be specified; otherwise, an error is returned.
        # Corresponds to the JSON property `perSeriesAligner`
        # @return [String]
        attr_accessor :per_series_aligner
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alignment_period = args[:alignment_period] if args.key?(:alignment_period)
          @cross_series_reducer = args[:cross_series_reducer] if args.key?(:cross_series_reducer)
          @group_by_fields = args[:group_by_fields] if args.key?(:group_by_fields)
          @per_series_aligner = args[:per_series_aligner] if args.key?(:per_series_aligner)
        end
      end
      
      # A description of the conditions under which some aspect of your system is
      # considered to be "unhealthy" and the ways to notify people or services about
      # this state. For an overview of alerting policies, see Introduction to Alerting
      # (https://cloud.google.com/monitoring/alerts/).
      class AlertPolicy
        include Google::Apis::Core::Hashable
      
        # Control over how the notification channels in notification_channels are
        # notified when this alert fires.
        # Corresponds to the JSON property `alertStrategy`
        # @return [Google::Apis::MonitoringV3::AlertStrategy]
        attr_accessor :alert_strategy
      
        # How to combine the results of multiple conditions to determine if an incident
        # should be opened. If condition_time_series_query_language is present, this
        # must be COMBINE_UNSPECIFIED.
        # Corresponds to the JSON property `combiner`
        # @return [String]
        attr_accessor :combiner
      
        # A list of conditions for the policy. The conditions are combined by AND or OR
        # according to the combiner field. If the combined conditions evaluate to true,
        # then an incident is created. A policy can have from one to six conditions. If
        # condition_time_series_query_language is present, it must be the only condition.
        # If condition_monitoring_query_language is present, it must be the only
        # condition.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::MonitoringV3::Condition>]
        attr_accessor :conditions
      
        # Describes a change made to a configuration.
        # Corresponds to the JSON property `creationRecord`
        # @return [Google::Apis::MonitoringV3::MutationRecord]
        attr_accessor :creation_record
      
        # A short name or phrase used to identify the policy in dashboards,
        # notifications, and incidents. To avoid confusion, don't use the same display
        # name for multiple policies in the same project. The name is limited to 512
        # Unicode characters.The convention for the display_name of a
        # PrometheusQueryLanguageCondition is "`rule group name`/`alert name`", where
        # the `rule group name` and `alert name` should be taken from the corresponding
        # Prometheus configuration file. This convention is not enforced. In any case
        # the display_name is not a unique key of the AlertPolicy.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Documentation that is included in the notifications and incidents pertaining
        # to this policy.
        # Corresponds to the JSON property `documentation`
        # @return [Google::Apis::MonitoringV3::Documentation]
        attr_accessor :documentation
      
        # Whether or not the policy is enabled. On write, the default interpretation if
        # unset is that the policy is enabled. On read, clients should not make any
        # assumption about the state if it has not been populated. The field should
        # always be populated on List and Get operations, unless a field projection has
        # been specified that strips it out.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Describes a change made to a configuration.
        # Corresponds to the JSON property `mutationRecord`
        # @return [Google::Apis::MonitoringV3::MutationRecord]
        attr_accessor :mutation_record
      
        # Identifier. Required if the policy exists. The resource name for this policy.
        # The format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[ALERT_POLICY_ID]
        # [ALERT_POLICY_ID] is assigned by Cloud Monitoring when the policy is created.
        # When calling the alertPolicies.create method, do not include the name field in
        # the alerting policy passed as part of the request.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Identifies the notification channels to which notifications should be sent
        # when incidents are opened or closed or when new violations occur on an already
        # opened incident. Each element of this array corresponds to the name field in
        # each of the NotificationChannel objects that are returned from the
        # ListNotificationChannels method. The format of the entries in this field is:
        # projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID]
        # Corresponds to the JSON property `notificationChannels`
        # @return [Array<String>]
        attr_accessor :notification_channels
      
        # Optional. The severity of an alerting policy indicates how important incidents
        # generated by that policy are. The severity level will be displayed on the
        # Incident detail page and in notifications.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # User-supplied key/value data to be used for organizing and identifying the
        # AlertPolicy objects.The field can contain up to 64 entries. Each key and value
        # is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels
        # and values can contain only lowercase letters, numerals, underscores, and
        # dashes. Keys must begin with a letter.Note that Prometheus `alert name` is a
        # valid Prometheus label names (https://prometheus.io/docs/concepts/data_model/#
        # metric-names-and-labels), whereas Prometheus `rule group` is an unrestricted
        # UTF-8 string. This means that they cannot be stored as-is in user labels,
        # because they may contain characters that are not allowed in user-label values.
        # Corresponds to the JSON property `userLabels`
        # @return [Hash<String,String>]
        attr_accessor :user_labels
      
        # The Status type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by gRPC
        # (https://github.com/grpc). Each Status message contains three pieces of data:
        # error code, error message, and error details.You can find out more about this
        # error model and how to work with it in the API Design Guide (https://cloud.
        # google.com/apis/design/errors).
        # Corresponds to the JSON property `validity`
        # @return [Google::Apis::MonitoringV3::Status]
        attr_accessor :validity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alert_strategy = args[:alert_strategy] if args.key?(:alert_strategy)
          @combiner = args[:combiner] if args.key?(:combiner)
          @conditions = args[:conditions] if args.key?(:conditions)
          @creation_record = args[:creation_record] if args.key?(:creation_record)
          @display_name = args[:display_name] if args.key?(:display_name)
          @documentation = args[:documentation] if args.key?(:documentation)
          @enabled = args[:enabled] if args.key?(:enabled)
          @mutation_record = args[:mutation_record] if args.key?(:mutation_record)
          @name = args[:name] if args.key?(:name)
          @notification_channels = args[:notification_channels] if args.key?(:notification_channels)
          @severity = args[:severity] if args.key?(:severity)
          @user_labels = args[:user_labels] if args.key?(:user_labels)
          @validity = args[:validity] if args.key?(:validity)
        end
      end
      
      # Control over how the notification channels in notification_channels are
      # notified when this alert fires.
      class AlertStrategy
        include Google::Apis::Core::Hashable
      
        # If an alerting policy that was active has no data for this long, any open
        # incidents will close
        # Corresponds to the JSON property `autoClose`
        # @return [String]
        attr_accessor :auto_close
      
        # Control how notifications will be sent out, on a per-channel basis.
        # Corresponds to the JSON property `notificationChannelStrategy`
        # @return [Array<Google::Apis::MonitoringV3::NotificationChannelStrategy>]
        attr_accessor :notification_channel_strategy
      
        # For log-based alert policies, the notification prompts is always OPENED. For
        # non log-based alert policies, the notification prompts can be OPENED or OPENED,
        # CLOSED.
        # Corresponds to the JSON property `notificationPrompts`
        # @return [Array<String>]
        attr_accessor :notification_prompts
      
        # Control over the rate of notifications sent to this alerting policy's
        # notification channels.
        # Corresponds to the JSON property `notificationRateLimit`
        # @return [Google::Apis::MonitoringV3::NotificationRateLimit]
        attr_accessor :notification_rate_limit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_close = args[:auto_close] if args.key?(:auto_close)
          @notification_channel_strategy = args[:notification_channel_strategy] if args.key?(:notification_channel_strategy)
          @notification_prompts = args[:notification_prompts] if args.key?(:notification_prompts)
          @notification_rate_limit = args[:notification_rate_limit] if args.key?(:notification_rate_limit)
        end
      end
      
      # App Engine service. Learn more at https://cloud.google.com/appengine.
      class AppEngine
        include Google::Apis::Core::Hashable
      
        # The ID of the App Engine module underlying this service. Corresponds to the
        # module_id resource label in the gae_app monitored resource (https://cloud.
        # google.com/monitoring/api/resources#tag_gae_app).
        # Corresponds to the JSON property `moduleId`
        # @return [String]
        attr_accessor :module_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @module_id = args[:module_id] if args.key?(:module_id)
        end
      end
      
      # Future parameters for the availability SLI.
      class AvailabilityCriteria
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The authentication parameters to provide to the specified resource or URL that
      # requires a username and password. Currently, only Basic HTTP authentication (
      # https://tools.ietf.org/html/rfc7617) is supported in Uptime checks.
      class BasicAuthentication
        include Google::Apis::Core::Hashable
      
        # The password to use when authenticating with the HTTP server.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # The username to use when authenticating with the HTTP server.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @password = args[:password] if args.key?(:password)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # A well-known service type, defined by its service type and service labels.
      # Documentation and examples here (https://cloud.google.com/stackdriver/docs/
      # solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli).
      class BasicService
        include Google::Apis::Core::Hashable
      
        # Labels that specify the resource that emits the monitoring data which is used
        # for SLO reporting of this Service. Documentation and valid values for given
        # service types here (https://cloud.google.com/stackdriver/docs/solutions/slo-
        # monitoring/api/api-structures#basic-svc-w-basic-sli).
        # Corresponds to the JSON property `serviceLabels`
        # @return [Hash<String,String>]
        attr_accessor :service_labels
      
        # The type of service that this basic service defines, e.g. APP_ENGINE service
        # type. Documentation and valid values here (https://cloud.google.com/
        # stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-
        # sli).
        # Corresponds to the JSON property `serviceType`
        # @return [String]
        attr_accessor :service_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_labels = args[:service_labels] if args.key?(:service_labels)
          @service_type = args[:service_type] if args.key?(:service_type)
        end
      end
      
      # An SLI measuring performance on a well-known service type. Performance will be
      # computed on the basis of pre-defined metrics. The type of the service_resource
      # determines the metrics to use and the service_resource.labels and
      # metric_labels are used to construct a monitoring filter to filter that metric
      # down to just the data relevant to this service.
      class BasicSli
        include Google::Apis::Core::Hashable
      
        # Future parameters for the availability SLI.
        # Corresponds to the JSON property `availability`
        # @return [Google::Apis::MonitoringV3::AvailabilityCriteria]
        attr_accessor :availability
      
        # Parameters for a latency threshold SLI.
        # Corresponds to the JSON property `latency`
        # @return [Google::Apis::MonitoringV3::LatencyCriteria]
        attr_accessor :latency
      
        # OPTIONAL: The set of locations to which this SLI is relevant. Telemetry from
        # other locations will not be used to calculate performance for this SLI. If
        # omitted, this SLI applies to all locations in which the Service has activity.
        # For service types that don't support breaking down by location, setting this
        # field will result in an error.
        # Corresponds to the JSON property `location`
        # @return [Array<String>]
        attr_accessor :location
      
        # OPTIONAL: The set of RPCs to which this SLI is relevant. Telemetry from other
        # methods will not be used to calculate performance for this SLI. If omitted,
        # this SLI applies to all the Service's methods. For service types that don't
        # support breaking down by method, setting this field will result in an error.
        # Corresponds to the JSON property `method`
        # @return [Array<String>]
        attr_accessor :method_prop
      
        # OPTIONAL: The set of API versions to which this SLI is relevant. Telemetry
        # from other API versions will not be used to calculate performance for this SLI.
        # If omitted, this SLI applies to all API versions. For service types that don'
        # t support breaking down by version, setting this field will result in an error.
        # Corresponds to the JSON property `version`
        # @return [Array<String>]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @availability = args[:availability] if args.key?(:availability)
          @latency = args[:latency] if args.key?(:latency)
          @location = args[:location] if args.key?(:location)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # A test that uses an alerting result in a boolean column produced by the SQL
      # query.
      class BooleanTest
        include Google::Apis::Core::Hashable
      
        # Required. The name of the column containing the boolean value. If the value in
        # a row is NULL, that row is ignored.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column = args[:column] if args.key?(:column)
        end
      end
      
      # BucketOptions describes the bucket boundaries used to create a histogram for
      # the distribution. The buckets can be in a linear sequence, an exponential
      # sequence, or each bucket can be specified explicitly. BucketOptions does not
      # include the number of values in each bucket.A bucket has an inclusive lower
      # bound and exclusive upper bound for the values that are counted for that
      # bucket. The upper bound of a bucket must be strictly greater than the lower
      # bound. The sequence of N buckets for a distribution consists of an underflow
      # bucket (number 0), zero or more finite buckets (number 1 through N - 2) and an
      # overflow bucket (number N - 1). The buckets are contiguous: the lower bound of
      # bucket i (i > 0) is the same as the upper bound of bucket i - 1. The buckets
      # span the whole range of finite values: lower bound of the underflow bucket is -
      # infinity and the upper bound of the overflow bucket is +infinity. The finite
      # buckets are so-called because both bounds are finite.
      class BucketOptions
        include Google::Apis::Core::Hashable
      
        # Specifies a set of buckets with arbitrary widths.There are size(bounds) + 1 (=
        # N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-1):
        # boundsi Lower bound (1 <= i < N); boundsi - 1The bounds field must contain at
        # least one element. If bounds has only one element, then there are no finite
        # buckets, and that single element is the common boundary of the overflow and
        # underflow buckets.
        # Corresponds to the JSON property `explicitBuckets`
        # @return [Google::Apis::MonitoringV3::Explicit]
        attr_accessor :explicit_buckets
      
        # Specifies an exponential sequence of buckets that have a width that is
        # proportional to the value of the lower bound. Each bucket represents a
        # constant relative uncertainty on a specific value in the bucket.There are
        # num_finite_buckets + 2 (= N) buckets. Bucket i has the following boundaries:
        # Upper bound (0 <= i < N-1): scale * (growth_factor ^ i).Lower bound (1 <= i <
        # N): scale * (growth_factor ^ (i - 1)).
        # Corresponds to the JSON property `exponentialBuckets`
        # @return [Google::Apis::MonitoringV3::Exponential]
        attr_accessor :exponential_buckets
      
        # Specifies a linear sequence of buckets that all have the same width (except
        # overflow and underflow). Each bucket represents a constant absolute
        # uncertainty on the specific value in the bucket.There are num_finite_buckets +
        # 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-
        # 1): offset + (width * i).Lower bound (1 <= i < N): offset + (width * (i - 1)).
        # Corresponds to the JSON property `linearBuckets`
        # @return [Google::Apis::MonitoringV3::Linear]
        attr_accessor :linear_buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @explicit_buckets = args[:explicit_buckets] if args.key?(:explicit_buckets)
          @exponential_buckets = args[:exponential_buckets] if args.key?(:exponential_buckets)
          @linear_buckets = args[:linear_buckets] if args.key?(:linear_buckets)
        end
      end
      
      # Cloud Endpoints service. Learn more at https://cloud.google.com/endpoints.
      class CloudEndpoints
        include Google::Apis::Core::Hashable
      
        # The name of the Cloud Endpoints service underlying this service. Corresponds
        # to the service resource label in the api monitored resource (https://cloud.
        # google.com/monitoring/api/resources#tag_api).
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # A Synthetic Monitor deployed to a Cloud Functions V2 instance.
      class CloudFunctionV2Target
        include Google::Apis::Core::Hashable
      
        # An object representing a resource that can be used for monitoring, logging,
        # billing, or other purposes. Examples include virtual machine instances,
        # databases, and storage devices such as disks. The type field identifies a
        # MonitoredResourceDescriptor object that describes the resource's schema.
        # Information in the labels field identifies the actual resource and its
        # attributes according to the schema. For example, a particular Compute Engine
        # VM instance could be represented by the following object, because the
        # MonitoredResourceDescriptor for "gce_instance" has labels "project_id", "
        # instance_id" and "zone": ` "type": "gce_instance", "labels": ` "project_id": "
        # my-project", "instance_id": "12345678901234", "zone": "us-central1-a" ``
        # Corresponds to the JSON property `cloudRunRevision`
        # @return [Google::Apis::MonitoringV3::MonitoredResource]
        attr_accessor :cloud_run_revision
      
        # Required. Fully qualified GCFv2 resource name i.e. projects/`project`/
        # locations/`location`/functions/`function` Required.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_run_revision = args[:cloud_run_revision] if args.key?(:cloud_run_revision)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Cloud Run service. Learn more at https://cloud.google.com/run.
      class CloudRun
        include Google::Apis::Core::Hashable
      
        # The location the service is run. Corresponds to the location resource label in
        # the cloud_run_revision monitored resource (https://cloud.google.com/monitoring/
        # api/resources#tag_cloud_run_revision).
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The name of the Cloud Run service. Corresponds to the service_name resource
        # label in the cloud_run_revision monitored resource (https://cloud.google.com/
        # monitoring/api/resources#tag_cloud_run_revision).
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @service_name = args[:service_name] if args.key?(:service_name)
        end
      end
      
      # Istio service scoped to a single Kubernetes cluster. Learn more at https://
      # istio.io. Clusters running OSS Istio will have their services ingested as this
      # type.
      class ClusterIstio
        include Google::Apis::Core::Hashable
      
        # The name of the Kubernetes cluster in which this Istio service is defined.
        # Corresponds to the cluster_name resource label in k8s_cluster resources.
        # Corresponds to the JSON property `clusterName`
        # @return [String]
        attr_accessor :cluster_name
      
        # The location of the Kubernetes cluster in which this Istio service is defined.
        # Corresponds to the location resource label in k8s_cluster resources.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The name of the Istio service underlying this service. Corresponds to the
        # destination_service_name metric label in Istio metrics.
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        # The namespace of the Istio service underlying this service. Corresponds to the
        # destination_service_namespace metric label in Istio metrics.
        # Corresponds to the JSON property `serviceNamespace`
        # @return [String]
        attr_accessor :service_namespace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_name = args[:cluster_name] if args.key?(:cluster_name)
          @location = args[:location] if args.key?(:location)
          @service_name = args[:service_name] if args.key?(:service_name)
          @service_namespace = args[:service_namespace] if args.key?(:service_namespace)
        end
      end
      
      # A collection of data points sent from a collectd-based plugin. See the
      # collectd documentation for more information.
      class CollectdPayload
        include Google::Apis::Core::Hashable
      
        # The end time of the interval.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The measurement metadata. Example: "process_id" -> 12345
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Google::Apis::MonitoringV3::TypedValue>]
        attr_accessor :metadata
      
        # The name of the plugin. Example: "disk".
        # Corresponds to the JSON property `plugin`
        # @return [String]
        attr_accessor :plugin
      
        # The instance name of the plugin Example: "hdcl".
        # Corresponds to the JSON property `pluginInstance`
        # @return [String]
        attr_accessor :plugin_instance
      
        # The start time of the interval.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The measurement type. Example: "memory".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The measurement type instance. Example: "used".
        # Corresponds to the JSON property `typeInstance`
        # @return [String]
        attr_accessor :type_instance
      
        # The measured values during this time interval. Each value must have a
        # different data_source_name.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::MonitoringV3::CollectdValue>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @metadata = args[:metadata] if args.key?(:metadata)
          @plugin = args[:plugin] if args.key?(:plugin)
          @plugin_instance = args[:plugin_instance] if args.key?(:plugin_instance)
          @start_time = args[:start_time] if args.key?(:start_time)
          @type = args[:type] if args.key?(:type)
          @type_instance = args[:type_instance] if args.key?(:type_instance)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Describes the error status for payloads that were not written.
      class CollectdPayloadError
        include Google::Apis::Core::Hashable
      
        # The Status type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by gRPC
        # (https://github.com/grpc). Each Status message contains three pieces of data:
        # error code, error message, and error details.You can find out more about this
        # error model and how to work with it in the API Design Guide (https://cloud.
        # google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::MonitoringV3::Status]
        attr_accessor :error
      
        # The zero-based index in CreateCollectdTimeSeriesRequest.collectd_payloads.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # Records the error status for values that were not written due to an error.
        # Failed payloads for which nothing is written will not include partial value
        # errors.
        # Corresponds to the JSON property `valueErrors`
        # @return [Array<Google::Apis::MonitoringV3::CollectdValueError>]
        attr_accessor :value_errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @index = args[:index] if args.key?(:index)
          @value_errors = args[:value_errors] if args.key?(:value_errors)
        end
      end
      
      # A single data point from a collectd-based plugin.
      class CollectdValue
        include Google::Apis::Core::Hashable
      
        # The data source for the collectd value. For example, there are two data
        # sources for network measurements: "rx" and "tx".
        # Corresponds to the JSON property `dataSourceName`
        # @return [String]
        attr_accessor :data_source_name
      
        # The type of measurement.
        # Corresponds to the JSON property `dataSourceType`
        # @return [String]
        attr_accessor :data_source_type
      
        # A single strongly-typed value.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::MonitoringV3::TypedValue]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source_name = args[:data_source_name] if args.key?(:data_source_name)
          @data_source_type = args[:data_source_type] if args.key?(:data_source_type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Describes the error status for values that were not written.
      class CollectdValueError
        include Google::Apis::Core::Hashable
      
        # The Status type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by gRPC
        # (https://github.com/grpc). Each Status message contains three pieces of data:
        # error code, error message, and error details.You can find out more about this
        # error model and how to work with it in the API Design Guide (https://cloud.
        # google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::MonitoringV3::Status]
        attr_accessor :error
      
        # The zero-based index in CollectdPayload.values within the parent
        # CreateCollectdTimeSeriesRequest.collectd_payloads.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @index = args[:index] if args.key?(:index)
        end
      end
      
      # A condition is a true/false test that determines when an alerting policy
      # should open an incident. If a condition evaluates to true, it signifies that
      # something is wrong.
      class Condition
        include Google::Apis::Core::Hashable
      
        # A condition type that checks that monitored resources are reporting data. The
        # configuration defines a metric and a set of monitored resources. The predicate
        # is considered in violation when a time series for the specified metric of a
        # monitored resource does not include any data in the specified duration.
        # Corresponds to the JSON property `conditionAbsent`
        # @return [Google::Apis::MonitoringV3::MetricAbsence]
        attr_accessor :condition_absent
      
        # A condition type that checks whether a log message in the scoping project (
        # https://cloud.google.com/monitoring/api/v3#project_name) satisfies the given
        # filter. Logs from other projects in the metrics scope are not evaluated.
        # Corresponds to the JSON property `conditionMatchedLog`
        # @return [Google::Apis::MonitoringV3::LogMatch]
        attr_accessor :condition_matched_log
      
        # A condition type that allows alerting policies to be defined using Monitoring
        # Query Language (https://cloud.google.com/monitoring/mql).
        # Corresponds to the JSON property `conditionMonitoringQueryLanguage`
        # @return [Google::Apis::MonitoringV3::MonitoringQueryLanguageCondition]
        attr_accessor :condition_monitoring_query_language
      
        # A condition type that allows alerting policies to be defined using Prometheus
        # Query Language (PromQL) (https://prometheus.io/docs/prometheus/latest/querying/
        # basics/).The PrometheusQueryLanguageCondition message contains information
        # from a Prometheus alerting rule and its associated rule group.A Prometheus
        # alerting rule is described here (https://prometheus.io/docs/prometheus/latest/
        # configuration/alerting_rules/). The semantics of a Prometheus alerting rule is
        # described here (https://prometheus.io/docs/prometheus/latest/configuration/
        # recording_rules/#rule).A Prometheus rule group is described here (https://
        # prometheus.io/docs/prometheus/latest/configuration/recording_rules/). The
        # semantics of a Prometheus rule group is described here (https://prometheus.io/
        # docs/prometheus/latest/configuration/recording_rules/#rule_group).Because
        # Cloud Alerting has no representation of a Prometheus rule group resource, we
        # must embed the information of the parent rule group inside each of the
        # conditions that refer to it. We must also update the contents of all
        # Prometheus alerts in case the information of their rule group changes.The
        # PrometheusQueryLanguageCondition protocol buffer combines the information of
        # the corresponding rule group and alerting rule. The structure of the
        # PrometheusQueryLanguageCondition protocol buffer does NOT mimic the structure
        # of the Prometheus rule group and alerting rule YAML declarations. The
        # PrometheusQueryLanguageCondition protocol buffer may change in the future to
        # support future rule group and/or alerting rule features. There are no new such
        # features at the present time (2023-06-26).
        # Corresponds to the JSON property `conditionPrometheusQueryLanguage`
        # @return [Google::Apis::MonitoringV3::PrometheusQueryLanguageCondition]
        attr_accessor :condition_prometheus_query_language
      
        # A condition that allows alerting policies to be defined using GoogleSQL. SQL
        # conditions examine a sliding window of logs using GoogleSQL. Alert policies
        # with SQL conditions may incur additional billing.
        # Corresponds to the JSON property `conditionSql`
        # @return [Google::Apis::MonitoringV3::SqlCondition]
        attr_accessor :condition_sql
      
        # A condition type that compares a collection of time series against a threshold.
        # Corresponds to the JSON property `conditionThreshold`
        # @return [Google::Apis::MonitoringV3::MetricThreshold]
        attr_accessor :condition_threshold
      
        # A short name or phrase used to identify the condition in dashboards,
        # notifications, and incidents. To avoid confusion, don't use the same display
        # name for multiple conditions in the same policy.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required if the condition exists. The unique resource name for this condition.
        # Its format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[POLICY_ID]/
        # conditions/[CONDITION_ID] [CONDITION_ID] is assigned by Cloud Monitoring when
        # the condition is created as part of a new or updated alerting policy.When
        # calling the alertPolicies.create method, do not include the name field in the
        # conditions of the requested alerting policy. Cloud Monitoring creates the
        # condition identifiers and includes them in the new policy.When calling the
        # alertPolicies.update method to update a policy, including a condition name
        # causes the existing condition to be updated. Conditions without names are
        # added to the updated policy. Existing conditions are deleted if they are not
        # updated.Best practice is to preserve [CONDITION_ID] if you make only small
        # changes, such as those to condition thresholds, durations, or trigger values.
        # Otherwise, treat the change as a new condition and let the existing condition
        # be deleted.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition_absent = args[:condition_absent] if args.key?(:condition_absent)
          @condition_matched_log = args[:condition_matched_log] if args.key?(:condition_matched_log)
          @condition_monitoring_query_language = args[:condition_monitoring_query_language] if args.key?(:condition_monitoring_query_language)
          @condition_prometheus_query_language = args[:condition_prometheus_query_language] if args.key?(:condition_prometheus_query_language)
          @condition_sql = args[:condition_sql] if args.key?(:condition_sql)
          @condition_threshold = args[:condition_threshold] if args.key?(:condition_threshold)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Optional. Used to perform content matching. This allows matching based on
      # substrings and regular expressions, together with their negations. Only the
      # first 4 MB of an HTTP or HTTPS check's response (and the first 1 MB of a TCP
      # check's response) are examined for purposes of content matching.
      class ContentMatcher
        include Google::Apis::Core::Hashable
      
        # String, regex or JSON content to match. Maximum 1024 bytes. An empty content
        # string indicates no content matching is to be performed.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # Information needed to perform a JSONPath content match. Used for
        # ContentMatcherOption::MATCHES_JSON_PATH and ContentMatcherOption::
        # NOT_MATCHES_JSON_PATH.
        # Corresponds to the JSON property `jsonPathMatcher`
        # @return [Google::Apis::MonitoringV3::JsonPathMatcher]
        attr_accessor :json_path_matcher
      
        # The type of content matcher that will be applied to the server output,
        # compared to the content string when the check is run.
        # Corresponds to the JSON property `matcher`
        # @return [String]
        attr_accessor :matcher
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @json_path_matcher = args[:json_path_matcher] if args.key?(:json_path_matcher)
          @matcher = args[:matcher] if args.key?(:matcher)
        end
      end
      
      # The CreateCollectdTimeSeries request.
      class CreateCollectdTimeSeriesRequest
        include Google::Apis::Core::Hashable
      
        # The collectd payloads representing the time series data. You must not include
        # more than a single point for each time series, so no two payloads can have the
        # same values for all of the fields plugin, plugin_instance, type, and
        # type_instance.
        # Corresponds to the JSON property `collectdPayloads`
        # @return [Array<Google::Apis::MonitoringV3::CollectdPayload>]
        attr_accessor :collectd_payloads
      
        # The version of collectd that collected the data. Example: "5.3.0-192.el6".
        # Corresponds to the JSON property `collectdVersion`
        # @return [String]
        attr_accessor :collectd_version
      
        # An object representing a resource that can be used for monitoring, logging,
        # billing, or other purposes. Examples include virtual machine instances,
        # databases, and storage devices such as disks. The type field identifies a
        # MonitoredResourceDescriptor object that describes the resource's schema.
        # Information in the labels field identifies the actual resource and its
        # attributes according to the schema. For example, a particular Compute Engine
        # VM instance could be represented by the following object, because the
        # MonitoredResourceDescriptor for "gce_instance" has labels "project_id", "
        # instance_id" and "zone": ` "type": "gce_instance", "labels": ` "project_id": "
        # my-project", "instance_id": "12345678901234", "zone": "us-central1-a" ``
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::MonitoringV3::MonitoredResource]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collectd_payloads = args[:collectd_payloads] if args.key?(:collectd_payloads)
          @collectd_version = args[:collectd_version] if args.key?(:collectd_version)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # The CreateCollectdTimeSeries response.
      class CreateCollectdTimeSeriesResponse
        include Google::Apis::Core::Hashable
      
        # Records the error status for points that were not written due to an error in
        # the request.Failed requests for which nothing is written will return an error
        # response instead. Requests where data points were rejected by the backend will
        # set summary instead.
        # Corresponds to the JSON property `payloadErrors`
        # @return [Array<Google::Apis::MonitoringV3::CollectdPayloadError>]
        attr_accessor :payload_errors
      
        # Summary of the result of a failed request to write data to a time series.
        # Corresponds to the JSON property `summary`
        # @return [Google::Apis::MonitoringV3::CreateTimeSeriesSummary]
        attr_accessor :summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @payload_errors = args[:payload_errors] if args.key?(:payload_errors)
          @summary = args[:summary] if args.key?(:summary)
        end
      end
      
      # The CreateTimeSeries request.
      class CreateTimeSeriesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The new data to be added to a list of time series. Adds at most one
        # data point to each of several time series. The new data point must be more
        # recent than any other point in its time series. Each TimeSeries value must
        # fully specify a unique time series by supplying all label values for the
        # metric and the monitored resource.The maximum number of TimeSeries objects per
        # Create request is 200.
        # Corresponds to the JSON property `timeSeries`
        # @return [Array<Google::Apis::MonitoringV3::TimeSeries>]
        attr_accessor :time_series
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @time_series = args[:time_series] if args.key?(:time_series)
        end
      end
      
      # Summary of the result of a failed request to write data to a time series.
      class CreateTimeSeriesSummary
        include Google::Apis::Core::Hashable
      
        # The number of points that failed to be written. Order is not guaranteed.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::MonitoringV3::Error>]
        attr_accessor :errors
      
        # The number of points that were successfully written.
        # Corresponds to the JSON property `successPointCount`
        # @return [Fixnum]
        attr_accessor :success_point_count
      
        # The number of points in the request.
        # Corresponds to the JSON property `totalPointCount`
        # @return [Fixnum]
        attr_accessor :total_point_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
          @success_point_count = args[:success_point_count] if args.key?(:success_point_count)
          @total_point_count = args[:total_point_count] if args.key?(:total_point_count)
        end
      end
      
      # Criteria specific to the AlertPolicys that this Snooze applies to. The Snooze
      # will suppress alerts that come from one of the AlertPolicys whose names are
      # supplied.
      class Criteria
        include Google::Apis::Core::Hashable
      
        # Optional. When you define a snooze, you can also define a filter for that
        # snooze. The filter is a string containing one or more key-value pairs. The
        # string uses the standard https://google.aip.dev/160 filter syntax. If you
        # define a filter for a snooze, then the snooze can only apply to one alert
        # policy. When the snooze is active, incidents won't be created when the
        # incident would have key-value pairs (labels) that match those specified by the
        # filter in the snooze.Snooze filters support resource, metric, and metadata
        # labels. If multiple labels are used, then they must be connected with an AND
        # operator. For example, the following filter applies the snooze to incidents
        # that have a resource label with an instance ID of 1234567890, a metric label
        # with an instance name of test_group, a metadata user label with a key of foo
        # and a value of bar, and a metadata system label with a key of region and a
        # value of us-central1: "filter": "resource.labels.instance_id=\"1234567890\"
        # AND metric.labels.instance_name=\"test_group\" AND metadata.user_labels.foo=\"
        # bar\" AND metadata.system_labels.region=\"us-central1\""
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # The specific AlertPolicy names for the alert that should be snoozed. The
        # format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[POLICY_ID] There is
        # a limit of 16 policies per snooze. This limit is checked during snooze
        # creation. Exactly 1 alert policy is required if filter is specified at the
        # same time.
        # Corresponds to the JSON property `policies`
        # @return [Array<String>]
        attr_accessor :policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @policies = args[:policies] if args.key?(:policies)
        end
      end
      
      # Use a custom service to designate a service that you want to monitor when none
      # of the other service types (like App Engine, Cloud Run, or a GKE type) matches
      # your intended service.
      class Custom
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Used to schedule the query to run every so many days.
      class Daily
        include Google::Apis::Core::Hashable
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and google.protobuf.Timestamp.
        # Corresponds to the JSON property `executionTime`
        # @return [Google::Apis::MonitoringV3::TimeOfDay]
        attr_accessor :execution_time
      
        # Required. The number of days between runs. Must be greater than or equal to 1
        # day and less than or equal to 31 days.
        # Corresponds to the JSON property `periodicity`
        # @return [Fixnum]
        attr_accessor :periodicity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_time = args[:execution_time] if args.key?(:execution_time)
          @periodicity = args[:periodicity] if args.key?(:periodicity)
        end
      end
      
      # Distribution contains summary statistics for a population of values. It
      # optionally contains a histogram representing the distribution of those values
      # across a set of buckets.The summary statistics are the count, mean, sum of the
      # squared deviation from the mean, the minimum, and the maximum of the set of
      # population of values. The histogram is based on a sequence of buckets and
      # gives a count of values that fall into each bucket. The boundaries of the
      # buckets are given either explicitly or by formulas for buckets of fixed or
      # exponentially increasing widths.Although it is not forbidden, it is generally
      # a bad idea to include non-finite values (infinities or NaNs) in the population
      # of values, as this will render the mean and sum_of_squared_deviation fields
      # meaningless.
      class Distribution
        include Google::Apis::Core::Hashable
      
        # Required in the Cloud Monitoring API v3. The values for each bucket specified
        # in bucket_options. The sum of the values in bucketCounts must equal the value
        # in the count field of the Distribution object. The order of the bucket counts
        # follows the numbering schemes described for the three bucket types. The
        # underflow bucket has number 0; the finite buckets, if any, have numbers 1
        # through N-2; and the overflow bucket has number N-1. The size of bucket_counts
        # must not be greater than N. If the size is less than N, then the remaining
        # buckets are assigned values of zero.
        # Corresponds to the JSON property `bucketCounts`
        # @return [Array<Fixnum>]
        attr_accessor :bucket_counts
      
        # BucketOptions describes the bucket boundaries used to create a histogram for
        # the distribution. The buckets can be in a linear sequence, an exponential
        # sequence, or each bucket can be specified explicitly. BucketOptions does not
        # include the number of values in each bucket.A bucket has an inclusive lower
        # bound and exclusive upper bound for the values that are counted for that
        # bucket. The upper bound of a bucket must be strictly greater than the lower
        # bound. The sequence of N buckets for a distribution consists of an underflow
        # bucket (number 0), zero or more finite buckets (number 1 through N - 2) and an
        # overflow bucket (number N - 1). The buckets are contiguous: the lower bound of
        # bucket i (i > 0) is the same as the upper bound of bucket i - 1. The buckets
        # span the whole range of finite values: lower bound of the underflow bucket is -
        # infinity and the upper bound of the overflow bucket is +infinity. The finite
        # buckets are so-called because both bounds are finite.
        # Corresponds to the JSON property `bucketOptions`
        # @return [Google::Apis::MonitoringV3::BucketOptions]
        attr_accessor :bucket_options
      
        # The number of values in the population. Must be non-negative. This value must
        # equal the sum of the values in bucket_counts if a histogram is provided.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Must be in increasing order of value field.
        # Corresponds to the JSON property `exemplars`
        # @return [Array<Google::Apis::MonitoringV3::Exemplar>]
        attr_accessor :exemplars
      
        # The arithmetic mean of the values in the population. If count is zero then
        # this field must be zero.
        # Corresponds to the JSON property `mean`
        # @return [Float]
        attr_accessor :mean
      
        # The range of the population values.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::MonitoringV3::Range]
        attr_accessor :range
      
        # The sum of squared deviations from the mean of the values in the population.
        # For values x_i this is: Sum[i=1..n]((x_i - mean)^2) Knuth, "The Art of
        # Computer Programming", Vol. 2, page 232, 3rd edition describes Welford's
        # method for accumulating this sum in one pass.If count is zero then this field
        # must be zero.
        # Corresponds to the JSON property `sumOfSquaredDeviation`
        # @return [Float]
        attr_accessor :sum_of_squared_deviation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_counts = args[:bucket_counts] if args.key?(:bucket_counts)
          @bucket_options = args[:bucket_options] if args.key?(:bucket_options)
          @count = args[:count] if args.key?(:count)
          @exemplars = args[:exemplars] if args.key?(:exemplars)
          @mean = args[:mean] if args.key?(:mean)
          @range = args[:range] if args.key?(:range)
          @sum_of_squared_deviation = args[:sum_of_squared_deviation] if args.key?(:sum_of_squared_deviation)
        end
      end
      
      # A DistributionCut defines a TimeSeries and thresholds used for measuring good
      # service and total service. The TimeSeries must have ValueType = DISTRIBUTION
      # and MetricKind = DELTA or MetricKind = CUMULATIVE. The computed good_service
      # will be the estimated count of values in the Distribution that fall within the
      # specified min and max.
      class DistributionCut
        include Google::Apis::Core::Hashable
      
        # A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters)
        # specifying a TimeSeries aggregating values. Must have ValueType = DISTRIBUTION
        # and MetricKind = DELTA or MetricKind = CUMULATIVE.
        # Corresponds to the JSON property `distributionFilter`
        # @return [String]
        attr_accessor :distribution_filter
      
        # Range of numerical values within min and max.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::MonitoringV3::GoogleMonitoringV3Range]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @distribution_filter = args[:distribution_filter] if args.key?(:distribution_filter)
          @range = args[:range] if args.key?(:range)
        end
      end
      
      # Documentation that is included in the notifications and incidents pertaining
      # to this policy.
      class Documentation
        include Google::Apis::Core::Hashable
      
        # The body of the documentation, interpreted according to mime_type. The content
        # may not exceed 8,192 Unicode characters and may not exceed more than 10,240
        # bytes when encoded in UTF-8 format, whichever is smaller. This text can be
        # templatized by using variables (https://cloud.google.com/monitoring/alerts/doc-
        # variables#doc-vars).
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # Optional. Links to content such as playbooks, repositories, and other
        # resources. This field can contain up to 3 entries.
        # Corresponds to the JSON property `links`
        # @return [Array<Google::Apis::MonitoringV3::Link>]
        attr_accessor :links
      
        # The format of the content field. Presently, only the value "text/markdown" is
        # supported. See Markdown (https://en.wikipedia.org/wiki/Markdown) for more
        # information.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Optional. The subject line of the notification. The subject line may not
        # exceed 10,240 bytes. In notifications generated by this policy, the contents
        # of the subject line after variable expansion will be truncated to 255 bytes or
        # shorter at the latest UTF-8 character boundary. The 255-byte limit is
        # recommended by this thread (https://stackoverflow.com/questions/1592291/what-
        # is-the-email-subject-length-limit). It is both the limit imposed by some third-
        # party ticketing products and it is common to define textual fields in
        # databases as VARCHAR(255).The contents of the subject line can be templatized
        # by using variables (https://cloud.google.com/monitoring/alerts/doc-variables#
        # doc-vars). If this field is missing or empty, a default subject line will be
        # generated.
        # Corresponds to the JSON property `subject`
        # @return [String]
        attr_accessor :subject
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @links = args[:links] if args.key?(:links)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @subject = args[:subject] if args.key?(:subject)
        end
      end
      
      # A set of (label, value) pairs that were removed from a Distribution time
      # series during aggregation and then added as an attachment to a Distribution.
      # Exemplar.The full label set for the exemplars is constructed by using the
      # dropped pairs in combination with the label values that remain on the
      # aggregated Distribution time series. The constructed full label set can be
      # used to identify the specific entity, such as the instance or job, which might
      # be contributing to a long-tail. However, with dropped labels, the storage
      # requirements are reduced because only the aggregated distribution values for a
      # large group of time series are stored.Note that there are no guarantees on
      # ordering of the labels from exemplar-to-exemplar and from distribution-to-
      # distribution in the same stream, and there may be duplicates. It is up to
      # clients to resolve any ambiguities.
      class DroppedLabels
        include Google::Apis::Core::Hashable
      
        # Map from label to its value, for all labels dropped in any aggregation.
        # Corresponds to the JSON property `label`
        # @return [Hash<String,String>]
        attr_accessor :label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label = args[:label] if args.key?(:label)
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
      
      # Detailed information about an error category.
      class Error
        include Google::Apis::Core::Hashable
      
        # The number of points that couldn't be written because of status.
        # Corresponds to the JSON property `pointCount`
        # @return [Fixnum]
        attr_accessor :point_count
      
        # The Status type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by gRPC
        # (https://github.com/grpc). Each Status message contains three pieces of data:
        # error code, error message, and error details.You can find out more about this
        # error model and how to work with it in the API Design Guide (https://cloud.
        # google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::MonitoringV3::Status]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @point_count = args[:point_count] if args.key?(:point_count)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Exemplars are example points that may be used to annotate aggregated
      # distribution values. They are metadata that gives information about a
      # particular value added to a Distribution bucket, such as a trace ID that was
      # active when a value was added. They may contain further information, such as a
      # example values and timestamps, origin, etc.
      class Exemplar
        include Google::Apis::Core::Hashable
      
        # Contextual information about the example value. Examples are:Trace: type.
        # googleapis.com/google.monitoring.v3.SpanContextLiteral string: type.googleapis.
        # com/google.protobuf.StringValueLabels dropped during aggregation: type.
        # googleapis.com/google.monitoring.v3.DroppedLabelsThere may be only a single
        # attachment of any given message type in a single exemplar, and this is
        # enforced by the system.
        # Corresponds to the JSON property `attachments`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :attachments
      
        # The observation (sampling) time of the above value.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        # Value of the exemplar point. This value determines to which bucket the
        # exemplar belongs.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachments = args[:attachments] if args.key?(:attachments)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Specifies a set of buckets with arbitrary widths.There are size(bounds) + 1 (=
      # N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-1):
      # boundsi Lower bound (1 <= i < N); boundsi - 1The bounds field must contain at
      # least one element. If bounds has only one element, then there are no finite
      # buckets, and that single element is the common boundary of the overflow and
      # underflow buckets.
      class Explicit
        include Google::Apis::Core::Hashable
      
        # The values must be monotonically increasing.
        # Corresponds to the JSON property `bounds`
        # @return [Array<Float>]
        attr_accessor :bounds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounds = args[:bounds] if args.key?(:bounds)
        end
      end
      
      # Specifies an exponential sequence of buckets that have a width that is
      # proportional to the value of the lower bound. Each bucket represents a
      # constant relative uncertainty on a specific value in the bucket.There are
      # num_finite_buckets + 2 (= N) buckets. Bucket i has the following boundaries:
      # Upper bound (0 <= i < N-1): scale * (growth_factor ^ i).Lower bound (1 <= i <
      # N): scale * (growth_factor ^ (i - 1)).
      class Exponential
        include Google::Apis::Core::Hashable
      
        # Must be greater than 1.
        # Corresponds to the JSON property `growthFactor`
        # @return [Float]
        attr_accessor :growth_factor
      
        # Must be greater than 0.
        # Corresponds to the JSON property `numFiniteBuckets`
        # @return [Fixnum]
        attr_accessor :num_finite_buckets
      
        # Must be greater than 0.
        # Corresponds to the JSON property `scale`
        # @return [Float]
        attr_accessor :scale
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @growth_factor = args[:growth_factor] if args.key?(:growth_factor)
          @num_finite_buckets = args[:num_finite_buckets] if args.key?(:num_finite_buckets)
          @scale = args[:scale] if args.key?(:scale)
        end
      end
      
      # A single field of a message type.
      class Field
        include Google::Apis::Core::Hashable
      
        # The field cardinality.
        # Corresponds to the JSON property `cardinality`
        # @return [String]
        attr_accessor :cardinality
      
        # The string value of the default value of this field. Proto2 syntax only.
        # Corresponds to the JSON property `defaultValue`
        # @return [String]
        attr_accessor :default_value
      
        # The field JSON name.
        # Corresponds to the JSON property `jsonName`
        # @return [String]
        attr_accessor :json_name
      
        # The field type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The field name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The field number.
        # Corresponds to the JSON property `number`
        # @return [Fixnum]
        attr_accessor :number
      
        # The index of the field type in Type.oneofs, for message or enumeration types.
        # The first type has index 1; zero means the type is not in the list.
        # Corresponds to the JSON property `oneofIndex`
        # @return [Fixnum]
        attr_accessor :oneof_index
      
        # The protocol buffer options.
        # Corresponds to the JSON property `options`
        # @return [Array<Google::Apis::MonitoringV3::Option>]
        attr_accessor :options
      
        # Whether to use alternative packed wire representation.
        # Corresponds to the JSON property `packed`
        # @return [Boolean]
        attr_accessor :packed
        alias_method :packed?, :packed
      
        # The field type URL, without the scheme, for message or enumeration types.
        # Example: "type.googleapis.com/google.protobuf.Timestamp".
        # Corresponds to the JSON property `typeUrl`
        # @return [String]
        attr_accessor :type_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cardinality = args[:cardinality] if args.key?(:cardinality)
          @default_value = args[:default_value] if args.key?(:default_value)
          @json_name = args[:json_name] if args.key?(:json_name)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @number = args[:number] if args.key?(:number)
          @oneof_index = args[:oneof_index] if args.key?(:oneof_index)
          @options = args[:options] if args.key?(:options)
          @packed = args[:packed] if args.key?(:packed)
          @type_url = args[:type_url] if args.key?(:type_url)
        end
      end
      
      # Options used when forecasting the time series and testing the predicted value
      # against the threshold.
      class ForecastOptions
        include Google::Apis::Core::Hashable
      
        # Required. The length of time into the future to forecast whether a time series
        # will violate the threshold. If the predicted value is found to violate the
        # threshold, and the violation is observed in all forecasts made for the
        # configured duration, then the time series is considered to be failing. The
        # forecast horizon can range from 1 hour to 60 hours.
        # Corresponds to the JSON property `forecastHorizon`
        # @return [String]
        attr_accessor :forecast_horizon
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @forecast_horizon = args[:forecast_horizon] if args.key?(:forecast_horizon)
        end
      end
      
      # The GetNotificationChannelVerificationCode request.
      class GetNotificationChannelVerificationCodeRequest
        include Google::Apis::Core::Hashable
      
        # The desired expiration time. If specified, the API will guarantee that the
        # returned code will not be valid after the specified timestamp; however, the
        # API cannot guarantee that the returned code will be valid for at least as long
        # as the requested time (the API puts an upper bound on the amount of time for
        # which a code may be valid). If omitted, a default expiration will be used,
        # which may be less than the max permissible expiration (so specifying an
        # expiration may extend the code's lifetime over omitting an expiration, even
        # though the API does impose an upper limit on the maximum expiration that is
        # permitted).
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
        end
      end
      
      # The GetNotificationChannelVerificationCode request.
      class GetNotificationChannelVerificationCodeResponse
        include Google::Apis::Core::Hashable
      
        # The verification code, which may be used to verify other channels that have an
        # equivalent identity (i.e. other channels of the same type with the same
        # fingerprint such as other email channels with the same email address or other
        # sms channels with the same number).
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # The expiration time associated with the code that was returned. If an
        # expiration was provided in the request, this is the minimum of the requested
        # expiration in the request and the max permitted expiration.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
        end
      end
      
      # GKE Namespace. The field names correspond to the resource metadata labels on
      # monitored resources that fall under a namespace (for example, k8s_container or
      # k8s_pod).
      class GkeNamespace
        include Google::Apis::Core::Hashable
      
        # The name of the parent cluster.
        # Corresponds to the JSON property `clusterName`
        # @return [String]
        attr_accessor :cluster_name
      
        # The location of the parent cluster. This may be a zone or region.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The name of this namespace.
        # Corresponds to the JSON property `namespaceName`
        # @return [String]
        attr_accessor :namespace_name
      
        # Output only. The project this resource lives in. For legacy services migrated
        # from the Custom type, this may be a distinct project from the one parenting
        # the service itself.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_name = args[:cluster_name] if args.key?(:cluster_name)
          @location = args[:location] if args.key?(:location)
          @namespace_name = args[:namespace_name] if args.key?(:namespace_name)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # GKE Service. The "service" here represents a Kubernetes service object (https:/
      # /kubernetes.io/docs/concepts/services-networking/service). The field names
      # correspond to the resource labels on k8s_service monitored resources (https://
      # cloud.google.com/monitoring/api/resources#tag_k8s_service).
      class GkeService
        include Google::Apis::Core::Hashable
      
        # The name of the parent cluster.
        # Corresponds to the JSON property `clusterName`
        # @return [String]
        attr_accessor :cluster_name
      
        # The location of the parent cluster. This may be a zone or region.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The name of the parent namespace.
        # Corresponds to the JSON property `namespaceName`
        # @return [String]
        attr_accessor :namespace_name
      
        # Output only. The project this resource lives in. For legacy services migrated
        # from the Custom type, this may be a distinct project from the one parenting
        # the service itself.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The name of this service.
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_name = args[:cluster_name] if args.key?(:cluster_name)
          @location = args[:location] if args.key?(:location)
          @namespace_name = args[:namespace_name] if args.key?(:namespace_name)
          @project_id = args[:project_id] if args.key?(:project_id)
          @service_name = args[:service_name] if args.key?(:service_name)
        end
      end
      
      # A GKE Workload (Deployment, StatefulSet, etc). The field names correspond to
      # the metadata labels on monitored resources that fall under a workload (for
      # example, k8s_container or k8s_pod).
      class GkeWorkload
        include Google::Apis::Core::Hashable
      
        # The name of the parent cluster.
        # Corresponds to the JSON property `clusterName`
        # @return [String]
        attr_accessor :cluster_name
      
        # The location of the parent cluster. This may be a zone or region.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The name of the parent namespace.
        # Corresponds to the JSON property `namespaceName`
        # @return [String]
        attr_accessor :namespace_name
      
        # Output only. The project this resource lives in. For legacy services migrated
        # from the Custom type, this may be a distinct project from the one parenting
        # the service itself.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The name of this workload.
        # Corresponds to the JSON property `topLevelControllerName`
        # @return [String]
        attr_accessor :top_level_controller_name
      
        # The type of this workload (for example, "Deployment" or "DaemonSet")
        # Corresponds to the JSON property `topLevelControllerType`
        # @return [String]
        attr_accessor :top_level_controller_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_name = args[:cluster_name] if args.key?(:cluster_name)
          @location = args[:location] if args.key?(:location)
          @namespace_name = args[:namespace_name] if args.key?(:namespace_name)
          @project_id = args[:project_id] if args.key?(:project_id)
          @top_level_controller_name = args[:top_level_controller_name] if args.key?(:top_level_controller_name)
          @top_level_controller_type = args[:top_level_controller_type] if args.key?(:top_level_controller_type)
        end
      end
      
      # Range of numerical values within min and max.
      class GoogleMonitoringV3Range
        include Google::Apis::Core::Hashable
      
        # Range maximum.
        # Corresponds to the JSON property `max`
        # @return [Float]
        attr_accessor :max
      
        # Range minimum.
        # Corresponds to the JSON property `min`
        # @return [Float]
        attr_accessor :min
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max = args[:max] if args.key?(:max)
          @min = args[:min] if args.key?(:min)
        end
      end
      
      # The description of a dynamic collection of monitored resources. Each group has
      # a filter that is matched against monitored resources and their associated
      # metadata. If a group's filter matches an available monitored resource, then
      # that resource is a member of that group. Groups can contain any number of
      # monitored resources, and each monitored resource can be a member of any number
      # of groups.Groups can be nested in parent-child hierarchies. The parentName
      # field identifies an optional parent for each group. If a group has a parent,
      # then the only monitored resources available to be matched by the group's
      # filter are the resources contained in the parent group. In other words, a
      # group contains the monitored resources that match its filter and the filters
      # of all the group's ancestors. A group without a parent can contain any
      # monitored resource.For example, consider an infrastructure running a set of
      # instances with two user-defined tags: "environment" and "role". A parent group
      # has a filter, environment="production". A child of that parent group has a
      # filter, role="transcoder". The parent group contains all instances in the
      # production environment, regardless of their roles. The child group contains
      # instances that have the transcoder role and are in the production environment.
      # The monitored resources contained in a group can change at any moment,
      # depending on what resources exist and what filters are associated with the
      # group and its ancestors.
      class Group
        include Google::Apis::Core::Hashable
      
        # A user-assigned name for this group, used only for display purposes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The filter used to determine which monitored resources belong to this group.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # If true, the members of this group are considered to be a cluster. The system
        # can perform additional analysis on groups that are clusters.
        # Corresponds to the JSON property `isCluster`
        # @return [Boolean]
        attr_accessor :is_cluster
        alias_method :is_cluster?, :is_cluster
      
        # Output only. The name of this group. The format is: projects/[
        # PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] When creating a group, this field is
        # ignored and a new name is created consisting of the project specified in the
        # call to CreateGroup and a unique [GROUP_ID] that is generated automatically.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The name of the group's parent, if it has one. The format is: projects/[
        # PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] For groups with no parent, parent_name
        # is the empty string, "".
        # Corresponds to the JSON property `parentName`
        # @return [String]
        attr_accessor :parent_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @filter = args[:filter] if args.key?(:filter)
          @is_cluster = args[:is_cluster] if args.key?(:is_cluster)
          @name = args[:name] if args.key?(:name)
          @parent_name = args[:parent_name] if args.key?(:parent_name)
        end
      end
      
      # Used to schedule the query to run every so many hours.
      class Hourly
        include Google::Apis::Core::Hashable
      
        # Optional. The number of minutes after the hour (in UTC) to run the query. Must
        # be greater than or equal to 0 minutes and less than or equal to 59 minutes. If
        # left unspecified, then an arbitrary offset is used.
        # Corresponds to the JSON property `minuteOffset`
        # @return [Fixnum]
        attr_accessor :minute_offset
      
        # Required. The number of hours between runs. Must be greater than or equal to 1
        # hour and less than or equal to 48 hours.
        # Corresponds to the JSON property `periodicity`
        # @return [Fixnum]
        attr_accessor :periodicity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @minute_offset = args[:minute_offset] if args.key?(:minute_offset)
          @periodicity = args[:periodicity] if args.key?(:periodicity)
        end
      end
      
      # Information involved in an HTTP/HTTPS Uptime check request.
      class HttpCheck
        include Google::Apis::Core::Hashable
      
        # If present, the check will only pass if the HTTP response status code is in
        # this set of status codes. If empty, the HTTP status code will only pass if the
        # HTTP status code is 200-299.
        # Corresponds to the JSON property `acceptedResponseStatusCodes`
        # @return [Array<Google::Apis::MonitoringV3::ResponseStatusCode>]
        attr_accessor :accepted_response_status_codes
      
        # The authentication parameters to provide to the specified resource or URL that
        # requires a username and password. Currently, only Basic HTTP authentication (
        # https://tools.ietf.org/html/rfc7617) is supported in Uptime checks.
        # Corresponds to the JSON property `authInfo`
        # @return [Google::Apis::MonitoringV3::BasicAuthentication]
        attr_accessor :auth_info
      
        # The request body associated with the HTTP POST request. If content_type is
        # URL_ENCODED, the body passed in must be URL-encoded. Users can provide a
        # Content-Length header via the headers field or the API will do so. If the
        # request_method is GET and body is not empty, the API will return an error. The
        # maximum byte size is 1 megabyte.Note: If client libraries aren't used (which
        # performs the conversion automatically) base64 encode your body data since the
        # field is of bytes type.
        # Corresponds to the JSON property `body`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :body
      
        # The content type header to use for the check. The following configurations
        # result in errors: 1. Content type is specified in both the headers field and
        # the content_type field. 2. Request method is GET and content_type is not
        # TYPE_UNSPECIFIED 3. Request method is POST and content_type is
        # TYPE_UNSPECIFIED. 4. Request method is POST and a "Content-Type" header is
        # provided via headers field. The content_type field should be used instead.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # A user provided content type header to use for the check. The invalid
        # configurations outlined in the content_type field apply to custom_content_type,
        # as well as the following: 1. content_type is URL_ENCODED and
        # custom_content_type is set. 2. content_type is USER_PROVIDED and
        # custom_content_type is not set.
        # Corresponds to the JSON property `customContentType`
        # @return [String]
        attr_accessor :custom_content_type
      
        # The list of headers to send as part of the Uptime check request. If two
        # headers have the same key and different values, they should be entered as a
        # single header, with the value being a comma-separated list of all the desired
        # values as described at https://www.w3.org/Protocols/rfc2616/rfc2616.txt (page
        # 31). Entering two separate headers with the same key in a Create call will
        # cause the first to be overwritten by the second. The maximum number of headers
        # allowed is 100.
        # Corresponds to the JSON property `headers`
        # @return [Hash<String,String>]
        attr_accessor :headers
      
        # Boolean specifying whether to encrypt the header information. Encryption
        # should be specified for any headers related to authentication that you do not
        # wish to be seen when retrieving the configuration. The server will be
        # responsible for encrypting the headers. On Get/List calls, if mask_headers is
        # set to true then the headers will be obscured with ******.
        # Corresponds to the JSON property `maskHeaders`
        # @return [Boolean]
        attr_accessor :mask_headers
        alias_method :mask_headers?, :mask_headers
      
        # Optional (defaults to "/"). The path to the page against which to run the
        # check. Will be combined with the host (specified within the monitored_resource)
        # and port to construct the full URL. If the provided path does not begin with "
        # /", a "/" will be prepended automatically.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Information involved in sending ICMP pings alongside public HTTP/TCP checks.
        # For HTTP, the pings are performed for each part of the redirect chain.
        # Corresponds to the JSON property `pingConfig`
        # @return [Google::Apis::MonitoringV3::PingConfig]
        attr_accessor :ping_config
      
        # Optional (defaults to 80 when use_ssl is false, and 443 when use_ssl is true).
        # The TCP port on the HTTP server against which to run the check. Will be
        # combined with host (specified within the monitored_resource) and path to
        # construct the full URL.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # The HTTP request method to use for the check. If set to METHOD_UNSPECIFIED
        # then request_method defaults to GET.
        # Corresponds to the JSON property `requestMethod`
        # @return [String]
        attr_accessor :request_method
      
        # Contains information needed for generating either an OpenID Connect token (
        # https://developers.google.com/identity/protocols/OpenIDConnect) or OAuth token
        # (https://developers.google.com/identity/protocols/oauth2). The token will be
        # generated for the Monitoring service agent service account.
        # Corresponds to the JSON property `serviceAgentAuthentication`
        # @return [Google::Apis::MonitoringV3::ServiceAgentAuthentication]
        attr_accessor :service_agent_authentication
      
        # If true, use HTTPS instead of HTTP to run the check.
        # Corresponds to the JSON property `useSsl`
        # @return [Boolean]
        attr_accessor :use_ssl
        alias_method :use_ssl?, :use_ssl
      
        # Boolean specifying whether to include SSL certificate validation as a part of
        # the Uptime check. Only applies to checks where monitored_resource is set to
        # uptime_url. If use_ssl is false, setting validate_ssl to true has no effect.
        # Corresponds to the JSON property `validateSsl`
        # @return [Boolean]
        attr_accessor :validate_ssl
        alias_method :validate_ssl?, :validate_ssl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accepted_response_status_codes = args[:accepted_response_status_codes] if args.key?(:accepted_response_status_codes)
          @auth_info = args[:auth_info] if args.key?(:auth_info)
          @body = args[:body] if args.key?(:body)
          @content_type = args[:content_type] if args.key?(:content_type)
          @custom_content_type = args[:custom_content_type] if args.key?(:custom_content_type)
          @headers = args[:headers] if args.key?(:headers)
          @mask_headers = args[:mask_headers] if args.key?(:mask_headers)
          @path = args[:path] if args.key?(:path)
          @ping_config = args[:ping_config] if args.key?(:ping_config)
          @port = args[:port] if args.key?(:port)
          @request_method = args[:request_method] if args.key?(:request_method)
          @service_agent_authentication = args[:service_agent_authentication] if args.key?(:service_agent_authentication)
          @use_ssl = args[:use_ssl] if args.key?(:use_ssl)
          @validate_ssl = args[:validate_ssl] if args.key?(:validate_ssl)
        end
      end
      
      # An internal checker allows Uptime checks to run on private/internal GCP
      # resources.
      class InternalChecker
        include Google::Apis::Core::Hashable
      
        # The checker's human-readable name. The display name should be unique within a
        # Cloud Monitoring Metrics Scope in order to make it easier to identify; however,
        # uniqueness is not enforced.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The GCP zone the Uptime check should egress from. Only respected for internal
        # Uptime checks, where internal_network is specified.
        # Corresponds to the JSON property `gcpZone`
        # @return [String]
        attr_accessor :gcp_zone
      
        # A unique resource name for this InternalChecker. The format is: projects/[
        # PROJECT_ID_OR_NUMBER]/internalCheckers/[INTERNAL_CHECKER_ID] [
        # PROJECT_ID_OR_NUMBER] is the Cloud Monitoring Metrics Scope project for the
        # Uptime check config associated with the internal checker.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The GCP VPC network (https://cloud.google.com/vpc/docs/vpc) where the internal
        # resource lives (ex: "default").
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # The GCP project ID where the internal checker lives. Not necessary the same as
        # the Metrics Scope project.
        # Corresponds to the JSON property `peerProjectId`
        # @return [String]
        attr_accessor :peer_project_id
      
        # The current operational state of the internal checker.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @gcp_zone = args[:gcp_zone] if args.key?(:gcp_zone)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @peer_project_id = args[:peer_project_id] if args.key?(:peer_project_id)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Canonical service scoped to an Istio mesh. Anthos clusters running ASM >= 1.6.
      # 8 will have their services ingested as this type.
      class IstioCanonicalService
        include Google::Apis::Core::Hashable
      
        # The name of the canonical service underlying this service. Corresponds to the
        # destination_canonical_service_name metric label in label in Istio metrics (
        # https://cloud.google.com/monitoring/api/metrics_istio).
        # Corresponds to the JSON property `canonicalService`
        # @return [String]
        attr_accessor :canonical_service
      
        # The namespace of the canonical service underlying this service. Corresponds to
        # the destination_canonical_service_namespace metric label in Istio metrics (
        # https://cloud.google.com/monitoring/api/metrics_istio).
        # Corresponds to the JSON property `canonicalServiceNamespace`
        # @return [String]
        attr_accessor :canonical_service_namespace
      
        # Identifier for the Istio mesh in which this canonical service is defined.
        # Corresponds to the mesh_uid metric label in Istio metrics (https://cloud.
        # google.com/monitoring/api/metrics_istio).
        # Corresponds to the JSON property `meshUid`
        # @return [String]
        attr_accessor :mesh_uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_service = args[:canonical_service] if args.key?(:canonical_service)
          @canonical_service_namespace = args[:canonical_service_namespace] if args.key?(:canonical_service_namespace)
          @mesh_uid = args[:mesh_uid] if args.key?(:mesh_uid)
        end
      end
      
      # Information needed to perform a JSONPath content match. Used for
      # ContentMatcherOption::MATCHES_JSON_PATH and ContentMatcherOption::
      # NOT_MATCHES_JSON_PATH.
      class JsonPathMatcher
        include Google::Apis::Core::Hashable
      
        # The type of JSONPath match that will be applied to the JSON output (
        # ContentMatcher.content)
        # Corresponds to the JSON property `jsonMatcher`
        # @return [String]
        attr_accessor :json_matcher
      
        # JSONPath within the response output pointing to the expected ContentMatcher::
        # content to match against.
        # Corresponds to the JSON property `jsonPath`
        # @return [String]
        attr_accessor :json_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @json_matcher = args[:json_matcher] if args.key?(:json_matcher)
          @json_path = args[:json_path] if args.key?(:json_path)
        end
      end
      
      # A description of a label.
      class LabelDescriptor
        include Google::Apis::Core::Hashable
      
        # A human-readable description for the label.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The key for this label. The key must meet the following criteria: Does not
        # exceed 100 characters. Matches the following regular expression: [a-zA-Z][a-zA-
        # Z0-9_]* The first character must be an upper- or lower-case letter. The
        # remaining characters must be letters, digits, or underscores.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The type of data that can be assigned to the label.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @key = args[:key] if args.key?(:key)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # A label value.
      class LabelValue
        include Google::Apis::Core::Hashable
      
        # A bool label value.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # An int64 label value.
        # Corresponds to the JSON property `int64Value`
        # @return [Fixnum]
        attr_accessor :int64_value
      
        # A string label value.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @int64_value = args[:int64_value] if args.key?(:int64_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # Parameters for a latency threshold SLI.
      class LatencyCriteria
        include Google::Apis::Core::Hashable
      
        # Good service is defined to be the count of requests made to this service that
        # return in no more than threshold.
        # Corresponds to the JSON property `threshold`
        # @return [String]
        attr_accessor :threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @threshold = args[:threshold] if args.key?(:threshold)
        end
      end
      
      # Specifies a linear sequence of buckets that all have the same width (except
      # overflow and underflow). Each bucket represents a constant absolute
      # uncertainty on the specific value in the bucket.There are num_finite_buckets +
      # 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-
      # 1): offset + (width * i).Lower bound (1 <= i < N): offset + (width * (i - 1)).
      class Linear
        include Google::Apis::Core::Hashable
      
        # Must be greater than 0.
        # Corresponds to the JSON property `numFiniteBuckets`
        # @return [Fixnum]
        attr_accessor :num_finite_buckets
      
        # Lower bound of the first bucket.
        # Corresponds to the JSON property `offset`
        # @return [Float]
        attr_accessor :offset
      
        # Must be greater than 0.
        # Corresponds to the JSON property `width`
        # @return [Float]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @num_finite_buckets = args[:num_finite_buckets] if args.key?(:num_finite_buckets)
          @offset = args[:offset] if args.key?(:offset)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # Links to content such as playbooks, repositories, and other resources.
      class Link
        include Google::Apis::Core::Hashable
      
        # A short display name for the link. The display name must not be empty or
        # exceed 63 characters. Example: "playbook".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The url of a webpage. A url can be templatized by using variables in the path
        # or the query parameters. The total length of a URL should not exceed 2083
        # characters before and after variable expansion. Example: "https://my_domain.
        # com/playbook?name=$`resource.name`"
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # The protocol for the ListAlertPolicies response.
      class ListAlertPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # The returned alert policies.
        # Corresponds to the JSON property `alertPolicies`
        # @return [Array<Google::Apis::MonitoringV3::AlertPolicy>]
        attr_accessor :alert_policies
      
        # If there might be more results than were returned, then this field is set to a
        # non-empty value. To see the additional results, use that value as page_token
        # in the next call to this method.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of alert policies in all pages. This number is only an
        # estimate, and may change in subsequent pages. https://aip.dev/158
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alert_policies = args[:alert_policies] if args.key?(:alert_policies)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # The ListGroupMembers response.
      class ListGroupMembersResponse
        include Google::Apis::Core::Hashable
      
        # A set of monitored resources in the group.
        # Corresponds to the JSON property `members`
        # @return [Array<Google::Apis::MonitoringV3::MonitoredResource>]
        attr_accessor :members
      
        # If there are more results than have been returned, then this field is set to a
        # non-empty value. To see the additional results, use that value as page_token
        # in the next call to this method.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of elements matching this request.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @members = args[:members] if args.key?(:members)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # The ListGroups response.
      class ListGroupsResponse
        include Google::Apis::Core::Hashable
      
        # The groups that match the specified filters.
        # Corresponds to the JSON property `group`
        # @return [Array<Google::Apis::MonitoringV3::Group>]
        attr_accessor :group
      
        # If there are more results than have been returned, then this field is set to a
        # non-empty value. To see the additional results, use that value as page_token
        # in the next call to this method.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group = args[:group] if args.key?(:group)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The ListMetricDescriptors response.
      class ListMetricDescriptorsResponse
        include Google::Apis::Core::Hashable
      
        # The metric descriptors that are available to the project and that match the
        # value of filter, if present.
        # Corresponds to the JSON property `metricDescriptors`
        # @return [Array<Google::Apis::MonitoringV3::MetricDescriptor>]
        attr_accessor :metric_descriptors
      
        # If there are more results than have been returned, then this field is set to a
        # non-empty value. To see the additional results, use that value as page_token
        # in the next call to this method.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric_descriptors = args[:metric_descriptors] if args.key?(:metric_descriptors)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The ListMonitoredResourceDescriptors response.
      class ListMonitoredResourceDescriptorsResponse
        include Google::Apis::Core::Hashable
      
        # If there are more results than have been returned, then this field is set to a
        # non-empty value. To see the additional results, use that value as page_token
        # in the next call to this method.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The monitored resource descriptors that are available to this project and that
        # match filter, if present.
        # Corresponds to the JSON property `resourceDescriptors`
        # @return [Array<Google::Apis::MonitoringV3::MonitoredResourceDescriptor>]
        attr_accessor :resource_descriptors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resource_descriptors = args[:resource_descriptors] if args.key?(:resource_descriptors)
        end
      end
      
      # The ListNotificationChannelDescriptors response.
      class ListNotificationChannelDescriptorsResponse
        include Google::Apis::Core::Hashable
      
        # The monitored resource descriptors supported for the specified project,
        # optionally filtered.
        # Corresponds to the JSON property `channelDescriptors`
        # @return [Array<Google::Apis::MonitoringV3::NotificationChannelDescriptor>]
        attr_accessor :channel_descriptors
      
        # If not empty, indicates that there may be more results that match the request.
        # Use the value in the page_token field in a subsequent request to fetch the
        # next set of results. If empty, all results have been returned.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_descriptors = args[:channel_descriptors] if args.key?(:channel_descriptors)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The ListNotificationChannels response.
      class ListNotificationChannelsResponse
        include Google::Apis::Core::Hashable
      
        # If not empty, indicates that there may be more results that match the request.
        # Use the value in the page_token field in a subsequent request to fetch the
        # next set of results. If empty, all results have been returned.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The notification channels defined for the specified project.
        # Corresponds to the JSON property `notificationChannels`
        # @return [Array<Google::Apis::MonitoringV3::NotificationChannel>]
        attr_accessor :notification_channels
      
        # The total number of notification channels in all pages. This number is only an
        # estimate, and may change in subsequent pages. https://aip.dev/158
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @notification_channels = args[:notification_channels] if args.key?(:notification_channels)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # The ListServiceLevelObjectives response.
      class ListServiceLevelObjectivesResponse
        include Google::Apis::Core::Hashable
      
        # If there are more results than have been returned, then this field is set to a
        # non-empty value. To see the additional results, use that value as page_token
        # in the next call to this method.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The ServiceLevelObjectives matching the specified filter.
        # Corresponds to the JSON property `serviceLevelObjectives`
        # @return [Array<Google::Apis::MonitoringV3::ServiceLevelObjective>]
        attr_accessor :service_level_objectives
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @service_level_objectives = args[:service_level_objectives] if args.key?(:service_level_objectives)
        end
      end
      
      # The ListServices response.
      class ListServicesResponse
        include Google::Apis::Core::Hashable
      
        # If there are more results than have been returned, then this field is set to a
        # non-empty value. To see the additional results, use that value as page_token
        # in the next call to this method.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The Services matching the specified filter.
        # Corresponds to the JSON property `services`
        # @return [Array<Google::Apis::MonitoringV3::Service>]
        attr_accessor :services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @services = args[:services] if args.key?(:services)
        end
      end
      
      # The results of a successful ListSnoozes call, containing the matching Snoozes.
      class ListSnoozesResponse
        include Google::Apis::Core::Hashable
      
        # Page token for repeated calls to ListSnoozes, to fetch additional pages of
        # results. If this is empty or missing, there are no more pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Snoozes matching this list call.
        # Corresponds to the JSON property `snoozes`
        # @return [Array<Google::Apis::MonitoringV3::Snooze>]
        attr_accessor :snoozes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @snoozes = args[:snoozes] if args.key?(:snoozes)
        end
      end
      
      # The ListTimeSeries response.
      class ListTimeSeriesResponse
        include Google::Apis::Core::Hashable
      
        # Query execution errors that may have caused the time series data returned to
        # be incomplete.
        # Corresponds to the JSON property `executionErrors`
        # @return [Array<Google::Apis::MonitoringV3::Status>]
        attr_accessor :execution_errors
      
        # If there are more results than have been returned, then this field is set to a
        # non-empty value. To see the additional results, use that value as page_token
        # in the next call to this method.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # One or more time series that match the filter included in the request.
        # Corresponds to the JSON property `timeSeries`
        # @return [Array<Google::Apis::MonitoringV3::TimeSeries>]
        attr_accessor :time_series
      
        # The unit in which all time_series point values are reported. unit follows the
        # UCUM format for units as seen in https://unitsofmeasure.org/ucum.html. If
        # different time_series have different units (for example, because they come
        # from different metric types, or a unit is absent), then unit will be "`
        # not_a_unit`".
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Cloud regions that were unreachable which may have caused incomplete data to
        # be returned.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_errors = args[:execution_errors] if args.key?(:execution_errors)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @time_series = args[:time_series] if args.key?(:time_series)
          @unit = args[:unit] if args.key?(:unit)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The protocol for the ListUptimeCheckConfigs response.
      class ListUptimeCheckConfigsResponse
        include Google::Apis::Core::Hashable
      
        # This field represents the pagination token to retrieve the next page of
        # results. If the value is empty, it means no further results for the request.
        # To retrieve the next page of results, the value of the next_page_token is
        # passed to the subsequent List method call (in the request message's page_token
        # field).
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of Uptime check configurations for the project, irrespective
        # of any pagination.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        # The returned Uptime check configurations.
        # Corresponds to the JSON property `uptimeCheckConfigs`
        # @return [Array<Google::Apis::MonitoringV3::UptimeCheckConfig>]
        attr_accessor :uptime_check_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
          @uptime_check_configs = args[:uptime_check_configs] if args.key?(:uptime_check_configs)
        end
      end
      
      # The protocol for the ListUptimeCheckIps response.
      class ListUptimeCheckIpsResponse
        include Google::Apis::Core::Hashable
      
        # This field represents the pagination token to retrieve the next page of
        # results. If the value is empty, it means no further results for the request.
        # To retrieve the next page of results, the value of the next_page_token is
        # passed to the subsequent List method call (in the request message's page_token
        # field). NOTE: this field is not yet implemented
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The returned list of IP addresses (including region and location) that the
        # checkers run from.
        # Corresponds to the JSON property `uptimeCheckIps`
        # @return [Array<Google::Apis::MonitoringV3::UptimeCheckIp>]
        attr_accessor :uptime_check_ips
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @uptime_check_ips = args[:uptime_check_ips] if args.key?(:uptime_check_ips)
        end
      end
      
      # A condition type that checks whether a log message in the scoping project (
      # https://cloud.google.com/monitoring/api/v3#project_name) satisfies the given
      # filter. Logs from other projects in the metrics scope are not evaluated.
      class LogMatch
        include Google::Apis::Core::Hashable
      
        # Required. A logs-based filter. See Advanced Logs Queries (https://cloud.google.
        # com/logging/docs/view/advanced-queries) for how this filter should be
        # constructed.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Optional. A map from a label key to an extractor expression, which is used to
        # extract the value for this label key. Each entry in this map is a
        # specification for how data should be extracted from log entries that match
        # filter. Each combination of extracted values is treated as a separate rule for
        # the purposes of triggering notifications. Label keys and corresponding values
        # can be used in notifications generated by this condition.Please see the
        # documentation on logs-based metric valueExtractors (https://cloud.google.com/
        # logging/docs/reference/v2/rest/v2/projects.metrics#LogMetric.FIELDS.
        # value_extractor) for syntax and examples.
        # Corresponds to the JSON property `labelExtractors`
        # @return [Hash<String,String>]
        attr_accessor :label_extractors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @label_extractors = args[:label_extractors] if args.key?(:label_extractors)
        end
      end
      
      # Istio service scoped to an Istio mesh. Anthos clusters running ASM < 1.6.8
      # will have their services ingested as this type.
      class MeshIstio
        include Google::Apis::Core::Hashable
      
        # Identifier for the mesh in which this Istio service is defined. Corresponds to
        # the mesh_uid metric label in Istio metrics.
        # Corresponds to the JSON property `meshUid`
        # @return [String]
        attr_accessor :mesh_uid
      
        # The name of the Istio service underlying this service. Corresponds to the
        # destination_service_name metric label in Istio metrics.
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        # The namespace of the Istio service underlying this service. Corresponds to the
        # destination_service_namespace metric label in Istio metrics.
        # Corresponds to the JSON property `serviceNamespace`
        # @return [String]
        attr_accessor :service_namespace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mesh_uid = args[:mesh_uid] if args.key?(:mesh_uid)
          @service_name = args[:service_name] if args.key?(:service_name)
          @service_namespace = args[:service_namespace] if args.key?(:service_namespace)
        end
      end
      
      # A specific metric, identified by specifying values for all of the labels of a
      # MetricDescriptor.
      class Metric
        include Google::Apis::Core::Hashable
      
        # The set of label values that uniquely identify this metric. All labels listed
        # in the MetricDescriptor must be assigned values.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # An existing metric type, see google.api.MetricDescriptor. For example, custom.
        # googleapis.com/invoice/paid/amount.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A condition type that checks that monitored resources are reporting data. The
      # configuration defines a metric and a set of monitored resources. The predicate
      # is considered in violation when a time series for the specified metric of a
      # monitored resource does not include any data in the specified duration.
      class MetricAbsence
        include Google::Apis::Core::Hashable
      
        # Specifies the alignment of data points in individual time series as well as
        # how to combine the retrieved time series together (such as when aggregating
        # multiple streams on each resource to a single stream for each resource or when
        # aggregating streams across all members of a group of resources). Multiple
        # aggregations are applied in the order specified.This field is similar to the
        # one in the ListTimeSeries request (https://cloud.google.com/monitoring/api/
        # ref_v3/rest/v3/projects.timeSeries/list). It is advisable to use the
        # ListTimeSeries method when debugging this field.
        # Corresponds to the JSON property `aggregations`
        # @return [Array<Google::Apis::MonitoringV3::Aggregation>]
        attr_accessor :aggregations
      
        # The amount of time that a time series must fail to report new data to be
        # considered failing. The minimum value of this field is 120 seconds. Larger
        # values that are a multiple of a minute--for example, 240 or 300 seconds--are
        # supported. If an invalid value is given, an error will be returned. The
        # Duration.nanos field is ignored.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Required. A filter (https://cloud.google.com/monitoring/api/v3/filters) that
        # identifies which time series should be compared with the threshold.The filter
        # is similar to the one that is specified in the ListTimeSeries request (https://
        # cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list) (that
        # call is useful to verify the time series that will be retrieved / processed).
        # The filter must specify the metric type and the resource type. Optionally, it
        # can specify resource labels and metric labels. This field must not exceed 2048
        # Unicode characters in length.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Specifies how many time series must fail a predicate to trigger a condition.
        # If not specified, then a `count: 1` trigger is used.
        # Corresponds to the JSON property `trigger`
        # @return [Google::Apis::MonitoringV3::Trigger]
        attr_accessor :trigger
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregations = args[:aggregations] if args.key?(:aggregations)
          @duration = args[:duration] if args.key?(:duration)
          @filter = args[:filter] if args.key?(:filter)
          @trigger = args[:trigger] if args.key?(:trigger)
        end
      end
      
      # Defines a metric type and its schema. Once a metric descriptor is created,
      # deleting or altering it stops data collection and makes the metric type's
      # existing data unusable.
      class MetricDescriptor
        include Google::Apis::Core::Hashable
      
        # A detailed description of the metric, which can be used in documentation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A concise name for the metric, which can be displayed in user interfaces. Use
        # sentence case without an ending period, for example "Request count". This
        # field is optional but it is recommended to be set for any metrics associated
        # with user-visible concepts, such as Quota.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The set of labels that can be used to describe a specific instance of this
        # metric type. For example, the appengine.googleapis.com/http/server/
        # response_latencies metric type has a label for the HTTP response code,
        # response_code, so you can look at latencies for successful responses or just
        # for responses that failed.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::MonitoringV3::LabelDescriptor>]
        attr_accessor :labels
      
        # Optional. The launch stage of the metric definition.
        # Corresponds to the JSON property `launchStage`
        # @return [String]
        attr_accessor :launch_stage
      
        # Additional annotations that can be used to guide the usage of a metric.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::MonitoringV3::MetricDescriptorMetadata]
        attr_accessor :metadata
      
        # Whether the metric records instantaneous values, changes to a value, etc. Some
        # combinations of metric_kind and value_type might not be supported.
        # Corresponds to the JSON property `metricKind`
        # @return [String]
        attr_accessor :metric_kind
      
        # Read-only. If present, then a time series, which is identified partially by a
        # metric type and a MonitoredResourceDescriptor, that is associated with this
        # metric type can only be associated with one of the monitored resource types
        # listed here.
        # Corresponds to the JSON property `monitoredResourceTypes`
        # @return [Array<String>]
        attr_accessor :monitored_resource_types
      
        # The resource name of the metric descriptor.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The metric type, including its DNS name prefix. The type is not URL-encoded.
        # All user-defined metric types have the DNS name custom.googleapis.com or
        # external.googleapis.com. Metric types should use a natural hierarchical
        # grouping. For example: "custom.googleapis.com/invoice/paid/amount" "external.
        # googleapis.com/prometheus/up" "appengine.googleapis.com/http/server/
        # response_latencies"
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The units in which the metric value is reported. It is only applicable if the
        # value_type is INT64, DOUBLE, or DISTRIBUTION. The unit defines the
        # representation of the stored metric values.Different systems might scale the
        # values to be more easily displayed (so a value of 0.02kBy might be displayed
        # as 20By, and a value of 3523kBy might be displayed as 3.5MBy). However, if the
        # unit is kBy, then the value of the metric is always in thousands of bytes, no
        # matter how it might be displayed.If you want a custom metric to record the
        # exact number of CPU-seconds used by a job, you can create an INT64 CUMULATIVE
        # metric whose unit is s`CPU` (or equivalently 1s`CPU` or just s). If the job
        # uses 12,005 CPU-seconds, then the value is written as 12005.Alternatively, if
        # you want a custom metric to record data in a more granular way, you can create
        # a DOUBLE CUMULATIVE metric whose unit is ks`CPU`, and then write the value 12.
        # 005 (which is 12005/1000), or use Kis`CPU` and write 11.723 (which is 12005/
        # 1024).The supported units are a subset of The Unified Code for Units of
        # Measure (https://unitsofmeasure.org/ucum.html) standard:Basic units (UNIT) bit
        # bit By byte s second min minute h hour d day 1 dimensionlessPrefixes (PREFIX)
        # k kilo (10^3) M mega (10^6) G giga (10^9) T tera (10^12) P peta (10^15) E exa (
        # 10^18) Z zetta (10^21) Y yotta (10^24) m milli (10^-3) u micro (10^-6) n nano (
        # 10^-9) p pico (10^-12) f femto (10^-15) a atto (10^-18) z zepto (10^-21) y
        # yocto (10^-24) Ki kibi (2^10) Mi mebi (2^20) Gi gibi (2^30) Ti tebi (2^40) Pi
        # pebi (2^50)GrammarThe grammar also includes these connectors: / division or
        # ratio (as an infix operator). For examples, kBy/`email` or MiBy/10ms (although
        # you should almost never have /s in a metric unit; rates should always be
        # computed at query time from the underlying cumulative or delta value). .
        # multiplication or composition (as an infix operator). For examples, GBy.d or k`
        # watt`.h.The grammar for a unit is as follows: Expression = Component ` "."
        # Component ` ` "/" Component ` ; Component = ( [ PREFIX ] UNIT | "%" ) [
        # Annotation ] | Annotation | "1" ; Annotation = "`" NAME "`" ; Notes:
        # Annotation is just a comment if it follows a UNIT. If the annotation is used
        # alone, then the unit is equivalent to 1. For examples, `request`/s == 1/s, By`
        # transmitted`/s == By/s. NAME is a sequence of non-blank printable ASCII
        # characters not containing ` or `. 1 represents a unitary dimensionless unit (
        # https://en.wikipedia.org/wiki/Dimensionless_quantity) of 1, such as in 1/s. It
        # is typically used when none of the basic units are appropriate. For example, "
        # new users per day" can be represented as 1/d or `new-users`/d (and a metric
        # value 5 would mean "5 new users). Alternatively, "thousands of page views per
        # day" would be represented as 1000/d or k1/d or k`page_views`/d (and a metric
        # value of 5.3 would mean "5300 page views per day"). % represents dimensionless
        # value of 1/100, and annotates values giving a percentage (so the metric values
        # are typically in the range of 0..100, and a metric value 3 means "3 percent").
        # 10^2.% indicates a metric contains a ratio, typically in the range 0..1, that
        # will be multiplied by 100 and displayed as a percentage (so a metric value 0.
        # 03 means "3 percent").
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Whether the measurement is an integer, a floating-point number, etc. Some
        # combinations of metric_kind and value_type might not be supported.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @launch_stage = args[:launch_stage] if args.key?(:launch_stage)
          @metadata = args[:metadata] if args.key?(:metadata)
          @metric_kind = args[:metric_kind] if args.key?(:metric_kind)
          @monitored_resource_types = args[:monitored_resource_types] if args.key?(:monitored_resource_types)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
          @unit = args[:unit] if args.key?(:unit)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Additional annotations that can be used to guide the usage of a metric.
      class MetricDescriptorMetadata
        include Google::Apis::Core::Hashable
      
        # The delay of data points caused by ingestion. Data points older than this age
        # are guaranteed to be ingested and available to be read, excluding data loss
        # due to errors.
        # Corresponds to the JSON property `ingestDelay`
        # @return [String]
        attr_accessor :ingest_delay
      
        # Deprecated. Must use the MetricDescriptor.launch_stage instead.
        # Corresponds to the JSON property `launchStage`
        # @return [String]
        attr_accessor :launch_stage
      
        # The sampling period of metric data points. For metrics which are written
        # periodically, consecutive data points are stored at this time interval,
        # excluding data loss due to errors. Metrics with a higher granularity have a
        # smaller sampling period.
        # Corresponds to the JSON property `samplePeriod`
        # @return [String]
        attr_accessor :sample_period
      
        # The scope of the timeseries data of the metric.
        # Corresponds to the JSON property `timeSeriesResourceHierarchyLevel`
        # @return [Array<String>]
        attr_accessor :time_series_resource_hierarchy_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ingest_delay = args[:ingest_delay] if args.key?(:ingest_delay)
          @launch_stage = args[:launch_stage] if args.key?(:launch_stage)
          @sample_period = args[:sample_period] if args.key?(:sample_period)
          @time_series_resource_hierarchy_level = args[:time_series_resource_hierarchy_level] if args.key?(:time_series_resource_hierarchy_level)
        end
      end
      
      # A MetricRange is used when each window is good when the value x of a single
      # TimeSeries satisfies range.min <= x <= range.max. The provided TimeSeries must
      # have ValueType = INT64 or ValueType = DOUBLE and MetricKind = GAUGE.
      class MetricRange
        include Google::Apis::Core::Hashable
      
        # Range of numerical values within min and max.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::MonitoringV3::GoogleMonitoringV3Range]
        attr_accessor :range
      
        # A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters)
        # specifying the TimeSeries to use for evaluating window quality.
        # Corresponds to the JSON property `timeSeries`
        # @return [String]
        attr_accessor :time_series
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @range = args[:range] if args.key?(:range)
          @time_series = args[:time_series] if args.key?(:time_series)
        end
      end
      
      # A condition type that compares a collection of time series against a threshold.
      class MetricThreshold
        include Google::Apis::Core::Hashable
      
        # Specifies the alignment of data points in individual time series as well as
        # how to combine the retrieved time series together (such as when aggregating
        # multiple streams on each resource to a single stream for each resource or when
        # aggregating streams across all members of a group of resources). Multiple
        # aggregations are applied in the order specified.This field is similar to the
        # one in the ListTimeSeries request (https://cloud.google.com/monitoring/api/
        # ref_v3/rest/v3/projects.timeSeries/list). It is advisable to use the
        # ListTimeSeries method when debugging this field.
        # Corresponds to the JSON property `aggregations`
        # @return [Array<Google::Apis::MonitoringV3::Aggregation>]
        attr_accessor :aggregations
      
        # The comparison to apply between the time series (indicated by filter and
        # aggregation) and the threshold (indicated by threshold_value). The comparison
        # is applied on each time series, with the time series on the left-hand side and
        # the threshold on the right-hand side.Only COMPARISON_LT and COMPARISON_GT are
        # supported currently.
        # Corresponds to the JSON property `comparison`
        # @return [String]
        attr_accessor :comparison
      
        # Specifies the alignment of data points in individual time series selected by
        # denominatorFilter as well as how to combine the retrieved time series together
        # (such as when aggregating multiple streams on each resource to a single stream
        # for each resource or when aggregating streams across all members of a group of
        # resources).When computing ratios, the aggregations and
        # denominator_aggregations fields must use the same alignment period and produce
        # time series that have the same periodicity and labels.
        # Corresponds to the JSON property `denominatorAggregations`
        # @return [Array<Google::Apis::MonitoringV3::Aggregation>]
        attr_accessor :denominator_aggregations
      
        # A filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies
        # a time series that should be used as the denominator of a ratio that will be
        # compared with the threshold. If a denominator_filter is specified, the time
        # series specified by the filter field will be used as the numerator.The filter
        # must specify the metric type and optionally may contain restrictions on
        # resource type, resource labels, and metric labels. This field may not exceed
        # 2048 Unicode characters in length.
        # Corresponds to the JSON property `denominatorFilter`
        # @return [String]
        attr_accessor :denominator_filter
      
        # The amount of time that a time series must violate the threshold to be
        # considered failing. Currently, only values that are a multiple of a minute--e.
        # g., 0, 60, 120, or 300 seconds--are supported. If an invalid value is given,
        # an error will be returned. When choosing a duration, it is useful to keep in
        # mind the frequency of the underlying time series data (which may also be
        # affected by any alignments specified in the aggregations field); a good
        # duration is long enough so that a single outlier does not generate spurious
        # alerts, but short enough that unhealthy states are detected and alerted on
        # quickly.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # A condition control that determines how metric-threshold conditions are
        # evaluated when data stops arriving. To use this control, the value of the
        # duration field must be greater than or equal to 60 seconds.
        # Corresponds to the JSON property `evaluationMissingData`
        # @return [String]
        attr_accessor :evaluation_missing_data
      
        # Required. A filter (https://cloud.google.com/monitoring/api/v3/filters) that
        # identifies which time series should be compared with the threshold.The filter
        # is similar to the one that is specified in the ListTimeSeries request (https://
        # cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list) (that
        # call is useful to verify the time series that will be retrieved / processed).
        # The filter must specify the metric type and the resource type. Optionally, it
        # can specify resource labels and metric labels. This field must not exceed 2048
        # Unicode characters in length.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Options used when forecasting the time series and testing the predicted value
        # against the threshold.
        # Corresponds to the JSON property `forecastOptions`
        # @return [Google::Apis::MonitoringV3::ForecastOptions]
        attr_accessor :forecast_options
      
        # A value against which to compare the time series.
        # Corresponds to the JSON property `thresholdValue`
        # @return [Float]
        attr_accessor :threshold_value
      
        # Specifies how many time series must fail a predicate to trigger a condition.
        # If not specified, then a `count: 1` trigger is used.
        # Corresponds to the JSON property `trigger`
        # @return [Google::Apis::MonitoringV3::Trigger]
        attr_accessor :trigger
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregations = args[:aggregations] if args.key?(:aggregations)
          @comparison = args[:comparison] if args.key?(:comparison)
          @denominator_aggregations = args[:denominator_aggregations] if args.key?(:denominator_aggregations)
          @denominator_filter = args[:denominator_filter] if args.key?(:denominator_filter)
          @duration = args[:duration] if args.key?(:duration)
          @evaluation_missing_data = args[:evaluation_missing_data] if args.key?(:evaluation_missing_data)
          @filter = args[:filter] if args.key?(:filter)
          @forecast_options = args[:forecast_options] if args.key?(:forecast_options)
          @threshold_value = args[:threshold_value] if args.key?(:threshold_value)
          @trigger = args[:trigger] if args.key?(:trigger)
        end
      end
      
      # Used to schedule the query to run every so many minutes.
      class Minutes
        include Google::Apis::Core::Hashable
      
        # Required. Number of minutes between runs. The interval must be greater than or
        # equal to 5 minutes and less than or equal to 1440 minutes.
        # Corresponds to the JSON property `periodicity`
        # @return [Fixnum]
        attr_accessor :periodicity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @periodicity = args[:periodicity] if args.key?(:periodicity)
        end
      end
      
      # An object representing a resource that can be used for monitoring, logging,
      # billing, or other purposes. Examples include virtual machine instances,
      # databases, and storage devices such as disks. The type field identifies a
      # MonitoredResourceDescriptor object that describes the resource's schema.
      # Information in the labels field identifies the actual resource and its
      # attributes according to the schema. For example, a particular Compute Engine
      # VM instance could be represented by the following object, because the
      # MonitoredResourceDescriptor for "gce_instance" has labels "project_id", "
      # instance_id" and "zone": ` "type": "gce_instance", "labels": ` "project_id": "
      # my-project", "instance_id": "12345678901234", "zone": "us-central1-a" ``
      class MonitoredResource
        include Google::Apis::Core::Hashable
      
        # Required. Values for all of the labels listed in the associated monitored
        # resource descriptor. For example, Compute Engine VM instances use the labels "
        # project_id", "instance_id", and "zone".
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The monitored resource type. This field must match the type field of
        # a MonitoredResourceDescriptor object. For example, the type of a Compute
        # Engine VM instance is gce_instance. For a list of types, see Monitoring
        # resource types (https://cloud.google.com/monitoring/api/resources) and Logging
        # resource types (https://cloud.google.com/logging/docs/api/v2/resource-list).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # An object that describes the schema of a MonitoredResource object using a type
      # name and a set of labels. For example, the monitored resource descriptor for
      # Google Compute Engine VM instances has a type of "gce_instance" and specifies
      # the use of the labels "instance_id" and "zone" to identify particular VM
      # instances.Different APIs can support different monitored resource types. APIs
      # generally provide a list method that returns the monitored resource
      # descriptors used by the API.
      class MonitoredResourceDescriptor
        include Google::Apis::Core::Hashable
      
        # Optional. A detailed description of the monitored resource type that might be
        # used in documentation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. A concise name for the monitored resource type that might be
        # displayed in user interfaces. It should be a Title Cased Noun Phrase, without
        # any article or other determiners. For example, "Google Cloud SQL Database".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. A set of labels used to describe instances of this monitored
        # resource type. For example, an individual Google Cloud SQL database is
        # identified by values for the labels "database_id" and "zone".
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::MonitoringV3::LabelDescriptor>]
        attr_accessor :labels
      
        # Optional. The launch stage of the monitored resource definition.
        # Corresponds to the JSON property `launchStage`
        # @return [String]
        attr_accessor :launch_stage
      
        # Optional. The resource name of the monitored resource descriptor: "projects/`
        # project_id`/monitoredResourceDescriptors/`type`" where `type` is the value of
        # the type field in this object and `project_id` is a project ID that provides
        # API-specific context for accessing the type. APIs that do not use project
        # information can use the resource name format "monitoredResourceDescriptors/`
        # type`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The monitored resource type. For example, the type "
        # cloudsql_database" represents databases in Google Cloud SQL. For a list of
        # types, see Monitored resource types (https://cloud.google.com/monitoring/api/
        # resources) and Logging resource types (https://cloud.google.com/logging/docs/
        # api/v2/resource-list).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @launch_stage = args[:launch_stage] if args.key?(:launch_stage)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Auxiliary metadata for a MonitoredResource object. MonitoredResource objects
      # contain the minimum set of information to uniquely identify a monitored
      # resource instance. There is some other useful auxiliary metadata. Monitoring
      # and Logging use an ingestion pipeline to extract metadata for cloud resources
      # of all types, and store the metadata in this message.
      class MonitoredResourceMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. Values for predefined system metadata labels. System labels are a
        # kind of metadata extracted by Google, including "machine_image", "vpc", "
        # subnet_id", "security_group", "name", etc. System label values can be only
        # strings, Boolean values, or a list of strings. For example: ` "name": "my-test-
        # instance", "security_group": ["a", "b", "c"], "spot_instance": false `
        # Corresponds to the JSON property `systemLabels`
        # @return [Hash<String,Object>]
        attr_accessor :system_labels
      
        # Output only. A map of user-defined metadata labels.
        # Corresponds to the JSON property `userLabels`
        # @return [Hash<String,String>]
        attr_accessor :user_labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @system_labels = args[:system_labels] if args.key?(:system_labels)
          @user_labels = args[:user_labels] if args.key?(:user_labels)
        end
      end
      
      # A condition type that allows alerting policies to be defined using Monitoring
      # Query Language (https://cloud.google.com/monitoring/mql).
      class MonitoringQueryLanguageCondition
        include Google::Apis::Core::Hashable
      
        # The amount of time that a time series must violate the threshold to be
        # considered failing. Currently, only values that are a multiple of a minute--e.
        # g., 0, 60, 120, or 300 seconds--are supported. If an invalid value is given,
        # an error will be returned. When choosing a duration, it is useful to keep in
        # mind the frequency of the underlying time series data (which may also be
        # affected by any alignments specified in the aggregations field); a good
        # duration is long enough so that a single outlier does not generate spurious
        # alerts, but short enough that unhealthy states are detected and alerted on
        # quickly.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # A condition control that determines how metric-threshold conditions are
        # evaluated when data stops arriving.
        # Corresponds to the JSON property `evaluationMissingData`
        # @return [String]
        attr_accessor :evaluation_missing_data
      
        # Monitoring Query Language (https://cloud.google.com/monitoring/mql) query that
        # outputs a boolean stream.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # Specifies how many time series must fail a predicate to trigger a condition.
        # If not specified, then a `count: 1` trigger is used.
        # Corresponds to the JSON property `trigger`
        # @return [Google::Apis::MonitoringV3::Trigger]
        attr_accessor :trigger
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @evaluation_missing_data = args[:evaluation_missing_data] if args.key?(:evaluation_missing_data)
          @query = args[:query] if args.key?(:query)
          @trigger = args[:trigger] if args.key?(:trigger)
        end
      end
      
      # Describes a change made to a configuration.
      class MutationRecord
        include Google::Apis::Core::Hashable
      
        # When the change occurred.
        # Corresponds to the JSON property `mutateTime`
        # @return [String]
        attr_accessor :mutate_time
      
        # The email address of the user making the change.
        # Corresponds to the JSON property `mutatedBy`
        # @return [String]
        attr_accessor :mutated_by
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mutate_time = args[:mutate_time] if args.key?(:mutate_time)
          @mutated_by = args[:mutated_by] if args.key?(:mutated_by)
        end
      end
      
      # A NotificationChannel is a medium through which an alert is delivered when a
      # policy violation is detected. Examples of channels include email, SMS, and
      # third-party messaging applications. Fields containing sensitive information
      # like authentication tokens or contact info are only partially populated on
      # retrieval.
      class NotificationChannel
        include Google::Apis::Core::Hashable
      
        # Describes a change made to a configuration.
        # Corresponds to the JSON property `creationRecord`
        # @return [Google::Apis::MonitoringV3::MutationRecord]
        attr_accessor :creation_record
      
        # An optional human-readable description of this notification channel. This
        # description may provide additional details, beyond the display name, for the
        # channel. This may not exceed 1024 Unicode characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # An optional human-readable name for this notification channel. It is
        # recommended that you specify a non-empty and unique name in order to make it
        # easier to identify the channels in your project, though this is not enforced.
        # The display name is limited to 512 Unicode characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Whether notifications are forwarded to the described channel. This makes it
        # possible to disable delivery of notifications to a particular channel without
        # removing the channel from all alerting policies that reference the channel.
        # This is a more convenient approach when the change is temporary and you want
        # to receive notifications from the same set of alerting policies on the channel
        # at some point in the future.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Configuration fields that define the channel and its behavior. The permissible
        # and required labels are specified in the NotificationChannelDescriptor.labels
        # of the NotificationChannelDescriptor corresponding to the type field.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Records of the modification of this channel.
        # Corresponds to the JSON property `mutationRecords`
        # @return [Array<Google::Apis::MonitoringV3::MutationRecord>]
        attr_accessor :mutation_records
      
        # Identifier. The full REST resource name for this channel. The format is:
        # projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID] The [
        # CHANNEL_ID] is automatically assigned by the server on creation.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The type of the notification channel. This field matches the value of the
        # NotificationChannelDescriptor.type field.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # User-supplied key/value data that does not need to conform to the
        # corresponding NotificationChannelDescriptor's schema, unlike the labels field.
        # This field is intended to be used for organizing and identifying the
        # NotificationChannel objects.The field can contain up to 64 entries. Each key
        # and value is limited to 63 Unicode characters or 128 bytes, whichever is
        # smaller. Labels and values can contain only lowercase letters, numerals,
        # underscores, and dashes. Keys must begin with a letter.
        # Corresponds to the JSON property `userLabels`
        # @return [Hash<String,String>]
        attr_accessor :user_labels
      
        # Indicates whether this channel has been verified or not. On a
        # ListNotificationChannels or GetNotificationChannel operation, this field is
        # expected to be populated.If the value is UNVERIFIED, then it indicates that
        # the channel is non-functioning (it both requires verification and lacks
        # verification); otherwise, it is assumed that the channel works.If the channel
        # is neither VERIFIED nor UNVERIFIED, it implies that the channel is of a type
        # that does not require verification or that this specific channel has been
        # exempted from verification because it was created prior to verification being
        # required for channels of this type.This field cannot be modified using a
        # standard UpdateNotificationChannel operation. To change the value of this
        # field, you must call VerifyNotificationChannel.
        # Corresponds to the JSON property `verificationStatus`
        # @return [String]
        attr_accessor :verification_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_record = args[:creation_record] if args.key?(:creation_record)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enabled = args[:enabled] if args.key?(:enabled)
          @labels = args[:labels] if args.key?(:labels)
          @mutation_records = args[:mutation_records] if args.key?(:mutation_records)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
          @user_labels = args[:user_labels] if args.key?(:user_labels)
          @verification_status = args[:verification_status] if args.key?(:verification_status)
        end
      end
      
      # A description of a notification channel. The descriptor includes the
      # properties of the channel and the set of labels or fields that must be
      # specified to configure channels of a given type.
      class NotificationChannelDescriptor
        include Google::Apis::Core::Hashable
      
        # A human-readable description of the notification channel type. The description
        # may include a description of the properties of the channel and pointers to
        # external documentation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A human-readable name for the notification channel type. This form of the name
        # is suitable for a user interface.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The set of labels that must be defined to identify a particular channel of the
        # corresponding type. Each label includes a description for how that field
        # should be populated.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::MonitoringV3::LabelDescriptor>]
        attr_accessor :labels
      
        # The product launch stage for channels of this type.
        # Corresponds to the JSON property `launchStage`
        # @return [String]
        attr_accessor :launch_stage
      
        # The full REST resource name for this descriptor. The format is: projects/[
        # PROJECT_ID_OR_NUMBER]/notificationChannelDescriptors/[TYPE] In the above, [
        # TYPE] is the value of the type field.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The tiers that support this notification channel; the project service tier
        # must be one of the supported_tiers.
        # Corresponds to the JSON property `supportedTiers`
        # @return [Array<String>]
        attr_accessor :supported_tiers
      
        # The type of notification channel, such as "email" and "sms". To view the full
        # list of channels, see Channel descriptors (https://cloud.google.com/monitoring/
        # alerts/using-channels-api#ncd). Notification channel types are globally unique.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @launch_stage = args[:launch_stage] if args.key?(:launch_stage)
          @name = args[:name] if args.key?(:name)
          @supported_tiers = args[:supported_tiers] if args.key?(:supported_tiers)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Control over how the notification channels in notification_channels are
      # notified when this alert fires, on a per-channel basis.
      class NotificationChannelStrategy
        include Google::Apis::Core::Hashable
      
        # The full REST resource name for the notification channels that these settings
        # apply to. Each of these correspond to the name field in one of the
        # NotificationChannel objects referenced in the notification_channels field of
        # this AlertPolicy. The format is: projects/[PROJECT_ID_OR_NUMBER]/
        # notificationChannels/[CHANNEL_ID]
        # Corresponds to the JSON property `notificationChannelNames`
        # @return [Array<String>]
        attr_accessor :notification_channel_names
      
        # The frequency at which to send reminder notifications for open incidents.
        # Corresponds to the JSON property `renotifyInterval`
        # @return [String]
        attr_accessor :renotify_interval
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @notification_channel_names = args[:notification_channel_names] if args.key?(:notification_channel_names)
          @renotify_interval = args[:renotify_interval] if args.key?(:renotify_interval)
        end
      end
      
      # Control over the rate of notifications sent to this alerting policy's
      # notification channels.
      class NotificationRateLimit
        include Google::Apis::Core::Hashable
      
        # Not more than one notification per period.
        # Corresponds to the JSON property `period`
        # @return [String]
        attr_accessor :period
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @period = args[:period] if args.key?(:period)
        end
      end
      
      # Contains metadata for longrunning operation for the edit Metrics Scope
      # endpoints.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # The time when the batch request was received.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Current state of the batch operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The time when the operation result was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A protocol buffer option, which can be attached to a message, field,
      # enumeration, etc.
      class Option
        include Google::Apis::Core::Hashable
      
        # The option's name. For protobuf built-in options (options defined in
        # descriptor.proto), this is the short name. For example, "map_entry". For
        # custom options, it should be the fully-qualified name. For example, "google.
        # api.http".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The option's value packed in an Any message. If the value is a primitive, the
        # corresponding wrapper type defined in google/protobuf/wrappers.proto should be
        # used. If the value is an enum, it should be stored as an int32 value using the
        # google.protobuf.Int32Value type.
        # Corresponds to the JSON property `value`
        # @return [Hash<String,Object>]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A PerformanceThreshold is used when each window is good when that window has a
      # sufficiently high performance.
      class PerformanceThreshold
        include Google::Apis::Core::Hashable
      
        # An SLI measuring performance on a well-known service type. Performance will be
        # computed on the basis of pre-defined metrics. The type of the service_resource
        # determines the metrics to use and the service_resource.labels and
        # metric_labels are used to construct a monitoring filter to filter that metric
        # down to just the data relevant to this service.
        # Corresponds to the JSON property `basicSliPerformance`
        # @return [Google::Apis::MonitoringV3::BasicSli]
        attr_accessor :basic_sli_performance
      
        # Service Level Indicators for which atomic units of service are counted
        # directly.
        # Corresponds to the JSON property `performance`
        # @return [Google::Apis::MonitoringV3::RequestBasedSli]
        attr_accessor :performance
      
        # If window performance >= threshold, the window is counted as good.
        # Corresponds to the JSON property `threshold`
        # @return [Float]
        attr_accessor :threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_sli_performance = args[:basic_sli_performance] if args.key?(:basic_sli_performance)
          @performance = args[:performance] if args.key?(:performance)
          @threshold = args[:threshold] if args.key?(:threshold)
        end
      end
      
      # Information involved in sending ICMP pings alongside public HTTP/TCP checks.
      # For HTTP, the pings are performed for each part of the redirect chain.
      class PingConfig
        include Google::Apis::Core::Hashable
      
        # Number of ICMP pings. A maximum of 3 ICMP pings is currently supported.
        # Corresponds to the JSON property `pingsCount`
        # @return [Fixnum]
        attr_accessor :pings_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pings_count = args[:pings_count] if args.key?(:pings_count)
        end
      end
      
      # A single data point in a time series.
      class Point
        include Google::Apis::Core::Hashable
      
        # Describes a time interval: Reads: A half-open time interval. It includes the
        # end time but excludes the start time: (startTime, endTime]. The start time
        # must be specified, must be earlier than the end time, and should be no older
        # than the data retention period for the metric. Writes: A closed time interval.
        # It extends from the start time to the end time, and includes both: [startTime,
        # endTime]. Valid time intervals depend on the MetricKind (https://cloud.google.
        # com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors#MetricKind) of
        # the metric value. The end time must not be earlier than the start time, and
        # the end time must not be more than 25 hours in the past or more than five
        # minutes in the future. For GAUGE metrics, the startTime value is technically
        # optional; if no value is specified, the start time defaults to the value of
        # the end time, and the interval represents a single point in time. If both
        # start and end times are specified, they must be identical. Such an interval is
        # valid only for GAUGE metrics, which are point-in-time measurements. The end
        # time of a new interval must be at least a millisecond after the end time of
        # the previous interval. For DELTA metrics, the start time and end time must
        # specify a non-zero interval, with subsequent points specifying contiguous and
        # non-overlapping intervals. For DELTA metrics, the start time of the next
        # interval must be at least a millisecond after the end time of the previous
        # interval. For CUMULATIVE metrics, the start time and end time must specify a
        # non-zero interval, with subsequent points specifying the same start time and
        # increasing end times, until an event resets the cumulative value to zero and
        # sets a new start time for the following points. The new start time must be at
        # least a millisecond after the end time of the previous interval. The start
        # time of a new interval must be at least a millisecond after the end time of
        # the previous interval because intervals are closed. If the start time of a new
        # interval is the same as the end time of the previous interval, then data
        # written at the new start time could overwrite data written at the previous end
        # time.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::MonitoringV3::TimeInterval]
        attr_accessor :interval
      
        # A single strongly-typed value.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::MonitoringV3::TypedValue]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interval = args[:interval] if args.key?(:interval)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A point's value columns and time interval. Each point has one or more point
      # values corresponding to the entries in point_descriptors field in the
      # TimeSeriesDescriptor associated with this object.
      class PointData
        include Google::Apis::Core::Hashable
      
        # Describes a time interval: Reads: A half-open time interval. It includes the
        # end time but excludes the start time: (startTime, endTime]. The start time
        # must be specified, must be earlier than the end time, and should be no older
        # than the data retention period for the metric. Writes: A closed time interval.
        # It extends from the start time to the end time, and includes both: [startTime,
        # endTime]. Valid time intervals depend on the MetricKind (https://cloud.google.
        # com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors#MetricKind) of
        # the metric value. The end time must not be earlier than the start time, and
        # the end time must not be more than 25 hours in the past or more than five
        # minutes in the future. For GAUGE metrics, the startTime value is technically
        # optional; if no value is specified, the start time defaults to the value of
        # the end time, and the interval represents a single point in time. If both
        # start and end times are specified, they must be identical. Such an interval is
        # valid only for GAUGE metrics, which are point-in-time measurements. The end
        # time of a new interval must be at least a millisecond after the end time of
        # the previous interval. For DELTA metrics, the start time and end time must
        # specify a non-zero interval, with subsequent points specifying contiguous and
        # non-overlapping intervals. For DELTA metrics, the start time of the next
        # interval must be at least a millisecond after the end time of the previous
        # interval. For CUMULATIVE metrics, the start time and end time must specify a
        # non-zero interval, with subsequent points specifying the same start time and
        # increasing end times, until an event resets the cumulative value to zero and
        # sets a new start time for the following points. The new start time must be at
        # least a millisecond after the end time of the previous interval. The start
        # time of a new interval must be at least a millisecond after the end time of
        # the previous interval because intervals are closed. If the start time of a new
        # interval is the same as the end time of the previous interval, then data
        # written at the new start time could overwrite data written at the previous end
        # time.
        # Corresponds to the JSON property `timeInterval`
        # @return [Google::Apis::MonitoringV3::TimeInterval]
        attr_accessor :time_interval
      
        # The values that make up the point.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::MonitoringV3::TypedValue>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @time_interval = args[:time_interval] if args.key?(:time_interval)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # A condition type that allows alerting policies to be defined using Prometheus
      # Query Language (PromQL) (https://prometheus.io/docs/prometheus/latest/querying/
      # basics/).The PrometheusQueryLanguageCondition message contains information
      # from a Prometheus alerting rule and its associated rule group.A Prometheus
      # alerting rule is described here (https://prometheus.io/docs/prometheus/latest/
      # configuration/alerting_rules/). The semantics of a Prometheus alerting rule is
      # described here (https://prometheus.io/docs/prometheus/latest/configuration/
      # recording_rules/#rule).A Prometheus rule group is described here (https://
      # prometheus.io/docs/prometheus/latest/configuration/recording_rules/). The
      # semantics of a Prometheus rule group is described here (https://prometheus.io/
      # docs/prometheus/latest/configuration/recording_rules/#rule_group).Because
      # Cloud Alerting has no representation of a Prometheus rule group resource, we
      # must embed the information of the parent rule group inside each of the
      # conditions that refer to it. We must also update the contents of all
      # Prometheus alerts in case the information of their rule group changes.The
      # PrometheusQueryLanguageCondition protocol buffer combines the information of
      # the corresponding rule group and alerting rule. The structure of the
      # PrometheusQueryLanguageCondition protocol buffer does NOT mimic the structure
      # of the Prometheus rule group and alerting rule YAML declarations. The
      # PrometheusQueryLanguageCondition protocol buffer may change in the future to
      # support future rule group and/or alerting rule features. There are no new such
      # features at the present time (2023-06-26).
      class PrometheusQueryLanguageCondition
        include Google::Apis::Core::Hashable
      
        # Optional. The alerting rule name of this alert in the corresponding Prometheus
        # configuration file.Some external tools may require this field to be populated
        # correctly in order to refer to the original Prometheus configuration file. The
        # rule group name and the alert name are necessary to update the relevant
        # AlertPolicies in case the definition of the rule group changes in the future.
        # This field is optional. If this field is not empty, then it must be a valid
        # Prometheus label name (https://prometheus.io/docs/concepts/data_model/#metric-
        # names-and-labels). This field may not exceed 2048 Unicode characters in length.
        # Corresponds to the JSON property `alertRule`
        # @return [String]
        attr_accessor :alert_rule
      
        # Optional. Whether to disable metric existence validation for this condition.
        # This allows alerting policies to be defined on metrics that do not yet exist,
        # improving advanced customer workflows such as configuring alerting policies
        # using Terraform.Users with the monitoring.alertPolicyViewer role are able to
        # see the name of the non-existent metric in the alerting policy condition.
        # Corresponds to the JSON property `disableMetricValidation`
        # @return [Boolean]
        attr_accessor :disable_metric_validation
        alias_method :disable_metric_validation?, :disable_metric_validation
      
        # Optional. Alerts are considered firing once their PromQL expression was
        # evaluated to be "true" for this long. Alerts whose PromQL expression was not
        # evaluated to be "true" for long enough are considered pending. Must be a non-
        # negative duration or missing. This field is optional. Its default value is
        # zero.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Optional. How often this rule should be evaluated. Must be a positive multiple
        # of 30 seconds or missing. This field is optional. Its default value is 30
        # seconds. If this PrometheusQueryLanguageCondition was generated from a
        # Prometheus alerting rule, then this value should be taken from the enclosing
        # rule group.
        # Corresponds to the JSON property `evaluationInterval`
        # @return [String]
        attr_accessor :evaluation_interval
      
        # Optional. Labels to add to or overwrite in the PromQL query result. Label
        # names must be valid (https://prometheus.io/docs/concepts/data_model/#metric-
        # names-and-labels). Label values can be templatized by using variables (https://
        # cloud.google.com/monitoring/alerts/doc-variables#doc-vars). The only available
        # variable names are the names of the labels in the PromQL result, including "
        # __name__" and "value". "labels" may be empty.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The PromQL expression to evaluate. Every evaluation cycle this
        # expression is evaluated at the current time, and all resultant time series
        # become pending/firing alerts. This field must not be empty.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # Optional. The rule group name of this alert in the corresponding Prometheus
        # configuration file.Some external tools may require this field to be populated
        # correctly in order to refer to the original Prometheus configuration file. The
        # rule group name and the alert name are necessary to update the relevant
        # AlertPolicies in case the definition of the rule group changes in the future.
        # This field is optional. If this field is not empty, then it must contain a
        # valid UTF-8 string. This field may not exceed 2048 Unicode characters in
        # length.
        # Corresponds to the JSON property `ruleGroup`
        # @return [String]
        attr_accessor :rule_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alert_rule = args[:alert_rule] if args.key?(:alert_rule)
          @disable_metric_validation = args[:disable_metric_validation] if args.key?(:disable_metric_validation)
          @duration = args[:duration] if args.key?(:duration)
          @evaluation_interval = args[:evaluation_interval] if args.key?(:evaluation_interval)
          @labels = args[:labels] if args.key?(:labels)
          @query = args[:query] if args.key?(:query)
          @rule_group = args[:rule_group] if args.key?(:rule_group)
        end
      end
      
      # The QueryTimeSeries request. For information about the status of Monitoring
      # Query Language (MQL), see the MQL deprecation notice (https://cloud.google.com/
      # stackdriver/docs/deprecations/mql).
      class QueryTimeSeriesRequest
        include Google::Apis::Core::Hashable
      
        # A positive number that is the maximum number of time_series_data to return.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # If this field is not empty then it must contain the nextPageToken value
        # returned by a previous call to this method. Using this field causes the method
        # to return additional results from the previous method call.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Required. The query in the Monitoring Query Language (https://cloud.google.com/
        # monitoring/mql/reference) format. The default time zone is in UTC.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # The QueryTimeSeries response. For information about the status of Monitoring
      # Query Language (MQL), see the MQL deprecation notice (https://cloud.google.com/
      # stackdriver/docs/deprecations/mql).
      class QueryTimeSeriesResponse
        include Google::Apis::Core::Hashable
      
        # If there are more results than have been returned, then this field is set to a
        # non-empty value. To see the additional results, use that value as page_token
        # in the next call to this method.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Query execution errors that may have caused the time series data returned to
        # be incomplete. The available data will be available in the response.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::MonitoringV3::Status>]
        attr_accessor :partial_errors
      
        # The time series data.
        # Corresponds to the JSON property `timeSeriesData`
        # @return [Array<Google::Apis::MonitoringV3::TimeSeriesData>]
        attr_accessor :time_series_data
      
        # A descriptor for the labels and points in a time series.
        # Corresponds to the JSON property `timeSeriesDescriptor`
        # @return [Google::Apis::MonitoringV3::TimeSeriesDescriptor]
        attr_accessor :time_series_descriptor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @partial_errors = args[:partial_errors] if args.key?(:partial_errors)
          @time_series_data = args[:time_series_data] if args.key?(:time_series_data)
          @time_series_descriptor = args[:time_series_descriptor] if args.key?(:time_series_descriptor)
        end
      end
      
      # The range of the population values.
      class Range
        include Google::Apis::Core::Hashable
      
        # The maximum of the population values.
        # Corresponds to the JSON property `max`
        # @return [Float]
        attr_accessor :max
      
        # The minimum of the population values.
        # Corresponds to the JSON property `min`
        # @return [Float]
        attr_accessor :min
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max = args[:max] if args.key?(:max)
          @min = args[:min] if args.key?(:min)
        end
      end
      
      # Service Level Indicators for which atomic units of service are counted
      # directly.
      class RequestBasedSli
        include Google::Apis::Core::Hashable
      
        # A DistributionCut defines a TimeSeries and thresholds used for measuring good
        # service and total service. The TimeSeries must have ValueType = DISTRIBUTION
        # and MetricKind = DELTA or MetricKind = CUMULATIVE. The computed good_service
        # will be the estimated count of values in the Distribution that fall within the
        # specified min and max.
        # Corresponds to the JSON property `distributionCut`
        # @return [Google::Apis::MonitoringV3::DistributionCut]
        attr_accessor :distribution_cut
      
        # A TimeSeriesRatio specifies two TimeSeries to use for computing the
        # good_service / total_service ratio. The specified TimeSeries must have
        # ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or
        # MetricKind = CUMULATIVE. The TimeSeriesRatio must specify exactly two of good,
        # bad, and total, and the relationship good_service + bad_service =
        # total_service will be assumed.
        # Corresponds to the JSON property `goodTotalRatio`
        # @return [Google::Apis::MonitoringV3::TimeSeriesRatio]
        attr_accessor :good_total_ratio
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @distribution_cut = args[:distribution_cut] if args.key?(:distribution_cut)
          @good_total_ratio = args[:good_total_ratio] if args.key?(:good_total_ratio)
        end
      end
      
      # The resource submessage for group checks. It can be used instead of a
      # monitored resource, when multiple resources are being monitored.
      class ResourceGroup
        include Google::Apis::Core::Hashable
      
        # The group of resources being monitored. Should be only the [GROUP_ID], and not
        # the full-path projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID].
        # Corresponds to the JSON property `groupId`
        # @return [String]
        attr_accessor :group_id
      
        # The resource type of the group members.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_id = args[:group_id] if args.key?(:group_id)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # A status to accept. Either a status code class like "2xx", or an integer
      # status code like "200".
      class ResponseStatusCode
        include Google::Apis::Core::Hashable
      
        # A class of status codes to accept.
        # Corresponds to the JSON property `statusClass`
        # @return [String]
        attr_accessor :status_class
      
        # A status code to accept.
        # Corresponds to the JSON property `statusValue`
        # @return [Fixnum]
        attr_accessor :status_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status_class = args[:status_class] if args.key?(:status_class)
          @status_value = args[:status_value] if args.key?(:status_value)
        end
      end
      
      # A test that checks if the number of rows in the result set violates some
      # threshold.
      class RowCountTest
        include Google::Apis::Core::Hashable
      
        # Required. The comparison to apply between the number of rows returned by the
        # query and the threshold.
        # Corresponds to the JSON property `comparison`
        # @return [String]
        attr_accessor :comparison
      
        # Required. The value against which to compare the row count.
        # Corresponds to the JSON property `threshold`
        # @return [Fixnum]
        attr_accessor :threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @comparison = args[:comparison] if args.key?(:comparison)
          @threshold = args[:threshold] if args.key?(:threshold)
        end
      end
      
      # The SendNotificationChannelVerificationCode request.
      class SendNotificationChannelVerificationCodeRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A Service is a discrete, autonomous, and network-accessible unit, designed to
      # solve an individual concern (Wikipedia (https://en.wikipedia.org/wiki/Service-
      # orientation)). In Cloud Monitoring, a Service acts as the root resource under
      # which operational aspects of the service are accessible.
      class Service
        include Google::Apis::Core::Hashable
      
        # App Engine service. Learn more at https://cloud.google.com/appengine.
        # Corresponds to the JSON property `appEngine`
        # @return [Google::Apis::MonitoringV3::AppEngine]
        attr_accessor :app_engine
      
        # A well-known service type, defined by its service type and service labels.
        # Documentation and examples here (https://cloud.google.com/stackdriver/docs/
        # solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli).
        # Corresponds to the JSON property `basicService`
        # @return [Google::Apis::MonitoringV3::BasicService]
        attr_accessor :basic_service
      
        # Cloud Endpoints service. Learn more at https://cloud.google.com/endpoints.
        # Corresponds to the JSON property `cloudEndpoints`
        # @return [Google::Apis::MonitoringV3::CloudEndpoints]
        attr_accessor :cloud_endpoints
      
        # Cloud Run service. Learn more at https://cloud.google.com/run.
        # Corresponds to the JSON property `cloudRun`
        # @return [Google::Apis::MonitoringV3::CloudRun]
        attr_accessor :cloud_run
      
        # Istio service scoped to a single Kubernetes cluster. Learn more at https://
        # istio.io. Clusters running OSS Istio will have their services ingested as this
        # type.
        # Corresponds to the JSON property `clusterIstio`
        # @return [Google::Apis::MonitoringV3::ClusterIstio]
        attr_accessor :cluster_istio
      
        # Use a custom service to designate a service that you want to monitor when none
        # of the other service types (like App Engine, Cloud Run, or a GKE type) matches
        # your intended service.
        # Corresponds to the JSON property `custom`
        # @return [Google::Apis::MonitoringV3::Custom]
        attr_accessor :custom
      
        # Name used for UI elements listing this Service.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # GKE Namespace. The field names correspond to the resource metadata labels on
        # monitored resources that fall under a namespace (for example, k8s_container or
        # k8s_pod).
        # Corresponds to the JSON property `gkeNamespace`
        # @return [Google::Apis::MonitoringV3::GkeNamespace]
        attr_accessor :gke_namespace
      
        # GKE Service. The "service" here represents a Kubernetes service object (https:/
        # /kubernetes.io/docs/concepts/services-networking/service). The field names
        # correspond to the resource labels on k8s_service monitored resources (https://
        # cloud.google.com/monitoring/api/resources#tag_k8s_service).
        # Corresponds to the JSON property `gkeService`
        # @return [Google::Apis::MonitoringV3::GkeService]
        attr_accessor :gke_service
      
        # A GKE Workload (Deployment, StatefulSet, etc). The field names correspond to
        # the metadata labels on monitored resources that fall under a workload (for
        # example, k8s_container or k8s_pod).
        # Corresponds to the JSON property `gkeWorkload`
        # @return [Google::Apis::MonitoringV3::GkeWorkload]
        attr_accessor :gke_workload
      
        # Canonical service scoped to an Istio mesh. Anthos clusters running ASM >= 1.6.
        # 8 will have their services ingested as this type.
        # Corresponds to the JSON property `istioCanonicalService`
        # @return [Google::Apis::MonitoringV3::IstioCanonicalService]
        attr_accessor :istio_canonical_service
      
        # Istio service scoped to an Istio mesh. Anthos clusters running ASM < 1.6.8
        # will have their services ingested as this type.
        # Corresponds to the JSON property `meshIstio`
        # @return [Google::Apis::MonitoringV3::MeshIstio]
        attr_accessor :mesh_istio
      
        # Identifier. Resource name for this Service. The format is: projects/[
        # PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configuration for how to query telemetry on a Service.
        # Corresponds to the JSON property `telemetry`
        # @return [Google::Apis::MonitoringV3::Telemetry]
        attr_accessor :telemetry
      
        # Labels which have been used to annotate the service. Label keys must start
        # with a letter. Label keys and values may contain lowercase letters, numbers,
        # underscores, and dashes. Label keys and values have a maximum length of 63
        # characters, and must be less than 128 bytes in size. Up to 64 label entries
        # may be stored. For labels which do not have a semantic value, the empty string
        # may be supplied for the label value.
        # Corresponds to the JSON property `userLabels`
        # @return [Hash<String,String>]
        attr_accessor :user_labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_engine = args[:app_engine] if args.key?(:app_engine)
          @basic_service = args[:basic_service] if args.key?(:basic_service)
          @cloud_endpoints = args[:cloud_endpoints] if args.key?(:cloud_endpoints)
          @cloud_run = args[:cloud_run] if args.key?(:cloud_run)
          @cluster_istio = args[:cluster_istio] if args.key?(:cluster_istio)
          @custom = args[:custom] if args.key?(:custom)
          @display_name = args[:display_name] if args.key?(:display_name)
          @gke_namespace = args[:gke_namespace] if args.key?(:gke_namespace)
          @gke_service = args[:gke_service] if args.key?(:gke_service)
          @gke_workload = args[:gke_workload] if args.key?(:gke_workload)
          @istio_canonical_service = args[:istio_canonical_service] if args.key?(:istio_canonical_service)
          @mesh_istio = args[:mesh_istio] if args.key?(:mesh_istio)
          @name = args[:name] if args.key?(:name)
          @telemetry = args[:telemetry] if args.key?(:telemetry)
          @user_labels = args[:user_labels] if args.key?(:user_labels)
        end
      end
      
      # Contains information needed for generating either an OpenID Connect token (
      # https://developers.google.com/identity/protocols/OpenIDConnect) or OAuth token
      # (https://developers.google.com/identity/protocols/oauth2). The token will be
      # generated for the Monitoring service agent service account.
      class ServiceAgentAuthentication
        include Google::Apis::Core::Hashable
      
        # Type of authentication.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A Service-Level Indicator (SLI) describes the "performance" of a service. For
      # some services, the SLI is well-defined. In such cases, the SLI can be
      # described easily by referencing the well-known SLI and providing the needed
      # parameters. Alternatively, a "custom" SLI can be defined with a query to the
      # underlying metric store. An SLI is defined to be good_service / total_service
      # over any queried time interval. The value of performance always falls into the
      # range 0 <= performance <= 1. A custom SLI describes how to compute this ratio,
      # whether this is by dividing values from a pair of time series, cutting a
      # Distribution into good and bad counts, or counting time windows in which the
      # service complies with a criterion. For separation of concerns, a single
      # Service-Level Indicator measures performance for only one aspect of service
      # quality, such as fraction of successful queries or fast-enough queries.
      class ServiceLevelIndicator
        include Google::Apis::Core::Hashable
      
        # An SLI measuring performance on a well-known service type. Performance will be
        # computed on the basis of pre-defined metrics. The type of the service_resource
        # determines the metrics to use and the service_resource.labels and
        # metric_labels are used to construct a monitoring filter to filter that metric
        # down to just the data relevant to this service.
        # Corresponds to the JSON property `basicSli`
        # @return [Google::Apis::MonitoringV3::BasicSli]
        attr_accessor :basic_sli
      
        # Service Level Indicators for which atomic units of service are counted
        # directly.
        # Corresponds to the JSON property `requestBased`
        # @return [Google::Apis::MonitoringV3::RequestBasedSli]
        attr_accessor :request_based
      
        # A WindowsBasedSli defines good_service as the count of time windows for which
        # the provided service was of good quality. Criteria for determining if service
        # was good are embedded in the window_criterion.
        # Corresponds to the JSON property `windowsBased`
        # @return [Google::Apis::MonitoringV3::WindowsBasedSli]
        attr_accessor :windows_based
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_sli = args[:basic_sli] if args.key?(:basic_sli)
          @request_based = args[:request_based] if args.key?(:request_based)
          @windows_based = args[:windows_based] if args.key?(:windows_based)
        end
      end
      
      # A Service-Level Objective (SLO) describes a level of desired good service. It
      # consists of a service-level indicator (SLI), a performance goal, and a period
      # over which the objective is to be evaluated against that goal. The SLO can use
      # SLIs defined in a number of different manners. Typical SLOs might include "99%
      # of requests in each rolling week have latency below 200 milliseconds" or "99.5%
      # of requests in each calendar month return successfully."
      class ServiceLevelObjective
        include Google::Apis::Core::Hashable
      
        # A calendar period, semantically "since the start of the current ". At this
        # time, only DAY, WEEK, FORTNIGHT, and MONTH are supported.
        # Corresponds to the JSON property `calendarPeriod`
        # @return [String]
        attr_accessor :calendar_period
      
        # Name used for UI elements listing this SLO.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The fraction of service that must be good in order for this objective to be
        # met. 0 < goal <= 0.9999.
        # Corresponds to the JSON property `goal`
        # @return [Float]
        attr_accessor :goal
      
        # Identifier. Resource name for this ServiceLevelObjective. The format is:
        # projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]/serviceLevelObjectives/[
        # SLO_NAME]
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A rolling time period, semantically "in the past ". Must be an integer
        # multiple of 1 day no larger than 30 days.
        # Corresponds to the JSON property `rollingPeriod`
        # @return [String]
        attr_accessor :rolling_period
      
        # A Service-Level Indicator (SLI) describes the "performance" of a service. For
        # some services, the SLI is well-defined. In such cases, the SLI can be
        # described easily by referencing the well-known SLI and providing the needed
        # parameters. Alternatively, a "custom" SLI can be defined with a query to the
        # underlying metric store. An SLI is defined to be good_service / total_service
        # over any queried time interval. The value of performance always falls into the
        # range 0 <= performance <= 1. A custom SLI describes how to compute this ratio,
        # whether this is by dividing values from a pair of time series, cutting a
        # Distribution into good and bad counts, or counting time windows in which the
        # service complies with a criterion. For separation of concerns, a single
        # Service-Level Indicator measures performance for only one aspect of service
        # quality, such as fraction of successful queries or fast-enough queries.
        # Corresponds to the JSON property `serviceLevelIndicator`
        # @return [Google::Apis::MonitoringV3::ServiceLevelIndicator]
        attr_accessor :service_level_indicator
      
        # Labels which have been used to annotate the service-level objective. Label
        # keys must start with a letter. Label keys and values may contain lowercase
        # letters, numbers, underscores, and dashes. Label keys and values have a
        # maximum length of 63 characters, and must be less than 128 bytes in size. Up
        # to 64 label entries may be stored. For labels which do not have a semantic
        # value, the empty string may be supplied for the label value.
        # Corresponds to the JSON property `userLabels`
        # @return [Hash<String,String>]
        attr_accessor :user_labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @calendar_period = args[:calendar_period] if args.key?(:calendar_period)
          @display_name = args[:display_name] if args.key?(:display_name)
          @goal = args[:goal] if args.key?(:goal)
          @name = args[:name] if args.key?(:name)
          @rolling_period = args[:rolling_period] if args.key?(:rolling_period)
          @service_level_indicator = args[:service_level_indicator] if args.key?(:service_level_indicator)
          @user_labels = args[:user_labels] if args.key?(:user_labels)
        end
      end
      
      # A Snooze will prevent any alerts from being opened, and close any that are
      # already open. The Snooze will work on alerts that match the criteria defined
      # in the Snooze. The Snooze will be active from interval.start_time through
      # interval.end_time.
      class Snooze
        include Google::Apis::Core::Hashable
      
        # Criteria specific to the AlertPolicys that this Snooze applies to. The Snooze
        # will suppress alerts that come from one of the AlertPolicys whose names are
        # supplied.
        # Corresponds to the JSON property `criteria`
        # @return [Google::Apis::MonitoringV3::Criteria]
        attr_accessor :criteria
      
        # Required. A display name for the Snooze. This can be, at most, 512 unicode
        # characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Describes a time interval: Reads: A half-open time interval. It includes the
        # end time but excludes the start time: (startTime, endTime]. The start time
        # must be specified, must be earlier than the end time, and should be no older
        # than the data retention period for the metric. Writes: A closed time interval.
        # It extends from the start time to the end time, and includes both: [startTime,
        # endTime]. Valid time intervals depend on the MetricKind (https://cloud.google.
        # com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors#MetricKind) of
        # the metric value. The end time must not be earlier than the start time, and
        # the end time must not be more than 25 hours in the past or more than five
        # minutes in the future. For GAUGE metrics, the startTime value is technically
        # optional; if no value is specified, the start time defaults to the value of
        # the end time, and the interval represents a single point in time. If both
        # start and end times are specified, they must be identical. Such an interval is
        # valid only for GAUGE metrics, which are point-in-time measurements. The end
        # time of a new interval must be at least a millisecond after the end time of
        # the previous interval. For DELTA metrics, the start time and end time must
        # specify a non-zero interval, with subsequent points specifying contiguous and
        # non-overlapping intervals. For DELTA metrics, the start time of the next
        # interval must be at least a millisecond after the end time of the previous
        # interval. For CUMULATIVE metrics, the start time and end time must specify a
        # non-zero interval, with subsequent points specifying the same start time and
        # increasing end times, until an event resets the cumulative value to zero and
        # sets a new start time for the following points. The new start time must be at
        # least a millisecond after the end time of the previous interval. The start
        # time of a new interval must be at least a millisecond after the end time of
        # the previous interval because intervals are closed. If the start time of a new
        # interval is the same as the end time of the previous interval, then data
        # written at the new start time could overwrite data written at the previous end
        # time.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::MonitoringV3::TimeInterval]
        attr_accessor :interval
      
        # Required. Identifier. The name of the Snooze. The format is: projects/[
        # PROJECT_ID_OR_NUMBER]/snoozes/[SNOOZE_ID] The ID of the Snooze will be
        # generated by the system.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @criteria = args[:criteria] if args.key?(:criteria)
          @display_name = args[:display_name] if args.key?(:display_name)
          @interval = args[:interval] if args.key?(:interval)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # SourceContext represents information about the source of a protobuf element,
      # like the file in which it is defined.
      class SourceContext
        include Google::Apis::Core::Hashable
      
        # The path-qualified name of the .proto file that contained the associated
        # protobuf element. For example: "google/protobuf/source_context.proto".
        # Corresponds to the JSON property `fileName`
        # @return [String]
        attr_accessor :file_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_name = args[:file_name] if args.key?(:file_name)
        end
      end
      
      # The context of a span. This is attached to an Exemplar in Distribution values
      # during aggregation.It contains the name of a span with format: projects/[
      # PROJECT_ID_OR_NUMBER]/traces/[TRACE_ID]/spans/[SPAN_ID]
      class SpanContext
        include Google::Apis::Core::Hashable
      
        # The resource name of the span. The format is: projects/[PROJECT_ID_OR_NUMBER]/
        # traces/[TRACE_ID]/spans/[SPAN_ID] [TRACE_ID] is a unique identifier for a
        # trace within a project; it is a 32-character hexadecimal encoding of a 16-byte
        # array.[SPAN_ID] is a unique identifier for a span within a trace; it is a 16-
        # character hexadecimal encoding of an 8-byte array.
        # Corresponds to the JSON property `spanName`
        # @return [String]
        attr_accessor :span_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @span_name = args[:span_name] if args.key?(:span_name)
        end
      end
      
      # A condition that allows alerting policies to be defined using GoogleSQL. SQL
      # conditions examine a sliding window of logs using GoogleSQL. Alert policies
      # with SQL conditions may incur additional billing.
      class SqlCondition
        include Google::Apis::Core::Hashable
      
        # A test that uses an alerting result in a boolean column produced by the SQL
        # query.
        # Corresponds to the JSON property `booleanTest`
        # @return [Google::Apis::MonitoringV3::BooleanTest]
        attr_accessor :boolean_test
      
        # Used to schedule the query to run every so many days.
        # Corresponds to the JSON property `daily`
        # @return [Google::Apis::MonitoringV3::Daily]
        attr_accessor :daily
      
        # Used to schedule the query to run every so many hours.
        # Corresponds to the JSON property `hourly`
        # @return [Google::Apis::MonitoringV3::Hourly]
        attr_accessor :hourly
      
        # Used to schedule the query to run every so many minutes.
        # Corresponds to the JSON property `minutes`
        # @return [Google::Apis::MonitoringV3::Minutes]
        attr_accessor :minutes
      
        # Required. The Log Analytics SQL query to run, as a string. The query must
        # conform to the required shape. Specifically, the query must not try to filter
        # the input by time. A filter will automatically be applied to filter the input
        # so that the query receives all rows received since the last time the query was
        # run.For example, the following query extracts all log entries containing an
        # HTTP request: SELECT timestamp, log_name, severity, http_request, resource,
        # labels FROM my-project.global._Default._AllLogs WHERE http_request IS NOT NULL
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # A test that checks if the number of rows in the result set violates some
        # threshold.
        # Corresponds to the JSON property `rowCountTest`
        # @return [Google::Apis::MonitoringV3::RowCountTest]
        attr_accessor :row_count_test
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_test = args[:boolean_test] if args.key?(:boolean_test)
          @daily = args[:daily] if args.key?(:daily)
          @hourly = args[:hourly] if args.key?(:hourly)
          @minutes = args[:minutes] if args.key?(:minutes)
          @query = args[:query] if args.key?(:query)
          @row_count_test = args[:row_count_test] if args.key?(:row_count_test)
        end
      end
      
      # The Status type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by gRPC
      # (https://github.com/grpc). Each Status message contains three pieces of data:
      # error code, error message, and error details.You can find out more about this
      # error model and how to work with it in the API Design Guide (https://cloud.
      # google.com/apis/design/errors).
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
      
      # Describes a Synthetic Monitor to be invoked by Uptime.
      class SyntheticMonitorTarget
        include Google::Apis::Core::Hashable
      
        # A Synthetic Monitor deployed to a Cloud Functions V2 instance.
        # Corresponds to the JSON property `cloudFunctionV2`
        # @return [Google::Apis::MonitoringV3::CloudFunctionV2Target]
        attr_accessor :cloud_function_v2
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_function_v2 = args[:cloud_function_v2] if args.key?(:cloud_function_v2)
        end
      end
      
      # Information required for a TCP Uptime check request.
      class TcpCheck
        include Google::Apis::Core::Hashable
      
        # Information involved in sending ICMP pings alongside public HTTP/TCP checks.
        # For HTTP, the pings are performed for each part of the redirect chain.
        # Corresponds to the JSON property `pingConfig`
        # @return [Google::Apis::MonitoringV3::PingConfig]
        attr_accessor :ping_config
      
        # The TCP port on the server against which to run the check. Will be combined
        # with host (specified within the monitored_resource) to construct the full URL.
        # Required.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ping_config = args[:ping_config] if args.key?(:ping_config)
          @port = args[:port] if args.key?(:port)
        end
      end
      
      # Configuration for how to query telemetry on a Service.
      class Telemetry
        include Google::Apis::Core::Hashable
      
        # The full name of the resource that defines this service. Formatted as
        # described in https://cloud.google.com/apis/design/resource_names.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # Describes a time interval: Reads: A half-open time interval. It includes the
      # end time but excludes the start time: (startTime, endTime]. The start time
      # must be specified, must be earlier than the end time, and should be no older
      # than the data retention period for the metric. Writes: A closed time interval.
      # It extends from the start time to the end time, and includes both: [startTime,
      # endTime]. Valid time intervals depend on the MetricKind (https://cloud.google.
      # com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors#MetricKind) of
      # the metric value. The end time must not be earlier than the start time, and
      # the end time must not be more than 25 hours in the past or more than five
      # minutes in the future. For GAUGE metrics, the startTime value is technically
      # optional; if no value is specified, the start time defaults to the value of
      # the end time, and the interval represents a single point in time. If both
      # start and end times are specified, they must be identical. Such an interval is
      # valid only for GAUGE metrics, which are point-in-time measurements. The end
      # time of a new interval must be at least a millisecond after the end time of
      # the previous interval. For DELTA metrics, the start time and end time must
      # specify a non-zero interval, with subsequent points specifying contiguous and
      # non-overlapping intervals. For DELTA metrics, the start time of the next
      # interval must be at least a millisecond after the end time of the previous
      # interval. For CUMULATIVE metrics, the start time and end time must specify a
      # non-zero interval, with subsequent points specifying the same start time and
      # increasing end times, until an event resets the cumulative value to zero and
      # sets a new start time for the following points. The new start time must be at
      # least a millisecond after the end time of the previous interval. The start
      # time of a new interval must be at least a millisecond after the end time of
      # the previous interval because intervals are closed. If the start time of a new
      # interval is the same as the end time of the previous interval, then data
      # written at the new start time could overwrite data written at the previous end
      # time.
      class TimeInterval
        include Google::Apis::Core::Hashable
      
        # Required. The end of the time interval.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Optional. The beginning of the time interval. The default value for the start
        # time is the end time. The start time must not be later than the end time.
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
      
      # Represents a time of day. The date and time zone are either not significant or
      # are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and google.protobuf.Timestamp.
      class TimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of a day in 24 hour format. Must be greater than or equal to 0 and
        # typically must be less than or equal to 23. An API may choose to allow the
        # value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of an hour. Must be greater than or equal to 0 and less than or equal
        # to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and
        # less than or equal to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Seconds of a minute. Must be greater than or equal to 0 and typically must be
        # less than or equal to 59. An API may allow the value 60 if it allows leap-
        # seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
        end
      end
      
      # A collection of data points that describes the time-varying values of a metric.
      # A time series is identified by a combination of a fully-specified monitored
      # resource and a fully-specified metric. This type is used for both listing and
      # creating time series.
      class TimeSeries
        include Google::Apis::Core::Hashable
      
        # Input only. A detailed description of the time series that will be associated
        # with the google.api.MetricDescriptor for the metric. Once set, this field
        # cannot be changed through CreateTimeSeries.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Auxiliary metadata for a MonitoredResource object. MonitoredResource objects
        # contain the minimum set of information to uniquely identify a monitored
        # resource instance. There is some other useful auxiliary metadata. Monitoring
        # and Logging use an ingestion pipeline to extract metadata for cloud resources
        # of all types, and store the metadata in this message.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::MonitoringV3::MonitoredResourceMetadata]
        attr_accessor :metadata
      
        # A specific metric, identified by specifying values for all of the labels of a
        # MetricDescriptor.
        # Corresponds to the JSON property `metric`
        # @return [Google::Apis::MonitoringV3::Metric]
        attr_accessor :metric
      
        # The metric kind of the time series. When listing time series, this metric kind
        # might be different from the metric kind of the associated metric if this time
        # series is an alignment or reduction of other time series.When creating a time
        # series, this field is optional. If present, it must be the same as the metric
        # kind of the associated metric. If the associated metric's descriptor must be
        # auto-created, then this field specifies the metric kind of the new descriptor
        # and must be either GAUGE (the default) or CUMULATIVE.
        # Corresponds to the JSON property `metricKind`
        # @return [String]
        attr_accessor :metric_kind
      
        # The data points of this time series. When listing time series, points are
        # returned in reverse time order.When creating a time series, this field must
        # contain exactly one point and the point's type must be the same as the value
        # type of the associated metric. If the associated metric's descriptor must be
        # auto-created, then the value type of the descriptor is determined by the point'
        # s type, which must be BOOL, INT64, DOUBLE, or DISTRIBUTION.
        # Corresponds to the JSON property `points`
        # @return [Array<Google::Apis::MonitoringV3::Point>]
        attr_accessor :points
      
        # An object representing a resource that can be used for monitoring, logging,
        # billing, or other purposes. Examples include virtual machine instances,
        # databases, and storage devices such as disks. The type field identifies a
        # MonitoredResourceDescriptor object that describes the resource's schema.
        # Information in the labels field identifies the actual resource and its
        # attributes according to the schema. For example, a particular Compute Engine
        # VM instance could be represented by the following object, because the
        # MonitoredResourceDescriptor for "gce_instance" has labels "project_id", "
        # instance_id" and "zone": ` "type": "gce_instance", "labels": ` "project_id": "
        # my-project", "instance_id": "12345678901234", "zone": "us-central1-a" ``
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::MonitoringV3::MonitoredResource]
        attr_accessor :resource
      
        # The units in which the metric value is reported. It is only applicable if the
        # value_type is INT64, DOUBLE, or DISTRIBUTION. The unit defines the
        # representation of the stored metric values. This field can only be changed
        # through CreateTimeSeries when it is empty.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The value type of the time series. When listing time series, this value type
        # might be different from the value type of the associated metric if this time
        # series is an alignment or reduction of other time series.When creating a time
        # series, this field is optional. If present, it must be the same as the type of
        # the data in the points field.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @metadata = args[:metadata] if args.key?(:metadata)
          @metric = args[:metric] if args.key?(:metric)
          @metric_kind = args[:metric_kind] if args.key?(:metric_kind)
          @points = args[:points] if args.key?(:points)
          @resource = args[:resource] if args.key?(:resource)
          @unit = args[:unit] if args.key?(:unit)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Represents the values of a time series associated with a TimeSeriesDescriptor.
      class TimeSeriesData
        include Google::Apis::Core::Hashable
      
        # The values of the labels in the time series identifier, given in the same
        # order as the label_descriptors field of the TimeSeriesDescriptor associated
        # with this object. Each value must have a value of the type given in the
        # corresponding entry of label_descriptors.
        # Corresponds to the JSON property `labelValues`
        # @return [Array<Google::Apis::MonitoringV3::LabelValue>]
        attr_accessor :label_values
      
        # The points in the time series.
        # Corresponds to the JSON property `pointData`
        # @return [Array<Google::Apis::MonitoringV3::PointData>]
        attr_accessor :point_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_values = args[:label_values] if args.key?(:label_values)
          @point_data = args[:point_data] if args.key?(:point_data)
        end
      end
      
      # A descriptor for the labels and points in a time series.
      class TimeSeriesDescriptor
        include Google::Apis::Core::Hashable
      
        # Descriptors for the labels.
        # Corresponds to the JSON property `labelDescriptors`
        # @return [Array<Google::Apis::MonitoringV3::LabelDescriptor>]
        attr_accessor :label_descriptors
      
        # Descriptors for the point data value columns.
        # Corresponds to the JSON property `pointDescriptors`
        # @return [Array<Google::Apis::MonitoringV3::ValueDescriptor>]
        attr_accessor :point_descriptors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_descriptors = args[:label_descriptors] if args.key?(:label_descriptors)
          @point_descriptors = args[:point_descriptors] if args.key?(:point_descriptors)
        end
      end
      
      # A TimeSeriesRatio specifies two TimeSeries to use for computing the
      # good_service / total_service ratio. The specified TimeSeries must have
      # ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or
      # MetricKind = CUMULATIVE. The TimeSeriesRatio must specify exactly two of good,
      # bad, and total, and the relationship good_service + bad_service =
      # total_service will be assumed.
      class TimeSeriesRatio
        include Google::Apis::Core::Hashable
      
        # A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters)
        # specifying a TimeSeries quantifying bad service, either demanded service that
        # was not provided or demanded service that was of inadequate quality. Must have
        # ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or
        # MetricKind = CUMULATIVE.
        # Corresponds to the JSON property `badServiceFilter`
        # @return [String]
        attr_accessor :bad_service_filter
      
        # A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters)
        # specifying a TimeSeries quantifying good service provided. Must have ValueType
        # = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or MetricKind =
        # CUMULATIVE.
        # Corresponds to the JSON property `goodServiceFilter`
        # @return [String]
        attr_accessor :good_service_filter
      
        # A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters)
        # specifying a TimeSeries quantifying total demanded service. Must have
        # ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or
        # MetricKind = CUMULATIVE.
        # Corresponds to the JSON property `totalServiceFilter`
        # @return [String]
        attr_accessor :total_service_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bad_service_filter = args[:bad_service_filter] if args.key?(:bad_service_filter)
          @good_service_filter = args[:good_service_filter] if args.key?(:good_service_filter)
          @total_service_filter = args[:total_service_filter] if args.key?(:total_service_filter)
        end
      end
      
      # Specifies how many time series must fail a predicate to trigger a condition.
      # If not specified, then a `count: 1` trigger is used.
      class Trigger
        include Google::Apis::Core::Hashable
      
        # The absolute number of time series that must fail the predicate for the
        # condition to be triggered.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # The percentage of time series that must fail the predicate for the condition
        # to be triggered.
        # Corresponds to the JSON property `percent`
        # @return [Float]
        attr_accessor :percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @percent = args[:percent] if args.key?(:percent)
        end
      end
      
      # A protocol buffer message type.
      class Type
        include Google::Apis::Core::Hashable
      
        # The source edition string, only valid when syntax is SYNTAX_EDITIONS.
        # Corresponds to the JSON property `edition`
        # @return [String]
        attr_accessor :edition
      
        # The list of fields.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::MonitoringV3::Field>]
        attr_accessor :fields
      
        # The fully qualified message name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The list of types appearing in oneof definitions in this type.
        # Corresponds to the JSON property `oneofs`
        # @return [Array<String>]
        attr_accessor :oneofs
      
        # The protocol buffer options.
        # Corresponds to the JSON property `options`
        # @return [Array<Google::Apis::MonitoringV3::Option>]
        attr_accessor :options
      
        # SourceContext represents information about the source of a protobuf element,
        # like the file in which it is defined.
        # Corresponds to the JSON property `sourceContext`
        # @return [Google::Apis::MonitoringV3::SourceContext]
        attr_accessor :source_context
      
        # The source syntax.
        # Corresponds to the JSON property `syntax`
        # @return [String]
        attr_accessor :syntax
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @edition = args[:edition] if args.key?(:edition)
          @fields = args[:fields] if args.key?(:fields)
          @name = args[:name] if args.key?(:name)
          @oneofs = args[:oneofs] if args.key?(:oneofs)
          @options = args[:options] if args.key?(:options)
          @source_context = args[:source_context] if args.key?(:source_context)
          @syntax = args[:syntax] if args.key?(:syntax)
        end
      end
      
      # A single strongly-typed value.
      class TypedValue
        include Google::Apis::Core::Hashable
      
        # A Boolean value: true or false.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # Distribution contains summary statistics for a population of values. It
        # optionally contains a histogram representing the distribution of those values
        # across a set of buckets.The summary statistics are the count, mean, sum of the
        # squared deviation from the mean, the minimum, and the maximum of the set of
        # population of values. The histogram is based on a sequence of buckets and
        # gives a count of values that fall into each bucket. The boundaries of the
        # buckets are given either explicitly or by formulas for buckets of fixed or
        # exponentially increasing widths.Although it is not forbidden, it is generally
        # a bad idea to include non-finite values (infinities or NaNs) in the population
        # of values, as this will render the mean and sum_of_squared_deviation fields
        # meaningless.
        # Corresponds to the JSON property `distributionValue`
        # @return [Google::Apis::MonitoringV3::Distribution]
        attr_accessor :distribution_value
      
        # A 64-bit double-precision floating-point number. Its magnitude is
        # approximately ±10±300 and it has 16 significant digits of precision.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # A 64-bit integer. Its range is approximately ±9.2x1018.
        # Corresponds to the JSON property `int64Value`
        # @return [Fixnum]
        attr_accessor :int64_value
      
        # A variable-length string value.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @distribution_value = args[:distribution_value] if args.key?(:distribution_value)
          @double_value = args[:double_value] if args.key?(:double_value)
          @int64_value = args[:int64_value] if args.key?(:int64_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # This message configures which resources and services to monitor for
      # availability.
      class UptimeCheckConfig
        include Google::Apis::Core::Hashable
      
        # The type of checkers to use to execute the Uptime check.
        # Corresponds to the JSON property `checkerType`
        # @return [String]
        attr_accessor :checker_type
      
        # The content that is expected to appear in the data returned by the target
        # server against which the check is run. Currently, only the first entry in the
        # content_matchers list is supported, and additional entries will be ignored.
        # This field is optional and should only be specified if a content match is
        # required as part of the/ Uptime check.
        # Corresponds to the JSON property `contentMatchers`
        # @return [Array<Google::Apis::MonitoringV3::ContentMatcher>]
        attr_accessor :content_matchers
      
        # Whether the check is disabled or not.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # A human-friendly name for the Uptime check configuration. The display name
        # should be unique within a Cloud Monitoring Workspace in order to make it
        # easier to identify; however, uniqueness is not enforced. Required.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Information involved in an HTTP/HTTPS Uptime check request.
        # Corresponds to the JSON property `httpCheck`
        # @return [Google::Apis::MonitoringV3::HttpCheck]
        attr_accessor :http_check
      
        # The internal checkers that this check will egress from. If is_internal is true
        # and this list is empty, the check will egress from all the InternalCheckers
        # configured for the project that owns this UptimeCheckConfig.
        # Corresponds to the JSON property `internalCheckers`
        # @return [Array<Google::Apis::MonitoringV3::InternalChecker>]
        attr_accessor :internal_checkers
      
        # If this is true, then checks are made only from the 'internal_checkers'. If it
        # is false, then checks are made only from the 'selected_regions'. It is an
        # error to provide 'selected_regions' when is_internal is true, or to provide '
        # internal_checkers' when is_internal is false.
        # Corresponds to the JSON property `isInternal`
        # @return [Boolean]
        attr_accessor :is_internal
        alias_method :is_internal?, :is_internal
      
        # To specify whether to log the results of failed probes to Cloud Logging.
        # Corresponds to the JSON property `logCheckFailures`
        # @return [Boolean]
        attr_accessor :log_check_failures
        alias_method :log_check_failures?, :log_check_failures
      
        # An object representing a resource that can be used for monitoring, logging,
        # billing, or other purposes. Examples include virtual machine instances,
        # databases, and storage devices such as disks. The type field identifies a
        # MonitoredResourceDescriptor object that describes the resource's schema.
        # Information in the labels field identifies the actual resource and its
        # attributes according to the schema. For example, a particular Compute Engine
        # VM instance could be represented by the following object, because the
        # MonitoredResourceDescriptor for "gce_instance" has labels "project_id", "
        # instance_id" and "zone": ` "type": "gce_instance", "labels": ` "project_id": "
        # my-project", "instance_id": "12345678901234", "zone": "us-central1-a" ``
        # Corresponds to the JSON property `monitoredResource`
        # @return [Google::Apis::MonitoringV3::MonitoredResource]
        attr_accessor :monitored_resource
      
        # Identifier. A unique resource name for this Uptime check configuration. The
        # format is: projects/[PROJECT_ID_OR_NUMBER]/uptimeCheckConfigs/[UPTIME_CHECK_ID]
        # [PROJECT_ID_OR_NUMBER] is the Workspace host project associated with the
        # Uptime check.This field should be omitted when creating the Uptime check
        # configuration; on create, the resource name is assigned by the server and
        # included in the response.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # How often, in seconds, the Uptime check is performed. Currently, the only
        # supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and
        # 900s (15 minutes). Optional, defaults to 60s.
        # Corresponds to the JSON property `period`
        # @return [String]
        attr_accessor :period
      
        # The resource submessage for group checks. It can be used instead of a
        # monitored resource, when multiple resources are being monitored.
        # Corresponds to the JSON property `resourceGroup`
        # @return [Google::Apis::MonitoringV3::ResourceGroup]
        attr_accessor :resource_group
      
        # The list of regions from which the check will be run. Some regions contain one
        # location, and others contain more than one. If this field is specified, enough
        # regions must be provided to include a minimum of 3 locations. Not specifying
        # this field will result in Uptime checks running from all available regions.
        # Corresponds to the JSON property `selectedRegions`
        # @return [Array<String>]
        attr_accessor :selected_regions
      
        # Describes a Synthetic Monitor to be invoked by Uptime.
        # Corresponds to the JSON property `syntheticMonitor`
        # @return [Google::Apis::MonitoringV3::SyntheticMonitorTarget]
        attr_accessor :synthetic_monitor
      
        # Information required for a TCP Uptime check request.
        # Corresponds to the JSON property `tcpCheck`
        # @return [Google::Apis::MonitoringV3::TcpCheck]
        attr_accessor :tcp_check
      
        # The maximum amount of time to wait for the request to complete (must be
        # between 1 and 60 seconds). Required.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        # User-supplied key/value data to be used for organizing and identifying the
        # UptimeCheckConfig objects.The field can contain up to 64 entries. Each key and
        # value is limited to 63 Unicode characters or 128 bytes, whichever is smaller.
        # Labels and values can contain only lowercase letters, numerals, underscores,
        # and dashes. Keys must begin with a letter.
        # Corresponds to the JSON property `userLabels`
        # @return [Hash<String,String>]
        attr_accessor :user_labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @checker_type = args[:checker_type] if args.key?(:checker_type)
          @content_matchers = args[:content_matchers] if args.key?(:content_matchers)
          @disabled = args[:disabled] if args.key?(:disabled)
          @display_name = args[:display_name] if args.key?(:display_name)
          @http_check = args[:http_check] if args.key?(:http_check)
          @internal_checkers = args[:internal_checkers] if args.key?(:internal_checkers)
          @is_internal = args[:is_internal] if args.key?(:is_internal)
          @log_check_failures = args[:log_check_failures] if args.key?(:log_check_failures)
          @monitored_resource = args[:monitored_resource] if args.key?(:monitored_resource)
          @name = args[:name] if args.key?(:name)
          @period = args[:period] if args.key?(:period)
          @resource_group = args[:resource_group] if args.key?(:resource_group)
          @selected_regions = args[:selected_regions] if args.key?(:selected_regions)
          @synthetic_monitor = args[:synthetic_monitor] if args.key?(:synthetic_monitor)
          @tcp_check = args[:tcp_check] if args.key?(:tcp_check)
          @timeout = args[:timeout] if args.key?(:timeout)
          @user_labels = args[:user_labels] if args.key?(:user_labels)
        end
      end
      
      # Contains the region, location, and list of IP addresses where checkers in the
      # location run from.
      class UptimeCheckIp
        include Google::Apis::Core::Hashable
      
        # The IP address from which the Uptime check originates. This is a fully
        # specified IP address (not an IP address range). Most IP addresses, as of this
        # publication, are in IPv4 format; however, one should not rely on the IP
        # addresses being in IPv4 format indefinitely, and should support interpreting
        # this field in either IPv4 or IPv6 format.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # A more specific location within the region that typically encodes a particular
        # city/town/metro (and its containing state/province or country) within the
        # broader umbrella region category.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # A broad region category in which the IP address is located.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @location = args[:location] if args.key?(:location)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # A descriptor for the value columns in a data point.
      class ValueDescriptor
        include Google::Apis::Core::Hashable
      
        # The value key.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The value stream kind.
        # Corresponds to the JSON property `metricKind`
        # @return [String]
        attr_accessor :metric_kind
      
        # The unit in which time_series point values are reported. unit follows the UCUM
        # format for units as seen in https://unitsofmeasure.org/ucum.html. unit is only
        # valid if value_type is INTEGER, DOUBLE, DISTRIBUTION.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The value type.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @metric_kind = args[:metric_kind] if args.key?(:metric_kind)
          @unit = args[:unit] if args.key?(:unit)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # The VerifyNotificationChannel request.
      class VerifyNotificationChannelRequest
        include Google::Apis::Core::Hashable
      
        # Required. The verification code that was delivered to the channel as a result
        # of invoking the SendNotificationChannelVerificationCode API method or that was
        # retrieved from a verified channel via GetNotificationChannelVerificationCode.
        # For example, one might have "G-123456" or "TKNZGhhd2EyN3I1MnRnMjRv" (in
        # general, one is only guaranteed that the code is valid UTF-8; one should not
        # make any assumptions regarding the structure or format of the code).
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
        end
      end
      
      # A WindowsBasedSli defines good_service as the count of time windows for which
      # the provided service was of good quality. Criteria for determining if service
      # was good are embedded in the window_criterion.
      class WindowsBasedSli
        include Google::Apis::Core::Hashable
      
        # A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters)
        # specifying a TimeSeries with ValueType = BOOL. The window is good if any true
        # values appear in the window.
        # Corresponds to the JSON property `goodBadMetricFilter`
        # @return [String]
        attr_accessor :good_bad_metric_filter
      
        # A PerformanceThreshold is used when each window is good when that window has a
        # sufficiently high performance.
        # Corresponds to the JSON property `goodTotalRatioThreshold`
        # @return [Google::Apis::MonitoringV3::PerformanceThreshold]
        attr_accessor :good_total_ratio_threshold
      
        # A MetricRange is used when each window is good when the value x of a single
        # TimeSeries satisfies range.min <= x <= range.max. The provided TimeSeries must
        # have ValueType = INT64 or ValueType = DOUBLE and MetricKind = GAUGE.
        # Corresponds to the JSON property `metricMeanInRange`
        # @return [Google::Apis::MonitoringV3::MetricRange]
        attr_accessor :metric_mean_in_range
      
        # A MetricRange is used when each window is good when the value x of a single
        # TimeSeries satisfies range.min <= x <= range.max. The provided TimeSeries must
        # have ValueType = INT64 or ValueType = DOUBLE and MetricKind = GAUGE.
        # Corresponds to the JSON property `metricSumInRange`
        # @return [Google::Apis::MonitoringV3::MetricRange]
        attr_accessor :metric_sum_in_range
      
        # Duration over which window quality is evaluated. Must be an integer fraction
        # of a day and at least 60s.
        # Corresponds to the JSON property `windowPeriod`
        # @return [String]
        attr_accessor :window_period
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @good_bad_metric_filter = args[:good_bad_metric_filter] if args.key?(:good_bad_metric_filter)
          @good_total_ratio_threshold = args[:good_total_ratio_threshold] if args.key?(:good_total_ratio_threshold)
          @metric_mean_in_range = args[:metric_mean_in_range] if args.key?(:metric_mean_in_range)
          @metric_sum_in_range = args[:metric_sum_in_range] if args.key?(:metric_sum_in_range)
          @window_period = args[:window_period] if args.key?(:window_period)
        end
      end
    end
  end
end
