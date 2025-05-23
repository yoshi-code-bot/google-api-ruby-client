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
    module CivicinfoV2
      # Google Civic Information API
      #
      # Provides polling places, early vote locations, contest data, election
      #  officials, and government representatives for U.S. residential addresses.
      #
      # @example
      #    require 'google/apis/civicinfo_v2'
      #
      #    Civicinfo = Google::Apis::CivicinfoV2 # Alias the module
      #    service = Civicinfo::CivicInfoService.new
      #
      # @see https://developers.google.com/civic-information/
      class CivicInfoService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://civicinfo.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-civicinfo_v2',
                client_version: Google::Apis::CivicinfoV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Lookup OCDIDs and names for divisions related to an address.
        # @param [String] address
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CivicinfoV2::CivicinfoApiprotosV2DivisionByAddressResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CivicinfoV2::CivicinfoApiprotosV2DivisionByAddressResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_division_division_by_address(address: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'civicinfo/v2/divisionsByAddress', options)
          command.response_representation = Google::Apis::CivicinfoV2::CivicinfoApiprotosV2DivisionByAddressResponse::Representation
          command.response_class = Google::Apis::CivicinfoV2::CivicinfoApiprotosV2DivisionByAddressResponse
          command.query['address'] = address unless address.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for political divisions by their natural name or OCD ID.
        # @param [String] query
        #   The search query. Queries can cover any parts of a OCD ID or a human readable
        #   division name. All words given in the query are treated as required patterns.
        #   In addition to that, most query operators of the Apache Lucene library are
        #   supported. See http://lucene.apache.org/core/2_9_4/queryparsersyntax.html
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CivicinfoV2::CivicinfoApiprotosV2DivisionSearchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CivicinfoV2::CivicinfoApiprotosV2DivisionSearchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_divisions(query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'civicinfo/v2/divisions', options)
          command.response_representation = Google::Apis::CivicinfoV2::CivicinfoApiprotosV2DivisionSearchResponse::Representation
          command.response_class = Google::Apis::CivicinfoV2::CivicinfoApiprotosV2DivisionSearchResponse
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List of available elections to query.
        # @param [Boolean] production_data_only
        #   Whether to include data that has not been allowlisted yet
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CivicinfoV2::CivicinfoApiprotosV2ElectionsQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CivicinfoV2::CivicinfoApiprotosV2ElectionsQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_election(production_data_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'civicinfo/v2/elections', options)
          command.response_representation = Google::Apis::CivicinfoV2::CivicinfoApiprotosV2ElectionsQueryResponse::Representation
          command.response_class = Google::Apis::CivicinfoV2::CivicinfoApiprotosV2ElectionsQueryResponse
          command.query['productionDataOnly'] = production_data_only unless production_data_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up information relevant to a voter based on the voter's registered
        # address.
        # @param [String] address
        #   The registered address of the voter to look up.
        # @param [Fixnum] election_id
        #   The unique ID of the election to look up. A list of election IDs can be
        #   obtained at https://www.googleapis.com/civicinfo/`version`/elections. If no
        #   election ID is specified in the query and there is more than one election with
        #   data for the given voter, the additional elections are provided in the
        #   otherElections response field.
        # @param [Boolean] official_only
        #   If set to true, only data from official state sources will be returned.
        # @param [Boolean] production_data_only
        #   Whether to include data that has not been vetted yet. Should only be made
        #   available to internal IPs or trusted partners. This is a non-discoverable
        #   parameter in the One Platform API config.
        # @param [Boolean] return_all_available_data
        #   If set to true, the query will return the success code and include any partial
        #   information when it is unable to determine a matching address or unable to
        #   determine the election for electionId=0 queries.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CivicinfoV2::CivicinfoApiprotosV2VoterInfoResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CivicinfoV2::CivicinfoApiprotosV2VoterInfoResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_voter_info(address: nil, election_id: nil, official_only: nil, production_data_only: nil, return_all_available_data: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'civicinfo/v2/voterinfo', options)
          command.response_representation = Google::Apis::CivicinfoV2::CivicinfoApiprotosV2VoterInfoResponse::Representation
          command.response_class = Google::Apis::CivicinfoV2::CivicinfoApiprotosV2VoterInfoResponse
          command.query['address'] = address unless address.nil?
          command.query['electionId'] = election_id unless election_id.nil?
          command.query['officialOnly'] = official_only unless official_only.nil?
          command.query['productionDataOnly'] = production_data_only unless production_data_only.nil?
          command.query['returnAllAvailableData'] = return_all_available_data unless return_all_available_data.nil?
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
