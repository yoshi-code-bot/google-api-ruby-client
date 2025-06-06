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
    module ContentV2_1
      # Content API for Shopping
      #
      # Manage your product listings and accounts for Google Shopping
      #
      # @example
      #    require 'google/apis/content_v2_1'
      #
      #    Content = Google::Apis::ContentV2_1 # Alias the module
      #    service = Content::ShoppingContentService.new
      #
      # @see https://developers.google.com/shopping-content/v2/
      class ShoppingContentService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://shoppingcontent.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, 'content/v2.1/',
                client_name: 'google-apis-content_v2_1',
                client_version: Google::Apis::ContentV2_1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Returns information about the authenticated user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountsAuthInfoResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountsAuthInfoResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def authinfo_account(fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/authinfo', options)
          command.response_representation = Google::Apis::ContentV2_1::AccountsAuthInfoResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountsAuthInfoResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Claims the website of a Merchant Center sub-account. Merchant accounts with
        # approved third-party CSSs aren't required to claim a website.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account whose website is claimed.
        # @param [Boolean] overwrite
        #   Only available to selected merchants, for example multi-client accounts (MCAs)
        #   and their sub-accounts. When set to `True`, this option removes any existing
        #   claim on the requested website and replaces it with a claim from the account
        #   that makes the request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountsClaimWebsiteResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountsClaimWebsiteResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def claimwebsite_account(merchant_id, account_id, overwrite: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/accounts/{accountId}/claimwebsite', options)
          command.response_representation = Google::Apis::ContentV2_1::AccountsClaimWebsiteResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountsClaimWebsiteResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['overwrite'] = overwrite unless overwrite.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves, inserts, updates, and deletes multiple Merchant Center (sub-)
        # accounts in a single request.
        # @param [Google::Apis::ContentV2_1::AccountsCustomBatchRequest] accounts_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountsCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountsCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_account(accounts_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::AccountsCustomBatchRequest::Representation
          command.request_object = accounts_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::AccountsCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountsCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Merchant Center sub-account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. This must be a multi-client account, and
        #   accountId must be the ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account.
        # @param [Boolean] force
        #   Option to delete sub-accounts with products. The default value is false.
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
        def delete_account(merchant_id, account_id, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, '{merchantId}/accounts/{accountId}', options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account.
        # @param [String] view
        #   Controls which fields will be populated. Acceptable values are: "merchant" and
        #   "css". The default value is "merchant".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account(merchant_id, account_id, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/accounts/{accountId}', options)
          command.response_representation = Google::Apis::ContentV2_1::Account::Representation
          command.response_class = Google::Apis::ContentV2_1::Account
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Merchant Center sub-account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. This must be a multi-client account.
        # @param [Google::Apis::ContentV2_1::Account] account_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_account(merchant_id, account_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/accounts', options)
          command.request_representation = Google::Apis::ContentV2_1::Account::Representation
          command.request_object = account_object
          command.response_representation = Google::Apis::ContentV2_1::Account::Representation
          command.response_class = Google::Apis::ContentV2_1::Account
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs an action on a link between two Merchant Center accounts, namely
        # accountId and linkedAccountId.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account that should be linked.
        # @param [Google::Apis::ContentV2_1::AccountsLinkRequest] accounts_link_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountsLinkResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountsLinkResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def link_account(merchant_id, account_id, accounts_link_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/accounts/{accountId}/link', options)
          command.request_representation = Google::Apis::ContentV2_1::AccountsLinkRequest::Representation
          command.request_object = accounts_link_request_object
          command.response_representation = Google::Apis::ContentV2_1::AccountsLinkResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountsLinkResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the sub-accounts in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. This must be a multi-client account.
        # @param [Fixnum] label
        #   If view is set to "css", only return accounts that are assigned label with
        #   given ID.
        # @param [Fixnum] max_results
        #   The maximum number of accounts to return in the response, used for paging.
        # @param [String] name
        #   If set, only the accounts with the given name (case sensitive) will be
        #   returned.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] view
        #   Controls which fields will be populated. Acceptable values are: "merchant" and
        #   "css". The default value is "merchant".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accounts(merchant_id, label: nil, max_results: nil, name: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/accounts', options)
          command.response_representation = Google::Apis::ContentV2_1::AccountsListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountsListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['label'] = label unless label.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['name'] = name unless name.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of accounts linked to your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account for which to list links.
        # @param [Fixnum] max_results
        #   The maximum number of links to return in the response, used for pagination.
        #   The minimum allowed value is 5 results per page. If provided value is lower
        #   than 5, it will be automatically increased to 5.
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
        # @yieldparam result [Google::Apis::ContentV2_1::AccountsListLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountsListLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def listlinks_account(merchant_id, account_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/accounts/{accountId}/listlinks', options)
          command.response_representation = Google::Apis::ContentV2_1::AccountsListLinksResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountsListLinksResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Request verification code to start phone verification.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the managing account. If this parameter is not the same as
        #   accountId, then this account must be a multi-client account and accountId must
        #   be the ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   Required. The ID of the account.
        # @param [Google::Apis::ContentV2_1::RequestPhoneVerificationRequest] request_phone_verification_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::RequestPhoneVerificationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::RequestPhoneVerificationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def requestphoneverification_account(merchant_id, account_id, request_phone_verification_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/accounts/{accountId}/requestphoneverification', options)
          command.request_representation = Google::Apis::ContentV2_1::RequestPhoneVerificationRequest::Representation
          command.request_object = request_phone_verification_request_object
          command.response_representation = Google::Apis::ContentV2_1::RequestPhoneVerificationResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::RequestPhoneVerificationResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Merchant Center account. Any fields that are not provided are
        # deleted from the resource.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account.
        # @param [Google::Apis::ContentV2_1::Account] account_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account(merchant_id, account_id, account_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, '{merchantId}/accounts/{accountId}', options)
          command.request_representation = Google::Apis::ContentV2_1::Account::Representation
          command.request_object = account_object
          command.response_representation = Google::Apis::ContentV2_1::Account::Representation
          command.response_class = Google::Apis::ContentV2_1::Account
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates labels that are assigned to the Merchant Center account by CSS user.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account.
        # @param [Fixnum] account_id
        #   The ID of the account whose labels are updated.
        # @param [Google::Apis::ContentV2_1::AccountsUpdateLabelsRequest] accounts_update_labels_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountsUpdateLabelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountsUpdateLabelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def updatelabels_account(merchant_id, account_id, accounts_update_labels_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/accounts/{accountId}/updatelabels', options)
          command.request_representation = Google::Apis::ContentV2_1::AccountsUpdateLabelsRequest::Representation
          command.request_object = accounts_update_labels_request_object
          command.response_representation = Google::Apis::ContentV2_1::AccountsUpdateLabelsResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountsUpdateLabelsResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Validates verification code to verify phone number for the account. If
        # successful this will overwrite the value of `accounts.businessinformation.
        # phoneNumber`. Only verified phone number will replace an existing verified
        # phone number.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the managing account. If this parameter is not the same as
        #   accountId, then this account must be a multi-client account and accountId must
        #   be the ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   Required. The ID of the account.
        # @param [Google::Apis::ContentV2_1::VerifyPhoneNumberRequest] verify_phone_number_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::VerifyPhoneNumberResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::VerifyPhoneNumberResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def verifyphonenumber_account(merchant_id, account_id, verify_phone_number_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/accounts/{accountId}/verifyphonenumber', options)
          command.request_representation = Google::Apis::ContentV2_1::VerifyPhoneNumberRequest::Representation
          command.request_object = verify_phone_number_request_object
          command.response_representation = Google::Apis::ContentV2_1::VerifyPhoneNumberResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::VerifyPhoneNumberResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads credentials for the Merchant Center account. If credentials already
        # exist for this Merchant Center account and purpose, this method updates them.
        # @param [Fixnum] account_id
        #   Required. The merchant id of the account these credentials belong to.
        # @param [Google::Apis::ContentV2_1::AccountCredentials] account_credentials_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountCredentials] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountCredentials]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_credential(account_id, account_credentials_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/{accountId}/credentials', options)
          command.request_representation = Google::Apis::ContentV2_1::AccountCredentials::Representation
          command.request_object = account_credentials_object
          command.response_representation = Google::Apis::ContentV2_1::AccountCredentials::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountCredentials
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new label, not assigned to any account.
        # @param [Fixnum] account_id
        #   Required. The id of the account this label belongs to.
        # @param [Google::Apis::ContentV2_1::AccountLabel] account_label_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountLabel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountLabel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_label(account_id, account_label_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/{accountId}/labels', options)
          command.request_representation = Google::Apis::ContentV2_1::AccountLabel::Representation
          command.request_object = account_label_object
          command.response_representation = Google::Apis::ContentV2_1::AccountLabel::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountLabel
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a label and removes it from all accounts to which it was assigned.
        # @param [Fixnum] account_id
        #   Required. The id of the account that owns the label.
        # @param [Fixnum] label_id
        #   Required. The id of the label to delete.
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
        def delete_account_label(account_id, label_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'accounts/{accountId}/labels/{labelId}', options)
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['labelId'] = label_id unless label_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the labels assigned to an account.
        # @param [Fixnum] account_id
        #   Required. The account id for whose labels are to be listed.
        # @param [Fixnum] page_size
        #   The maximum number of labels to return. The service may return fewer than this
        #   value. If unspecified, at most 50 labels will be returned. The maximum value
        #   is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListAccountLabels` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListAccountLabels` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ListAccountLabelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ListAccountLabelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_labels(account_id, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/{accountId}/labels', options)
          command.response_representation = Google::Apis::ContentV2_1::ListAccountLabelsResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ListAccountLabelsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a label.
        # @param [Fixnum] account_id
        #   Required. The id of the account this label belongs to.
        # @param [Fixnum] label_id
        #   Required. The id of the label to update.
        # @param [Google::Apis::ContentV2_1::AccountLabel] account_label_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountLabel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountLabel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_label(account_id, label_id, account_label_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'accounts/{accountId}/labels/{labelId}', options)
          command.request_representation = Google::Apis::ContentV2_1::AccountLabel::Representation
          command.request_object = account_label_object
          command.response_representation = Google::Apis::ContentV2_1::AccountLabel::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountLabel
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['labelId'] = label_id unless label_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Links return carrier to a merchant account.
        # @param [Fixnum] account_id
        #   Required. The Merchant Center Account Id under which the Return Carrier is to
        #   be linked.
        # @param [Google::Apis::ContentV2_1::AccountReturnCarrier] account_return_carrier_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountReturnCarrier] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountReturnCarrier]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_returncarrier(account_id, account_return_carrier_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounts/{accountId}/returncarrier', options)
          command.request_representation = Google::Apis::ContentV2_1::AccountReturnCarrier::Representation
          command.request_object = account_return_carrier_object
          command.response_representation = Google::Apis::ContentV2_1::AccountReturnCarrier::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountReturnCarrier
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a return carrier in the merchant account.
        # @param [Fixnum] account_id
        #   Required. The Merchant Center Account Id under which the Return Carrier is to
        #   be linked.
        # @param [Fixnum] carrier_account_id
        #   Required. The Google-provided unique carrier ID, used to update the resource.
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
        def delete_account_returncarrier(account_id, carrier_account_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'accounts/{accountId}/returncarrier/{carrierAccountId}', options)
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['carrierAccountId'] = carrier_account_id unless carrier_account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists available return carriers in the merchant account.
        # @param [Fixnum] account_id
        #   Required. The Merchant Center Account Id under which the Return Carrier is to
        #   be linked.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ListAccountReturnCarrierResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ListAccountReturnCarrierResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_returncarriers(account_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'accounts/{accountId}/returncarrier', options)
          command.response_representation = Google::Apis::ContentV2_1::ListAccountReturnCarrierResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ListAccountReturnCarrierResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a return carrier in the merchant account.
        # @param [Fixnum] account_id
        #   Required. The Merchant Center Account Id under which the Return Carrier is to
        #   be linked.
        # @param [Fixnum] carrier_account_id
        #   Required. The Google-provided unique carrier ID, used to update the resource.
        # @param [Google::Apis::ContentV2_1::AccountReturnCarrier] account_return_carrier_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountReturnCarrier] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountReturnCarrier]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_returncarrier(account_id, carrier_account_id, account_return_carrier_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'accounts/{accountId}/returncarrier/{carrierAccountId}', options)
          command.request_representation = Google::Apis::ContentV2_1::AccountReturnCarrier::Representation
          command.request_object = account_return_carrier_object
          command.response_representation = Google::Apis::ContentV2_1::AccountReturnCarrier::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountReturnCarrier
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['carrierAccountId'] = carrier_account_id unless carrier_account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves multiple Merchant Center account statuses in a single request.
        # @param [Google::Apis::ContentV2_1::AccountstatusesCustomBatchRequest] accountstatuses_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountstatusesCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountstatusesCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_accountstatus(accountstatuses_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accountstatuses/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::AccountstatusesCustomBatchRequest::Representation
          command.request_object = accountstatuses_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::AccountstatusesCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountstatusesCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the status of a Merchant Center account. No itemLevelIssues are
        # returned for multi-client accounts.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account.
        # @param [Array<String>, String] destinations
        #   If set, only issues for the specified destinations are returned, otherwise
        #   only issues for the Shopping destination.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountStatus] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountStatus]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_accountstatus(merchant_id, account_id, destinations: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/accountstatuses/{accountId}', options)
          command.response_representation = Google::Apis::ContentV2_1::AccountStatus::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountStatus
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['destinations'] = destinations unless destinations.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the statuses of the sub-accounts in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. This must be a multi-client account.
        # @param [Array<String>, String] destinations
        #   If set, only issues for the specified destinations are returned, otherwise
        #   only issues for the Shopping destination.
        # @param [Fixnum] max_results
        #   The maximum number of account statuses to return in the response, used for
        #   paging.
        # @param [String] name
        #   If set, only the accounts with the given name (case sensitive) will be
        #   returned.
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
        # @yieldparam result [Google::Apis::ContentV2_1::AccountstatusesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountstatusesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accountstatuses(merchant_id, destinations: nil, max_results: nil, name: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/accountstatuses', options)
          command.response_representation = Google::Apis::ContentV2_1::AccountstatusesListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountstatusesListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['destinations'] = destinations unless destinations.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['name'] = name unless name.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves and updates tax settings of multiple accounts in a single request.
        # @param [Google::Apis::ContentV2_1::AccounttaxCustomBatchRequest] accounttax_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccounttaxCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccounttaxCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_accounttax(accounttax_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'accounttax/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::AccounttaxCustomBatchRequest::Representation
          command.request_object = accounttax_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::AccounttaxCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::AccounttaxCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the tax settings of the account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account for which to get/update account tax settings.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountTax] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountTax]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_accounttax(merchant_id, account_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/accounttax/{accountId}', options)
          command.response_representation = Google::Apis::ContentV2_1::AccountTax::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountTax
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the tax settings of the sub-accounts in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. This must be a multi-client account.
        # @param [Fixnum] max_results
        #   The maximum number of tax settings to return in the response, used for paging.
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
        # @yieldparam result [Google::Apis::ContentV2_1::AccounttaxListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccounttaxListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accounttaxes(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/accounttax', options)
          command.response_representation = Google::Apis::ContentV2_1::AccounttaxListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::AccounttaxListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the tax settings of the account. Any fields that are not provided are
        # deleted from the resource.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account for which to get/update account tax settings.
        # @param [Google::Apis::ContentV2_1::AccountTax] account_tax_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::AccountTax] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::AccountTax]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_accounttax(merchant_id, account_id, account_tax_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, '{merchantId}/accounttax/{accountId}', options)
          command.request_representation = Google::Apis::ContentV2_1::AccountTax::Representation
          command.request_object = account_tax_object
          command.response_representation = Google::Apis::ContentV2_1::AccountTax::Representation
          command.response_class = Google::Apis::ContentV2_1::AccountTax
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads a collection to your Merchant Center account. If a collection with the
        # same collectionId already exists, this method updates that entry. In each
        # update, the collection is completely replaced by the fields in the body of the
        # update request.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account that contains the collection. This account
        #   cannot be a multi-client account.
        # @param [Google::Apis::ContentV2_1::Collection] collection_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Collection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Collection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_collection(merchant_id, collection_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/collections', options)
          command.request_representation = Google::Apis::ContentV2_1::Collection::Representation
          command.request_object = collection_object
          command.response_representation = Google::Apis::ContentV2_1::Collection::Representation
          command.response_class = Google::Apis::ContentV2_1::Collection
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a collection from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account that contains the collection. This account
        #   cannot be a multi-client account.
        # @param [String] collection_id
        #   Required. The collectionId of the collection. CollectionId is the same as the
        #   REST ID of the collection.
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
        def delete_collection(merchant_id, collection_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, '{merchantId}/collections/{collectionId}', options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a collection from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account that contains the collection. This account
        #   cannot be a multi-client account.
        # @param [String] collection_id
        #   Required. The REST ID of the collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Collection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Collection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_collection(merchant_id, collection_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/collections/{collectionId}', options)
          command.response_representation = Google::Apis::ContentV2_1::Collection::Representation
          command.response_class = Google::Apis::ContentV2_1::Collection
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the collections in your Merchant Center account. The response might
        # contain fewer items than specified by page_size. Rely on next_page_token to
        # determine if there are more items to be requested.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account that contains the collection. This account
        #   cannot be a multi-client account.
        # @param [Fixnum] page_size
        #   The maximum number of collections to return in the response, used for paging.
        #   Defaults to 50; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Token (if provided) to retrieve the subsequent page. All other parameters must
        #   match the original call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ListCollectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ListCollectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_collections(merchant_id, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/collections', options)
          command.response_representation = Google::Apis::ContentV2_1::ListCollectionsResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ListCollectionsResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the status of a collection from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account that contains the collection. This account
        #   cannot be a multi-client account.
        # @param [String] collection_id
        #   Required. The collectionId of the collection. CollectionId is the same as the
        #   REST ID of the collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::CollectionStatus] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::CollectionStatus]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_collectionstatus(merchant_id, collection_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/collectionstatuses/{collectionId}', options)
          command.response_representation = Google::Apis::ContentV2_1::CollectionStatus::Representation
          command.response_class = Google::Apis::ContentV2_1::CollectionStatus
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['collectionId'] = collection_id unless collection_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the statuses of the collections in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account that contains the collection. This account
        #   cannot be a multi-client account.
        # @param [Fixnum] page_size
        #   The maximum number of collection statuses to return in the response, used for
        #   paging. Defaults to 50; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Token (if provided) to retrieve the subsequent page. All other parameters must
        #   match the original call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ListCollectionStatusesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ListCollectionStatusesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_collectionstatuses(merchant_id, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/collectionstatuses', options)
          command.response_representation = Google::Apis::ContentV2_1::ListCollectionStatusesResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ListCollectionStatusesResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new conversion source.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account that owns the new conversion source.
        # @param [Google::Apis::ContentV2_1::ConversionSource] conversion_source_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ConversionSource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ConversionSource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_conversionsource(merchant_id, conversion_source_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/conversionsources', options)
          command.request_representation = Google::Apis::ContentV2_1::ConversionSource::Representation
          command.request_object = conversion_source_object
          command.response_representation = Google::Apis::ContentV2_1::ConversionSource::Representation
          command.response_class = Google::Apis::ContentV2_1::ConversionSource
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Archives an existing conversion source. It will be recoverable for 30 days.
        # This archiving behavior is not typical in the Content API and unique to this
        # service.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account that owns the new conversion source.
        # @param [String] conversion_source_id
        #   Required. The ID of the conversion source to be deleted.
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
        def delete_conversionsource(merchant_id, conversion_source_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, '{merchantId}/conversionsources/{conversionSourceId}', options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['conversionSourceId'] = conversion_source_id unless conversion_source_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches a conversion source.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account that owns the new conversion source.
        # @param [String] conversion_source_id
        #   Required. The REST ID of the collection.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ConversionSource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ConversionSource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_conversionsource(merchant_id, conversion_source_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/conversionsources/{conversionSourceId}', options)
          command.response_representation = Google::Apis::ContentV2_1::ConversionSource::Representation
          command.response_class = Google::Apis::ContentV2_1::ConversionSource
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['conversionSourceId'] = conversion_source_id unless conversion_source_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of conversion sources the caller has access to.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account that owns the new conversion source.
        # @param [Fixnum] page_size
        #   The maximum number of conversion sources to return in a page. If no `page_size`
        #   is specified, `100` is used as the default value. The maximum value is `200`.
        #   Values above `200` will be coerced to `200`. Regardless of pagination, at most
        #   `200` conversion sources are returned in total.
        # @param [String] page_token
        #   Page token.
        # @param [Boolean] show_deleted
        #   If true, also returns archived conversion sources.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ListConversionSourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ListConversionSourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_conversionsources(merchant_id, page_size: nil, page_token: nil, show_deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/conversionsources', options)
          command.response_representation = Google::Apis::ContentV2_1::ListConversionSourcesResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ListConversionSourcesResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['showDeleted'] = show_deleted unless show_deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates information of an existing conversion source.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account that owns the new conversion source.
        # @param [String] conversion_source_id
        #   Required. The ID of the conversion source to be updated.
        # @param [Google::Apis::ContentV2_1::ConversionSource] conversion_source_object
        # @param [String] update_mask
        #   Optional. List of fields being updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ConversionSource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ConversionSource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_conversionsource(merchant_id, conversion_source_id, conversion_source_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, '{merchantId}/conversionsources/{conversionSourceId}', options)
          command.request_representation = Google::Apis::ContentV2_1::ConversionSource::Representation
          command.request_object = conversion_source_object
          command.response_representation = Google::Apis::ContentV2_1::ConversionSource::Representation
          command.response_class = Google::Apis::ContentV2_1::ConversionSource
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['conversionSourceId'] = conversion_source_id unless conversion_source_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Re-enables an archived conversion source.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account that owns the new conversion source.
        # @param [String] conversion_source_id
        #   Required. The ID of the conversion source to be undeleted.
        # @param [Google::Apis::ContentV2_1::UndeleteConversionSourceRequest] undelete_conversion_source_request_object
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
        def undelete_conversionsource_conversion_source(merchant_id, conversion_source_id, undelete_conversion_source_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/conversionsources/{conversionSourceId}:undelete', options)
          command.request_representation = Google::Apis::ContentV2_1::UndeleteConversionSourceRequest::Representation
          command.request_object = undelete_conversion_source_request_object
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['conversionSourceId'] = conversion_source_id unless conversion_source_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a single CSS domain by ID.
        # @param [Fixnum] css_group_id
        #   Required. The ID of the managing account. If this parameter is not the same as
        #   [cssDomainId](#cssDomainId), then this ID must be a CSS group ID and `
        #   cssDomainId` must be the ID of a CSS domain affiliated with this group.
        # @param [Fixnum] css_domain_id
        #   Required. The ID of the CSS domain to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Css] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Css]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_css(css_group_id, css_domain_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{cssGroupId}/csses/{cssDomainId}', options)
          command.response_representation = Google::Apis::ContentV2_1::Css::Representation
          command.response_class = Google::Apis::ContentV2_1::Css
          command.params['cssGroupId'] = css_group_id unless css_group_id.nil?
          command.params['cssDomainId'] = css_domain_id unless css_domain_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists CSS domains affiliated with a CSS group.
        # @param [Fixnum] css_group_id
        #   Required. The CSS group ID of CSS domains to be listed.
        # @param [Fixnum] page_size
        #   The maximum number of CSS domains to return. The service may return fewer than
        #   this value. If unspecified, at most 50 CSS domains will be returned. The
        #   maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListCsses` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListCsses` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ListCssesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ListCssesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_csses(css_group_id, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{cssGroupId}/csses', options)
          command.response_representation = Google::Apis::ContentV2_1::ListCssesResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ListCssesResponse
          command.params['cssGroupId'] = css_group_id unless css_group_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates labels that are assigned to a CSS domain by its CSS group.
        # @param [Fixnum] css_group_id
        #   Required. The CSS group ID of the updated CSS domain.
        # @param [Fixnum] css_domain_id
        #   Required. The ID of the updated CSS domain.
        # @param [Google::Apis::ContentV2_1::LabelIds] label_ids_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Css] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Css]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def updatelabels_css(css_group_id, css_domain_id, label_ids_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{cssGroupId}/csses/{cssDomainId}/updatelabels', options)
          command.request_representation = Google::Apis::ContentV2_1::LabelIds::Representation
          command.request_object = label_ids_object
          command.response_representation = Google::Apis::ContentV2_1::Css::Representation
          command.response_class = Google::Apis::ContentV2_1::Css
          command.params['cssGroupId'] = css_group_id unless css_group_id.nil?
          command.params['cssDomainId'] = css_domain_id unless css_domain_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes, fetches, gets, inserts and updates multiple datafeeds in a single
        # request.
        # @param [Google::Apis::ContentV2_1::DatafeedsCustomBatchRequest] datafeeds_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::DatafeedsCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::DatafeedsCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_datafeed(datafeeds_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'datafeeds/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::DatafeedsCustomBatchRequest::Representation
          command.request_object = datafeeds_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::DatafeedsCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::DatafeedsCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a datafeed configuration from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the datafeed. This account cannot be a
        #   multi-client account.
        # @param [Fixnum] datafeed_id
        #   The ID of the datafeed.
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
        def delete_datafeed(merchant_id, datafeed_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, '{merchantId}/datafeeds/{datafeedId}', options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['datafeedId'] = datafeed_id unless datafeed_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Invokes a fetch for the datafeed in your Merchant Center account. If you need
        # to call this method more than once per day, we recommend you use the [Products
        # service](https://developers.google.com/shopping-content/reference/rest/v2.1/
        # products) to update your product data.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the datafeed. This account cannot be a
        #   multi-client account.
        # @param [Fixnum] datafeed_id
        #   The ID of the datafeed to be fetched.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::DatafeedsFetchNowResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::DatafeedsFetchNowResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetchnow_datafeed(merchant_id, datafeed_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/datafeeds/{datafeedId}/fetchNow', options)
          command.response_representation = Google::Apis::ContentV2_1::DatafeedsFetchNowResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::DatafeedsFetchNowResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['datafeedId'] = datafeed_id unless datafeed_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a datafeed configuration from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the datafeed. This account cannot be a
        #   multi-client account.
        # @param [Fixnum] datafeed_id
        #   The ID of the datafeed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Datafeed] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Datafeed]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_datafeed(merchant_id, datafeed_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/datafeeds/{datafeedId}', options)
          command.response_representation = Google::Apis::ContentV2_1::Datafeed::Representation
          command.response_class = Google::Apis::ContentV2_1::Datafeed
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['datafeedId'] = datafeed_id unless datafeed_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Registers a datafeed configuration with your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the datafeed. This account cannot be a
        #   multi-client account.
        # @param [Google::Apis::ContentV2_1::Datafeed] datafeed_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Datafeed] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Datafeed]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_datafeed(merchant_id, datafeed_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/datafeeds', options)
          command.request_representation = Google::Apis::ContentV2_1::Datafeed::Representation
          command.request_object = datafeed_object
          command.response_representation = Google::Apis::ContentV2_1::Datafeed::Representation
          command.response_class = Google::Apis::ContentV2_1::Datafeed
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the configurations for datafeeds in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the datafeeds. This account cannot be a
        #   multi-client account.
        # @param [Fixnum] max_results
        #   The maximum number of products to return in the response, used for paging.
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
        # @yieldparam result [Google::Apis::ContentV2_1::DatafeedsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::DatafeedsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_datafeeds(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/datafeeds', options)
          command.response_representation = Google::Apis::ContentV2_1::DatafeedsListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::DatafeedsListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a datafeed configuration of your Merchant Center account. Any fields
        # that are not provided are deleted from the resource.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the datafeed. This account cannot be a
        #   multi-client account.
        # @param [Fixnum] datafeed_id
        #   The ID of the datafeed.
        # @param [Google::Apis::ContentV2_1::Datafeed] datafeed_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Datafeed] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Datafeed]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_datafeed(merchant_id, datafeed_id, datafeed_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, '{merchantId}/datafeeds/{datafeedId}', options)
          command.request_representation = Google::Apis::ContentV2_1::Datafeed::Representation
          command.request_object = datafeed_object
          command.response_representation = Google::Apis::ContentV2_1::Datafeed::Representation
          command.response_class = Google::Apis::ContentV2_1::Datafeed
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['datafeedId'] = datafeed_id unless datafeed_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets multiple Merchant Center datafeed statuses in a single request.
        # @param [Google::Apis::ContentV2_1::DatafeedstatusesCustomBatchRequest] datafeedstatuses_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::DatafeedstatusesCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::DatafeedstatusesCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_datafeedstatus(datafeedstatuses_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'datafeedstatuses/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::DatafeedstatusesCustomBatchRequest::Representation
          command.request_object = datafeedstatuses_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::DatafeedstatusesCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::DatafeedstatusesCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the status of a datafeed from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the datafeed. This account cannot be a
        #   multi-client account.
        # @param [Fixnum] datafeed_id
        #   The ID of the datafeed.
        # @param [String] country
        #   Deprecated. Use `feedLabel` instead. The country to get the datafeed status
        #   for. If this parameter is provided then `language` must also be provided. Note
        #   that this parameter is required for feeds targeting multiple countries and
        #   languages, since a feed may have a different status for each target.
        # @param [String] feed_label
        #   The feed label to get the datafeed status for. If this parameter is provided
        #   then `language` must also be provided. Note that this parameter is required
        #   for feeds targeting multiple countries and languages, since a feed may have a
        #   different status for each target.
        # @param [String] language
        #   The language to get the datafeed status for. If this parameter is provided
        #   then `country` must also be provided. Note that this parameter is required for
        #   feeds targeting multiple countries and languages, since a feed may have a
        #   different status for each target.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::DatafeedStatus] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::DatafeedStatus]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_datafeedstatus(merchant_id, datafeed_id, country: nil, feed_label: nil, language: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/datafeedstatuses/{datafeedId}', options)
          command.response_representation = Google::Apis::ContentV2_1::DatafeedStatus::Representation
          command.response_class = Google::Apis::ContentV2_1::DatafeedStatus
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['datafeedId'] = datafeed_id unless datafeed_id.nil?
          command.query['country'] = country unless country.nil?
          command.query['feedLabel'] = feed_label unless feed_label.nil?
          command.query['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the statuses of the datafeeds in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the datafeeds. This account cannot be a
        #   multi-client account.
        # @param [Fixnum] max_results
        #   The maximum number of products to return in the response, used for paging.
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
        # @yieldparam result [Google::Apis::ContentV2_1::DatafeedstatusesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::DatafeedstatusesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_datafeedstatuses(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/datafeedstatuses', options)
          command.response_representation = Google::Apis::ContentV2_1::DatafeedstatusesListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::DatafeedstatusesListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the status and review eligibility for the free listing program.
        # Returns errors and warnings if they require action to resolve, will become
        # disapprovals, or impact impressions. Use `accountstatuses` to view all issues
        # for an account.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::FreeListingsProgramStatus] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::FreeListingsProgramStatus]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_freelistingsprogram(merchant_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/freelistingsprogram', options)
          command.response_representation = Google::Apis::ContentV2_1::FreeListingsProgramStatus::Representation
          command.response_class = Google::Apis::ContentV2_1::FreeListingsProgramStatus
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Requests a review of free listings in a specific region. This method
        # deprecated. Use the `MerchantSupportService` to view product and account
        # issues and request a review.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account.
        # @param [Google::Apis::ContentV2_1::RequestReviewFreeListingsRequest] request_review_free_listings_request_object
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
        def requestreview_freelistingsprogram(merchant_id, request_review_free_listings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/freelistingsprogram/requestreview', options)
          command.request_representation = Google::Apis::ContentV2_1::RequestReviewFreeListingsRequest::Representation
          command.request_object = request_review_free_listings_request_object
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes `Checkout` settings and unenrolls merchant from `Checkout` program.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account.
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
        def delete_freelistingsprogram_checkoutsetting(merchant_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, '{merchantId}/freelistingsprogram/checkoutsettings', options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets Checkout settings for the given merchant. This includes information about
        # review state, enrollment state and URL settings.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::CheckoutSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::CheckoutSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_freelistingsprogram_checkoutsetting(merchant_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/freelistingsprogram/checkoutsettings', options)
          command.response_representation = Google::Apis::ContentV2_1::CheckoutSettings::Representation
          command.response_class = Google::Apis::ContentV2_1::CheckoutSettings
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enrolls merchant in `Checkout` program.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account.
        # @param [Google::Apis::ContentV2_1::InsertCheckoutSettingsRequest] insert_checkout_settings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::CheckoutSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::CheckoutSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_checkoutsetting_checkout_settings(merchant_id, insert_checkout_settings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/freelistingsprogram/checkoutsettings', options)
          command.request_representation = Google::Apis::ContentV2_1::InsertCheckoutSettingsRequest::Representation
          command.request_object = insert_checkout_settings_request_object
          command.response_representation = Google::Apis::ContentV2_1::CheckoutSettings::Representation
          command.response_class = Google::Apis::ContentV2_1::CheckoutSettings
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves and/or updates the LIA settings of multiple accounts in a single
        # request.
        # @param [Google::Apis::ContentV2_1::LiasettingsCustomBatchRequest] liasettings_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::LiasettingsCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LiasettingsCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_liasetting(liasettings_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'liasettings/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::LiasettingsCustomBatchRequest::Representation
          command.request_object = liasettings_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::LiasettingsCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::LiasettingsCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the LIA settings of the account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account for which to get or update LIA settings.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::LiaSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LiaSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_liasetting(merchant_id, account_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/liasettings/{accountId}', options)
          command.response_representation = Google::Apis::ContentV2_1::LiaSettings::Representation
          command.response_class = Google::Apis::ContentV2_1::LiaSettings
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of accessible Business Profiles.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account for which to retrieve accessible Business Profiles.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::LiasettingsGetAccessibleGmbAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LiasettingsGetAccessibleGmbAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def getaccessiblegmbaccounts_liasetting(merchant_id, account_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/liasettings/{accountId}/accessiblegmbaccounts', options)
          command.response_representation = Google::Apis::ContentV2_1::LiasettingsGetAccessibleGmbAccountsResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::LiasettingsGetAccessibleGmbAccountsResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the LIA settings of the sub-accounts in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. This must be a multi-client account.
        # @param [Fixnum] max_results
        #   The maximum number of LIA settings to return in the response, used for paging.
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
        # @yieldparam result [Google::Apis::ContentV2_1::LiasettingsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LiasettingsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_liasettings(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/liasettings', options)
          command.response_representation = Google::Apis::ContentV2_1::LiasettingsListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::LiasettingsListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of POS data providers that have active settings for the all
        # eiligible countries.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::LiasettingsListPosDataProvidersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LiasettingsListPosDataProvidersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def listposdataproviders_liasetting(fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'liasettings/posdataproviders', options)
          command.response_representation = Google::Apis::ContentV2_1::LiasettingsListPosDataProvidersResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::LiasettingsListPosDataProvidersResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Requests access to a specified Business Profile.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account for which Business Profile access is requested.
        # @param [String] gmb_email
        #   The email of the Business Profile.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::LiasettingsRequestGmbAccessResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LiasettingsRequestGmbAccessResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def requestgmbaccess_liasetting(merchant_id, account_id, gmb_email, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/liasettings/{accountId}/requestgmbaccess', options)
          command.response_representation = Google::Apis::ContentV2_1::LiasettingsRequestGmbAccessResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::LiasettingsRequestGmbAccessResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['gmbEmail'] = gmb_email unless gmb_email.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Requests inventory validation for the specified country.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] country
        #   The country for which inventory validation is requested.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::LiasettingsRequestInventoryVerificationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LiasettingsRequestInventoryVerificationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def requestinventoryverification_liasetting(merchant_id, account_id, country, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/liasettings/{accountId}/requestinventoryverification/{country}', options)
          command.response_representation = Google::Apis::ContentV2_1::LiasettingsRequestInventoryVerificationResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::LiasettingsRequestInventoryVerificationResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['country'] = country unless country.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the inventory verification contact for the specified country.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] country
        #   The country for which inventory verification is requested.
        # @param [String] language
        #   The language for which inventory verification is requested.
        # @param [String] contact_name
        #   The name of the inventory verification contact.
        # @param [String] contact_email
        #   The email of the inventory verification contact.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::LiasettingsSetInventoryVerificationContactResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LiasettingsSetInventoryVerificationContactResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def setinventoryverificationcontact_liasetting(merchant_id, account_id, country, language, contact_name, contact_email, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/liasettings/{accountId}/setinventoryverificationcontact', options)
          command.response_representation = Google::Apis::ContentV2_1::LiasettingsSetInventoryVerificationContactResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::LiasettingsSetInventoryVerificationContactResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['contactEmail'] = contact_email unless contact_email.nil?
          command.query['contactName'] = contact_name unless contact_name.nil?
          command.query['country'] = country unless country.nil?
          command.query['language'] = language unless language.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the omnichannel experience for the specified country. Only supported for
        # merchants whose POS data provider is trusted to enable the corresponding
        # experience. For more context, see these help articles [about LFP](https://
        # support.google.com/merchants/answer/7676652) and [how to get started](https://
        # support.google.com/merchants/answer/7676578) with it.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account for which to retrieve accessible Business Profiles.
        # @param [String] country
        #   The CLDR country code (for example, "US") for which the omnichannel experience
        #   is selected.
        # @param [String] lsf_type
        #   The Local Store Front (LSF) type for this country. Acceptable values are: - "`
        #   ghlsf`" (Google-Hosted Local Store Front) - "`mhlsfBasic`" (Merchant-Hosted
        #   Local Store Front Basic) - "`mhlsfFull`" (Merchant-Hosted Local Store Front
        #   Full) More details about these types can be found here.
        # @param [Array<String>, String] pickup_types
        #   The Pickup types for this country. Acceptable values are: - "`pickupToday`" - "
        #   `pickupLater`"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::LiaOmnichannelExperience] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LiaOmnichannelExperience]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def setomnichannelexperience_liasetting(merchant_id, account_id, country: nil, lsf_type: nil, pickup_types: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/liasettings/{accountId}/setomnichannelexperience', options)
          command.response_representation = Google::Apis::ContentV2_1::LiaOmnichannelExperience::Representation
          command.response_class = Google::Apis::ContentV2_1::LiaOmnichannelExperience
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['country'] = country unless country.nil?
          command.query['lsfType'] = lsf_type unless lsf_type.nil?
          command.query['pickupTypes'] = pickup_types unless pickup_types.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the POS data provider for the specified country.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account for which to retrieve accessible Business Profiles.
        # @param [String] country
        #   The country for which the POS data provider is selected.
        # @param [Fixnum] pos_data_provider_id
        #   The ID of POS data provider.
        # @param [String] pos_external_account_id
        #   The account ID by which this merchant is known to the POS data provider.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::LiasettingsSetPosDataProviderResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LiasettingsSetPosDataProviderResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def setposdataprovider_liasetting(merchant_id, account_id, country, pos_data_provider_id: nil, pos_external_account_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/liasettings/{accountId}/setposdataprovider', options)
          command.response_representation = Google::Apis::ContentV2_1::LiasettingsSetPosDataProviderResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::LiasettingsSetPosDataProviderResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['country'] = country unless country.nil?
          command.query['posDataProviderId'] = pos_data_provider_id unless pos_data_provider_id.nil?
          command.query['posExternalAccountId'] = pos_external_account_id unless pos_external_account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the LIA settings of the account. Any fields that are not provided are
        # deleted from the resource.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account for which to get or update LIA settings.
        # @param [Google::Apis::ContentV2_1::LiaSettings] lia_settings_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::LiaSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LiaSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_liasetting(merchant_id, account_id, lia_settings_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, '{merchantId}/liasettings/{accountId}', options)
          command.request_representation = Google::Apis::ContentV2_1::LiaSettings::Representation
          command.request_object = lia_settings_object
          command.response_representation = Google::Apis::ContentV2_1::LiaSettings::Representation
          command.response_class = Google::Apis::ContentV2_1::LiaSettings
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates local inventory for multiple products or stores in a single request.
        # @param [Google::Apis::ContentV2_1::LocalinventoryCustomBatchRequest] localinventory_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::LocalinventoryCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LocalinventoryCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_localinventory(localinventory_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'localinventory/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::LocalinventoryCustomBatchRequest::Representation
          command.request_object = localinventory_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::LocalinventoryCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::LocalinventoryCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the local inventory of a product in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that contains the product. This account cannot be a
        #   multi-client account.
        # @param [String] product_id
        #   The REST ID of the product for which to update local inventory.
        # @param [Google::Apis::ContentV2_1::LocalInventory] local_inventory_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::LocalInventory] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::LocalInventory]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_localinventory(merchant_id, product_id, local_inventory_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/products/{productId}/localinventory', options)
          command.request_representation = Google::Apis::ContentV2_1::LocalInventory::Representation
          command.request_object = local_inventory_object
          command.response_representation = Google::Apis::ContentV2_1::LocalInventory::Representation
          command.response_class = Google::Apis::ContentV2_1::LocalInventory
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Provide a list of merchant's issues with a support content and available
        # actions. This content and actions are meant to be rendered and shown in third-
        # party applications.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account to fetch issues for.
        # @param [Google::Apis::ContentV2_1::RenderAccountIssuesRequestPayload] render_account_issues_request_payload_object
        # @param [String] language_code
        #   Optional. The [IETF BCP-47](https://tools.ietf.org/html/bcp47) language code
        #   used to localize support content. If not set, the result will be in default
        #   language `en-US`.
        # @param [String] time_zone
        #   Optional. The [IANA](https://www.iana.org/time-zones) timezone used to
        #   localize times in support content. For example 'America/Los_Angeles'. If not
        #   set, results will use as a default UTC.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::RenderAccountIssuesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::RenderAccountIssuesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def renderaccountissues_merchantsupport(merchant_id, render_account_issues_request_payload_object = nil, language_code: nil, time_zone: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/merchantsupport/renderaccountissues', options)
          command.request_representation = Google::Apis::ContentV2_1::RenderAccountIssuesRequestPayload::Representation
          command.request_object = render_account_issues_request_payload_object
          command.response_representation = Google::Apis::ContentV2_1::RenderAccountIssuesResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::RenderAccountIssuesResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['timeZone'] = time_zone unless time_zone.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Provide a list of issues for merchant's product with a support content and
        # available actions. This content and actions are meant to be rendered and shown
        # in third-party applications.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account that contains the product.
        # @param [String] product_id
        #   Required. The [REST_ID](https://developers.google.com/shopping-content/
        #   reference/rest/v2.1/products#Product.FIELDS.id) of the product to fetch issues
        #   for.
        # @param [Google::Apis::ContentV2_1::RenderProductIssuesRequestPayload] render_product_issues_request_payload_object
        # @param [String] language_code
        #   Optional. The [IETF BCP-47](https://tools.ietf.org/html/bcp47) language code
        #   used to localize support content. If not set, the result will be in default
        #   language `en-US`.
        # @param [String] time_zone
        #   Optional. The [IANA](https://www.iana.org/time-zones) timezone used to
        #   localize times in support content. For example 'America/Los_Angeles'. If not
        #   set, results will use as a default UTC.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::RenderProductIssuesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::RenderProductIssuesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def renderproductissues_merchantsupport(merchant_id, product_id, render_product_issues_request_payload_object = nil, language_code: nil, time_zone: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/merchantsupport/renderproductissues/{productId}', options)
          command.request_representation = Google::Apis::ContentV2_1::RenderProductIssuesRequestPayload::Representation
          command.request_object = render_product_issues_request_payload_object
          command.response_representation = Google::Apis::ContentV2_1::RenderProductIssuesResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::RenderProductIssuesResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['timeZone'] = time_zone unless time_zone.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Start an action. The action can be requested by merchants in third-party
        # application. Before merchants can request the action, the third-party
        # application needs to show them action specific content and display a user
        # input form. The action can be successfully started only once all `required`
        # inputs are provided. If any `required` input is missing, or invalid value was
        # provided, the service will return 400 error. Validation errors will contain
        # Ids for all problematic field together with translated, human readable error
        # messages that can be shown to the user.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the merchant's account.
        # @param [Google::Apis::ContentV2_1::TriggerActionPayload] trigger_action_payload_object
        # @param [String] language_code
        #   Optional. Language code [IETF BCP 47 syntax](https://tools.ietf.org/html/bcp47)
        #   used to localize the response. If not set, the result will be in default
        #   language `en-US`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::TriggerActionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::TriggerActionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def triggeraction_merchantsupport(merchant_id, trigger_action_payload_object = nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/merchantsupport/triggeraction', options)
          command.request_representation = Google::Apis::ContentV2_1::TriggerActionPayload::Representation
          command.request_object = trigger_action_payload_object
          command.response_representation = Google::Apis::ContentV2_1::TriggerActionResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::TriggerActionResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates new order tracking signal.
        # @param [Fixnum] merchant_id
        #   The ID of the merchant for which the order signal is created.
        # @param [Google::Apis::ContentV2_1::OrderTrackingSignal] order_tracking_signal_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::OrderTrackingSignal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::OrderTrackingSignal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_ordertrackingsignal(merchant_id, order_tracking_signal_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/ordertrackingsignals', options)
          command.request_representation = Google::Apis::ContentV2_1::OrderTrackingSignal::Representation
          command.request_object = order_tracking_signal_object
          command.response_representation = Google::Apis::ContentV2_1::OrderTrackingSignal::Representation
          command.response_class = Google::Apis::ContentV2_1::OrderTrackingSignal
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Batches multiple POS-related calls in a single request.
        # @param [Google::Apis::ContentV2_1::PosCustomBatchRequest] pos_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::PosCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::PosCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_po(pos_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'pos/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::PosCustomBatchRequest::Representation
          command.request_object = pos_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::PosCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::PosCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a store for the given merchant.
        # @param [Fixnum] merchant_id
        #   The ID of the POS or inventory data provider.
        # @param [Fixnum] target_merchant_id
        #   The ID of the target merchant.
        # @param [String] store_code
        #   A store code that is unique per merchant.
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
        def delete_po(merchant_id, target_merchant_id, store_code, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, '{merchantId}/pos/{targetMerchantId}/store/{storeCode}', options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['targetMerchantId'] = target_merchant_id unless target_merchant_id.nil?
          command.params['storeCode'] = store_code unless store_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves information about the given store.
        # @param [Fixnum] merchant_id
        #   The ID of the POS or inventory data provider.
        # @param [Fixnum] target_merchant_id
        #   The ID of the target merchant.
        # @param [String] store_code
        #   A store code that is unique per merchant.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::PosStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::PosStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_po(merchant_id, target_merchant_id, store_code, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/pos/{targetMerchantId}/store/{storeCode}', options)
          command.response_representation = Google::Apis::ContentV2_1::PosStore::Representation
          command.response_class = Google::Apis::ContentV2_1::PosStore
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['targetMerchantId'] = target_merchant_id unless target_merchant_id.nil?
          command.params['storeCode'] = store_code unless store_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a store for the given merchant.
        # @param [Fixnum] merchant_id
        #   The ID of the POS or inventory data provider.
        # @param [Fixnum] target_merchant_id
        #   The ID of the target merchant.
        # @param [Google::Apis::ContentV2_1::PosStore] pos_store_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::PosStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::PosStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_po(merchant_id, target_merchant_id, pos_store_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/pos/{targetMerchantId}/store', options)
          command.request_representation = Google::Apis::ContentV2_1::PosStore::Representation
          command.request_object = pos_store_object
          command.response_representation = Google::Apis::ContentV2_1::PosStore::Representation
          command.response_class = Google::Apis::ContentV2_1::PosStore
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['targetMerchantId'] = target_merchant_id unless target_merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Submit inventory for the given merchant.
        # @param [Fixnum] merchant_id
        #   The ID of the POS or inventory data provider.
        # @param [Fixnum] target_merchant_id
        #   The ID of the target merchant.
        # @param [Google::Apis::ContentV2_1::PosInventoryRequest] pos_inventory_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::PosInventoryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::PosInventoryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def inventory_po(merchant_id, target_merchant_id, pos_inventory_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/pos/{targetMerchantId}/inventory', options)
          command.request_representation = Google::Apis::ContentV2_1::PosInventoryRequest::Representation
          command.request_object = pos_inventory_request_object
          command.response_representation = Google::Apis::ContentV2_1::PosInventoryResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::PosInventoryResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['targetMerchantId'] = target_merchant_id unless target_merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the stores of the target merchant.
        # @param [Fixnum] merchant_id
        #   The ID of the POS or inventory data provider.
        # @param [Fixnum] target_merchant_id
        #   The ID of the target merchant.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::PosListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::PosListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_pos(merchant_id, target_merchant_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/pos/{targetMerchantId}/store', options)
          command.response_representation = Google::Apis::ContentV2_1::PosListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::PosListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['targetMerchantId'] = target_merchant_id unless target_merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Submit a sale event for the given merchant.
        # @param [Fixnum] merchant_id
        #   The ID of the POS or inventory data provider.
        # @param [Fixnum] target_merchant_id
        #   The ID of the target merchant.
        # @param [Google::Apis::ContentV2_1::PosSaleRequest] pos_sale_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::PosSaleResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::PosSaleResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def sale_po(merchant_id, target_merchant_id, pos_sale_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/pos/{targetMerchantId}/sale', options)
          command.request_representation = Google::Apis::ContentV2_1::PosSaleRequest::Representation
          command.request_object = pos_sale_request_object
          command.response_representation = Google::Apis::ContentV2_1::PosSaleResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::PosSaleResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['targetMerchantId'] = target_merchant_id unless target_merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or updates the delivery time of a product.
        # @param [Fixnum] merchant_id
        #   The Google merchant ID of the account that contains the product. This account
        #   cannot be a multi-client account.
        # @param [Google::Apis::ContentV2_1::ProductDeliveryTime] product_delivery_time_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ProductDeliveryTime] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ProductDeliveryTime]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_productdeliverytime(merchant_id, product_delivery_time_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/productdeliverytime', options)
          command.request_representation = Google::Apis::ContentV2_1::ProductDeliveryTime::Representation
          command.request_object = product_delivery_time_object
          command.response_representation = Google::Apis::ContentV2_1::ProductDeliveryTime::Representation
          command.response_class = Google::Apis::ContentV2_1::ProductDeliveryTime
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the delivery time of a product.
        # @param [Fixnum] merchant_id
        #   Required. The Google merchant ID of the account that contains the product.
        #   This account cannot be a multi-client account.
        # @param [String] product_id
        #   Required. The Content API ID of the product, in the form `channel:
        #   contentLanguage:targetCountry:offerId`.
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
        def delete_productdeliverytime(merchant_id, product_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, '{merchantId}/productdeliverytime/{productId}', options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets `productDeliveryTime` by `productId`.
        # @param [Fixnum] merchant_id
        #   Required. The Google merchant ID of the account that contains the product.
        #   This account cannot be a multi-client account.
        # @param [String] product_id
        #   Required. The Content API ID of the product, in the form `channel:
        #   contentLanguage:targetCountry:offerId`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ProductDeliveryTime] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ProductDeliveryTime]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_productdeliverytime(merchant_id, product_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/productdeliverytime/{productId}', options)
          command.response_representation = Google::Apis::ContentV2_1::ProductDeliveryTime::Representation
          command.response_class = Google::Apis::ContentV2_1::ProductDeliveryTime
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves, inserts, and deletes multiple products in a single request.
        # @param [Google::Apis::ContentV2_1::ProductsCustomBatchRequest] products_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ProductsCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ProductsCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_product(products_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'products/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::ProductsCustomBatchRequest::Representation
          command.request_object = products_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::ProductsCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ProductsCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a product from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that contains the product. This account cannot be a
        #   multi-client account.
        # @param [String] product_id
        #   The REST ID of the product.
        # @param [Fixnum] feed_id
        #   The Content API Supplemental Feed ID. If present then product deletion applies
        #   to the data in a supplemental feed. If absent, entire product will be deleted.
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
        def delete_product(merchant_id, product_id, feed_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, '{merchantId}/products/{productId}', options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['feedId'] = feed_id unless feed_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a product from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that contains the product. This account cannot be a
        #   multi-client account.
        # @param [String] product_id
        #   The REST ID of the product.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Product] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Product]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_product(merchant_id, product_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/products/{productId}', options)
          command.response_representation = Google::Apis::ContentV2_1::Product::Representation
          command.response_class = Google::Apis::ContentV2_1::Product
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads a product to your Merchant Center account. If an item with the same
        # channel, contentLanguage, offerId, and targetCountry already exists, this
        # method updates that entry.
        # @param [Fixnum] merchant_id
        #   The ID of the account that contains the product. This account cannot be a
        #   multi-client account.
        # @param [Google::Apis::ContentV2_1::Product] product_object
        # @param [Fixnum] feed_id
        #   The Content API Supplemental Feed ID. If present then product insertion
        #   applies to the data in a supplemental feed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Product] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Product]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_product(merchant_id, product_object = nil, feed_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/products', options)
          command.request_representation = Google::Apis::ContentV2_1::Product::Representation
          command.request_object = product_object
          command.response_representation = Google::Apis::ContentV2_1::Product::Representation
          command.response_class = Google::Apis::ContentV2_1::Product
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['feedId'] = feed_id unless feed_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the products in your Merchant Center account. The response might contain
        # fewer items than specified by maxResults. Rely on nextPageToken to determine
        # if there are more items to be requested.
        # @param [Fixnum] merchant_id
        #   The ID of the account that contains the products. This account cannot be a
        #   multi-client account.
        # @param [Fixnum] max_results
        #   The maximum number of products to return in the response, used for paging. The
        #   default value is 25. The maximum value is 250.
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
        # @yieldparam result [Google::Apis::ContentV2_1::ProductsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ProductsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_products(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/products', options)
          command.response_representation = Google::Apis::ContentV2_1::ProductsListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ProductsListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing product in your Merchant Center account. Only updates
        # attributes provided in the request.
        # @param [Fixnum] merchant_id
        #   The ID of the account that contains the product. This account cannot be a
        #   multi-client account.
        # @param [String] product_id
        #   The REST ID of the product for which to update.
        # @param [Google::Apis::ContentV2_1::Product] product_object
        # @param [String] update_mask
        #   The comma-separated list of product attributes to be updated. Example: `"title,
        #   salePrice"`. Attributes specified in the update mask without a value specified
        #   in the body will be deleted from the product. *You must specify the update
        #   mask to delete attributes.* Only top-level product attributes can be updated.
        #   If not defined, product attributes with set values will be updated and other
        #   attributes will stay unchanged.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Product] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Product]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_product(merchant_id, product_id, product_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, '{merchantId}/products/{productId}', options)
          command.request_representation = Google::Apis::ContentV2_1::Product::Representation
          command.request_object = product_object
          command.response_representation = Google::Apis::ContentV2_1::Product::Representation
          command.response_class = Google::Apis::ContentV2_1::Product
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the statuses of multiple products in a single request.
        # @param [Google::Apis::ContentV2_1::ProductstatusesCustomBatchRequest] productstatuses_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ProductstatusesCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ProductstatusesCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_productstatus(productstatuses_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'productstatuses/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::ProductstatusesCustomBatchRequest::Representation
          command.request_object = productstatuses_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::ProductstatusesCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ProductstatusesCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the status of a product from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that contains the product. This account cannot be a
        #   multi-client account.
        # @param [String] product_id
        #   The REST ID of the product.
        # @param [Array<String>, String] destinations
        #   If set, only issues for the specified destinations are returned, otherwise
        #   only issues for the Shopping destination.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ProductStatus] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ProductStatus]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_productstatus(merchant_id, product_id, destinations: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/productstatuses/{productId}', options)
          command.response_representation = Google::Apis::ContentV2_1::ProductStatus::Representation
          command.response_class = Google::Apis::ContentV2_1::ProductStatus
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['destinations'] = destinations unless destinations.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the statuses of the products in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that contains the products. This account cannot be a
        #   multi-client account.
        # @param [Array<String>, String] destinations
        #   If set, only issues for the specified destinations are returned, otherwise
        #   only issues for the Shopping destination.
        # @param [Fixnum] max_results
        #   The maximum number of product statuses to return in the response, used for
        #   paging. The default value is 25. The maximum value is 250.
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
        # @yieldparam result [Google::Apis::ContentV2_1::ProductstatusesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ProductstatusesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_productstatuses(merchant_id, destinations: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/productstatuses', options)
          command.response_representation = Google::Apis::ContentV2_1::ProductstatusesListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ProductstatusesListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['destinations'] = destinations unless destinations.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a promotion for your Merchant Center account. If the promotion already
        # exists, then it updates the promotion instead. To [end or delete] (https://
        # developers.google.com/shopping-content/guides/promotions#end_a_promotion) a
        # promotion update the time period of the promotion to a time that has already
        # passed.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account that contains the collection.
        # @param [Google::Apis::ContentV2_1::Promotion] promotion_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Promotion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Promotion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_promotion(merchant_id, promotion_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/promotions', options)
          command.request_representation = Google::Apis::ContentV2_1::Promotion::Representation
          command.request_object = promotion_object
          command.response_representation = Google::Apis::ContentV2_1::Promotion::Representation
          command.response_class = Google::Apis::ContentV2_1::Promotion
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a promotion from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account that contains the collection.
        # @param [String] id
        #   Required. REST ID of the promotion to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Promotion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Promotion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_promotion(merchant_id, id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/promotions/{id}', options)
          command.response_representation = Google::Apis::ContentV2_1::Promotion::Representation
          command.response_class = Google::Apis::ContentV2_1::Promotion
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all promotions from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account that contains the collection.
        # @param [String] country_code
        #   [CLDR country code](http://www.unicode.org/repos/cldr/tags/latest/common/main/
        #   en.xml) (for example, "US"), used as a filter on promotions target country.
        # @param [String] language_code
        #   The two-letter ISO 639-1 language code associated with the promotions, used as
        #   a filter.
        # @param [Fixnum] page_size
        #   The maximum number of promotions to return. The service may return fewer than
        #   this value. If unspecified, at most 50 labels will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListPromotion` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListPromotion` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ListPromotionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ListPromotionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_promotions(merchant_id, country_code: nil, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/promotions', options)
          command.response_representation = Google::Apis::ContentV2_1::ListPromotionResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ListPromotionResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['countryCode'] = country_code unless country_code.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a Merchant Center account's pubsub notification settings.
        # @param [Fixnum] merchant_id
        #   The ID of the account for which to get pubsub notification settings.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::PubsubNotificationSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::PubsubNotificationSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_pubsubnotificationsetting(merchant_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/pubsubnotificationsettings', options)
          command.response_representation = Google::Apis::ContentV2_1::PubsubNotificationSettings::Representation
          command.response_class = Google::Apis::ContentV2_1::PubsubNotificationSettings
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Register a Merchant Center account for pubsub notifications. Note that cloud
        # topic name shouldn't be provided as part of the request.
        # @param [Fixnum] merchant_id
        #   The ID of the account.
        # @param [Google::Apis::ContentV2_1::PubsubNotificationSettings] pubsub_notification_settings_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::PubsubNotificationSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::PubsubNotificationSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_pubsubnotificationsetting(merchant_id, pubsub_notification_settings_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, '{merchantId}/pubsubnotificationsettings', options)
          command.request_representation = Google::Apis::ContentV2_1::PubsubNotificationSettings::Representation
          command.request_object = pubsub_notification_settings_object
          command.response_representation = Google::Apis::ContentV2_1::PubsubNotificationSettings::Representation
          command.response_class = Google::Apis::ContentV2_1::PubsubNotificationSettings
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the daily call quota and usage per method for your Merchant Center
        # account.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account that has quota. This account must be an admin.
        # @param [Fixnum] page_size
        #   The maximum number of quotas to return in the response, used for paging.
        #   Defaults to 500; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Token (if provided) to retrieve the subsequent page. All other parameters must
        #   match the original call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ListMethodQuotasResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ListMethodQuotasResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_quotas(merchant_id, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/quotas', options)
          command.response_representation = Google::Apis::ContentV2_1::ListMethodQuotasResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ListMethodQuotasResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates recommendations for a merchant.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account to fetch recommendations for.
        # @param [Array<String>, String] allowed_tag
        #   Optional. List of allowed tags. Tags are a set of predefined strings that
        #   describe the category that individual recommendation types belong to. User can
        #   specify zero or more tags in this field to indicate what categories of
        #   recommendations they want to receive. Current list of supported tags: - TREND
        # @param [String] language_code
        #   Optional. Language code of the client. If not set, the result will be in
        #   default language (English). This language code affects all fields prefixed
        #   with "localized". This should be set to ISO 639-1 country code. List of
        #   currently verified supported language code: en, fr, cs, da, de, es, it, nl, no,
        #   pl, pt, pt, fi, sv, vi, tr, th, ko, zh-CN, zh-TW, ja, id, hi
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::GenerateRecommendationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::GenerateRecommendationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_recommendation(merchant_id, allowed_tag: nil, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/recommendations/generate', options)
          command.response_representation = Google::Apis::ContentV2_1::GenerateRecommendationsResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::GenerateRecommendationsResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['allowedTag'] = allowed_tag unless allowed_tag.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reports an interaction on a recommendation for a merchant.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account that wants to report an interaction.
        # @param [Google::Apis::ContentV2_1::ReportInteractionRequest] report_interaction_request_object
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
        def report_recommendation_interaction(merchant_id, report_interaction_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/recommendations/reportInteraction', options)
          command.request_representation = Google::Apis::ContentV2_1::ReportInteractionRequest::Representation
          command.request_object = report_interaction_request_object
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates regional inventory for multiple products or regions in a single
        # request.
        # @param [Google::Apis::ContentV2_1::RegionalinventoryCustomBatchRequest] regionalinventory_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::RegionalinventoryCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::RegionalinventoryCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_regionalinventory(regionalinventory_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'regionalinventory/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::RegionalinventoryCustomBatchRequest::Representation
          command.request_object = regionalinventory_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::RegionalinventoryCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::RegionalinventoryCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the regional inventory of a product in your Merchant Center account.
        # If a regional inventory with the same region ID already exists, this method
        # updates that entry.
        # @param [Fixnum] merchant_id
        #   The ID of the account that contains the product. This account cannot be a
        #   multi-client account.
        # @param [String] product_id
        #   The REST ID of the product for which to update the regional inventory.
        # @param [Google::Apis::ContentV2_1::RegionalInventory] regional_inventory_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::RegionalInventory] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::RegionalInventory]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_regionalinventory(merchant_id, product_id, regional_inventory_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/products/{productId}/regionalinventory', options)
          command.request_representation = Google::Apis::ContentV2_1::RegionalInventory::Representation
          command.request_object = regional_inventory_object
          command.response_representation = Google::Apis::ContentV2_1::RegionalInventory::Representation
          command.response_class = Google::Apis::ContentV2_1::RegionalInventory
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['productId'] = product_id unless product_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a region definition in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   Required. The id of the merchant for which to create region definition.
        # @param [Google::Apis::ContentV2_1::Region] region_object
        # @param [String] region_id
        #   Required. The id of the region to create.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Region] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Region]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_region(merchant_id, region_object = nil, region_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/regions', options)
          command.request_representation = Google::Apis::ContentV2_1::Region::Representation
          command.request_object = region_object
          command.response_representation = Google::Apis::ContentV2_1::Region::Representation
          command.response_class = Google::Apis::ContentV2_1::Region
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['regionId'] = region_id unless region_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a region definition from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   Required. The id of the merchant for which to delete region definition.
        # @param [String] region_id
        #   Required. The id of the region to delete.
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
        def delete_region(merchant_id, region_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, '{merchantId}/regions/{regionId}', options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['regionId'] = region_id unless region_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a region defined in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   Required. The id of the merchant for which to retrieve region definition.
        # @param [String] region_id
        #   Required. The id of the region to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Region] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Region]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_region(merchant_id, region_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/regions/{regionId}', options)
          command.response_representation = Google::Apis::ContentV2_1::Region::Representation
          command.response_class = Google::Apis::ContentV2_1::Region
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['regionId'] = region_id unless region_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the regions in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   Required. The id of the merchant for which to list region definitions.
        # @param [Fixnum] page_size
        #   The maximum number of regions to return. The service may return fewer than
        #   this value. If unspecified, at most 50 rules will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListRegions` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListRegions` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ListRegionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ListRegionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_regions(merchant_id, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/regions', options)
          command.response_representation = Google::Apis::ContentV2_1::ListRegionsResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ListRegionsResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a region definition in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   Required. The id of the merchant for which to update region definition.
        # @param [String] region_id
        #   Required. The id of the region to update.
        # @param [Google::Apis::ContentV2_1::Region] region_object
        # @param [String] update_mask
        #   Optional. The comma-separated field mask indicating the fields to update.
        #   Example: `"displayName,postalCodeArea.regionCode"`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::Region] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::Region]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_region(merchant_id, region_id, region_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, '{merchantId}/regions/{regionId}', options)
          command.request_representation = Google::Apis::ContentV2_1::Region::Representation
          command.request_object = region_object
          command.response_representation = Google::Apis::ContentV2_1::Region::Representation
          command.response_class = Google::Apis::ContentV2_1::Region
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['regionId'] = region_id unless region_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves merchant performance metrics matching the search query and
        # optionally segmented by selected dimensions.
        # @param [Fixnum] merchant_id
        #   Required. Id of the merchant making the call. Must be a standalone account or
        #   an MCA subaccount.
        # @param [Google::Apis::ContentV2_1::SearchRequest] search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::SearchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::SearchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_report(merchant_id, search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/reports/search', options)
          command.request_representation = Google::Apis::ContentV2_1::SearchRequest::Representation
          command.request_object = search_request_object
          command.response_representation = Google::Apis::ContentV2_1::SearchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::SearchResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Batches multiple return address related calls in a single request.
        # @param [Google::Apis::ContentV2_1::ReturnaddressCustomBatchRequest] returnaddress_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ReturnaddressCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ReturnaddressCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_returnaddress(returnaddress_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'returnaddress/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::ReturnaddressCustomBatchRequest::Representation
          command.request_object = returnaddress_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::ReturnaddressCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ReturnaddressCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a return address for the given Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The Merchant Center account from which to delete the given return address.
        # @param [String] return_address_id
        #   Return address ID generated by Google.
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
        def delete_returnaddress(merchant_id, return_address_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, '{merchantId}/returnaddress/{returnAddressId}', options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['returnAddressId'] = return_address_id unless return_address_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a return address of the Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The Merchant Center account to get a return address for.
        # @param [String] return_address_id
        #   Return address ID generated by Google.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ReturnAddress] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ReturnAddress]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_returnaddress(merchant_id, return_address_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/returnaddress/{returnAddressId}', options)
          command.response_representation = Google::Apis::ContentV2_1::ReturnAddress::Representation
          command.response_class = Google::Apis::ContentV2_1::ReturnAddress
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['returnAddressId'] = return_address_id unless return_address_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a return address for the Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The Merchant Center account to insert a return address for.
        # @param [Google::Apis::ContentV2_1::ReturnAddress] return_address_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ReturnAddress] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ReturnAddress]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_returnaddress(merchant_id, return_address_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/returnaddress', options)
          command.request_representation = Google::Apis::ContentV2_1::ReturnAddress::Representation
          command.request_object = return_address_object
          command.response_representation = Google::Apis::ContentV2_1::ReturnAddress::Representation
          command.response_class = Google::Apis::ContentV2_1::ReturnAddress
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the return addresses of the Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The Merchant Center account to list return addresses for.
        # @param [String] country
        #   List only return addresses applicable to the given country of sale. When
        #   omitted, all return addresses are listed.
        # @param [Fixnum] max_results
        #   The maximum number of addresses in the response, used for paging.
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
        # @yieldparam result [Google::Apis::ContentV2_1::ReturnaddressListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ReturnaddressListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_returnaddresses(merchant_id, country: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/returnaddress', options)
          command.response_representation = Google::Apis::ContentV2_1::ReturnaddressListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ReturnaddressListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['country'] = country unless country.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Batches multiple return policy related calls in a single request.
        # @param [Google::Apis::ContentV2_1::ReturnpolicyCustomBatchRequest] returnpolicy_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ReturnpolicyCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ReturnpolicyCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_returnpolicy(returnpolicy_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'returnpolicy/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::ReturnpolicyCustomBatchRequest::Representation
          command.request_object = returnpolicy_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::ReturnpolicyCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ReturnpolicyCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a return policy for the given Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The Merchant Center account from which to delete the given return policy.
        # @param [String] return_policy_id
        #   Return policy ID generated by Google.
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
        def delete_returnpolicy(merchant_id, return_policy_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, '{merchantId}/returnpolicy/{returnPolicyId}', options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['returnPolicyId'] = return_policy_id unless return_policy_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a return policy of the Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The Merchant Center account to get a return policy for.
        # @param [String] return_policy_id
        #   Return policy ID generated by Google.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ReturnPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ReturnPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_returnpolicy(merchant_id, return_policy_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/returnpolicy/{returnPolicyId}', options)
          command.response_representation = Google::Apis::ContentV2_1::ReturnPolicy::Representation
          command.response_class = Google::Apis::ContentV2_1::ReturnPolicy
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['returnPolicyId'] = return_policy_id unless return_policy_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a return policy for the Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The Merchant Center account to insert a return policy for.
        # @param [Google::Apis::ContentV2_1::ReturnPolicy] return_policy_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ReturnPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ReturnPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_returnpolicy(merchant_id, return_policy_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/returnpolicy', options)
          command.request_representation = Google::Apis::ContentV2_1::ReturnPolicy::Representation
          command.request_object = return_policy_object
          command.response_representation = Google::Apis::ContentV2_1::ReturnPolicy::Representation
          command.response_class = Google::Apis::ContentV2_1::ReturnPolicy
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the return policies of the Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The Merchant Center account to list return policies for.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ReturnpolicyListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ReturnpolicyListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_returnpolicies(merchant_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/returnpolicy', options)
          command.response_representation = Google::Apis::ContentV2_1::ReturnpolicyListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ReturnpolicyListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new return policy.
        # @param [Fixnum] merchant_id
        #   Required. The id of the merchant for which to retrieve the return policy
        #   online object.
        # @param [Google::Apis::ContentV2_1::ReturnPolicyOnline] return_policy_online_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ReturnPolicyOnline] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ReturnPolicyOnline]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_returnpolicyonline(merchant_id, return_policy_online_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/returnpolicyonline', options)
          command.request_representation = Google::Apis::ContentV2_1::ReturnPolicyOnline::Representation
          command.request_object = return_policy_online_object
          command.response_representation = Google::Apis::ContentV2_1::ReturnPolicyOnline::Representation
          command.response_class = Google::Apis::ContentV2_1::ReturnPolicyOnline
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing return policy.
        # @param [Fixnum] merchant_id
        #   Required. The id of the merchant for which to retrieve the return policy
        #   online object.
        # @param [String] return_policy_id
        #   Required. The id of the return policy to delete.
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
        def delete_returnpolicyonline(merchant_id, return_policy_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, '{merchantId}/returnpolicyonline/{returnPolicyId}', options)
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['returnPolicyId'] = return_policy_id unless return_policy_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an existing return policy.
        # @param [Fixnum] merchant_id
        #   Required. The id of the merchant for which to retrieve the return policy
        #   online object.
        # @param [String] return_policy_id
        #   Required. The id of the return policy to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ReturnPolicyOnline] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ReturnPolicyOnline]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_returnpolicyonline(merchant_id, return_policy_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/returnpolicyonline/{returnPolicyId}', options)
          command.response_representation = Google::Apis::ContentV2_1::ReturnPolicyOnline::Representation
          command.response_class = Google::Apis::ContentV2_1::ReturnPolicyOnline
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['returnPolicyId'] = return_policy_id unless return_policy_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all existing return policies.
        # @param [Fixnum] merchant_id
        #   Required. The id of the merchant for which to retrieve the return policy
        #   online object.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ListReturnPolicyOnlineResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ListReturnPolicyOnlineResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_returnpolicyonlines(merchant_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/returnpolicyonline', options)
          command.response_representation = Google::Apis::ContentV2_1::ListReturnPolicyOnlineResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ListReturnPolicyOnlineResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing return policy.
        # @param [Fixnum] merchant_id
        #   Required. The id of the merchant for which to retrieve the return policy
        #   online object.
        # @param [String] return_policy_id
        #   Required. The id of the return policy to update.
        # @param [Google::Apis::ContentV2_1::ReturnPolicyOnline] return_policy_online_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ReturnPolicyOnline] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ReturnPolicyOnline]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_returnpolicyonline(merchant_id, return_policy_id, return_policy_online_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, '{merchantId}/returnpolicyonline/{returnPolicyId}', options)
          command.request_representation = Google::Apis::ContentV2_1::ReturnPolicyOnline::Representation
          command.request_object = return_policy_online_object
          command.response_representation = Google::Apis::ContentV2_1::ReturnPolicyOnline::Representation
          command.response_class = Google::Apis::ContentV2_1::ReturnPolicyOnline
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['returnPolicyId'] = return_policy_id unless return_policy_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves and updates the shipping settings of multiple accounts in a single
        # request.
        # @param [Google::Apis::ContentV2_1::ShippingsettingsCustomBatchRequest] shippingsettings_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ShippingsettingsCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ShippingsettingsCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_shippingsetting(shippingsettings_custom_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'shippingsettings/batch', options)
          command.request_representation = Google::Apis::ContentV2_1::ShippingsettingsCustomBatchRequest::Representation
          command.request_object = shippingsettings_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2_1::ShippingsettingsCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ShippingsettingsCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the shipping settings of the account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account for which to get/update shipping settings.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ShippingSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ShippingSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_shippingsetting(merchant_id, account_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/shippingsettings/{accountId}', options)
          command.response_representation = Google::Apis::ContentV2_1::ShippingSettings::Representation
          command.response_class = Google::Apis::ContentV2_1::ShippingSettings
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves supported carriers and carrier services for an account.
        # @param [Fixnum] merchant_id
        #   The ID of the account for which to retrieve the supported carriers.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ShippingsettingsGetSupportedCarriersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ShippingsettingsGetSupportedCarriersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def getsupportedcarriers_shippingsetting(merchant_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/supportedCarriers', options)
          command.response_representation = Google::Apis::ContentV2_1::ShippingsettingsGetSupportedCarriersResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ShippingsettingsGetSupportedCarriersResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves supported holidays for an account.
        # @param [Fixnum] merchant_id
        #   The ID of the account for which to retrieve the supported holidays.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ShippingsettingsGetSupportedHolidaysResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ShippingsettingsGetSupportedHolidaysResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def getsupportedholidays_shippingsetting(merchant_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/supportedHolidays', options)
          command.response_representation = Google::Apis::ContentV2_1::ShippingsettingsGetSupportedHolidaysResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ShippingsettingsGetSupportedHolidaysResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves supported pickup services for an account.
        # @param [Fixnum] merchant_id
        #   The ID of the account for which to retrieve the supported pickup services.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ShippingsettingsGetSupportedPickupServicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ShippingsettingsGetSupportedPickupServicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def getsupportedpickupservices_shippingsetting(merchant_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/supportedPickupServices', options)
          command.response_representation = Google::Apis::ContentV2_1::ShippingsettingsGetSupportedPickupServicesResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ShippingsettingsGetSupportedPickupServicesResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the shipping settings of the sub-accounts in your Merchant Center
        # account.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. This must be a multi-client account.
        # @param [Fixnum] max_results
        #   The maximum number of shipping settings to return in the response, used for
        #   paging.
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
        # @yieldparam result [Google::Apis::ContentV2_1::ShippingsettingsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ShippingsettingsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_shippingsettings(merchant_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/shippingsettings', options)
          command.response_representation = Google::Apis::ContentV2_1::ShippingsettingsListResponse::Representation
          command.response_class = Google::Apis::ContentV2_1::ShippingsettingsListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the shipping settings of the account. Any fields that are not provided
        # are deleted from the resource.
        # @param [Fixnum] merchant_id
        #   The ID of the managing account. If this parameter is not the same as accountId,
        #   then this account must be a multi-client account and `accountId` must be the
        #   ID of a sub-account of this account.
        # @param [Fixnum] account_id
        #   The ID of the account for which to get/update shipping settings.
        # @param [Google::Apis::ContentV2_1::ShippingSettings] shipping_settings_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ShippingSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ShippingSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_shippingsetting(merchant_id, account_id, shipping_settings_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, '{merchantId}/shippingsettings/{accountId}', options)
          command.request_representation = Google::Apis::ContentV2_1::ShippingSettings::Representation
          command.request_object = shipping_settings_object
          command.response_representation = Google::Apis::ContentV2_1::ShippingSettings::Representation
          command.response_class = Google::Apis::ContentV2_1::ShippingSettings
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the status and review eligibility for the Shopping Ads program.
        # Returns errors and warnings if they require action to resolve, will become
        # disapprovals, or impact impressions. Use `accountstatuses` to view all issues
        # for an account.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2_1::ShoppingAdsProgramStatus] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2_1::ShoppingAdsProgramStatus]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_shoppingadsprogram(merchant_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, '{merchantId}/shoppingadsprogram', options)
          command.response_representation = Google::Apis::ContentV2_1::ShoppingAdsProgramStatus::Representation
          command.response_class = Google::Apis::ContentV2_1::ShoppingAdsProgramStatus
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Requests a review of Shopping ads in a specific region. This method deprecated.
        # Use the `MerchantSupportService` to view product and account issues and
        # request a review.
        # @param [Fixnum] merchant_id
        #   Required. The ID of the account.
        # @param [Google::Apis::ContentV2_1::RequestReviewShoppingAdsRequest] request_review_shopping_ads_request_object
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
        def requestreview_shoppingadsprogram(merchant_id, request_review_shopping_ads_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, '{merchantId}/shoppingadsprogram/requestreview', options)
          command.request_representation = Google::Apis::ContentV2_1::RequestReviewShoppingAdsRequest::Representation
          command.request_object = request_review_shopping_ads_request_object
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
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
