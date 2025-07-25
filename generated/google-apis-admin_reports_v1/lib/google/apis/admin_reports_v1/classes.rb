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
    module AdminReportsV1
      
      # JSON template for a collection of activities.
      class Activities
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Each activity record in the response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdminReportsV1::Activity>]
        attr_accessor :items
      
        # The type of API resource. For an activity report, the value is `reports#
        # activities`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Token for retrieving the follow-on next page of the report. The `nextPageToken`
        # value is used in the request's `pageToken` query string.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # JSON template for the activity resource.
      class Activity
        include Google::Apis::Core::Hashable
      
        # User doing the action.
        # Corresponds to the JSON property `actor`
        # @return [Google::Apis::AdminReportsV1::Activity::Actor]
        attr_accessor :actor
      
        # ETag of the entry.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Activity events in the report.
        # Corresponds to the JSON property `events`
        # @return [Array<Google::Apis::AdminReportsV1::Activity::Event>]
        attr_accessor :events
      
        # Unique identifier for each activity record.
        # Corresponds to the JSON property `id`
        # @return [Google::Apis::AdminReportsV1::Activity::Id]
        attr_accessor :id
      
        # IP address of the user doing the action. This is the Internet Protocol (IP)
        # address of the user when logging into Google Workspace, which may or may not
        # reflect the user's physical location. For example, the IP address can be the
        # user's proxy server's address or a virtual private network (VPN) address. The
        # API supports IPv4 and IPv6.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # The type of API resource. For an activity report, the value is `audit#activity`
        # .
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Network information of the user doing the action.
        # Corresponds to the JSON property `networkInfo`
        # @return [Google::Apis::AdminReportsV1::ActivityNetworkInfo]
        attr_accessor :network_info
      
        # This is the domain that is affected by the report's event. For example domain
        # of Admin console or the Drive application's document owner.
        # Corresponds to the JSON property `ownerDomain`
        # @return [String]
        attr_accessor :owner_domain
      
        # Details of the resource on which the action was performed.
        # Corresponds to the JSON property `resourceDetails`
        # @return [Array<Google::Apis::AdminReportsV1::ResourceDetails>]
        attr_accessor :resource_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actor = args[:actor] if args.key?(:actor)
          @etag = args[:etag] if args.key?(:etag)
          @events = args[:events] if args.key?(:events)
          @id = args[:id] if args.key?(:id)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @kind = args[:kind] if args.key?(:kind)
          @network_info = args[:network_info] if args.key?(:network_info)
          @owner_domain = args[:owner_domain] if args.key?(:owner_domain)
          @resource_details = args[:resource_details] if args.key?(:resource_details)
        end
        
        # User doing the action.
        class Actor
          include Google::Apis::Core::Hashable
        
          # Details of the application that was the actor for the activity.
          # Corresponds to the JSON property `applicationInfo`
          # @return [Google::Apis::AdminReportsV1::Activity::Actor::ApplicationInfo]
          attr_accessor :application_info
        
          # The type of actor.
          # Corresponds to the JSON property `callerType`
          # @return [String]
          attr_accessor :caller_type
        
          # The primary email address of the actor. May be absent if there is no email
          # address associated with the actor.
          # Corresponds to the JSON property `email`
          # @return [String]
          attr_accessor :email
        
          # Only present when `callerType` is `KEY`. Can be the `consumer_key` of the
          # requestor for OAuth 2LO API requests or an identifier for robot accounts.
          # Corresponds to the JSON property `key`
          # @return [String]
          attr_accessor :key
        
          # The unique Google Workspace profile ID of the actor. This value might be
          # absent if the actor is not a Google Workspace user, or may be the number
          # 105250506097979753968 which acts as a placeholder ID.
          # Corresponds to the JSON property `profileId`
          # @return [String]
          attr_accessor :profile_id
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @application_info = args[:application_info] if args.key?(:application_info)
            @caller_type = args[:caller_type] if args.key?(:caller_type)
            @email = args[:email] if args.key?(:email)
            @key = args[:key] if args.key?(:key)
            @profile_id = args[:profile_id] if args.key?(:profile_id)
          end
          
          # Details of the application that was the actor for the activity.
          class ApplicationInfo
            include Google::Apis::Core::Hashable
          
            # Name of the application used to perform the action.
            # Corresponds to the JSON property `applicationName`
            # @return [String]
            attr_accessor :application_name
          
            # Whether the application was impersonating a user.
            # Corresponds to the JSON property `impersonation`
            # @return [Boolean]
            attr_accessor :impersonation
            alias_method :impersonation?, :impersonation
          
            # OAuth client id of the third party application used to perform the action.
            # Corresponds to the JSON property `oauthClientId`
            # @return [String]
            attr_accessor :oauth_client_id
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @application_name = args[:application_name] if args.key?(:application_name)
              @impersonation = args[:impersonation] if args.key?(:impersonation)
              @oauth_client_id = args[:oauth_client_id] if args.key?(:oauth_client_id)
            end
          end
        end
        
        # 
        class Event
          include Google::Apis::Core::Hashable
        
          # Name of the event. This is the specific name of the activity reported by the
          # API. And each `eventName` is related to a specific Google Workspace service or
          # feature which the API organizes into types of events. For `eventName` request
          # parameters in general: - If no `eventName` is given, the report returns all
          # possible instances of an `eventName`. - When you request an `eventName`, the
          # API's response returns all activities which contain that `eventName`. For more
          # information about `eventName` properties, see the list of event names for
          # various applications above in `applicationName`.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          # Parameter value pairs for various applications. For more information about `
          # eventName` parameters, see the list of event names for various applications
          # above in `applicationName`.
          # Corresponds to the JSON property `parameters`
          # @return [Array<Google::Apis::AdminReportsV1::Activity::Event::Parameter>]
          attr_accessor :parameters
        
          # Resource ids associated with the event.
          # Corresponds to the JSON property `resourceIds`
          # @return [Array<String>]
          attr_accessor :resource_ids
        
          # Type of event. The Google Workspace service or feature that an administrator
          # changes is identified in the `type` property which identifies an event using
          # the `eventName` property. For a full list of the API's `type` categories, see
          # the list of event names for various applications above in `applicationName`.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @name = args[:name] if args.key?(:name)
            @parameters = args[:parameters] if args.key?(:parameters)
            @resource_ids = args[:resource_ids] if args.key?(:resource_ids)
            @type = args[:type] if args.key?(:type)
          end
          
          # 
          class Parameter
            include Google::Apis::Core::Hashable
          
            # Boolean value of the parameter.
            # Corresponds to the JSON property `boolValue`
            # @return [Boolean]
            attr_accessor :bool_value
            alias_method :bool_value?, :bool_value
          
            # Integer value of the parameter.
            # Corresponds to the JSON property `intValue`
            # @return [Fixnum]
            attr_accessor :int_value
          
            # Nested parameter value pairs associated with this parameter. Complex value
            # type for a parameter are returned as a list of parameter values. For example,
            # the address parameter may have a value as `[`parameter: [`name: city, value:
            # abc`]`]`
            # Corresponds to the JSON property `messageValue`
            # @return [Google::Apis::AdminReportsV1::Activity::Event::Parameter::MessageValue]
            attr_accessor :message_value
          
            # Integer values of the parameter.
            # Corresponds to the JSON property `multiIntValue`
            # @return [Array<Fixnum>]
            attr_accessor :multi_int_value
          
            # List of `messageValue` objects.
            # Corresponds to the JSON property `multiMessageValue`
            # @return [Array<Google::Apis::AdminReportsV1::Activity::Event::Parameter::MultiMessageValue>]
            attr_accessor :multi_message_value
          
            # String values of the parameter.
            # Corresponds to the JSON property `multiValue`
            # @return [Array<String>]
            attr_accessor :multi_value
          
            # The name of the parameter.
            # Corresponds to the JSON property `name`
            # @return [String]
            attr_accessor :name
          
            # String value of the parameter.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @bool_value = args[:bool_value] if args.key?(:bool_value)
              @int_value = args[:int_value] if args.key?(:int_value)
              @message_value = args[:message_value] if args.key?(:message_value)
              @multi_int_value = args[:multi_int_value] if args.key?(:multi_int_value)
              @multi_message_value = args[:multi_message_value] if args.key?(:multi_message_value)
              @multi_value = args[:multi_value] if args.key?(:multi_value)
              @name = args[:name] if args.key?(:name)
              @value = args[:value] if args.key?(:value)
            end
            
            # Nested parameter value pairs associated with this parameter. Complex value
            # type for a parameter are returned as a list of parameter values. For example,
            # the address parameter may have a value as `[`parameter: [`name: city, value:
            # abc`]`]`
            class MessageValue
              include Google::Apis::Core::Hashable
            
              # Parameter values
              # Corresponds to the JSON property `parameter`
              # @return [Array<Google::Apis::AdminReportsV1::NestedParameter>]
              attr_accessor :parameter
            
              def initialize(**args)
                 update!(**args)
              end
            
              # Update properties of this object
              def update!(**args)
                @parameter = args[:parameter] if args.key?(:parameter)
              end
            end
            
            # 
            class MultiMessageValue
              include Google::Apis::Core::Hashable
            
              # Parameter values
              # Corresponds to the JSON property `parameter`
              # @return [Array<Google::Apis::AdminReportsV1::NestedParameter>]
              attr_accessor :parameter
            
              def initialize(**args)
                 update!(**args)
              end
            
              # Update properties of this object
              def update!(**args)
                @parameter = args[:parameter] if args.key?(:parameter)
              end
            end
          end
        end
        
        # Unique identifier for each activity record.
        class Id
          include Google::Apis::Core::Hashable
        
          # Application name to which the event belongs. For possible values see the list
          # of applications above in `applicationName`.
          # Corresponds to the JSON property `applicationName`
          # @return [String]
          attr_accessor :application_name
        
          # The unique identifier for a Google Workspace account.
          # Corresponds to the JSON property `customerId`
          # @return [String]
          attr_accessor :customer_id
        
          # Time of occurrence of the activity. This is in UNIX epoch time in seconds.
          # Corresponds to the JSON property `time`
          # @return [DateTime]
          attr_accessor :time
        
          # Unique qualifier if multiple events have the same time.
          # Corresponds to the JSON property `uniqueQualifier`
          # @return [Fixnum]
          attr_accessor :unique_qualifier
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @application_name = args[:application_name] if args.key?(:application_name)
            @customer_id = args[:customer_id] if args.key?(:customer_id)
            @time = args[:time] if args.key?(:time)
            @unique_qualifier = args[:unique_qualifier] if args.key?(:unique_qualifier)
          end
        end
      end
      
      # Network information of the user doing the action.
      class ActivityNetworkInfo
        include Google::Apis::Core::Hashable
      
        # IP Address of the user doing the action.
        # Corresponds to the JSON property `ipAsn`
        # @return [Array<Fixnum>]
        attr_accessor :ip_asn
      
        # ISO 3166-1 alpha-2 region code of the user doing the action.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # ISO 3166-2 region code (states and provinces) for countries of the user doing
        # the action.
        # Corresponds to the JSON property `subdivisionCode`
        # @return [String]
        attr_accessor :subdivision_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_asn = args[:ip_asn] if args.key?(:ip_asn)
          @region_code = args[:region_code] if args.key?(:region_code)
          @subdivision_code = args[:subdivision_code] if args.key?(:subdivision_code)
        end
      end
      
      # Details of the label applied on the resource.
      class AppliedLabel
        include Google::Apis::Core::Hashable
      
        # List of fields which are part of the label and have been set by the user. If
        # label has a field which was not set by the user, it would not be present in
        # this list.
        # Corresponds to the JSON property `fieldValues`
        # @return [Array<Google::Apis::AdminReportsV1::FieldValue>]
        attr_accessor :field_values
      
        # Identifier of the label - Only the label id, not the full OnePlatform resource
        # name.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The reason why the label/field was applied.
        # Corresponds to the JSON property `reason`
        # @return [Google::Apis::AdminReportsV1::Reason]
        attr_accessor :reason
      
        # Title of the label
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_values = args[:field_values] if args.key?(:field_values)
          @id = args[:id] if args.key?(:id)
          @reason = args[:reason] if args.key?(:reason)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # A notification channel used to watch for resource changes.
      class Channel
        include Google::Apis::Core::Hashable
      
        # The address where notifications are delivered for this channel.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Date and time of notification channel expiration, expressed as a Unix
        # timestamp, in milliseconds. Optional.
        # Corresponds to the JSON property `expiration`
        # @return [Fixnum]
        attr_accessor :expiration
      
        # A UUID or similar unique string that identifies this channel.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies this as a notification channel used to watch for changes to a
        # resource, which is "`api#channel`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Additional parameters controlling delivery channel behavior. Optional.
        # Corresponds to the JSON property `params`
        # @return [Hash<String,String>]
        attr_accessor :params
      
        # A Boolean value to indicate whether payload is wanted. A payload is data that
        # is sent in the body of an HTTP POST, PUT, or PATCH message and contains
        # important information about the request. Optional.
        # Corresponds to the JSON property `payload`
        # @return [Boolean]
        attr_accessor :payload
        alias_method :payload?, :payload
      
        # An opaque ID that identifies the resource being watched on this channel.
        # Stable across different API versions.
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # A version-specific identifier for the watched resource.
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        # An arbitrary string delivered to the target address with each notification
        # delivered over this channel. Optional.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # The type of delivery mechanism used for this channel. The value should be set
        # to `"web_hook"`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @expiration = args[:expiration] if args.key?(:expiration)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @params = args[:params] if args.key?(:params)
          @payload = args[:payload] if args.key?(:payload)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
          @token = args[:token] if args.key?(:token)
          @type = args[:type] if args.key?(:type)
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
      
      # Details of the field value set by the user for the particular label.
      class FieldValue
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `dateValue`
        # @return [Google::Apis::AdminReportsV1::Date]
        attr_accessor :date_value
      
        # Display name of the field
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier of the field
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Setting an integer value.
        # Corresponds to the JSON property `integerValue`
        # @return [Fixnum]
        attr_accessor :integer_value
      
        # Setting a long text value.
        # Corresponds to the JSON property `longTextValue`
        # @return [String]
        attr_accessor :long_text_value
      
        # The reason why the label/field was applied.
        # Corresponds to the JSON property `reason`
        # @return [Google::Apis::AdminReportsV1::Reason]
        attr_accessor :reason
      
        # Setting a selection list value by selecting multiple values from a dropdown.
        # Corresponds to the JSON property `selectionListValue`
        # @return [Google::Apis::AdminReportsV1::FieldValueSelectionListValue]
        attr_accessor :selection_list_value
      
        # Setting a selection value by selecting a single value from a dropdown.
        # Corresponds to the JSON property `selectionValue`
        # @return [Google::Apis::AdminReportsV1::FieldValueSelectionValue]
        attr_accessor :selection_value
      
        # Setting a text list value.
        # Corresponds to the JSON property `textListValue`
        # @return [Google::Apis::AdminReportsV1::FieldValueTextListValue]
        attr_accessor :text_list_value
      
        # Setting a text value.
        # Corresponds to the JSON property `textValue`
        # @return [String]
        attr_accessor :text_value
      
        # Type of the field
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # If the field is unset, this will be true.
        # Corresponds to the JSON property `unsetValue`
        # @return [Boolean]
        attr_accessor :unset_value
        alias_method :unset_value?, :unset_value
      
        # Setting a user list value by selecting multiple users.
        # Corresponds to the JSON property `userListValue`
        # @return [Google::Apis::AdminReportsV1::FieldValueUserListValue]
        attr_accessor :user_list_value
      
        # Setting a user value by selecting a single user.
        # Corresponds to the JSON property `userValue`
        # @return [Google::Apis::AdminReportsV1::FieldValueUserValue]
        attr_accessor :user_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_value = args[:date_value] if args.key?(:date_value)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
          @integer_value = args[:integer_value] if args.key?(:integer_value)
          @long_text_value = args[:long_text_value] if args.key?(:long_text_value)
          @reason = args[:reason] if args.key?(:reason)
          @selection_list_value = args[:selection_list_value] if args.key?(:selection_list_value)
          @selection_value = args[:selection_value] if args.key?(:selection_value)
          @text_list_value = args[:text_list_value] if args.key?(:text_list_value)
          @text_value = args[:text_value] if args.key?(:text_value)
          @type = args[:type] if args.key?(:type)
          @unset_value = args[:unset_value] if args.key?(:unset_value)
          @user_list_value = args[:user_list_value] if args.key?(:user_list_value)
          @user_value = args[:user_value] if args.key?(:user_value)
        end
      end
      
      # Setting a selection list value by selecting multiple values from a dropdown.
      class FieldValueSelectionListValue
        include Google::Apis::Core::Hashable
      
        # List of selections.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::AdminReportsV1::FieldValueSelectionValue>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Setting a selection value by selecting a single value from a dropdown.
      class FieldValueSelectionValue
        include Google::Apis::Core::Hashable
      
        # Whether the selection is badged.
        # Corresponds to the JSON property `badged`
        # @return [Boolean]
        attr_accessor :badged
        alias_method :badged?, :badged
      
        # Display name of the selection.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier of the selection.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @badged = args[:badged] if args.key?(:badged)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Setting a text list value.
      class FieldValueTextListValue
        include Google::Apis::Core::Hashable
      
        # List of text values.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Setting a user list value by selecting multiple users.
      class FieldValueUserListValue
        include Google::Apis::Core::Hashable
      
        # List of users.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::AdminReportsV1::FieldValueUserValue>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Setting a user value by selecting a single user.
      class FieldValueUserValue
        include Google::Apis::Core::Hashable
      
        # Email of the user.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
        end
      end
      
      # JSON template for a parameter used in various reports.
      class NestedParameter
        include Google::Apis::Core::Hashable
      
        # Boolean value of the parameter.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # Integer value of the parameter.
        # Corresponds to the JSON property `intValue`
        # @return [Fixnum]
        attr_accessor :int_value
      
        # Multiple boolean values of the parameter.
        # Corresponds to the JSON property `multiBoolValue`
        # @return [Array<Boolean>]
        attr_accessor :multi_bool_value
      
        # Multiple integer values of the parameter.
        # Corresponds to the JSON property `multiIntValue`
        # @return [Array<Fixnum>]
        attr_accessor :multi_int_value
      
        # Multiple string values of the parameter.
        # Corresponds to the JSON property `multiValue`
        # @return [Array<String>]
        attr_accessor :multi_value
      
        # The name of the parameter.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # String value of the parameter.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @int_value = args[:int_value] if args.key?(:int_value)
          @multi_bool_value = args[:multi_bool_value] if args.key?(:multi_bool_value)
          @multi_int_value = args[:multi_int_value] if args.key?(:multi_int_value)
          @multi_value = args[:multi_value] if args.key?(:multi_value)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The reason why the label/field was applied.
      class Reason
        include Google::Apis::Core::Hashable
      
        # The type of the reason.
        # Corresponds to the JSON property `reasonType`
        # @return [String]
        attr_accessor :reason_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reason_type = args[:reason_type] if args.key?(:reason_type)
        end
      end
      
      # Details of the resource on which the action was performed.
      class ResourceDetails
        include Google::Apis::Core::Hashable
      
        # List of labels applied on the resource
        # Corresponds to the JSON property `appliedLabels`
        # @return [Array<Google::Apis::AdminReportsV1::AppliedLabel>]
        attr_accessor :applied_labels
      
        # Identifier of the resource.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Defines relationship of the resource to the events
        # Corresponds to the JSON property `relation`
        # @return [String]
        attr_accessor :relation
      
        # Title of the resource. For instance, in case of a drive document, this would
        # be the title of the document. In case of an email, this would be the subject.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Type of the resource - document, email, chat message
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applied_labels = args[:applied_labels] if args.key?(:applied_labels)
          @id = args[:id] if args.key?(:id)
          @relation = args[:relation] if args.key?(:relation)
          @title = args[:title] if args.key?(:title)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # JSON template for a usage report.
      class UsageReport
        include Google::Apis::Core::Hashable
      
        # Output only. The date of the report request.
        # Corresponds to the JSON property `date`
        # @return [String]
        attr_accessor :date
      
        # Output only. Information about the type of the item.
        # Corresponds to the JSON property `entity`
        # @return [Google::Apis::AdminReportsV1::UsageReport::Entity]
        attr_accessor :entity
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The type of API resource. For a usage report, the value is `admin#reports#
        # usageReport`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Output only. Parameter value pairs for various applications. For the Entity
        # Usage Report parameters and values, see [the Entity Usage parameters reference]
        # (https://developers.google.com/workspace/admin/reports/v1/reference/usage-ref-
        # appendix-a/entities).
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::AdminReportsV1::UsageReport::Parameter>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @entity = args[:entity] if args.key?(:entity)
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
        
        # Output only. Information about the type of the item.
        class Entity
          include Google::Apis::Core::Hashable
        
          # Output only. The unique identifier of the customer's account.
          # Corresponds to the JSON property `customerId`
          # @return [String]
          attr_accessor :customer_id
        
          # Output only. Object key. Only relevant if entity.type = "OBJECT" Note:
          # external-facing name of report is "Entities" rather than "Objects".
          # Corresponds to the JSON property `entityId`
          # @return [String]
          attr_accessor :entity_id
        
          # Output only. The user's immutable Google Workspace profile identifier.
          # Corresponds to the JSON property `profileId`
          # @return [String]
          attr_accessor :profile_id
        
          # Output only. The type of item. The value is `user`.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          # Output only. The user's email address. Only relevant if entity.type = "USER"
          # Corresponds to the JSON property `userEmail`
          # @return [String]
          attr_accessor :user_email
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @customer_id = args[:customer_id] if args.key?(:customer_id)
            @entity_id = args[:entity_id] if args.key?(:entity_id)
            @profile_id = args[:profile_id] if args.key?(:profile_id)
            @type = args[:type] if args.key?(:type)
            @user_email = args[:user_email] if args.key?(:user_email)
          end
        end
        
        # 
        class Parameter
          include Google::Apis::Core::Hashable
        
          # Output only. Boolean value of the parameter.
          # Corresponds to the JSON property `boolValue`
          # @return [Boolean]
          attr_accessor :bool_value
          alias_method :bool_value?, :bool_value
        
          # The RFC 3339 formatted value of the parameter, for example 2010-10-28T10:26:35.
          # 000Z.
          # Corresponds to the JSON property `datetimeValue`
          # @return [DateTime]
          attr_accessor :datetime_value
        
          # Output only. Integer value of the parameter.
          # Corresponds to the JSON property `intValue`
          # @return [Fixnum]
          attr_accessor :int_value
        
          # Output only. Nested message value of the parameter.
          # Corresponds to the JSON property `msgValue`
          # @return [Array<Hash<String,Object>>]
          attr_accessor :msg_value
        
          # The name of the parameter. For the User Usage Report parameter names, see the
          # User Usage parameters reference.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          # Output only. String value of the parameter.
          # Corresponds to the JSON property `stringValue`
          # @return [String]
          attr_accessor :string_value
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @bool_value = args[:bool_value] if args.key?(:bool_value)
            @datetime_value = args[:datetime_value] if args.key?(:datetime_value)
            @int_value = args[:int_value] if args.key?(:int_value)
            @msg_value = args[:msg_value] if args.key?(:msg_value)
            @name = args[:name] if args.key?(:name)
            @string_value = args[:string_value] if args.key?(:string_value)
          end
        end
      end
      
      # 
      class UsageReports
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The type of API resource. For a usage report, the value is `admin#reports#
        # usageReports`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Token to specify next page. A report with multiple pages has a `nextPageToken`
        # property in the response. For your follow-on requests getting all of the
        # report's pages, enter the `nextPageToken` value in the `pageToken` query
        # string.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Various application parameter records.
        # Corresponds to the JSON property `usageReports`
        # @return [Array<Google::Apis::AdminReportsV1::UsageReport>]
        attr_accessor :usage_reports
      
        # Warnings, if any.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::AdminReportsV1::UsageReports::Warning>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @usage_reports = args[:usage_reports] if args.key?(:usage_reports)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
        
        # 
        class Warning
          include Google::Apis::Core::Hashable
        
          # Machine readable code or warning type. The warning code value is `200`.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # Key-value pairs to give detailed information on the warning.
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::AdminReportsV1::UsageReports::Warning::Datum>]
          attr_accessor :data
        
          # The human readable messages for a warning are: - Data is not available warning
          # - Sorry, data for date yyyy-mm-dd for application "`application name`" is not
          # available. - Partial data is available warning - Data for date yyyy-mm-dd for
          # application "`application name`" is not available right now, please try again
          # after a few hours.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # Key associated with a key-value pair to give detailed information on the
            # warning.
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # Value associated with a key-value pair to give detailed information on the
            # warning.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
    end
  end
end
