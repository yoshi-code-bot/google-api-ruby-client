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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module AreainsightsV1
      # Places Aggregate API
      #
      # Places Aggregate API.
      #
      # @example
      #    require 'google/apis/areainsights_v1'
      #
      #    Areainsights = Google::Apis::AreainsightsV1 # Alias the module
      #    service = Areainsights::AreaInsightsService.new
      #
      # @see https://developers.google.com/maps/documentation/places-aggregate/overview
      class AreaInsightsService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://areainsights.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, '',
                client_name: 'google-apis-areainsights_v1',
                client_version: Google::Apis::AreainsightsV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # This method lets you retrieve insights about areas using a variety of filter
        # such as: area, place type, operating status, price level and ratings.
        # Currently "count" and "places" insights are supported. With "count" insights
        # you can answer questions such as "How many restaurant are located in
        # California that are operational, are inexpensive and have an average rating of
        # at least 4 stars" (see `insight` enum for more details). With "places"
        # insights, you can determine which places match the requested filter. Clients
        # can then use those place resource names to fetch more details about each
        # individual place using the Places API.
        # @param [Google::Apis::AreainsightsV1::ComputeInsightsRequest] compute_insights_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AreainsightsV1::ComputeInsightsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AreainsightsV1::ComputeInsightsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def compute_insights(compute_insights_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1:computeInsights', options)
          command.request_representation = Google::Apis::AreainsightsV1::ComputeInsightsRequest::Representation
          command.request_object = compute_insights_request_object
          command.response_representation = Google::Apis::AreainsightsV1::ComputeInsightsResponse::Representation
          command.response_class = Google::Apis::AreainsightsV1::ComputeInsightsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
