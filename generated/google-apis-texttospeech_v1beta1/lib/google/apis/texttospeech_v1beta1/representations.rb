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
    module TexttospeechV1beta1
      
      class AdvancedVoiceOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AudioConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomPronunciationParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomPronunciations
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomVoiceParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTexttospeechV1beta1SynthesizeLongAudioMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListVoicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultiSpeakerMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SynthesisInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SynthesizeLongAudioMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SynthesizeLongAudioRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SynthesizeSpeechRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SynthesizeSpeechResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Timepoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Turn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Voice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VoiceCloneParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VoiceSelectionParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdvancedVoiceOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :low_latency_journey_synthesis, as: 'lowLatencyJourneySynthesis'
        end
      end
      
      class AudioConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_encoding, as: 'audioEncoding'
          collection :effects_profile_id, as: 'effectsProfileId'
          property :pitch, as: 'pitch'
          property :sample_rate_hertz, as: 'sampleRateHertz'
          property :speaking_rate, as: 'speakingRate'
          property :volume_gain_db, as: 'volumeGainDb'
        end
      end
      
      class CustomPronunciationParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :phonetic_encoding, as: 'phoneticEncoding'
          property :phrase, as: 'phrase'
          property :pronunciation, as: 'pronunciation'
        end
      end
      
      class CustomPronunciations
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :pronunciations, as: 'pronunciations', class: Google::Apis::TexttospeechV1beta1::CustomPronunciationParams, decorator: Google::Apis::TexttospeechV1beta1::CustomPronunciationParams::Representation
      
        end
      end
      
      class CustomVoiceParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
          property :reported_usage, as: 'reportedUsage'
        end
      end
      
      class GoogleCloudTexttospeechV1beta1SynthesizeLongAudioMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_update_time, as: 'lastUpdateTime'
          property :progress_percentage, as: 'progressPercentage'
          property :start_time, as: 'startTime'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::TexttospeechV1beta1::Operation, decorator: Google::Apis::TexttospeechV1beta1::Operation::Representation
      
        end
      end
      
      class ListVoicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :voices, as: 'voices', class: Google::Apis::TexttospeechV1beta1::Voice, decorator: Google::Apis::TexttospeechV1beta1::Voice::Representation
      
        end
      end
      
      class MultiSpeakerMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :turns, as: 'turns', class: Google::Apis::TexttospeechV1beta1::Turn, decorator: Google::Apis::TexttospeechV1beta1::Turn::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::TexttospeechV1beta1::Status, decorator: Google::Apis::TexttospeechV1beta1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class SynthesisInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_pronunciations, as: 'customPronunciations', class: Google::Apis::TexttospeechV1beta1::CustomPronunciations, decorator: Google::Apis::TexttospeechV1beta1::CustomPronunciations::Representation
      
          property :markup, as: 'markup'
          property :multi_speaker_markup, as: 'multiSpeakerMarkup', class: Google::Apis::TexttospeechV1beta1::MultiSpeakerMarkup, decorator: Google::Apis::TexttospeechV1beta1::MultiSpeakerMarkup::Representation
      
          property :ssml, as: 'ssml'
          property :text, as: 'text'
        end
      end
      
      class SynthesizeLongAudioMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :last_update_time, as: 'lastUpdateTime'
          property :progress_percentage, as: 'progressPercentage'
          property :start_time, as: 'startTime'
        end
      end
      
      class SynthesizeLongAudioRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_config, as: 'audioConfig', class: Google::Apis::TexttospeechV1beta1::AudioConfig, decorator: Google::Apis::TexttospeechV1beta1::AudioConfig::Representation
      
          property :input, as: 'input', class: Google::Apis::TexttospeechV1beta1::SynthesisInput, decorator: Google::Apis::TexttospeechV1beta1::SynthesisInput::Representation
      
          property :output_gcs_uri, as: 'outputGcsUri'
          property :voice, as: 'voice', class: Google::Apis::TexttospeechV1beta1::VoiceSelectionParams, decorator: Google::Apis::TexttospeechV1beta1::VoiceSelectionParams::Representation
      
        end
      end
      
      class SynthesizeSpeechRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advanced_voice_options, as: 'advancedVoiceOptions', class: Google::Apis::TexttospeechV1beta1::AdvancedVoiceOptions, decorator: Google::Apis::TexttospeechV1beta1::AdvancedVoiceOptions::Representation
      
          property :audio_config, as: 'audioConfig', class: Google::Apis::TexttospeechV1beta1::AudioConfig, decorator: Google::Apis::TexttospeechV1beta1::AudioConfig::Representation
      
          collection :enable_time_pointing, as: 'enableTimePointing'
          property :input, as: 'input', class: Google::Apis::TexttospeechV1beta1::SynthesisInput, decorator: Google::Apis::TexttospeechV1beta1::SynthesisInput::Representation
      
          property :voice, as: 'voice', class: Google::Apis::TexttospeechV1beta1::VoiceSelectionParams, decorator: Google::Apis::TexttospeechV1beta1::VoiceSelectionParams::Representation
      
        end
      end
      
      class SynthesizeSpeechResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_config, as: 'audioConfig', class: Google::Apis::TexttospeechV1beta1::AudioConfig, decorator: Google::Apis::TexttospeechV1beta1::AudioConfig::Representation
      
          property :audio_content, :base64 => true, as: 'audioContent'
          collection :timepoints, as: 'timepoints', class: Google::Apis::TexttospeechV1beta1::Timepoint, decorator: Google::Apis::TexttospeechV1beta1::Timepoint::Representation
      
        end
      end
      
      class Timepoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mark_name, as: 'markName'
          property :time_seconds, as: 'timeSeconds'
        end
      end
      
      class Turn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :speaker, as: 'speaker'
          property :text, as: 'text'
        end
      end
      
      class Voice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :language_codes, as: 'languageCodes'
          property :name, as: 'name'
          property :natural_sample_rate_hertz, as: 'naturalSampleRateHertz'
          property :ssml_gender, as: 'ssmlGender'
        end
      end
      
      class VoiceCloneParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :voice_cloning_key, as: 'voiceCloningKey'
        end
      end
      
      class VoiceSelectionParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_voice, as: 'customVoice', class: Google::Apis::TexttospeechV1beta1::CustomVoiceParams, decorator: Google::Apis::TexttospeechV1beta1::CustomVoiceParams::Representation
      
          property :language_code, as: 'languageCode'
          property :name, as: 'name'
          property :ssml_gender, as: 'ssmlGender'
          property :voice_clone, as: 'voiceClone', class: Google::Apis::TexttospeechV1beta1::VoiceCloneParams, decorator: Google::Apis::TexttospeechV1beta1::VoiceCloneParams::Representation
      
        end
      end
    end
  end
end
