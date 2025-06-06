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

require 'google/apis/admin_reports_v1/service.rb'
require 'google/apis/admin_reports_v1/classes.rb'
require 'google/apis/admin_reports_v1/representations.rb'
require 'google/apis/admin_reports_v1/gem_version.rb'

module Google
  module Apis
    # Admin SDK API
    #
    # Admin SDK lets administrators of enterprise domains to view and manage
    # resources like user, groups etc. It also provides audit and usage reports of
    # domain.
    #
    # @see https://developers.google.com/workspace/admin/
    module AdminReportsV1
      # Version of the Admin SDK API this client connects to.
      # This is NOT the gem version.
      VERSION = 'ReportsV1'

      # View audit reports for your G Suite domain
      AUTH_ADMIN_REPORTS_AUDIT_READONLY = 'https://www.googleapis.com/auth/admin.reports.audit.readonly'

      # View usage reports for your G Suite domain
      AUTH_ADMIN_REPORTS_USAGE_READONLY = 'https://www.googleapis.com/auth/admin.reports.usage.readonly'
    end
  end
end
