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
    module TranscoderV1
      
      class AdBreak
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Aes128Encryption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Animation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnimationEnd
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnimationFade
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnimationStatic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Audio
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AudioMapping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AudioStream
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BwdifConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Clearkey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Color
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Crop
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DashConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Deblock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Deinterlace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Denoise
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DrmSystems
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EditAtom
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ElementaryStream
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Encryption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Fairplay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Fmp4Config
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class H264CodecSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class H264ColorFormatHlg
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class H264ColorFormatSdr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class H265CodecSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class H265ColorFormatHdr10
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class H265ColorFormatHlg
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class H265ColorFormatSdr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Input
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListJobTemplatesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Manifest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MpegCommonEncryption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MuxStream
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NormalizedCoordinate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Output
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Overlay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Pad
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Playready
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreprocessingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PubsubDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SampleAesEncryption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecretManagerSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SegmentSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpriteSheet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextMapping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextStream
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VideoStream
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Vp9CodecSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Vp9ColorFormatHlg
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Vp9ColorFormatSdr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Widevine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class YadifConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdBreak
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_time_offset, as: 'startTimeOffset'
        end
      end
      
      class Aes128Encryption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Animation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :animation_end, as: 'animationEnd', class: Google::Apis::TranscoderV1::AnimationEnd, decorator: Google::Apis::TranscoderV1::AnimationEnd::Representation
      
          property :animation_fade, as: 'animationFade', class: Google::Apis::TranscoderV1::AnimationFade, decorator: Google::Apis::TranscoderV1::AnimationFade::Representation
      
          property :animation_static, as: 'animationStatic', class: Google::Apis::TranscoderV1::AnimationStatic, decorator: Google::Apis::TranscoderV1::AnimationStatic::Representation
      
        end
      end
      
      class AnimationEnd
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_time_offset, as: 'startTimeOffset'
        end
      end
      
      class AnimationFade
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time_offset, as: 'endTimeOffset'
          property :fade_type, as: 'fadeType'
          property :start_time_offset, as: 'startTimeOffset'
          property :xy, as: 'xy', class: Google::Apis::TranscoderV1::NormalizedCoordinate, decorator: Google::Apis::TranscoderV1::NormalizedCoordinate::Representation
      
        end
      end
      
      class AnimationStatic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_time_offset, as: 'startTimeOffset'
          property :xy, as: 'xy', class: Google::Apis::TranscoderV1::NormalizedCoordinate, decorator: Google::Apis::TranscoderV1::NormalizedCoordinate::Representation
      
        end
      end
      
      class Audio
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :high_boost, as: 'highBoost'
          property :low_boost, as: 'lowBoost'
          property :lufs, as: 'lufs'
        end
      end
      
      class AudioMapping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :atom_key, as: 'atomKey'
          property :gain_db, as: 'gainDb'
          property :input_channel, as: 'inputChannel'
          property :input_key, as: 'inputKey'
          property :input_track, as: 'inputTrack'
          property :output_channel, as: 'outputChannel'
        end
      end
      
      class AudioStream
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bitrate_bps, as: 'bitrateBps'
          property :channel_count, as: 'channelCount'
          collection :channel_layout, as: 'channelLayout'
          property :codec, as: 'codec'
          property :display_name, as: 'displayName'
          property :language_code, as: 'languageCode'
          collection :mapping, as: 'mapping', class: Google::Apis::TranscoderV1::AudioMapping, decorator: Google::Apis::TranscoderV1::AudioMapping::Representation
      
          property :sample_rate_hertz, as: 'sampleRateHertz'
        end
      end
      
      class BwdifConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deinterlace_all_frames, as: 'deinterlaceAllFrames'
          property :mode, as: 'mode'
          property :parity, as: 'parity'
        end
      end
      
      class Clearkey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Color
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :brightness, as: 'brightness'
          property :contrast, as: 'contrast'
          property :saturation, as: 'saturation'
        end
      end
      
      class Crop
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bottom_pixels, as: 'bottomPixels'
          property :left_pixels, as: 'leftPixels'
          property :right_pixels, as: 'rightPixels'
          property :top_pixels, as: 'topPixels'
        end
      end
      
      class DashConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :segment_reference_scheme, as: 'segmentReferenceScheme'
        end
      end
      
      class Deblock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :strength, as: 'strength'
        end
      end
      
      class Deinterlace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bwdif, as: 'bwdif', class: Google::Apis::TranscoderV1::BwdifConfig, decorator: Google::Apis::TranscoderV1::BwdifConfig::Representation
      
          property :yadif, as: 'yadif', class: Google::Apis::TranscoderV1::YadifConfig, decorator: Google::Apis::TranscoderV1::YadifConfig::Representation
      
        end
      end
      
      class Denoise
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :strength, as: 'strength'
          property :tune, as: 'tune'
        end
      end
      
      class DrmSystems
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :clearkey, as: 'clearkey', class: Google::Apis::TranscoderV1::Clearkey, decorator: Google::Apis::TranscoderV1::Clearkey::Representation
      
          property :fairplay, as: 'fairplay', class: Google::Apis::TranscoderV1::Fairplay, decorator: Google::Apis::TranscoderV1::Fairplay::Representation
      
          property :playready, as: 'playready', class: Google::Apis::TranscoderV1::Playready, decorator: Google::Apis::TranscoderV1::Playready::Representation
      
          property :widevine, as: 'widevine', class: Google::Apis::TranscoderV1::Widevine, decorator: Google::Apis::TranscoderV1::Widevine::Representation
      
        end
      end
      
      class EditAtom
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time_offset, as: 'endTimeOffset'
          collection :inputs, as: 'inputs'
          property :key, as: 'key'
          property :start_time_offset, as: 'startTimeOffset'
        end
      end
      
      class ElementaryStream
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_stream, as: 'audioStream', class: Google::Apis::TranscoderV1::AudioStream, decorator: Google::Apis::TranscoderV1::AudioStream::Representation
      
          property :key, as: 'key'
          property :text_stream, as: 'textStream', class: Google::Apis::TranscoderV1::TextStream, decorator: Google::Apis::TranscoderV1::TextStream::Representation
      
          property :video_stream, as: 'videoStream', class: Google::Apis::TranscoderV1::VideoStream, decorator: Google::Apis::TranscoderV1::VideoStream::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Encryption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aes128, as: 'aes128', class: Google::Apis::TranscoderV1::Aes128Encryption, decorator: Google::Apis::TranscoderV1::Aes128Encryption::Representation
      
          property :drm_systems, as: 'drmSystems', class: Google::Apis::TranscoderV1::DrmSystems, decorator: Google::Apis::TranscoderV1::DrmSystems::Representation
      
          property :id, as: 'id'
          property :mpeg_cenc, as: 'mpegCenc', class: Google::Apis::TranscoderV1::MpegCommonEncryption, decorator: Google::Apis::TranscoderV1::MpegCommonEncryption::Representation
      
          property :sample_aes, as: 'sampleAes', class: Google::Apis::TranscoderV1::SampleAesEncryption, decorator: Google::Apis::TranscoderV1::SampleAesEncryption::Representation
      
          property :secret_manager_key_source, as: 'secretManagerKeySource', class: Google::Apis::TranscoderV1::SecretManagerSource, decorator: Google::Apis::TranscoderV1::SecretManagerSource::Representation
      
        end
      end
      
      class Fairplay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Fmp4Config
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :codec_tag, as: 'codecTag'
        end
      end
      
      class H264CodecSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_open_gop, as: 'allowOpenGop'
          property :aq_strength, as: 'aqStrength'
          property :b_frame_count, as: 'bFrameCount'
          property :b_pyramid, as: 'bPyramid'
          property :bitrate_bps, as: 'bitrateBps'
          property :crf_level, as: 'crfLevel'
          property :enable_two_pass, as: 'enableTwoPass'
          property :entropy_coder, as: 'entropyCoder'
          property :frame_rate, as: 'frameRate'
          property :frame_rate_conversion_strategy, as: 'frameRateConversionStrategy'
          property :gop_duration, as: 'gopDuration'
          property :gop_frame_count, as: 'gopFrameCount'
          property :height_pixels, as: 'heightPixels'
          property :hlg, as: 'hlg', class: Google::Apis::TranscoderV1::H264ColorFormatHlg, decorator: Google::Apis::TranscoderV1::H264ColorFormatHlg::Representation
      
          property :pixel_format, as: 'pixelFormat'
          property :preset, as: 'preset'
          property :profile, as: 'profile'
          property :rate_control_mode, as: 'rateControlMode'
          property :sdr, as: 'sdr', class: Google::Apis::TranscoderV1::H264ColorFormatSdr, decorator: Google::Apis::TranscoderV1::H264ColorFormatSdr::Representation
      
          property :tune, as: 'tune'
          property :vbv_fullness_bits, as: 'vbvFullnessBits'
          property :vbv_size_bits, as: 'vbvSizeBits'
          property :width_pixels, as: 'widthPixels'
        end
      end
      
      class H264ColorFormatHlg
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class H264ColorFormatSdr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class H265CodecSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_open_gop, as: 'allowOpenGop'
          property :aq_strength, as: 'aqStrength'
          property :b_frame_count, as: 'bFrameCount'
          property :b_pyramid, as: 'bPyramid'
          property :bitrate_bps, as: 'bitrateBps'
          property :crf_level, as: 'crfLevel'
          property :enable_two_pass, as: 'enableTwoPass'
          property :frame_rate, as: 'frameRate'
          property :frame_rate_conversion_strategy, as: 'frameRateConversionStrategy'
          property :gop_duration, as: 'gopDuration'
          property :gop_frame_count, as: 'gopFrameCount'
          property :hdr10, as: 'hdr10', class: Google::Apis::TranscoderV1::H265ColorFormatHdr10, decorator: Google::Apis::TranscoderV1::H265ColorFormatHdr10::Representation
      
          property :height_pixels, as: 'heightPixels'
          property :hlg, as: 'hlg', class: Google::Apis::TranscoderV1::H265ColorFormatHlg, decorator: Google::Apis::TranscoderV1::H265ColorFormatHlg::Representation
      
          property :pixel_format, as: 'pixelFormat'
          property :preset, as: 'preset'
          property :profile, as: 'profile'
          property :rate_control_mode, as: 'rateControlMode'
          property :sdr, as: 'sdr', class: Google::Apis::TranscoderV1::H265ColorFormatSdr, decorator: Google::Apis::TranscoderV1::H265ColorFormatSdr::Representation
      
          property :tune, as: 'tune'
          property :vbv_fullness_bits, as: 'vbvFullnessBits'
          property :vbv_size_bits, as: 'vbvSizeBits'
          property :width_pixels, as: 'widthPixels'
        end
      end
      
      class H265ColorFormatHdr10
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class H265ColorFormatHlg
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class H265ColorFormatSdr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alpha, as: 'alpha'
          property :resolution, as: 'resolution', class: Google::Apis::TranscoderV1::NormalizedCoordinate, decorator: Google::Apis::TranscoderV1::NormalizedCoordinate::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class Input
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :preprocessing_config, as: 'preprocessingConfig', class: Google::Apis::TranscoderV1::PreprocessingConfig, decorator: Google::Apis::TranscoderV1::PreprocessingConfig::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_mode_priority, as: 'batchModePriority'
          property :config, as: 'config', class: Google::Apis::TranscoderV1::JobConfig, decorator: Google::Apis::TranscoderV1::JobConfig::Representation
      
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::TranscoderV1::Status, decorator: Google::Apis::TranscoderV1::Status::Representation
      
          property :fill_content_gaps, as: 'fillContentGaps'
          property :input_uri, as: 'inputUri'
          hash :labels, as: 'labels'
          property :mode, as: 'mode'
          property :name, as: 'name'
          property :optimization, as: 'optimization'
          property :output_uri, as: 'outputUri'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :template_id, as: 'templateId'
          property :ttl_after_completion_days, as: 'ttlAfterCompletionDays'
        end
      end
      
      class JobConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ad_breaks, as: 'adBreaks', class: Google::Apis::TranscoderV1::AdBreak, decorator: Google::Apis::TranscoderV1::AdBreak::Representation
      
          collection :edit_list, as: 'editList', class: Google::Apis::TranscoderV1::EditAtom, decorator: Google::Apis::TranscoderV1::EditAtom::Representation
      
          collection :elementary_streams, as: 'elementaryStreams', class: Google::Apis::TranscoderV1::ElementaryStream, decorator: Google::Apis::TranscoderV1::ElementaryStream::Representation
      
          collection :encryptions, as: 'encryptions', class: Google::Apis::TranscoderV1::Encryption, decorator: Google::Apis::TranscoderV1::Encryption::Representation
      
          collection :inputs, as: 'inputs', class: Google::Apis::TranscoderV1::Input, decorator: Google::Apis::TranscoderV1::Input::Representation
      
          collection :manifests, as: 'manifests', class: Google::Apis::TranscoderV1::Manifest, decorator: Google::Apis::TranscoderV1::Manifest::Representation
      
          collection :mux_streams, as: 'muxStreams', class: Google::Apis::TranscoderV1::MuxStream, decorator: Google::Apis::TranscoderV1::MuxStream::Representation
      
          property :output, as: 'output', class: Google::Apis::TranscoderV1::Output, decorator: Google::Apis::TranscoderV1::Output::Representation
      
          collection :overlays, as: 'overlays', class: Google::Apis::TranscoderV1::Overlay, decorator: Google::Apis::TranscoderV1::Overlay::Representation
      
          property :pubsub_destination, as: 'pubsubDestination', class: Google::Apis::TranscoderV1::PubsubDestination, decorator: Google::Apis::TranscoderV1::PubsubDestination::Representation
      
          collection :sprite_sheets, as: 'spriteSheets', class: Google::Apis::TranscoderV1::SpriteSheet, decorator: Google::Apis::TranscoderV1::SpriteSheet::Representation
      
        end
      end
      
      class JobTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::TranscoderV1::JobConfig, decorator: Google::Apis::TranscoderV1::JobConfig::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
        end
      end
      
      class ListJobTemplatesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :job_templates, as: 'jobTemplates', class: Google::Apis::TranscoderV1::JobTemplate, decorator: Google::Apis::TranscoderV1::JobTemplate::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs', class: Google::Apis::TranscoderV1::Job, decorator: Google::Apis::TranscoderV1::Job::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class Manifest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dash, as: 'dash', class: Google::Apis::TranscoderV1::DashConfig, decorator: Google::Apis::TranscoderV1::DashConfig::Representation
      
          property :file_name, as: 'fileName'
          collection :mux_streams, as: 'muxStreams'
          property :type, as: 'type'
        end
      end
      
      class MpegCommonEncryption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :scheme, as: 'scheme'
        end
      end
      
      class MuxStream
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container, as: 'container'
          collection :elementary_streams, as: 'elementaryStreams'
          property :encryption_id, as: 'encryptionId'
          property :file_name, as: 'fileName'
          property :fmp4, as: 'fmp4', class: Google::Apis::TranscoderV1::Fmp4Config, decorator: Google::Apis::TranscoderV1::Fmp4Config::Representation
      
          property :key, as: 'key'
          property :segment_settings, as: 'segmentSettings', class: Google::Apis::TranscoderV1::SegmentSettings, decorator: Google::Apis::TranscoderV1::SegmentSettings::Representation
      
        end
      end
      
      class NormalizedCoordinate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x, as: 'x'
          property :y, as: 'y'
        end
      end
      
      class Output
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class Overlay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :animations, as: 'animations', class: Google::Apis::TranscoderV1::Animation, decorator: Google::Apis::TranscoderV1::Animation::Representation
      
          property :image, as: 'image', class: Google::Apis::TranscoderV1::Image, decorator: Google::Apis::TranscoderV1::Image::Representation
      
        end
      end
      
      class Pad
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bottom_pixels, as: 'bottomPixels'
          property :left_pixels, as: 'leftPixels'
          property :right_pixels, as: 'rightPixels'
          property :top_pixels, as: 'topPixels'
        end
      end
      
      class Playready
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class PreprocessingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio, as: 'audio', class: Google::Apis::TranscoderV1::Audio, decorator: Google::Apis::TranscoderV1::Audio::Representation
      
          property :color, as: 'color', class: Google::Apis::TranscoderV1::Color, decorator: Google::Apis::TranscoderV1::Color::Representation
      
          property :crop, as: 'crop', class: Google::Apis::TranscoderV1::Crop, decorator: Google::Apis::TranscoderV1::Crop::Representation
      
          property :deblock, as: 'deblock', class: Google::Apis::TranscoderV1::Deblock, decorator: Google::Apis::TranscoderV1::Deblock::Representation
      
          property :deinterlace, as: 'deinterlace', class: Google::Apis::TranscoderV1::Deinterlace, decorator: Google::Apis::TranscoderV1::Deinterlace::Representation
      
          property :denoise, as: 'denoise', class: Google::Apis::TranscoderV1::Denoise, decorator: Google::Apis::TranscoderV1::Denoise::Representation
      
          property :pad, as: 'pad', class: Google::Apis::TranscoderV1::Pad, decorator: Google::Apis::TranscoderV1::Pad::Representation
      
        end
      end
      
      class PubsubDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topic, as: 'topic'
        end
      end
      
      class SampleAesEncryption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SecretManagerSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :secret_version, as: 'secretVersion'
        end
      end
      
      class SegmentSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :individual_segments, as: 'individualSegments'
          property :segment_duration, as: 'segmentDuration'
        end
      end
      
      class SpriteSheet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_count, as: 'columnCount'
          property :end_time_offset, as: 'endTimeOffset'
          property :file_prefix, as: 'filePrefix'
          property :format, as: 'format'
          property :interval, as: 'interval'
          property :quality, as: 'quality'
          property :row_count, as: 'rowCount'
          property :sprite_height_pixels, as: 'spriteHeightPixels'
          property :sprite_width_pixels, as: 'spriteWidthPixels'
          property :start_time_offset, as: 'startTimeOffset'
          property :total_count, as: 'totalCount'
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
      
      class TextMapping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :atom_key, as: 'atomKey'
          property :input_key, as: 'inputKey'
          property :input_track, as: 'inputTrack'
        end
      end
      
      class TextStream
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :codec, as: 'codec'
          property :display_name, as: 'displayName'
          property :language_code, as: 'languageCode'
          collection :mapping, as: 'mapping', class: Google::Apis::TranscoderV1::TextMapping, decorator: Google::Apis::TranscoderV1::TextMapping::Representation
      
        end
      end
      
      class VideoStream
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :h264, as: 'h264', class: Google::Apis::TranscoderV1::H264CodecSettings, decorator: Google::Apis::TranscoderV1::H264CodecSettings::Representation
      
          property :h265, as: 'h265', class: Google::Apis::TranscoderV1::H265CodecSettings, decorator: Google::Apis::TranscoderV1::H265CodecSettings::Representation
      
          property :vp9, as: 'vp9', class: Google::Apis::TranscoderV1::Vp9CodecSettings, decorator: Google::Apis::TranscoderV1::Vp9CodecSettings::Representation
      
        end
      end
      
      class Vp9CodecSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bitrate_bps, as: 'bitrateBps'
          property :crf_level, as: 'crfLevel'
          property :frame_rate, as: 'frameRate'
          property :frame_rate_conversion_strategy, as: 'frameRateConversionStrategy'
          property :gop_duration, as: 'gopDuration'
          property :gop_frame_count, as: 'gopFrameCount'
          property :height_pixels, as: 'heightPixels'
          property :hlg, as: 'hlg', class: Google::Apis::TranscoderV1::Vp9ColorFormatHlg, decorator: Google::Apis::TranscoderV1::Vp9ColorFormatHlg::Representation
      
          property :pixel_format, as: 'pixelFormat'
          property :profile, as: 'profile'
          property :rate_control_mode, as: 'rateControlMode'
          property :sdr, as: 'sdr', class: Google::Apis::TranscoderV1::Vp9ColorFormatSdr, decorator: Google::Apis::TranscoderV1::Vp9ColorFormatSdr::Representation
      
          property :width_pixels, as: 'widthPixels'
        end
      end
      
      class Vp9ColorFormatHlg
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Vp9ColorFormatSdr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Widevine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class YadifConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deinterlace_all_frames, as: 'deinterlaceAllFrames'
          property :disable_spatial_interlacing, as: 'disableSpatialInterlacing'
          property :mode, as: 'mode'
          property :parity, as: 'parity'
        end
      end
    end
  end
end
