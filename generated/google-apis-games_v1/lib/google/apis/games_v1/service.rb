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
    module GamesV1
      # Google Play Games Services API
      #
      # The Google Play Games Service allows developers to enhance games with social
      #  leaderboards, achievements, game state, sign-in with Google, and more.
      #
      # @example
      #    require 'google/apis/games_v1'
      #
      #    Games = Google::Apis::GamesV1 # Alias the module
      #    service = Games::GamesService.new
      #
      # @see https://developers.google.com/games/
      class GamesService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://games.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-games_v1',
                client_version: Google::Apis::GamesV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Generates a Play Grouping API token for the PGS user identified by the
        # attached credential.
        # @param [String] package_name
        #   Required. App package name to generate the token for (e.g. com.example.mygame).
        # @param [String] persona
        #   Required. Persona to associate with the token. Persona is a developer-provided
        #   stable identifier of the user. Must be deterministically generated (e.g. as a
        #   one-way hash) from the user account ID and user profile ID (if the app has the
        #   concept), according to the developer's own user identity system.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::GeneratePlayGroupingApiTokenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::GeneratePlayGroupingApiTokenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_accesstoken_play_grouping_api_token(package_name: nil, persona: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'games/v1/accesstokens/generatePlayGroupingApiToken', options)
          command.response_representation = Google::Apis::GamesV1::GeneratePlayGroupingApiTokenResponse::Representation
          command.response_class = Google::Apis::GamesV1::GeneratePlayGroupingApiTokenResponse
          command.query['packageName'] = package_name unless package_name.nil?
          command.query['persona'] = persona unless persona.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a Play Grouping API token for the PGS user identified by the Recall
        # session ID provided in the request.
        # @param [String] package_name
        #   Required. App package name to generate the token for (e.g. com.example.mygame).
        # @param [String] persona
        #   Required. Persona to associate with the token. Persona is a developer-provided
        #   stable identifier of the user. Must be deterministically generated (e.g. as a
        #   one-way hash) from the user account ID and user profile ID (if the app has the
        #   concept), according to the developer's own user identity system.
        # @param [String] recall_session_id
        #   Required. Opaque server-generated string that encodes all the necessary
        #   information to identify the PGS player / Google user and application. See
        #   https://developer.android.com/games/pgs/recall/recall-setup on how to
        #   integrate with Recall and get session ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::GenerateRecallPlayGroupingApiTokenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::GenerateRecallPlayGroupingApiTokenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_accesstoken_recall_play_grouping_api_token(package_name: nil, persona: nil, recall_session_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'games/v1/accesstokens/generateRecallPlayGroupingApiToken', options)
          command.response_representation = Google::Apis::GamesV1::GenerateRecallPlayGroupingApiTokenResponse::Representation
          command.response_class = Google::Apis::GamesV1::GenerateRecallPlayGroupingApiTokenResponse
          command.query['packageName'] = package_name unless package_name.nil?
          command.query['persona'] = persona unless persona.nil?
          command.query['recallSessionId'] = recall_session_id unless recall_session_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the achievement definitions for your application.
        # @param [String] language
        #   The preferred language to use for strings returned by this method.
        # @param [Fixnum] max_results
        #   The maximum number of achievement resources to return in the response, used
        #   for paging. For any response, the actual number of achievement resources
        #   returned may be less than the specified `maxResults`.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::ListAchievementDefinitionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::ListAchievementDefinitionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_achievement_definitions(language: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/achievements', options)
          command.response_representation = Google::Apis::GamesV1::ListAchievementDefinitionsResponse::Representation
          command.response_class = Google::Apis::GamesV1::ListAchievementDefinitionsResponse
          command.query['language'] = language unless language.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Increments the steps of the achievement with the given ID for the currently
        # authenticated player.
        # @param [String] achievement_id
        #   The ID of the achievement used by this method.
        # @param [Fixnum] steps_to_increment
        #   Required. The number of steps to increment.
        # @param [Fixnum] request_id
        #   A randomly generated numeric ID for each request specified by the caller. This
        #   number is used at the server to ensure that the request is handled correctly
        #   across retries.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::AchievementIncrementResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::AchievementIncrementResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def increment_achievement(achievement_id, steps_to_increment, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'games/v1/achievements/{achievementId}/increment', options)
          command.response_representation = Google::Apis::GamesV1::AchievementIncrementResponse::Representation
          command.response_class = Google::Apis::GamesV1::AchievementIncrementResponse
          command.params['achievementId'] = achievement_id unless achievement_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['stepsToIncrement'] = steps_to_increment unless steps_to_increment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the progress for all your application's achievements for the currently
        # authenticated player.
        # @param [String] player_id
        #   A player ID. A value of `me` may be used in place of the authenticated player'
        #   s ID.
        # @param [String] language
        #   The preferred language to use for strings returned by this method.
        # @param [Fixnum] max_results
        #   The maximum number of achievement resources to return in the response, used
        #   for paging. For any response, the actual number of achievement resources
        #   returned may be less than the specified `maxResults`.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] state
        #   Tells the server to return only achievements with the specified state. If this
        #   parameter isn't specified, all achievements are returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::ListPlayerAchievementResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::ListPlayerAchievementResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_achievements(player_id, language: nil, max_results: nil, page_token: nil, state: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/players/{playerId}/achievements', options)
          command.response_representation = Google::Apis::GamesV1::ListPlayerAchievementResponse::Representation
          command.response_class = Google::Apis::GamesV1::ListPlayerAchievementResponse
          command.params['playerId'] = player_id unless player_id.nil?
          command.query['language'] = language unless language.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['state'] = state unless state.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the state of the achievement with the given ID to `REVEALED` for the
        # currently authenticated player.
        # @param [String] achievement_id
        #   The ID of the achievement used by this method.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::AchievementRevealResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::AchievementRevealResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reveal_achievement(achievement_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'games/v1/achievements/{achievementId}/reveal', options)
          command.response_representation = Google::Apis::GamesV1::AchievementRevealResponse::Representation
          command.response_class = Google::Apis::GamesV1::AchievementRevealResponse
          command.params['achievementId'] = achievement_id unless achievement_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the steps for the currently authenticated player towards unlocking an
        # achievement. If the steps parameter is less than the current number of steps
        # that the player already gained for the achievement, the achievement is not
        # modified.
        # @param [String] achievement_id
        #   The ID of the achievement used by this method.
        # @param [Fixnum] steps
        #   Required. The minimum value to set the steps to.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::AchievementSetStepsAtLeastResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::AchievementSetStepsAtLeastResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_achievement_steps_at_least(achievement_id, steps, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'games/v1/achievements/{achievementId}/setStepsAtLeast', options)
          command.response_representation = Google::Apis::GamesV1::AchievementSetStepsAtLeastResponse::Representation
          command.response_class = Google::Apis::GamesV1::AchievementSetStepsAtLeastResponse
          command.params['achievementId'] = achievement_id unless achievement_id.nil?
          command.query['steps'] = steps unless steps.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Unlocks this achievement for the currently authenticated player.
        # @param [String] achievement_id
        #   The ID of the achievement used by this method.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::AchievementUnlockResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::AchievementUnlockResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def unlock_achievement(achievement_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'games/v1/achievements/{achievementId}/unlock', options)
          command.response_representation = Google::Apis::GamesV1::AchievementUnlockResponse::Representation
          command.response_class = Google::Apis::GamesV1::AchievementUnlockResponse
          command.params['achievementId'] = achievement_id unless achievement_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates multiple achievements for the currently authenticated player.
        # @param [Google::Apis::GamesV1::AchievementUpdateMultipleRequest] achievement_update_multiple_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::AchievementUpdateMultipleResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::AchievementUpdateMultipleResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_multiple_achievements(achievement_update_multiple_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'games/v1/achievements/updateMultiple', options)
          command.request_representation = Google::Apis::GamesV1::AchievementUpdateMultipleRequest::Representation
          command.request_object = achievement_update_multiple_request_object
          command.response_representation = Google::Apis::GamesV1::AchievementUpdateMultipleResponse::Representation
          command.response_class = Google::Apis::GamesV1::AchievementUpdateMultipleResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the metadata of the application with the given ID. If the requested
        # application is not available for the specified `platformType`, the returned
        # response will not include any instance data.
        # @param [String] application_id
        #   The application ID from the Google Play developer console.
        # @param [String] language
        #   The preferred language to use for strings returned by this method.
        # @param [String] platform_type
        #   Restrict application details returned to the specific platform.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::Application] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::Application]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_application(application_id, language: nil, platform_type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/applications/{applicationId}', options)
          command.response_representation = Google::Apis::GamesV1::Application::Representation
          command.response_class = Google::Apis::GamesV1::Application
          command.params['applicationId'] = application_id unless application_id.nil?
          command.query['language'] = language unless language.nil?
          command.query['platformType'] = platform_type unless platform_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a URL for the requested end point type.
        # @param [String] application_id
        #   The application ID from the Google Play developer console.
        # @param [String] end_point_type
        #   Type of endpoint being requested.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::EndPoint] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::EndPoint]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_application_end_point(application_id: nil, end_point_type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'games/v1/applications/getEndPoint', options)
          command.response_representation = Google::Apis::GamesV1::EndPoint::Representation
          command.response_class = Google::Apis::GamesV1::EndPoint
          command.query['applicationId'] = application_id unless application_id.nil?
          command.query['endPointType'] = end_point_type unless end_point_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Indicate that the currently authenticated user is playing your application.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def played_application(fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'games/v1/applications/played', options)
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Verifies the auth token provided with this request is for the application with
        # the specified ID, and returns the ID of the player it was granted for.
        # @param [String] application_id
        #   The application ID from the Google Play developer console.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::ApplicationVerifyResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::ApplicationVerifyResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def verify_application(application_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/applications/{applicationId}/verify', options)
          command.response_representation = Google::Apis::GamesV1::ApplicationVerifyResponse::Representation
          command.response_class = Google::Apis::GamesV1::ApplicationVerifyResponse
          command.params['applicationId'] = application_id unless application_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list showing the current progress on events in this application for
        # the currently authenticated user.
        # @param [String] language
        #   The preferred language to use for strings returned by this method.
        # @param [Fixnum] max_results
        #   The maximum number of events to return in the response, used for paging. For
        #   any response, the actual number of events to return may be less than the
        #   specified maxResults.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::ListPlayerEventResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::ListPlayerEventResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_event_by_player(language: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/events', options)
          command.response_representation = Google::Apis::GamesV1::ListPlayerEventResponse::Representation
          command.response_class = Google::Apis::GamesV1::ListPlayerEventResponse
          command.query['language'] = language unless language.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of the event definitions in this application.
        # @param [String] language
        #   The preferred language to use for strings returned by this method.
        # @param [Fixnum] max_results
        #   The maximum number of event definitions to return in the response, used for
        #   paging. For any response, the actual number of event definitions to return may
        #   be less than the specified `maxResults`.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::ListEventDefinitionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::ListEventDefinitionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_event_definitions(language: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/eventDefinitions', options)
          command.response_representation = Google::Apis::GamesV1::ListEventDefinitionResponse::Representation
          command.response_class = Google::Apis::GamesV1::ListEventDefinitionResponse
          command.query['language'] = language unless language.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Records a batch of changes to the number of times events have occurred for the
        # currently authenticated user of this application.
        # @param [Google::Apis::GamesV1::EventRecordRequest] event_record_request_object
        # @param [String] language
        #   The preferred language to use for strings returned by this method.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::UpdateEventResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::UpdateEventResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def record_event(event_record_request_object = nil, language: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'games/v1/events', options)
          command.request_representation = Google::Apis::GamesV1::EventRecordRequest::Representation
          command.request_object = event_record_request_object
          command.response_representation = Google::Apis::GamesV1::UpdateEventResponse::Representation
          command.response_class = Google::Apis::GamesV1::UpdateEventResponse
          command.query['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the metadata of the leaderboard with the given ID.
        # @param [String] leaderboard_id
        #   The ID of the leaderboard.
        # @param [String] language
        #   The preferred language to use for strings returned by this method.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::Leaderboard] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::Leaderboard]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_leaderboard(leaderboard_id, language: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/leaderboards/{leaderboardId}', options)
          command.response_representation = Google::Apis::GamesV1::Leaderboard::Representation
          command.response_class = Google::Apis::GamesV1::Leaderboard
          command.params['leaderboardId'] = leaderboard_id unless leaderboard_id.nil?
          command.query['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the leaderboard metadata for your application.
        # @param [String] language
        #   The preferred language to use for strings returned by this method.
        # @param [Fixnum] max_results
        #   The maximum number of leaderboards to return in the response. For any response,
        #   the actual number of leaderboards returned may be less than the specified `
        #   maxResults`.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::ListLeaderboardResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::ListLeaderboardResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_leaderboards(language: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/leaderboards', options)
          command.response_representation = Google::Apis::GamesV1::ListLeaderboardResponse::Representation
          command.response_class = Google::Apis::GamesV1::ListLeaderboardResponse
          command.query['language'] = language unless language.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return the metagame configuration data for the calling application.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::MetagameConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::MetagameConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_metagame_config(fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/metagameConfig', options)
          command.response_representation = Google::Apis::GamesV1::MetagameConfig::Representation
          command.response_class = Google::Apis::GamesV1::MetagameConfig
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List play data aggregated per category for the player corresponding to `
        # playerId`.
        # @param [String] player_id
        #   A player ID. A value of `me` may be used in place of the authenticated player'
        #   s ID.
        # @param [String] collection
        #   The collection of categories for which data will be returned.
        # @param [String] language
        #   The preferred language to use for strings returned by this method.
        # @param [Fixnum] max_results
        #   The maximum number of category resources to return in the response, used for
        #   paging. For any response, the actual number of category resources returned may
        #   be less than the specified `maxResults`.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::ListCategoryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::ListCategoryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_metagame_categories_by_player(player_id, collection, language: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/players/{playerId}/categories/{collection}', options)
          command.response_representation = Google::Apis::GamesV1::ListCategoryResponse::Representation
          command.response_class = Google::Apis::GamesV1::ListCategoryResponse
          command.params['playerId'] = player_id unless player_id.nil?
          command.params['collection'] = collection unless collection.nil?
          command.query['language'] = language unless language.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the Player resource with the given ID. To retrieve the player for
        # the currently authenticated user, set `playerId` to `me`.
        # @param [String] player_id
        #   A player ID. A value of `me` may be used in place of the authenticated player'
        #   s ID.
        # @param [String] language
        #   The preferred language to use for strings returned by this method.
        # @param [String] player_id_consistency_token
        #   Consistency token of the player id. The call returns a 'not found' result when
        #   the token is present and invalid. Empty value is ignored. See also
        #   GlobalPlayerIdConsistencyTokenProto
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::Player] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::Player]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_player(player_id, language: nil, player_id_consistency_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/players/{playerId}', options)
          command.response_representation = Google::Apis::GamesV1::Player::Representation
          command.response_class = Google::Apis::GamesV1::Player
          command.params['playerId'] = player_id unless player_id.nil?
          command.query['language'] = language unless language.nil?
          command.query['playerIdConsistencyToken'] = player_id_consistency_token unless player_id_consistency_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the application player ids for the currently authenticated player across
        # all requested games by the same developer as the calling application. This
        # will only return ids for players that actually have an id (scoped or otherwise)
        # with that game.
        # @param [Array<String>, String] application_ids
        #   Required. The application IDs from the Google Play developer console for the
        #   games to return scoped ids for.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::GetMultipleApplicationPlayerIdsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::GetMultipleApplicationPlayerIdsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_player_multiple_application_player_ids(application_ids: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/players/me/multipleApplicationPlayerIds', options)
          command.response_representation = Google::Apis::GamesV1::GetMultipleApplicationPlayerIdsResponse::Representation
          command.response_class = Google::Apis::GamesV1::GetMultipleApplicationPlayerIdsResponse
          command.query['applicationIds'] = application_ids unless application_ids.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves scoped player identifiers for currently authenticated user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::ScopedPlayerIds] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::ScopedPlayerIds]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_player_scoped_player_ids(fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/players/me/scopedIds', options)
          command.response_representation = Google::Apis::GamesV1::ScopedPlayerIds::Representation
          command.response_class = Google::Apis::GamesV1::ScopedPlayerIds
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the collection of players for the currently authenticated user.
        # @param [String] collection
        #   Collection of players being retrieved
        # @param [String] language
        #   The preferred language to use for strings returned by this method.
        # @param [Fixnum] max_results
        #   The maximum number of player resources to return in the response, used for
        #   paging. For any response, the actual number of player resources returned may
        #   be less than the specified `maxResults`.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::ListPlayerResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::ListPlayerResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_players(collection, language: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/players/me/players/{collection}', options)
          command.response_representation = Google::Apis::GamesV1::ListPlayerResponse::Representation
          command.response_class = Google::Apis::GamesV1::ListPlayerResponse
          command.params['collection'] = collection unless collection.nil?
          command.query['language'] = language unless language.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve the Recall tokens from all requested games that is associated with
        # the PGS Player encoded in the provided recall session id. The API is only
        # available for users that have an active PGS Player profile.
        # @param [String] session_id
        #   Required. Opaque server-generated string that encodes all the necessary
        #   information to identify the PGS player / Google user and application.
        # @param [Array<String>, String] application_ids
        #   Required. The application IDs from the Google Play developer console for the
        #   games to return scoped ids for.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::RetrieveGamesPlayerTokensResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::RetrieveGamesPlayerTokensResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def games_recall_player_tokens(session_id, application_ids: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/recall/gamesPlayerTokens/{sessionId}', options)
          command.response_representation = Google::Apis::GamesV1::RetrieveGamesPlayerTokensResponse::Representation
          command.response_class = Google::Apis::GamesV1::RetrieveGamesPlayerTokensResponse
          command.params['sessionId'] = session_id unless session_id.nil?
          command.query['applicationIds'] = application_ids unless application_ids.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve the last Recall token from all developer games that is associated
        # with the PGS Player encoded in the provided recall session id. The API is only
        # available for users that have active PGS Player profile.
        # @param [String] session_id
        #   Required. Opaque server-generated string that encodes all the necessary
        #   information to identify the PGS player / Google user and application.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::RetrieveDeveloperGamesLastPlayerTokenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::RetrieveDeveloperGamesLastPlayerTokenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def last_recall_token_from_all_developer_games(session_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/recall/developerGamesLastPlayerToken/{sessionId}', options)
          command.response_representation = Google::Apis::GamesV1::RetrieveDeveloperGamesLastPlayerTokenResponse::Representation
          command.response_class = Google::Apis::GamesV1::RetrieveDeveloperGamesLastPlayerTokenResponse
          command.params['sessionId'] = session_id unless session_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Associate the PGS Player principal encoded in the provided recall session id
        # with an in-game account
        # @param [Google::Apis::GamesV1::LinkPersonaRequest] link_persona_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::LinkPersonaResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::LinkPersonaResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def link_recall_persona(link_persona_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'games/v1/recall:linkPersona', options)
          command.request_representation = Google::Apis::GamesV1::LinkPersonaRequest::Representation
          command.request_object = link_persona_request_object
          command.response_representation = Google::Apis::GamesV1::LinkPersonaResponse::Representation
          command.response_class = Google::Apis::GamesV1::LinkPersonaResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete all Recall tokens linking the given persona to any player (with or
        # without a profile).
        # @param [Google::Apis::GamesV1::ResetPersonaRequest] reset_persona_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::ResetPersonaResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::ResetPersonaResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reset_recall_persona(reset_persona_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'games/v1/recall:resetPersona', options)
          command.request_representation = Google::Apis::GamesV1::ResetPersonaRequest::Representation
          command.request_object = reset_persona_request_object
          command.response_representation = Google::Apis::GamesV1::ResetPersonaResponse::Representation
          command.response_class = Google::Apis::GamesV1::ResetPersonaResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve all Recall tokens associated with the PGS Player encoded in the
        # provided recall session id. The API is only available for users that have
        # active PGS Player profile.
        # @param [String] session_id
        #   Required. Opaque server-generated string that encodes all the necessary
        #   information to identify the PGS player / Google user and application.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::RetrievePlayerTokensResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::RetrievePlayerTokensResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_recall_tokens(session_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/recall/tokens/{sessionId}', options)
          command.response_representation = Google::Apis::GamesV1::RetrievePlayerTokensResponse::Representation
          command.response_class = Google::Apis::GamesV1::RetrievePlayerTokensResponse
          command.params['sessionId'] = session_id unless session_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a Recall token linking the PGS Player principal identified by the
        # Recall session and an in-game account identified either by the 'persona' or by
        # the token value.
        # @param [Google::Apis::GamesV1::UnlinkPersonaRequest] unlink_persona_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::UnlinkPersonaResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::UnlinkPersonaResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def unlink_recall_persona(unlink_persona_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'games/v1/recall:unlinkPersona', options)
          command.request_representation = Google::Apis::GamesV1::UnlinkPersonaRequest::Representation
          command.request_object = unlink_persona_request_object
          command.response_representation = Google::Apis::GamesV1::UnlinkPersonaResponse::Representation
          command.response_class = Google::Apis::GamesV1::UnlinkPersonaResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Checks whether the games client is out of date.
        # @param [String] client_revision
        #   Required. The revision of the client SDK used by your application. Format: `[
        #   PLATFORM_TYPE]:[VERSION_NUMBER]`. Possible values of `PLATFORM_TYPE` are: * `
        #   ANDROID` - Client is running the Android SDK. * `IOS` - Client is running the
        #   iOS SDK. * `WEB_APP` - Client is running as a Web App.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::CheckRevisionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::CheckRevisionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def check_revision(client_revision, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/revisions/check', options)
          command.response_representation = Google::Apis::GamesV1::CheckRevisionResponse::Representation
          command.response_class = Google::Apis::GamesV1::CheckRevisionResponse
          command.query['clientRevision'] = client_revision unless client_revision.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get high scores, and optionally ranks, in leaderboards for the currently
        # authenticated player. For a specific time span, `leaderboardId` can be set to `
        # ALL` to retrieve data for all leaderboards in a given time span. `NOTE: You
        # cannot ask for 'ALL' leaderboards and 'ALL' timeSpans in the same request;
        # only one parameter may be set to 'ALL'.
        # @param [String] player_id
        #   A player ID. A value of `me` may be used in place of the authenticated player'
        #   s ID.
        # @param [String] leaderboard_id
        #   The ID of the leaderboard. Can be set to 'ALL' to retrieve data for all
        #   leaderboards for this application.
        # @param [String] time_span
        #   The time span for the scores and ranks you're requesting.
        # @param [String] include_rank_type
        #   The types of ranks to return. If the parameter is omitted, no ranks will be
        #   returned.
        # @param [String] language
        #   The preferred language to use for strings returned by this method.
        # @param [Fixnum] max_results
        #   The maximum number of leaderboard scores to return in the response. For any
        #   response, the actual number of leaderboard scores returned may be less than
        #   the specified `maxResults`.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::ListPlayerLeaderboardScoreResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::ListPlayerLeaderboardScoreResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_score(player_id, leaderboard_id, time_span, include_rank_type: nil, language: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/players/{playerId}/leaderboards/{leaderboardId}/scores/{timeSpan}', options)
          command.response_representation = Google::Apis::GamesV1::ListPlayerLeaderboardScoreResponse::Representation
          command.response_class = Google::Apis::GamesV1::ListPlayerLeaderboardScoreResponse
          command.params['playerId'] = player_id unless player_id.nil?
          command.params['leaderboardId'] = leaderboard_id unless leaderboard_id.nil?
          command.params['timeSpan'] = time_span unless time_span.nil?
          command.query['includeRankType'] = include_rank_type unless include_rank_type.nil?
          command.query['language'] = language unless language.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the scores in a leaderboard, starting from the top.
        # @param [String] leaderboard_id
        #   The ID of the leaderboard.
        # @param [String] collection
        #   The collection of scores you're requesting.
        # @param [String] time_span
        #   Required. The time span for the scores and ranks you're requesting.
        # @param [String] language
        #   The preferred language to use for strings returned by this method.
        # @param [Fixnum] max_results
        #   The maximum number of leaderboard scores to return in the response. For any
        #   response, the actual number of leaderboard scores returned may be less than
        #   the specified `maxResults`.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::LeaderboardScores] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::LeaderboardScores]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_scores(leaderboard_id, collection, time_span, language: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/leaderboards/{leaderboardId}/scores/{collection}', options)
          command.response_representation = Google::Apis::GamesV1::LeaderboardScores::Representation
          command.response_class = Google::Apis::GamesV1::LeaderboardScores
          command.params['leaderboardId'] = leaderboard_id unless leaderboard_id.nil?
          command.params['collection'] = collection unless collection.nil?
          command.query['language'] = language unless language.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['timeSpan'] = time_span unless time_span.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the scores in a leaderboard around (and including) a player's score.
        # @param [String] leaderboard_id
        #   The ID of the leaderboard.
        # @param [String] collection
        #   The collection of scores you're requesting.
        # @param [String] time_span
        #   Required. The time span for the scores and ranks you're requesting.
        # @param [String] language
        #   The preferred language to use for strings returned by this method.
        # @param [Fixnum] max_results
        #   The maximum number of leaderboard scores to return in the response. For any
        #   response, the actual number of leaderboard scores returned may be less than
        #   the specified `maxResults`.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [Fixnum] results_above
        #   The preferred number of scores to return above the player's score. More scores
        #   may be returned if the player is at the bottom of the leaderboard; fewer may
        #   be returned if the player is at the top. Must be less than or equal to
        #   maxResults.
        # @param [Boolean] return_top_if_absent
        #   True if the top scores should be returned when the player is not in the
        #   leaderboard. Defaults to true.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::LeaderboardScores] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::LeaderboardScores]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_score_window(leaderboard_id, collection, time_span, language: nil, max_results: nil, page_token: nil, results_above: nil, return_top_if_absent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/leaderboards/{leaderboardId}/window/{collection}', options)
          command.response_representation = Google::Apis::GamesV1::LeaderboardScores::Representation
          command.response_class = Google::Apis::GamesV1::LeaderboardScores
          command.params['leaderboardId'] = leaderboard_id unless leaderboard_id.nil?
          command.params['collection'] = collection unless collection.nil?
          command.query['language'] = language unless language.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['resultsAbove'] = results_above unless results_above.nil?
          command.query['returnTopIfAbsent'] = return_top_if_absent unless return_top_if_absent.nil?
          command.query['timeSpan'] = time_span unless time_span.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Submits a score to the specified leaderboard.
        # @param [String] leaderboard_id
        #   The ID of the leaderboard.
        # @param [Fixnum] score
        #   Required. The score you're submitting. The submitted score is ignored if it is
        #   worse than a previously submitted score, where worse depends on the
        #   leaderboard sort order. The meaning of the score value depends on the
        #   leaderboard format type. For fixed-point, the score represents the raw value.
        #   For time, the score represents elapsed time in milliseconds. For currency, the
        #   score represents a value in micro units.
        # @param [String] language
        #   The preferred language to use for strings returned by this method.
        # @param [String] score_tag
        #   Additional information about the score you're submitting. Values must contain
        #   no more than 64 URI-safe characters as defined by section 2.3 of RFC 3986.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::PlayerScoreResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::PlayerScoreResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def submit_score(leaderboard_id, score, language: nil, score_tag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'games/v1/leaderboards/{leaderboardId}/scores', options)
          command.response_representation = Google::Apis::GamesV1::PlayerScoreResponse::Representation
          command.response_class = Google::Apis::GamesV1::PlayerScoreResponse
          command.params['leaderboardId'] = leaderboard_id unless leaderboard_id.nil?
          command.query['language'] = language unless language.nil?
          command.query['score'] = score unless score.nil?
          command.query['scoreTag'] = score_tag unless score_tag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Submits multiple scores to leaderboards.
        # @param [Google::Apis::GamesV1::PlayerScoreSubmissionList] player_score_submission_list_object
        # @param [String] language
        #   The preferred language to use for strings returned by this method.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::ListPlayerScoreResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::ListPlayerScoreResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def submit_score_multiple(player_score_submission_list_object = nil, language: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'games/v1/leaderboards/scores', options)
          command.request_representation = Google::Apis::GamesV1::PlayerScoreSubmissionList::Representation
          command.request_object = player_score_submission_list_object
          command.response_representation = Google::Apis::GamesV1::ListPlayerScoreResponse::Representation
          command.response_class = Google::Apis::GamesV1::ListPlayerScoreResponse
          command.query['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the metadata for a given snapshot ID.
        # @param [String] snapshot_id
        #   The ID of the snapshot.
        # @param [String] language
        #   The preferred language to use for strings returned by this method.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::Snapshot] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::Snapshot]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_snapshot(snapshot_id, language: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/snapshots/{snapshotId}', options)
          command.response_representation = Google::Apis::GamesV1::Snapshot::Representation
          command.response_class = Google::Apis::GamesV1::Snapshot
          command.params['snapshotId'] = snapshot_id unless snapshot_id.nil?
          command.query['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of snapshots created by your application for the player
        # corresponding to the player ID.
        # @param [String] player_id
        #   A player ID. A value of `me` may be used in place of the authenticated player'
        #   s ID.
        # @param [String] language
        #   The preferred language to use for strings returned by this method.
        # @param [Fixnum] max_results
        #   The maximum number of snapshot resources to return in the response, used for
        #   paging. For any response, the actual number of snapshot resources returned may
        #   be less than the specified `maxResults`.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::ListSnapshotResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::ListSnapshotResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_snapshots(player_id, language: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/players/{playerId}/snapshots', options)
          command.response_representation = Google::Apis::GamesV1::ListSnapshotResponse::Representation
          command.response_class = Google::Apis::GamesV1::ListSnapshotResponse
          command.params['playerId'] = player_id unless player_id.nil?
          command.query['language'] = language unless language.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns engagement and spend statistics in this application for the currently
        # authenticated user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GamesV1::StatsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GamesV1::StatsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_stat(fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'games/v1/stats', options)
          command.response_representation = Google::Apis::GamesV1::StatsResponse::Representation
          command.response_class = Google::Apis::GamesV1::StatsResponse
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
