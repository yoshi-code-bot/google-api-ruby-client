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
    module PlayintegrityV1
      
      class AccountActivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppAccessRiskVerdict
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppIntegrity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DecodeIntegrityTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DecodeIntegrityTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DecodePcIntegrityTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DecodePcIntegrityTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceAttributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceIntegrity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceRecall
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnvironmentDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PcDeviceIntegrity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PcRequestDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PcTokenPayloadExternal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecentDeviceActivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestingDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TokenPayloadExternal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Values
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WriteDates
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WriteDeviceRecallRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WriteDeviceRecallResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountActivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activity_level, as: 'activityLevel'
        end
      end
      
      class AccountDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_activity, as: 'accountActivity', class: Google::Apis::PlayintegrityV1::AccountActivity, decorator: Google::Apis::PlayintegrityV1::AccountActivity::Representation
      
          property :app_licensing_verdict, as: 'appLicensingVerdict'
        end
      end
      
      class AppAccessRiskVerdict
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :apps_detected, as: 'appsDetected'
        end
      end
      
      class AppIntegrity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_recognition_verdict, as: 'appRecognitionVerdict'
          collection :certificate_sha256_digest, as: 'certificateSha256Digest'
          property :package_name, as: 'packageName'
          property :version_code, :numeric_string => true, as: 'versionCode'
        end
      end
      
      class DecodeIntegrityTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :integrity_token, as: 'integrityToken'
        end
      end
      
      class DecodeIntegrityTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :token_payload_external, as: 'tokenPayloadExternal', class: Google::Apis::PlayintegrityV1::TokenPayloadExternal, decorator: Google::Apis::PlayintegrityV1::TokenPayloadExternal::Representation
      
        end
      end
      
      class DecodePcIntegrityTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :integrity_token, as: 'integrityToken'
        end
      end
      
      class DecodePcIntegrityTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :token_payload_external, as: 'tokenPayloadExternal', class: Google::Apis::PlayintegrityV1::PcTokenPayloadExternal, decorator: Google::Apis::PlayintegrityV1::PcTokenPayloadExternal::Representation
      
        end
      end
      
      class DeviceAttributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sdk_version, as: 'sdkVersion'
        end
      end
      
      class DeviceIntegrity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_attributes, as: 'deviceAttributes', class: Google::Apis::PlayintegrityV1::DeviceAttributes, decorator: Google::Apis::PlayintegrityV1::DeviceAttributes::Representation
      
          property :device_recall, as: 'deviceRecall', class: Google::Apis::PlayintegrityV1::DeviceRecall, decorator: Google::Apis::PlayintegrityV1::DeviceRecall::Representation
      
          collection :device_recognition_verdict, as: 'deviceRecognitionVerdict'
          collection :legacy_device_recognition_verdict, as: 'legacyDeviceRecognitionVerdict'
          property :recent_device_activity, as: 'recentDeviceActivity', class: Google::Apis::PlayintegrityV1::RecentDeviceActivity, decorator: Google::Apis::PlayintegrityV1::RecentDeviceActivity::Representation
      
        end
      end
      
      class DeviceRecall
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :values, as: 'values', class: Google::Apis::PlayintegrityV1::Values, decorator: Google::Apis::PlayintegrityV1::Values::Representation
      
          property :write_dates, as: 'writeDates', class: Google::Apis::PlayintegrityV1::WriteDates, decorator: Google::Apis::PlayintegrityV1::WriteDates::Representation
      
        end
      end
      
      class EnvironmentDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_access_risk_verdict, as: 'appAccessRiskVerdict', class: Google::Apis::PlayintegrityV1::AppAccessRiskVerdict, decorator: Google::Apis::PlayintegrityV1::AppAccessRiskVerdict::Representation
      
          property :play_protect_verdict, as: 'playProtectVerdict'
        end
      end
      
      class PcDeviceIntegrity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :device_recognition_verdict, as: 'deviceRecognitionVerdict'
        end
      end
      
      class PcRequestDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_hash, as: 'requestHash'
          property :request_package_name, as: 'requestPackageName'
          property :request_time, as: 'requestTime'
        end
      end
      
      class PcTokenPayloadExternal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_integrity, as: 'deviceIntegrity', class: Google::Apis::PlayintegrityV1::PcDeviceIntegrity, decorator: Google::Apis::PlayintegrityV1::PcDeviceIntegrity::Representation
      
          property :request_details, as: 'requestDetails', class: Google::Apis::PlayintegrityV1::PcRequestDetails, decorator: Google::Apis::PlayintegrityV1::PcRequestDetails::Representation
      
        end
      end
      
      class RecentDeviceActivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_activity_level, as: 'deviceActivityLevel'
        end
      end
      
      class RequestDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :nonce, as: 'nonce'
          property :request_hash, as: 'requestHash'
          property :request_package_name, as: 'requestPackageName'
          property :timestamp_millis, :numeric_string => true, as: 'timestampMillis'
        end
      end
      
      class TestingDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_testing_response, as: 'isTestingResponse'
        end
      end
      
      class TokenPayloadExternal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_details, as: 'accountDetails', class: Google::Apis::PlayintegrityV1::AccountDetails, decorator: Google::Apis::PlayintegrityV1::AccountDetails::Representation
      
          property :app_integrity, as: 'appIntegrity', class: Google::Apis::PlayintegrityV1::AppIntegrity, decorator: Google::Apis::PlayintegrityV1::AppIntegrity::Representation
      
          property :device_integrity, as: 'deviceIntegrity', class: Google::Apis::PlayintegrityV1::DeviceIntegrity, decorator: Google::Apis::PlayintegrityV1::DeviceIntegrity::Representation
      
          property :environment_details, as: 'environmentDetails', class: Google::Apis::PlayintegrityV1::EnvironmentDetails, decorator: Google::Apis::PlayintegrityV1::EnvironmentDetails::Representation
      
          property :request_details, as: 'requestDetails', class: Google::Apis::PlayintegrityV1::RequestDetails, decorator: Google::Apis::PlayintegrityV1::RequestDetails::Representation
      
          property :testing_details, as: 'testingDetails', class: Google::Apis::PlayintegrityV1::TestingDetails, decorator: Google::Apis::PlayintegrityV1::TestingDetails::Representation
      
        end
      end
      
      class Values
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bit_first, as: 'bitFirst'
          property :bit_second, as: 'bitSecond'
          property :bit_third, as: 'bitThird'
        end
      end
      
      class WriteDates
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :yyyymm_first, as: 'yyyymmFirst'
          property :yyyymm_second, as: 'yyyymmSecond'
          property :yyyymm_third, as: 'yyyymmThird'
        end
      end
      
      class WriteDeviceRecallRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :integrity_token, as: 'integrityToken'
          property :new_values, as: 'newValues', class: Google::Apis::PlayintegrityV1::Values, decorator: Google::Apis::PlayintegrityV1::Values::Representation
      
        end
      end
      
      class WriteDeviceRecallResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
