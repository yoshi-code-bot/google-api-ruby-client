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

require 'google/apis/licensing_v1/service.rb'
require 'google/apis/licensing_v1/classes.rb'
require 'google/apis/licensing_v1/representations.rb'
require 'google/apis/licensing_v1/gem_version.rb'

module Google
  module Apis
    # Enterprise License Manager API
    #
    # The Google Enterprise License Manager API lets you manage Google Workspace and
    # related licenses for all users of a customer that you manage.
    #
    # @see https://developers.google.com/workspace/admin/licensing/
    module LicensingV1
      # Version of the Enterprise License Manager API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # View and manage G Suite licenses for your domain
      AUTH_APPS_LICENSING = 'https://www.googleapis.com/auth/apps.licensing'
    end
  end
end
