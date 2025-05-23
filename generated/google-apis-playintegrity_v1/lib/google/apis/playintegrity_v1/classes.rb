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
      
      # (Restricted Access) Contains a signal helping apps differentiating between
      # likely genuine and likely non-genuine user traffic.
      class AccountActivity
        include Google::Apis::Core::Hashable
      
        # Required. Indicates the activity level of the account.
        # Corresponds to the JSON property `activityLevel`
        # @return [String]
        attr_accessor :activity_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activity_level = args[:activity_level] if args.key?(:activity_level)
        end
      end
      
      # Contains the account information such as the licensing status for the user in
      # the scope.
      class AccountDetails
        include Google::Apis::Core::Hashable
      
        # (Restricted Access) Contains a signal helping apps differentiating between
        # likely genuine and likely non-genuine user traffic.
        # Corresponds to the JSON property `accountActivity`
        # @return [Google::Apis::PlayintegrityV1::AccountActivity]
        attr_accessor :account_activity
      
        # Required. Details about the licensing status of the user for the app in the
        # scope.
        # Corresponds to the JSON property `appLicensingVerdict`
        # @return [String]
        attr_accessor :app_licensing_verdict
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_activity = args[:account_activity] if args.key?(:account_activity)
          @app_licensing_verdict = args[:app_licensing_verdict] if args.key?(:app_licensing_verdict)
        end
      end
      
      # Contains signals about others apps on the device which could be used to access
      # or control the requesting app.
      class AppAccessRiskVerdict
        include Google::Apis::Core::Hashable
      
        # List of detected app types signalled for App Access Risk.
        # Corresponds to the JSON property `appsDetected`
        # @return [Array<String>]
        attr_accessor :apps_detected
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apps_detected = args[:apps_detected] if args.key?(:apps_detected)
        end
      end
      
      # Contains the application integrity information.
      class AppIntegrity
        include Google::Apis::Core::Hashable
      
        # Required. Details about the app recognition verdict
        # Corresponds to the JSON property `appRecognitionVerdict`
        # @return [String]
        attr_accessor :app_recognition_verdict
      
        # The SHA256 hash of the requesting app's signing certificates (base64 web-safe
        # encoded). Set iff app_recognition_verdict != UNEVALUATED.
        # Corresponds to the JSON property `certificateSha256Digest`
        # @return [Array<String>]
        attr_accessor :certificate_sha256_digest
      
        # Package name of the application under attestation. Set iff
        # app_recognition_verdict != UNEVALUATED.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # Version code of the application. Set iff app_recognition_verdict !=
        # UNEVALUATED.
        # Corresponds to the JSON property `versionCode`
        # @return [Fixnum]
        attr_accessor :version_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_recognition_verdict = args[:app_recognition_verdict] if args.key?(:app_recognition_verdict)
          @certificate_sha256_digest = args[:certificate_sha256_digest] if args.key?(:certificate_sha256_digest)
          @package_name = args[:package_name] if args.key?(:package_name)
          @version_code = args[:version_code] if args.key?(:version_code)
        end
      end
      
      # Request to decode the integrity token.
      class DecodeIntegrityTokenRequest
        include Google::Apis::Core::Hashable
      
        # Encoded integrity token.
        # Corresponds to the JSON property `integrityToken`
        # @return [String]
        attr_accessor :integrity_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integrity_token = args[:integrity_token] if args.key?(:integrity_token)
        end
      end
      
      # Response containing the decoded integrity payload.
      class DecodeIntegrityTokenResponse
        include Google::Apis::Core::Hashable
      
        # Contains basic app information and integrity signals like device attestation
        # and licensing details.
        # Corresponds to the JSON property `tokenPayloadExternal`
        # @return [Google::Apis::PlayintegrityV1::TokenPayloadExternal]
        attr_accessor :token_payload_external
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @token_payload_external = args[:token_payload_external] if args.key?(:token_payload_external)
        end
      end
      
      # Request to decode the PC integrity token.
      class DecodePcIntegrityTokenRequest
        include Google::Apis::Core::Hashable
      
        # Encoded integrity token.
        # Corresponds to the JSON property `integrityToken`
        # @return [String]
        attr_accessor :integrity_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integrity_token = args[:integrity_token] if args.key?(:integrity_token)
        end
      end
      
      # Response containing the decoded PC integrity payload.
      class DecodePcIntegrityTokenResponse
        include Google::Apis::Core::Hashable
      
        # Contains PC device attestation details.
        # Corresponds to the JSON property `tokenPayloadExternal`
        # @return [Google::Apis::PlayintegrityV1::PcTokenPayloadExternal]
        attr_accessor :token_payload_external
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @token_payload_external = args[:token_payload_external] if args.key?(:token_payload_external)
        end
      end
      
      # Contains information about the device for which the integrity token was
      # generated, e.g. Android SDK version.
      class DeviceAttributes
        include Google::Apis::Core::Hashable
      
        # Android SDK version of the device, as defined in the public Android
        # documentation: https://developer.android.com/reference/android/os/Build.
        # VERSION_CODES. It won't be set if a necessary requirement was missed. For
        # example DeviceIntegrity did not meet the minimum bar.
        # Corresponds to the JSON property `sdkVersion`
        # @return [Fixnum]
        attr_accessor :sdk_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sdk_version = args[:sdk_version] if args.key?(:sdk_version)
        end
      end
      
      # Contains the device attestation information.
      class DeviceIntegrity
        include Google::Apis::Core::Hashable
      
        # Contains information about the device for which the integrity token was
        # generated, e.g. Android SDK version.
        # Corresponds to the JSON property `deviceAttributes`
        # @return [Google::Apis::PlayintegrityV1::DeviceAttributes]
        attr_accessor :device_attributes
      
        # Contains the recall bits per device set by the developer.
        # Corresponds to the JSON property `deviceRecall`
        # @return [Google::Apis::PlayintegrityV1::DeviceRecall]
        attr_accessor :device_recall
      
        # Details about the integrity of the device the app is running on.
        # Corresponds to the JSON property `deviceRecognitionVerdict`
        # @return [Array<String>]
        attr_accessor :device_recognition_verdict
      
        # Contains legacy details about the integrity of the device the app is running
        # on. Only for devices with Android version T or higher and only for apps opted
        # in to the new verdicts. Only available during the transition period to the new
        # verdicts system and will be removed afterwards.
        # Corresponds to the JSON property `legacyDeviceRecognitionVerdict`
        # @return [Array<String>]
        attr_accessor :legacy_device_recognition_verdict
      
        # Recent device activity can help developers identify devices that have
        # exhibited hyperactive attestation activity, which could be a sign of an attack
        # or token farming.
        # Corresponds to the JSON property `recentDeviceActivity`
        # @return [Google::Apis::PlayintegrityV1::RecentDeviceActivity]
        attr_accessor :recent_device_activity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_attributes = args[:device_attributes] if args.key?(:device_attributes)
          @device_recall = args[:device_recall] if args.key?(:device_recall)
          @device_recognition_verdict = args[:device_recognition_verdict] if args.key?(:device_recognition_verdict)
          @legacy_device_recognition_verdict = args[:legacy_device_recognition_verdict] if args.key?(:legacy_device_recognition_verdict)
          @recent_device_activity = args[:recent_device_activity] if args.key?(:recent_device_activity)
        end
      end
      
      # Contains the recall bits per device set by the developer.
      class DeviceRecall
        include Google::Apis::Core::Hashable
      
        # Contains the recall bits values.
        # Corresponds to the JSON property `values`
        # @return [Google::Apis::PlayintegrityV1::Values]
        attr_accessor :values
      
        # Contains the recall bits write dates.
        # Corresponds to the JSON property `writeDates`
        # @return [Google::Apis::PlayintegrityV1::WriteDates]
        attr_accessor :write_dates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
          @write_dates = args[:write_dates] if args.key?(:write_dates)
        end
      end
      
      # Contains information about the environment Play Integrity API runs in, e.g.
      # Play Protect verdict.
      class EnvironmentDetails
        include Google::Apis::Core::Hashable
      
        # Contains signals about others apps on the device which could be used to access
        # or control the requesting app.
        # Corresponds to the JSON property `appAccessRiskVerdict`
        # @return [Google::Apis::PlayintegrityV1::AppAccessRiskVerdict]
        attr_accessor :app_access_risk_verdict
      
        # The evaluation of Play Protect verdict.
        # Corresponds to the JSON property `playProtectVerdict`
        # @return [String]
        attr_accessor :play_protect_verdict
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_access_risk_verdict = args[:app_access_risk_verdict] if args.key?(:app_access_risk_verdict)
          @play_protect_verdict = args[:play_protect_verdict] if args.key?(:play_protect_verdict)
        end
      end
      
      # Contains the device attestation information.
      class PcDeviceIntegrity
        include Google::Apis::Core::Hashable
      
        # Details about the integrity of the device the app is running on.
        # Corresponds to the JSON property `deviceRecognitionVerdict`
        # @return [Array<String>]
        attr_accessor :device_recognition_verdict
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_recognition_verdict = args[:device_recognition_verdict] if args.key?(:device_recognition_verdict)
        end
      end
      
      # Contains the integrity request information.
      class PcRequestDetails
        include Google::Apis::Core::Hashable
      
        # Request hash that was provided in the request.
        # Corresponds to the JSON property `requestHash`
        # @return [String]
        attr_accessor :request_hash
      
        # Required. Application package name this attestation was requested for. Note:
        # This field makes no guarantees or promises on the caller integrity.
        # Corresponds to the JSON property `requestPackageName`
        # @return [String]
        attr_accessor :request_package_name
      
        # Required. Timestamp, of the integrity application request.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_hash = args[:request_hash] if args.key?(:request_hash)
          @request_package_name = args[:request_package_name] if args.key?(:request_package_name)
          @request_time = args[:request_time] if args.key?(:request_time)
        end
      end
      
      # Contains PC device attestation details.
      class PcTokenPayloadExternal
        include Google::Apis::Core::Hashable
      
        # Contains the device attestation information.
        # Corresponds to the JSON property `deviceIntegrity`
        # @return [Google::Apis::PlayintegrityV1::PcDeviceIntegrity]
        attr_accessor :device_integrity
      
        # Contains the integrity request information.
        # Corresponds to the JSON property `requestDetails`
        # @return [Google::Apis::PlayintegrityV1::PcRequestDetails]
        attr_accessor :request_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_integrity = args[:device_integrity] if args.key?(:device_integrity)
          @request_details = args[:request_details] if args.key?(:request_details)
        end
      end
      
      # Recent device activity can help developers identify devices that have
      # exhibited hyperactive attestation activity, which could be a sign of an attack
      # or token farming.
      class RecentDeviceActivity
        include Google::Apis::Core::Hashable
      
        # Required. Indicates the activity level of the device.
        # Corresponds to the JSON property `deviceActivityLevel`
        # @return [String]
        attr_accessor :device_activity_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_activity_level = args[:device_activity_level] if args.key?(:device_activity_level)
        end
      end
      
      # Contains the integrity request information.
      class RequestDetails
        include Google::Apis::Core::Hashable
      
        # Nonce that was provided in the request (which is base64 web-safe no-wrap).
        # Corresponds to the JSON property `nonce`
        # @return [String]
        attr_accessor :nonce
      
        # Request hash that was provided in the request.
        # Corresponds to the JSON property `requestHash`
        # @return [String]
        attr_accessor :request_hash
      
        # Required. Application package name this attestation was requested for. Note:
        # This field makes no guarantees or promises on the caller integrity. For
        # details on application integrity, check application_integrity.
        # Corresponds to the JSON property `requestPackageName`
        # @return [String]
        attr_accessor :request_package_name
      
        # Required. Timestamp, in milliseconds, of the integrity application request.
        # Corresponds to the JSON property `timestampMillis`
        # @return [Fixnum]
        attr_accessor :timestamp_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nonce = args[:nonce] if args.key?(:nonce)
          @request_hash = args[:request_hash] if args.key?(:request_hash)
          @request_package_name = args[:request_package_name] if args.key?(:request_package_name)
          @timestamp_millis = args[:timestamp_millis] if args.key?(:timestamp_millis)
        end
      end
      
      # Contains additional information generated for testing responses.
      class TestingDetails
        include Google::Apis::Core::Hashable
      
        # Required. Indicates that the information contained in this payload is a
        # testing response that is statically overridden for a tester.
        # Corresponds to the JSON property `isTestingResponse`
        # @return [Boolean]
        attr_accessor :is_testing_response
        alias_method :is_testing_response?, :is_testing_response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_testing_response = args[:is_testing_response] if args.key?(:is_testing_response)
        end
      end
      
      # Contains basic app information and integrity signals like device attestation
      # and licensing details.
      class TokenPayloadExternal
        include Google::Apis::Core::Hashable
      
        # Contains the account information such as the licensing status for the user in
        # the scope.
        # Corresponds to the JSON property `accountDetails`
        # @return [Google::Apis::PlayintegrityV1::AccountDetails]
        attr_accessor :account_details
      
        # Contains the application integrity information.
        # Corresponds to the JSON property `appIntegrity`
        # @return [Google::Apis::PlayintegrityV1::AppIntegrity]
        attr_accessor :app_integrity
      
        # Contains the device attestation information.
        # Corresponds to the JSON property `deviceIntegrity`
        # @return [Google::Apis::PlayintegrityV1::DeviceIntegrity]
        attr_accessor :device_integrity
      
        # Contains information about the environment Play Integrity API runs in, e.g.
        # Play Protect verdict.
        # Corresponds to the JSON property `environmentDetails`
        # @return [Google::Apis::PlayintegrityV1::EnvironmentDetails]
        attr_accessor :environment_details
      
        # Contains the integrity request information.
        # Corresponds to the JSON property `requestDetails`
        # @return [Google::Apis::PlayintegrityV1::RequestDetails]
        attr_accessor :request_details
      
        # Contains additional information generated for testing responses.
        # Corresponds to the JSON property `testingDetails`
        # @return [Google::Apis::PlayintegrityV1::TestingDetails]
        attr_accessor :testing_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_details = args[:account_details] if args.key?(:account_details)
          @app_integrity = args[:app_integrity] if args.key?(:app_integrity)
          @device_integrity = args[:device_integrity] if args.key?(:device_integrity)
          @environment_details = args[:environment_details] if args.key?(:environment_details)
          @request_details = args[:request_details] if args.key?(:request_details)
          @testing_details = args[:testing_details] if args.key?(:testing_details)
        end
      end
      
      # Contains the recall bits values.
      class Values
        include Google::Apis::Core::Hashable
      
        # Required. First recall bit value.
        # Corresponds to the JSON property `bitFirst`
        # @return [Boolean]
        attr_accessor :bit_first
        alias_method :bit_first?, :bit_first
      
        # Required. Second recall bit value.
        # Corresponds to the JSON property `bitSecond`
        # @return [Boolean]
        attr_accessor :bit_second
        alias_method :bit_second?, :bit_second
      
        # Required. Third recall bit value.
        # Corresponds to the JSON property `bitThird`
        # @return [Boolean]
        attr_accessor :bit_third
        alias_method :bit_third?, :bit_third
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bit_first = args[:bit_first] if args.key?(:bit_first)
          @bit_second = args[:bit_second] if args.key?(:bit_second)
          @bit_third = args[:bit_third] if args.key?(:bit_third)
        end
      end
      
      # Contains the recall bits write dates.
      class WriteDates
        include Google::Apis::Core::Hashable
      
        # Optional. Write time in YYYYMM format (in UTC, e.g. 202402) for the first bit.
        # Note that this value won't be set if the first bit is false.
        # Corresponds to the JSON property `yyyymmFirst`
        # @return [Fixnum]
        attr_accessor :yyyymm_first
      
        # Optional. Write time in YYYYMM format (in UTC, e.g. 202402) for the second bit.
        # Note that this value won't be set if the second bit is false.
        # Corresponds to the JSON property `yyyymmSecond`
        # @return [Fixnum]
        attr_accessor :yyyymm_second
      
        # Optional. Write time in YYYYMM format (in UTC, e.g. 202402) for the third bit.
        # Note that this value won't be set if the third bit is false.
        # Corresponds to the JSON property `yyyymmThird`
        # @return [Fixnum]
        attr_accessor :yyyymm_third
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @yyyymm_first = args[:yyyymm_first] if args.key?(:yyyymm_first)
          @yyyymm_second = args[:yyyymm_second] if args.key?(:yyyymm_second)
          @yyyymm_third = args[:yyyymm_third] if args.key?(:yyyymm_third)
        end
      end
      
      # Request to write device recall bits.
      class WriteDeviceRecallRequest
        include Google::Apis::Core::Hashable
      
        # Required. Integrity token obtained from calling Play Integrity API.
        # Corresponds to the JSON property `integrityToken`
        # @return [String]
        attr_accessor :integrity_token
      
        # Contains the recall bits values.
        # Corresponds to the JSON property `newValues`
        # @return [Google::Apis::PlayintegrityV1::Values]
        attr_accessor :new_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integrity_token = args[:integrity_token] if args.key?(:integrity_token)
          @new_values = args[:new_values] if args.key?(:new_values)
        end
      end
      
      # Response for the Write Device Recall action. Currently empty.
      class WriteDeviceRecallResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
    end
  end
end
