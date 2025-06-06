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
    module TranslateV3
      # Cloud Translation API
      #
      # Integrates text translation into your website or application.
      #
      # @example
      #    require 'google/apis/translate_v3'
      #
      #    Translate = Google::Apis::TranslateV3 # Alias the module
      #    service = Translate::TranslateService.new
      #
      # @see https://cloud.google.com/translate/docs/quickstarts
      class TranslateService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://translation.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-translate_v3',
                client_version: Google::Apis::TranslateV3::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Detects the language of text within a request.
        # @param [String] parent
        #   Required. Project or location to make a call. Must refer to a caller's project.
        #   Format: `projects/`project-number-or-id`/locations/`location-id`` or `
        #   projects/`project-number-or-id``. For global calls, use `projects/`project-
        #   number-or-id`/locations/global` or `projects/`project-number-or-id``. Only
        #   models within the same region (has same location-id) can be used. Otherwise an
        #   INVALID_ARGUMENT (400) error is returned.
        # @param [Google::Apis::TranslateV3::DetectLanguageRequest] detect_language_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::DetectLanguageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::DetectLanguageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def detect_project_language(parent, detect_language_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}:detectLanguage', options)
          command.request_representation = Google::Apis::TranslateV3::DetectLanguageRequest::Representation
          command.request_object = detect_language_request_object
          command.response_representation = Google::Apis::TranslateV3::DetectLanguageResponse::Representation
          command.response_class = Google::Apis::TranslateV3::DetectLanguageResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of supported languages for translation.
        # @param [String] parent
        #   Required. Project or location to make a call. Must refer to a caller's project.
        #   Format: `projects/`project-number-or-id`` or `projects/`project-number-or-id`/
        #   locations/`location-id``. For global calls, use `projects/`project-number-or-
        #   id`/locations/global` or `projects/`project-number-or-id``. Non-global
        #   location is required for AutoML models. Only models within the same region (
        #   have same location-id) can be used, otherwise an INVALID_ARGUMENT (400) error
        #   is returned.
        # @param [String] display_language_code
        #   Optional. The language to use to return localized, human readable names of
        #   supported languages. If missing, then display names are not returned in a
        #   response.
        # @param [String] model
        #   Optional. Get supported languages of this model. The format depends on model
        #   type: - AutoML Translation models: `projects/`project-number-or-id`/locations/`
        #   location-id`/models/`model-id`` - General (built-in) models: `projects/`
        #   project-number-or-id`/locations/`location-id`/models/general/nmt`, Returns
        #   languages supported by the specified model. If missing, we get supported
        #   languages of Google general NMT model.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::SupportedLanguages] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::SupportedLanguages]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_supported_languages(parent, display_language_code: nil, model: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/supportedLanguages', options)
          command.response_representation = Google::Apis::TranslateV3::SupportedLanguages::Representation
          command.response_class = Google::Apis::TranslateV3::SupportedLanguages
          command.params['parent'] = parent unless parent.nil?
          command.query['displayLanguageCode'] = display_language_code unless display_language_code.nil?
          command.query['model'] = model unless model.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Romanize input text written in non-Latin scripts to Latin text.
        # @param [String] parent
        #   Required. Project or location to make a call. Must refer to a caller's project.
        #   Format: `projects/`project-number-or-id`/locations/`location-id`` or `
        #   projects/`project-number-or-id``. For global calls, use `projects/`project-
        #   number-or-id`/locations/global` or `projects/`project-number-or-id``.
        # @param [Google::Apis::TranslateV3::RomanizeTextRequest] romanize_text_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::RomanizeTextResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::RomanizeTextResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def romanize_project_text(parent, romanize_text_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}:romanizeText', options)
          command.request_representation = Google::Apis::TranslateV3::RomanizeTextRequest::Representation
          command.request_object = romanize_text_request_object
          command.response_representation = Google::Apis::TranslateV3::RomanizeTextResponse::Representation
          command.response_class = Google::Apis::TranslateV3::RomanizeTextResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Translates input text and returns translated text.
        # @param [String] parent
        #   Required. Project or location to make a call. Must refer to a caller's project.
        #   Format: `projects/`project-number-or-id`` or `projects/`project-number-or-id`/
        #   locations/`location-id``. For global calls, use `projects/`project-number-or-
        #   id`/locations/global` or `projects/`project-number-or-id``. Non-global
        #   location is required for requests using AutoML models or custom glossaries.
        #   Models and glossaries must be within the same region (have same location-id),
        #   otherwise an INVALID_ARGUMENT (400) error is returned.
        # @param [Google::Apis::TranslateV3::TranslateTextRequest] translate_text_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::TranslateTextResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::TranslateTextResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def translate_project_text(parent, translate_text_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}:translateText', options)
          command.request_representation = Google::Apis::TranslateV3::TranslateTextRequest::Representation
          command.request_object = translate_text_request_object
          command.response_representation = Google::Apis::TranslateV3::TranslateTextResponse::Representation
          command.response_class = Google::Apis::TranslateV3::TranslateTextResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Translate text using Adaptive MT.
        # @param [String] parent
        #   Required. Location to make a regional call. Format: `projects/`project-number-
        #   or-id`/locations/`location-id``.
        # @param [Google::Apis::TranslateV3::AdaptiveMtTranslateRequest] adaptive_mt_translate_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::AdaptiveMtTranslateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::AdaptiveMtTranslateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def adaptive_location_mt_translate(parent, adaptive_mt_translate_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}:adaptiveMtTranslate', options)
          command.request_representation = Google::Apis::TranslateV3::AdaptiveMtTranslateRequest::Representation
          command.request_object = adaptive_mt_translate_request_object
          command.response_representation = Google::Apis::TranslateV3::AdaptiveMtTranslateResponse::Representation
          command.response_class = Google::Apis::TranslateV3::AdaptiveMtTranslateResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Translates a large volume of document in asynchronous batch mode. This
        # function provides real-time output as the inputs are being processed. If
        # caller cancels a request, the partial results (for an input file, it's all or
        # nothing) may still be available on the specified output location. This call
        # returns immediately and you can use google.longrunning.Operation.name to poll
        # the status of the call.
        # @param [String] parent
        #   Required. Location to make a regional call. Format: `projects/`project-number-
        #   or-id`/locations/`location-id``. The `global` location is not supported for
        #   batch translation. Only AutoML Translation models or glossaries within the
        #   same region (have the same location-id) can be used, otherwise an
        #   INVALID_ARGUMENT (400) error is returned.
        # @param [Google::Apis::TranslateV3::BatchTranslateDocumentRequest] batch_translate_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_location_translate_document(parent, batch_translate_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}:batchTranslateDocument', options)
          command.request_representation = Google::Apis::TranslateV3::BatchTranslateDocumentRequest::Representation
          command.request_object = batch_translate_document_request_object
          command.response_representation = Google::Apis::TranslateV3::Operation::Representation
          command.response_class = Google::Apis::TranslateV3::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Translates a large volume of text in asynchronous batch mode. This function
        # provides real-time output as the inputs are being processed. If caller cancels
        # a request, the partial results (for an input file, it's all or nothing) may
        # still be available on the specified output location. This call returns
        # immediately and you can use google.longrunning.Operation.name to poll the
        # status of the call.
        # @param [String] parent
        #   Required. Location to make a call. Must refer to a caller's project. Format: `
        #   projects/`project-number-or-id`/locations/`location-id``. The `global`
        #   location is not supported for batch translation. Only AutoML Translation
        #   models or glossaries within the same region (have the same location-id) can be
        #   used, otherwise an INVALID_ARGUMENT (400) error is returned.
        # @param [Google::Apis::TranslateV3::BatchTranslateTextRequest] batch_translate_text_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_location_translate_text(parent, batch_translate_text_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}:batchTranslateText', options)
          command.request_representation = Google::Apis::TranslateV3::BatchTranslateTextRequest::Representation
          command.request_object = batch_translate_text_request_object
          command.response_representation = Google::Apis::TranslateV3::Operation::Representation
          command.response_class = Google::Apis::TranslateV3::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Detects the language of text within a request.
        # @param [String] parent
        #   Required. Project or location to make a call. Must refer to a caller's project.
        #   Format: `projects/`project-number-or-id`/locations/`location-id`` or `
        #   projects/`project-number-or-id``. For global calls, use `projects/`project-
        #   number-or-id`/locations/global` or `projects/`project-number-or-id``. Only
        #   models within the same region (has same location-id) can be used. Otherwise an
        #   INVALID_ARGUMENT (400) error is returned.
        # @param [Google::Apis::TranslateV3::DetectLanguageRequest] detect_language_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::DetectLanguageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::DetectLanguageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def detect_location_language(parent, detect_language_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}:detectLanguage', options)
          command.request_representation = Google::Apis::TranslateV3::DetectLanguageRequest::Representation
          command.request_object = detect_language_request_object
          command.response_representation = Google::Apis::TranslateV3::DetectLanguageResponse::Representation
          command.response_class = Google::Apis::TranslateV3::DetectLanguageResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a location.
        # @param [String] name
        #   Resource name for the location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::TranslateV3::Location::Representation
          command.response_class = Google::Apis::TranslateV3::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of supported languages for translation.
        # @param [String] parent
        #   Required. Project or location to make a call. Must refer to a caller's project.
        #   Format: `projects/`project-number-or-id`` or `projects/`project-number-or-id`/
        #   locations/`location-id``. For global calls, use `projects/`project-number-or-
        #   id`/locations/global` or `projects/`project-number-or-id``. Non-global
        #   location is required for AutoML models. Only models within the same region (
        #   have same location-id) can be used, otherwise an INVALID_ARGUMENT (400) error
        #   is returned.
        # @param [String] display_language_code
        #   Optional. The language to use to return localized, human readable names of
        #   supported languages. If missing, then display names are not returned in a
        #   response.
        # @param [String] model
        #   Optional. Get supported languages of this model. The format depends on model
        #   type: - AutoML Translation models: `projects/`project-number-or-id`/locations/`
        #   location-id`/models/`model-id`` - General (built-in) models: `projects/`
        #   project-number-or-id`/locations/`location-id`/models/general/nmt`, Returns
        #   languages supported by the specified model. If missing, we get supported
        #   languages of Google general NMT model.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::SupportedLanguages] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::SupportedLanguages]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_supported_languages(parent, display_language_code: nil, model: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/supportedLanguages', options)
          command.response_representation = Google::Apis::TranslateV3::SupportedLanguages::Representation
          command.response_class = Google::Apis::TranslateV3::SupportedLanguages
          command.params['parent'] = parent unless parent.nil?
          command.query['displayLanguageCode'] = display_language_code unless display_language_code.nil?
          command.query['model'] = model unless model.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
        # @param [Array<String>, String] extra_location_types
        #   Optional. A list of extra location types that should be used as conditions for
        #   controlling the visibility of the locations.
        # @param [String] filter
        #   A filter to narrow down results to a preferred subset. The filtering language
        #   accepts strings like `"displayName=tokyo"`, and is documented in more detail
        #   in [AIP-160](https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of results to return. If not set, the service selects a
        #   default.
        # @param [String] page_token
        #   A page token received from the `next_page_token` field in the response. Send
        #   that page token to receive the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}/locations', options)
          command.response_representation = Google::Apis::TranslateV3::ListLocationsResponse::Representation
          command.response_class = Google::Apis::TranslateV3::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Romanize input text written in non-Latin scripts to Latin text.
        # @param [String] parent
        #   Required. Project or location to make a call. Must refer to a caller's project.
        #   Format: `projects/`project-number-or-id`/locations/`location-id`` or `
        #   projects/`project-number-or-id``. For global calls, use `projects/`project-
        #   number-or-id`/locations/global` or `projects/`project-number-or-id``.
        # @param [Google::Apis::TranslateV3::RomanizeTextRequest] romanize_text_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::RomanizeTextResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::RomanizeTextResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def romanize_location_text(parent, romanize_text_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}:romanizeText', options)
          command.request_representation = Google::Apis::TranslateV3::RomanizeTextRequest::Representation
          command.request_object = romanize_text_request_object
          command.response_representation = Google::Apis::TranslateV3::RomanizeTextResponse::Representation
          command.response_class = Google::Apis::TranslateV3::RomanizeTextResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Translates documents in synchronous mode.
        # @param [String] parent
        #   Required. Location to make a regional call. Format: `projects/`project-number-
        #   or-id`/locations/`location-id``. For global calls, use `projects/`project-
        #   number-or-id`/locations/global` or `projects/`project-number-or-id``. Non-
        #   global location is required for requests using AutoML models or custom
        #   glossaries. Models and glossaries must be within the same region (have the
        #   same location-id), otherwise an INVALID_ARGUMENT (400) error is returned.
        # @param [Google::Apis::TranslateV3::TranslateDocumentRequest] translate_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::TranslateDocumentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::TranslateDocumentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def translate_location_document(parent, translate_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}:translateDocument', options)
          command.request_representation = Google::Apis::TranslateV3::TranslateDocumentRequest::Representation
          command.request_object = translate_document_request_object
          command.response_representation = Google::Apis::TranslateV3::TranslateDocumentResponse::Representation
          command.response_class = Google::Apis::TranslateV3::TranslateDocumentResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Translates input text and returns translated text.
        # @param [String] parent
        #   Required. Project or location to make a call. Must refer to a caller's project.
        #   Format: `projects/`project-number-or-id`` or `projects/`project-number-or-id`/
        #   locations/`location-id``. For global calls, use `projects/`project-number-or-
        #   id`/locations/global` or `projects/`project-number-or-id``. Non-global
        #   location is required for requests using AutoML models or custom glossaries.
        #   Models and glossaries must be within the same region (have same location-id),
        #   otherwise an INVALID_ARGUMENT (400) error is returned.
        # @param [Google::Apis::TranslateV3::TranslateTextRequest] translate_text_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::TranslateTextResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::TranslateTextResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def translate_location_text(parent, translate_text_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}:translateText', options)
          command.request_representation = Google::Apis::TranslateV3::TranslateTextRequest::Representation
          command.request_object = translate_text_request_object
          command.response_representation = Google::Apis::TranslateV3::TranslateTextResponse::Representation
          command.response_class = Google::Apis::TranslateV3::TranslateTextResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an Adaptive MT dataset.
        # @param [String] parent
        #   Required. Name of the parent project. In form of `projects/`project-number-or-
        #   id`/locations/`location-id``
        # @param [Google::Apis::TranslateV3::AdaptiveMtDataset] adaptive_mt_dataset_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::AdaptiveMtDataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::AdaptiveMtDataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_adaptive_mt_dataset(parent, adaptive_mt_dataset_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/adaptiveMtDatasets', options)
          command.request_representation = Google::Apis::TranslateV3::AdaptiveMtDataset::Representation
          command.request_object = adaptive_mt_dataset_object
          command.response_representation = Google::Apis::TranslateV3::AdaptiveMtDataset::Representation
          command.response_class = Google::Apis::TranslateV3::AdaptiveMtDataset
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an Adaptive MT dataset, including all its entries and associated
        # metadata.
        # @param [String] name
        #   Required. Name of the dataset. In the form of `projects/`project-number-or-id`/
        #   locations/`location-id`/adaptiveMtDatasets/`adaptive-mt-dataset-id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_adaptive_mt_dataset(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::TranslateV3::Empty::Representation
          command.response_class = Google::Apis::TranslateV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the Adaptive MT dataset.
        # @param [String] name
        #   Required. Name of the dataset. In the form of `projects/`project-number-or-id`/
        #   locations/`location-id`/adaptiveMtDatasets/`adaptive-mt-dataset-id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::AdaptiveMtDataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::AdaptiveMtDataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_adaptive_mt_dataset(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::TranslateV3::AdaptiveMtDataset::Representation
          command.response_class = Google::Apis::TranslateV3::AdaptiveMtDataset
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports an AdaptiveMtFile and adds all of its sentences into the
        # AdaptiveMtDataset.
        # @param [String] parent
        #   Required. The resource name of the file, in form of `projects/`project-number-
        #   or-id`/locations/`location_id`/adaptiveMtDatasets/`dataset``
        # @param [Google::Apis::TranslateV3::ImportAdaptiveMtFileRequest] import_adaptive_mt_file_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::ImportAdaptiveMtFileResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::ImportAdaptiveMtFileResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_adaptive_mt_dataset_adaptive_mt_file(parent, import_adaptive_mt_file_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}:importAdaptiveMtFile', options)
          command.request_representation = Google::Apis::TranslateV3::ImportAdaptiveMtFileRequest::Representation
          command.request_object = import_adaptive_mt_file_request_object
          command.response_representation = Google::Apis::TranslateV3::ImportAdaptiveMtFileResponse::Representation
          command.response_class = Google::Apis::TranslateV3::ImportAdaptiveMtFileResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Adaptive MT datasets for which the caller has read permission.
        # @param [String] parent
        #   Required. The resource name of the project from which to list the Adaptive MT
        #   datasets. `projects/`project-number-or-id`/locations/`location-id``
        # @param [String] filter
        #   Optional. An expression for filtering the results of the request. Filter is
        #   not supported yet.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. The server may return fewer results than
        #   requested. If unspecified, the server picks an appropriate default.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        #   Typically, this is the value of ListAdaptiveMtDatasetsResponse.next_page_token
        #   returned from the previous call to `ListAdaptiveMtDatasets` method. The first
        #   page is returned if `page_token`is empty or missing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::ListAdaptiveMtDatasetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::ListAdaptiveMtDatasetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_adaptive_mt_datasets(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/adaptiveMtDatasets', options)
          command.response_representation = Google::Apis::TranslateV3::ListAdaptiveMtDatasetsResponse::Representation
          command.response_class = Google::Apis::TranslateV3::ListAdaptiveMtDatasetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an AdaptiveMtFile along with its sentences.
        # @param [String] name
        #   Required. The resource name of the file to delete, in form of `projects/`
        #   project-number-or-id`/locations/`location_id`/adaptiveMtDatasets/`dataset`/
        #   adaptiveMtFiles/`file``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_adaptive_mt_dataset_adaptive_mt_file(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::TranslateV3::Empty::Representation
          command.response_class = Google::Apis::TranslateV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets and AdaptiveMtFile
        # @param [String] name
        #   Required. The resource name of the file, in form of `projects/`project-number-
        #   or-id`/locations/`location_id`/adaptiveMtDatasets/`dataset`/adaptiveMtFiles/`
        #   file``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::AdaptiveMtFile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::AdaptiveMtFile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_adaptive_mt_dataset_adaptive_mt_file(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::TranslateV3::AdaptiveMtFile::Representation
          command.response_class = Google::Apis::TranslateV3::AdaptiveMtFile
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all AdaptiveMtFiles associated to an AdaptiveMtDataset.
        # @param [String] parent
        #   Required. The resource name of the project from which to list the Adaptive MT
        #   files. `projects/`project`/locations/`location`/adaptiveMtDatasets/`dataset``
        # @param [Fixnum] page_size
        #   Optional.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        #   Typically, this is the value of ListAdaptiveMtFilesResponse.next_page_token
        #   returned from the previous call to `ListAdaptiveMtFiles` method. The first
        #   page is returned if `page_token`is empty or missing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::ListAdaptiveMtFilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::ListAdaptiveMtFilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_adaptive_mt_dataset_adaptive_mt_files(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/adaptiveMtFiles', options)
          command.response_representation = Google::Apis::TranslateV3::ListAdaptiveMtFilesResponse::Representation
          command.response_class = Google::Apis::TranslateV3::ListAdaptiveMtFilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all AdaptiveMtSentences under a given file/dataset.
        # @param [String] parent
        #   Required. The resource name of the project from which to list the Adaptive MT
        #   files. The following format lists all sentences under a file. `projects/`
        #   project`/locations/`location`/adaptiveMtDatasets/`dataset`/adaptiveMtFiles/`
        #   file`` The following format lists all sentences within a dataset. `projects/`
        #   project`/locations/`location`/adaptiveMtDatasets/`dataset``
        # @param [Fixnum] page_size
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of ListAdaptiveMtSentencesRequest.next_page_token returned
        #   from the previous call to `ListTranslationMemories` method. The first page is
        #   returned if `page_token` is empty or missing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::ListAdaptiveMtSentencesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::ListAdaptiveMtSentencesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_adaptive_mt_dataset_adaptive_mt_file_adaptive_mt_sentences(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/adaptiveMtSentences', options)
          command.response_representation = Google::Apis::TranslateV3::ListAdaptiveMtSentencesResponse::Representation
          command.response_class = Google::Apis::TranslateV3::ListAdaptiveMtSentencesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all AdaptiveMtSentences under a given file/dataset.
        # @param [String] parent
        #   Required. The resource name of the project from which to list the Adaptive MT
        #   files. The following format lists all sentences under a file. `projects/`
        #   project`/locations/`location`/adaptiveMtDatasets/`dataset`/adaptiveMtFiles/`
        #   file`` The following format lists all sentences within a dataset. `projects/`
        #   project`/locations/`location`/adaptiveMtDatasets/`dataset``
        # @param [Fixnum] page_size
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of ListAdaptiveMtSentencesRequest.next_page_token returned
        #   from the previous call to `ListTranslationMemories` method. The first page is
        #   returned if `page_token` is empty or missing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::ListAdaptiveMtSentencesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::ListAdaptiveMtSentencesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_adaptive_mt_dataset_adaptive_mt_sentences(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/adaptiveMtSentences', options)
          command.response_representation = Google::Apis::TranslateV3::ListAdaptiveMtSentencesResponse::Representation
          command.response_class = Google::Apis::TranslateV3::ListAdaptiveMtSentencesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Dataset.
        # @param [String] parent
        #   Required. The project name.
        # @param [Google::Apis::TranslateV3::Dataset] dataset_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_dataset(parent, dataset_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/datasets', options)
          command.request_representation = Google::Apis::TranslateV3::Dataset::Representation
          command.request_object = dataset_object
          command.response_representation = Google::Apis::TranslateV3::Operation::Representation
          command.response_class = Google::Apis::TranslateV3::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a dataset and all of its contents.
        # @param [String] name
        #   Required. The name of the dataset to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dataset(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::TranslateV3::Operation::Representation
          command.response_class = Google::Apis::TranslateV3::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports dataset's data to the provided output location.
        # @param [String] dataset
        #   Required. Name of the dataset. In form of `projects/`project-number-or-id`/
        #   locations/`location-id`/datasets/`dataset-id``
        # @param [Google::Apis::TranslateV3::ExportDataRequest] export_data_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_dataset_data(dataset, export_data_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+dataset}:exportData', options)
          command.request_representation = Google::Apis::TranslateV3::ExportDataRequest::Representation
          command.request_object = export_data_request_object
          command.response_representation = Google::Apis::TranslateV3::Operation::Representation
          command.response_class = Google::Apis::TranslateV3::Operation
          command.params['dataset'] = dataset unless dataset.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Dataset.
        # @param [String] name
        #   Required. The resource name of the dataset to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dataset(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::TranslateV3::Dataset::Representation
          command.response_class = Google::Apis::TranslateV3::Dataset
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Import sentence pairs into translation Dataset.
        # @param [String] dataset
        #   Required. Name of the dataset. In form of `projects/`project-number-or-id`/
        #   locations/`location-id`/datasets/`dataset-id``
        # @param [Google::Apis::TranslateV3::ImportDataRequest] import_data_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_dataset_data(dataset, import_data_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+dataset}:importData', options)
          command.request_representation = Google::Apis::TranslateV3::ImportDataRequest::Representation
          command.request_object = import_data_request_object
          command.response_representation = Google::Apis::TranslateV3::Operation::Representation
          command.response_class = Google::Apis::TranslateV3::Operation
          command.params['dataset'] = dataset unless dataset.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists datasets.
        # @param [String] parent
        #   Required. Name of the parent project. In form of `projects/`project-number-or-
        #   id`/locations/`location-id``
        # @param [Fixnum] page_size
        #   Optional. Requested page size. The server can return fewer results than
        #   requested.
        # @param [String] page_token
        #   Optional. A token identifying a page of results for the server to return.
        #   Typically obtained from next_page_token field in the response of a
        #   ListDatasets call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::ListDatasetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::ListDatasetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_datasets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/datasets', options)
          command.response_representation = Google::Apis::TranslateV3::ListDatasetsResponse::Representation
          command.response_class = Google::Apis::TranslateV3::ListDatasetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists sentence pairs in the dataset.
        # @param [String] parent
        #   Required. Name of the parent dataset. In form of `projects/`project-number-or-
        #   id`/locations/`location-id`/datasets/`dataset-id``
        # @param [String] filter
        #   Optional. An expression for filtering the examples that will be returned.
        #   Example filter: * `usage=TRAIN`
        # @param [Fixnum] page_size
        #   Optional. Requested page size. The server can return fewer results than
        #   requested.
        # @param [String] page_token
        #   Optional. A token identifying a page of results for the server to return.
        #   Typically obtained from next_page_token field in the response of a
        #   ListExamples call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::ListExamplesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::ListExamplesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dataset_examples(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/examples', options)
          command.response_representation = Google::Apis::TranslateV3::ListExamplesResponse::Representation
          command.response_class = Google::Apis::TranslateV3::ListExamplesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a glossary and returns the long-running operation. Returns NOT_FOUND,
        # if the project doesn't exist.
        # @param [String] parent
        #   Required. The project name.
        # @param [Google::Apis::TranslateV3::Glossary] glossary_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_glossary(parent, glossary_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/glossaries', options)
          command.request_representation = Google::Apis::TranslateV3::Glossary::Representation
          command.request_object = glossary_object
          command.response_representation = Google::Apis::TranslateV3::Operation::Representation
          command.response_class = Google::Apis::TranslateV3::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a glossary, or cancels glossary construction if the glossary isn't
        # created yet. Returns NOT_FOUND, if the glossary doesn't exist.
        # @param [String] name
        #   Required. The name of the glossary to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_glossary(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::TranslateV3::Operation::Representation
          command.response_class = Google::Apis::TranslateV3::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a glossary. Returns NOT_FOUND, if the glossary doesn't exist.
        # @param [String] name
        #   Required. The name of the glossary to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::Glossary] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::Glossary]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_glossary(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::TranslateV3::Glossary::Representation
          command.response_class = Google::Apis::TranslateV3::Glossary
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists glossaries in a project. Returns NOT_FOUND, if the project doesn't exist.
        # @param [String] parent
        #   Required. The name of the project from which to list all of the glossaries.
        # @param [String] filter
        #   Optional. Filter specifying constraints of a list operation. Specify the
        #   constraint by the format of "key=value", where key must be "src" or "tgt", and
        #   the value must be a valid language code. For multiple restrictions,
        #   concatenate them by "AND" (uppercase only), such as: "src=en-US AND tgt=zh-CN".
        #   Notice that the exact match is used here, which means using 'en-US' and 'en'
        #   can lead to different results, which depends on the language code you used
        #   when you create the glossary. For the unidirectional glossaries, the "src" and
        #   "tgt" add restrictions on the source and target language code separately. For
        #   the equivalent term set glossaries, the "src" and/or "tgt" add restrictions on
        #   the term set. For example: "src=en-US AND tgt=zh-CN" will only pick the
        #   unidirectional glossaries which exactly match the source language code as "en-
        #   US" and the target language code "zh-CN", but all equivalent term set
        #   glossaries which contain "en-US" and "zh-CN" in their language set will be
        #   picked. If missing, no filtering is performed.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. The server may return fewer glossaries than
        #   requested. If unspecified, the server picks an appropriate default.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        #   Typically, this is the value of [ListGlossariesResponse.next_page_token]
        #   returned from the previous call to `ListGlossaries` method. The first page is
        #   returned if `page_token`is empty or missing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::ListGlossariesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::ListGlossariesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_glossaries(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/glossaries', options)
          command.response_representation = Google::Apis::TranslateV3::ListGlossariesResponse::Representation
          command.response_class = Google::Apis::TranslateV3::ListGlossariesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a glossary. A LRO is used since the update can be async if the
        # glossary's entry file is updated.
        # @param [String] name
        #   Required. The resource name of the glossary. Glossary names have the form `
        #   projects/`project-number-or-id`/locations/`location-id`/glossaries/`glossary-
        #   id``.
        # @param [Google::Apis::TranslateV3::Glossary] glossary_object
        # @param [String] update_mask
        #   The list of fields to be updated. Currently only `display_name` and '
        #   input_config'
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_glossary(name, glossary_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::TranslateV3::Glossary::Representation
          command.request_object = glossary_object
          command.response_representation = Google::Apis::TranslateV3::Operation::Representation
          command.response_class = Google::Apis::TranslateV3::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a glossary entry.
        # @param [String] parent
        #   Required. The resource name of the glossary to create the entry under.
        # @param [Google::Apis::TranslateV3::GlossaryEntry] glossary_entry_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::GlossaryEntry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::GlossaryEntry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_glossary_glossary_entry(parent, glossary_entry_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/glossaryEntries', options)
          command.request_representation = Google::Apis::TranslateV3::GlossaryEntry::Representation
          command.request_object = glossary_entry_object
          command.response_representation = Google::Apis::TranslateV3::GlossaryEntry::Representation
          command.response_class = Google::Apis::TranslateV3::GlossaryEntry
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a single entry from the glossary
        # @param [String] name
        #   Required. The resource name of the glossary entry to delete
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_glossary_glossary_entry(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::TranslateV3::Empty::Representation
          command.response_class = Google::Apis::TranslateV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single glossary entry by the given id.
        # @param [String] name
        #   Required. The resource name of the glossary entry to get
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::GlossaryEntry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::GlossaryEntry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_glossary_glossary_entry(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::TranslateV3::GlossaryEntry::Representation
          command.response_class = Google::Apis::TranslateV3::GlossaryEntry
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the entries for the glossary.
        # @param [String] parent
        #   Required. The parent glossary resource name for listing the glossary's entries.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. The server may return fewer glossary entries
        #   than requested. If unspecified, the server picks an appropriate default.
        # @param [String] page_token
        #   Optional. A token identifying a page of results the server should return.
        #   Typically, this is the value of [ListGlossaryEntriesResponse.next_page_token]
        #   returned from the previous call. The first page is returned if `page_token`is
        #   empty or missing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::ListGlossaryEntriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::ListGlossaryEntriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_glossary_glossary_entries(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/glossaryEntries', options)
          command.response_representation = Google::Apis::TranslateV3::ListGlossaryEntriesResponse::Representation
          command.response_class = Google::Apis::TranslateV3::ListGlossaryEntriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a glossary entry.
        # @param [String] name
        #   Identifier. The resource name of the entry. Format: `projects/*/locations/*/
        #   glossaries/*/glossaryEntries/*`
        # @param [Google::Apis::TranslateV3::GlossaryEntry] glossary_entry_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::GlossaryEntry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::GlossaryEntry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_glossary_glossary_entry(name, glossary_entry_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::TranslateV3::GlossaryEntry::Representation
          command.request_object = glossary_entry_object
          command.response_representation = Google::Apis::TranslateV3::GlossaryEntry::Representation
          command.response_class = Google::Apis::TranslateV3::GlossaryEntry
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Model.
        # @param [String] parent
        #   Required. The project name, in form of `projects/`project`/locations/`location`
        #   `
        # @param [Google::Apis::TranslateV3::Model] model_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_model(parent, model_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/models', options)
          command.request_representation = Google::Apis::TranslateV3::Model::Representation
          command.request_object = model_object
          command.response_representation = Google::Apis::TranslateV3::Operation::Representation
          command.response_class = Google::Apis::TranslateV3::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a model.
        # @param [String] name
        #   Required. The name of the model to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_model(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::TranslateV3::Operation::Representation
          command.response_class = Google::Apis::TranslateV3::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a model.
        # @param [String] name
        #   Required. The resource name of the model to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::Model] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::Model]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_model(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::TranslateV3::Model::Representation
          command.response_class = Google::Apis::TranslateV3::Model
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists models.
        # @param [String] parent
        #   Required. Name of the parent project. In form of `projects/`project-number-or-
        #   id`/locations/`location-id``
        # @param [String] filter
        #   Optional. An expression for filtering the models that will be returned.
        #   Supported filter: `dataset_id=$`dataset_id``
        # @param [Fixnum] page_size
        #   Optional. Requested page size. The server can return fewer results than
        #   requested.
        # @param [String] page_token
        #   Optional. A token identifying a page of results for the server to return.
        #   Typically obtained from next_page_token field in the response of a ListModels
        #   call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::ListModelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::ListModelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_models(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/models', options)
          command.response_representation = Google::Apis::TranslateV3::ListModelsResponse::Representation
          command.response_class = Google::Apis::TranslateV3::ListModelsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of `1`
        # , corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::TranslateV3::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:cancel', options)
          command.request_representation = Google::Apis::TranslateV3::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::TranslateV3::Empty::Representation
          command.response_class = Google::Apis::TranslateV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a long-running operation. This method indicates that the client is no
        # longer interested in the operation result. It does not cancel the operation.
        # If the server doesn't support this method, it returns `google.rpc.Code.
        # UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation resource to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::TranslateV3::Empty::Representation
          command.response_class = Google::Apis::TranslateV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::TranslateV3::Operation::Representation
          command.response_class = Google::Apis::TranslateV3::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}/operations', options)
          command.response_representation = Google::Apis::TranslateV3::ListOperationsResponse::Representation
          command.response_class = Google::Apis::TranslateV3::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Waits until the specified long-running operation is done or reaches at most a
        # specified timeout, returning the latest state. If the operation is already
        # done, the latest state is immediately returned. If the timeout specified is
        # greater than the default HTTP/RPC timeout, the HTTP/RPC timeout is used. If
        # the server does not support this method, it returns `google.rpc.Code.
        # UNIMPLEMENTED`. Note that this method is on a best-effort basis. It may return
        # the latest state before the specified timeout (including immediately), meaning
        # even an immediate response is no guarantee that the operation is done.
        # @param [String] name
        #   The name of the operation resource to wait on.
        # @param [Google::Apis::TranslateV3::WaitOperationRequest] wait_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TranslateV3::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TranslateV3::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def wait_operation(name, wait_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:wait', options)
          command.request_representation = Google::Apis::TranslateV3::WaitOperationRequest::Representation
          command.request_object = wait_operation_request_object
          command.response_representation = Google::Apis::TranslateV3::Operation::Representation
          command.response_class = Google::Apis::TranslateV3::Operation
          command.params['name'] = name unless name.nil?
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
