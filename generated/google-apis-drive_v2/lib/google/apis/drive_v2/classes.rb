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
    module DriveV2
      
      # An item with user information and settings.
      class About
        include Google::Apis::Core::Hashable
      
        # Information about supported additional roles per file type. The most specific
        # type takes precedence.
        # Corresponds to the JSON property `additionalRoleInfo`
        # @return [Array<Google::Apis::DriveV2::About::AdditionalRoleInfo>]
        attr_accessor :additional_role_info
      
        # Whether the user can create shared drives.
        # Corresponds to the JSON property `canCreateDrives`
        # @return [Boolean]
        attr_accessor :can_create_drives
        alias_method :can_create_drives?, :can_create_drives
      
        # Deprecated: Use `canCreateDrives` instead.
        # Corresponds to the JSON property `canCreateTeamDrives`
        # @return [Boolean]
        attr_accessor :can_create_team_drives
        alias_method :can_create_team_drives?, :can_create_team_drives
      
        # The domain sharing policy for the current user. Possible values are: * `
        # allowed` * `allowedWithWarning` * `incomingOnly` * `disallowed`
        # Corresponds to the JSON property `domainSharingPolicy`
        # @return [String]
        attr_accessor :domain_sharing_policy
      
        # A list of themes that are supported for shared drives.
        # Corresponds to the JSON property `driveThemes`
        # @return [Array<Google::Apis::DriveV2::About::DriveTheme>]
        attr_accessor :drive_themes
      
        # The ETag of the item.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The allowable export formats.
        # Corresponds to the JSON property `exportFormats`
        # @return [Array<Google::Apis::DriveV2::About::ExportFormat>]
        attr_accessor :export_formats
      
        # List of additional features enabled on this account.
        # Corresponds to the JSON property `features`
        # @return [Array<Google::Apis::DriveV2::About::Feature>]
        attr_accessor :features
      
        # The palette of allowable folder colors as RGB hex strings.
        # Corresponds to the JSON property `folderColorPalette`
        # @return [Array<String>]
        attr_accessor :folder_color_palette
      
        # The allowable import formats.
        # Corresponds to the JSON property `importFormats`
        # @return [Array<Google::Apis::DriveV2::About::ImportFormat>]
        attr_accessor :import_formats
      
        # A boolean indicating whether the authenticated app is installed by the
        # authenticated user.
        # Corresponds to the JSON property `isCurrentAppInstalled`
        # @return [Boolean]
        attr_accessor :is_current_app_installed
        alias_method :is_current_app_installed?, :is_current_app_installed
      
        # This is always `drive#about`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The user's language or locale code, as defined by BCP 47, with some extensions
        # from Unicode's LDML format (http://www.unicode.org/reports/tr35/).
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The largest change id.
        # Corresponds to the JSON property `largestChangeId`
        # @return [Fixnum]
        attr_accessor :largest_change_id
      
        # List of max upload sizes for each file type. The most specific type takes
        # precedence.
        # Corresponds to the JSON property `maxUploadSizes`
        # @return [Array<Google::Apis::DriveV2::About::MaxUploadSize>]
        attr_accessor :max_upload_sizes
      
        # The name of the current user.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The current user's ID as visible in the permissions collection.
        # Corresponds to the JSON property `permissionId`
        # @return [String]
        attr_accessor :permission_id
      
        # The amount of storage quota used by different Google services.
        # Corresponds to the JSON property `quotaBytesByService`
        # @return [Array<Google::Apis::DriveV2::About::QuotaBytesByService>]
        attr_accessor :quota_bytes_by_service
      
        # The total number of quota bytes. This is only relevant when quotaType is
        # LIMITED.
        # Corresponds to the JSON property `quotaBytesTotal`
        # @return [Fixnum]
        attr_accessor :quota_bytes_total
      
        # The number of quota bytes used by Google Drive.
        # Corresponds to the JSON property `quotaBytesUsed`
        # @return [Fixnum]
        attr_accessor :quota_bytes_used
      
        # The number of quota bytes used by all Google apps (Drive, Picasa, etc.).
        # Corresponds to the JSON property `quotaBytesUsedAggregate`
        # @return [Fixnum]
        attr_accessor :quota_bytes_used_aggregate
      
        # The number of quota bytes used by trashed items.
        # Corresponds to the JSON property `quotaBytesUsedInTrash`
        # @return [Fixnum]
        attr_accessor :quota_bytes_used_in_trash
      
        # The type of the user's storage quota. Possible values are: * `LIMITED` * `
        # UNLIMITED`
        # Corresponds to the JSON property `quotaType`
        # @return [String]
        attr_accessor :quota_type
      
        # The number of remaining change ids, limited to no more than 2500.
        # Corresponds to the JSON property `remainingChangeIds`
        # @return [Fixnum]
        attr_accessor :remaining_change_ids
      
        # The id of the root folder.
        # Corresponds to the JSON property `rootFolderId`
        # @return [String]
        attr_accessor :root_folder_id
      
        # A link back to this item.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Deprecated: Use `driveThemes` instead.
        # Corresponds to the JSON property `teamDriveThemes`
        # @return [Array<Google::Apis::DriveV2::About::TeamDriveTheme>]
        attr_accessor :team_drive_themes
      
        # Information about a Drive user.
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::DriveV2::User]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_role_info = args[:additional_role_info] if args.key?(:additional_role_info)
          @can_create_drives = args[:can_create_drives] if args.key?(:can_create_drives)
          @can_create_team_drives = args[:can_create_team_drives] if args.key?(:can_create_team_drives)
          @domain_sharing_policy = args[:domain_sharing_policy] if args.key?(:domain_sharing_policy)
          @drive_themes = args[:drive_themes] if args.key?(:drive_themes)
          @etag = args[:etag] if args.key?(:etag)
          @export_formats = args[:export_formats] if args.key?(:export_formats)
          @features = args[:features] if args.key?(:features)
          @folder_color_palette = args[:folder_color_palette] if args.key?(:folder_color_palette)
          @import_formats = args[:import_formats] if args.key?(:import_formats)
          @is_current_app_installed = args[:is_current_app_installed] if args.key?(:is_current_app_installed)
          @kind = args[:kind] if args.key?(:kind)
          @language_code = args[:language_code] if args.key?(:language_code)
          @largest_change_id = args[:largest_change_id] if args.key?(:largest_change_id)
          @max_upload_sizes = args[:max_upload_sizes] if args.key?(:max_upload_sizes)
          @name = args[:name] if args.key?(:name)
          @permission_id = args[:permission_id] if args.key?(:permission_id)
          @quota_bytes_by_service = args[:quota_bytes_by_service] if args.key?(:quota_bytes_by_service)
          @quota_bytes_total = args[:quota_bytes_total] if args.key?(:quota_bytes_total)
          @quota_bytes_used = args[:quota_bytes_used] if args.key?(:quota_bytes_used)
          @quota_bytes_used_aggregate = args[:quota_bytes_used_aggregate] if args.key?(:quota_bytes_used_aggregate)
          @quota_bytes_used_in_trash = args[:quota_bytes_used_in_trash] if args.key?(:quota_bytes_used_in_trash)
          @quota_type = args[:quota_type] if args.key?(:quota_type)
          @remaining_change_ids = args[:remaining_change_ids] if args.key?(:remaining_change_ids)
          @root_folder_id = args[:root_folder_id] if args.key?(:root_folder_id)
          @self_link = args[:self_link] if args.key?(:self_link)
          @team_drive_themes = args[:team_drive_themes] if args.key?(:team_drive_themes)
          @user = args[:user] if args.key?(:user)
        end
        
        # 
        class AdditionalRoleInfo
          include Google::Apis::Core::Hashable
        
          # The supported additional roles per primary role.
          # Corresponds to the JSON property `roleSets`
          # @return [Array<Google::Apis::DriveV2::About::AdditionalRoleInfo::RoleSet>]
          attr_accessor :role_sets
        
          # The content type that this additional role info applies to.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @role_sets = args[:role_sets] if args.key?(:role_sets)
            @type = args[:type] if args.key?(:type)
          end
          
          # 
          class RoleSet
            include Google::Apis::Core::Hashable
          
            # The supported additional roles with the primary role.
            # Corresponds to the JSON property `additionalRoles`
            # @return [Array<String>]
            attr_accessor :additional_roles
          
            # A primary permission role.
            # Corresponds to the JSON property `primaryRole`
            # @return [String]
            attr_accessor :primary_role
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @additional_roles = args[:additional_roles] if args.key?(:additional_roles)
              @primary_role = args[:primary_role] if args.key?(:primary_role)
            end
          end
        end
        
        # 
        class DriveTheme
          include Google::Apis::Core::Hashable
        
          # A link to this theme's background image.
          # Corresponds to the JSON property `backgroundImageLink`
          # @return [String]
          attr_accessor :background_image_link
        
          # The color of this theme as an RGB hex string.
          # Corresponds to the JSON property `colorRgb`
          # @return [String]
          attr_accessor :color_rgb
        
          # The ID of the theme.
          # Corresponds to the JSON property `id`
          # @return [String]
          attr_accessor :id
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @background_image_link = args[:background_image_link] if args.key?(:background_image_link)
            @color_rgb = args[:color_rgb] if args.key?(:color_rgb)
            @id = args[:id] if args.key?(:id)
          end
        end
        
        # 
        class ExportFormat
          include Google::Apis::Core::Hashable
        
          # The content type to convert from.
          # Corresponds to the JSON property `source`
          # @return [String]
          attr_accessor :source
        
          # The possible content types to convert to.
          # Corresponds to the JSON property `targets`
          # @return [Array<String>]
          attr_accessor :targets
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @source = args[:source] if args.key?(:source)
            @targets = args[:targets] if args.key?(:targets)
          end
        end
        
        # 
        class Feature
          include Google::Apis::Core::Hashable
        
          # The name of the feature.
          # Corresponds to the JSON property `featureName`
          # @return [String]
          attr_accessor :feature_name
        
          # The request limit rate for this feature, in queries per second.
          # Corresponds to the JSON property `featureRate`
          # @return [Float]
          attr_accessor :feature_rate
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @feature_name = args[:feature_name] if args.key?(:feature_name)
            @feature_rate = args[:feature_rate] if args.key?(:feature_rate)
          end
        end
        
        # 
        class ImportFormat
          include Google::Apis::Core::Hashable
        
          # The imported file's content type to convert from.
          # Corresponds to the JSON property `source`
          # @return [String]
          attr_accessor :source
        
          # The possible content types to convert to.
          # Corresponds to the JSON property `targets`
          # @return [Array<String>]
          attr_accessor :targets
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @source = args[:source] if args.key?(:source)
            @targets = args[:targets] if args.key?(:targets)
          end
        end
        
        # 
        class MaxUploadSize
          include Google::Apis::Core::Hashable
        
          # The max upload size for this type.
          # Corresponds to the JSON property `size`
          # @return [Fixnum]
          attr_accessor :size
        
          # The file type.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @size = args[:size] if args.key?(:size)
            @type = args[:type] if args.key?(:type)
          end
        end
        
        # 
        class QuotaBytesByService
          include Google::Apis::Core::Hashable
        
          # The storage quota bytes used by the service.
          # Corresponds to the JSON property `bytesUsed`
          # @return [Fixnum]
          attr_accessor :bytes_used
        
          # The service's name, e.g. DRIVE, GMAIL, or PHOTOS.
          # Corresponds to the JSON property `serviceName`
          # @return [String]
          attr_accessor :service_name
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @bytes_used = args[:bytes_used] if args.key?(:bytes_used)
            @service_name = args[:service_name] if args.key?(:service_name)
          end
        end
        
        # 
        class TeamDriveTheme
          include Google::Apis::Core::Hashable
        
          # Deprecated: Use `driveThemes/backgroundImageLink` instead.
          # Corresponds to the JSON property `backgroundImageLink`
          # @return [String]
          attr_accessor :background_image_link
        
          # Deprecated: Use `driveThemes/colorRgb` instead.
          # Corresponds to the JSON property `colorRgb`
          # @return [String]
          attr_accessor :color_rgb
        
          # Deprecated: Use `driveThemes/id` instead.
          # Corresponds to the JSON property `id`
          # @return [String]
          attr_accessor :id
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @background_image_link = args[:background_image_link] if args.key?(:background_image_link)
            @color_rgb = args[:color_rgb] if args.key?(:color_rgb)
            @id = args[:id] if args.key?(:id)
          end
        end
      end
      
      # The apps resource provides a list of the apps that a user has installed, with
      # information about each app's supported MIME types, file extensions, and other
      # details. Some resource methods (such as `apps.get`) require an `appId`. Use
      # the `apps.list` method to retrieve the ID for an installed application.
      class App
        include Google::Apis::Core::Hashable
      
        # Whether the app is authorized to access data on the user's Drive.
        # Corresponds to the JSON property `authorized`
        # @return [Boolean]
        attr_accessor :authorized
        alias_method :authorized?, :authorized
      
        # The template url to create a new file with this app in a given folder. The
        # template will contain `folderId` to be replaced by the folder to create the
        # new file in.
        # Corresponds to the JSON property `createInFolderTemplate`
        # @return [String]
        attr_accessor :create_in_folder_template
      
        # The url to create a new file with this app.
        # Corresponds to the JSON property `createUrl`
        # @return [String]
        attr_accessor :create_url
      
        # Whether the app has drive-wide scope. An app with drive-wide scope can access
        # all files in the user's drive.
        # Corresponds to the JSON property `hasDriveWideScope`
        # @return [Boolean]
        attr_accessor :has_drive_wide_scope
        alias_method :has_drive_wide_scope?, :has_drive_wide_scope
      
        # The various icons for the app.
        # Corresponds to the JSON property `icons`
        # @return [Array<Google::Apis::DriveV2::App::Icon>]
        attr_accessor :icons
      
        # The ID of the app.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Whether the app is installed.
        # Corresponds to the JSON property `installed`
        # @return [Boolean]
        attr_accessor :installed
        alias_method :installed?, :installed
      
        # This is always `drive#app`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A long description of the app.
        # Corresponds to the JSON property `longDescription`
        # @return [String]
        attr_accessor :long_description
      
        # The name of the app.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The type of object this app creates (e.g. Chart). If empty, the app name
        # should be used instead.
        # Corresponds to the JSON property `objectType`
        # @return [String]
        attr_accessor :object_type
      
        # The template url for opening files with this app. The template will contain ``
        # ids`` and/or ``exportIds`` to be replaced by the actual file ids. See Open
        # Files for the full documentation.
        # Corresponds to the JSON property `openUrlTemplate`
        # @return [String]
        attr_accessor :open_url_template
      
        # The list of primary file extensions.
        # Corresponds to the JSON property `primaryFileExtensions`
        # @return [Array<String>]
        attr_accessor :primary_file_extensions
      
        # The list of primary mime types.
        # Corresponds to the JSON property `primaryMimeTypes`
        # @return [Array<String>]
        attr_accessor :primary_mime_types
      
        # The ID of the product listing for this app.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # A link to the product listing for this app.
        # Corresponds to the JSON property `productUrl`
        # @return [String]
        attr_accessor :product_url
      
        # The list of secondary file extensions.
        # Corresponds to the JSON property `secondaryFileExtensions`
        # @return [Array<String>]
        attr_accessor :secondary_file_extensions
      
        # The list of secondary mime types.
        # Corresponds to the JSON property `secondaryMimeTypes`
        # @return [Array<String>]
        attr_accessor :secondary_mime_types
      
        # A short description of the app.
        # Corresponds to the JSON property `shortDescription`
        # @return [String]
        attr_accessor :short_description
      
        # Whether this app supports creating new objects.
        # Corresponds to the JSON property `supportsCreate`
        # @return [Boolean]
        attr_accessor :supports_create
        alias_method :supports_create?, :supports_create
      
        # Whether this app supports importing from Docs Editors.
        # Corresponds to the JSON property `supportsImport`
        # @return [Boolean]
        attr_accessor :supports_import
        alias_method :supports_import?, :supports_import
      
        # Whether this app supports opening more than one file.
        # Corresponds to the JSON property `supportsMultiOpen`
        # @return [Boolean]
        attr_accessor :supports_multi_open
        alias_method :supports_multi_open?, :supports_multi_open
      
        # Whether this app supports creating new files when offline.
        # Corresponds to the JSON property `supportsOfflineCreate`
        # @return [Boolean]
        attr_accessor :supports_offline_create
        alias_method :supports_offline_create?, :supports_offline_create
      
        # Whether the app is selected as the default handler for the types it supports.
        # Corresponds to the JSON property `useByDefault`
        # @return [Boolean]
        attr_accessor :use_by_default
        alias_method :use_by_default?, :use_by_default
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorized = args[:authorized] if args.key?(:authorized)
          @create_in_folder_template = args[:create_in_folder_template] if args.key?(:create_in_folder_template)
          @create_url = args[:create_url] if args.key?(:create_url)
          @has_drive_wide_scope = args[:has_drive_wide_scope] if args.key?(:has_drive_wide_scope)
          @icons = args[:icons] if args.key?(:icons)
          @id = args[:id] if args.key?(:id)
          @installed = args[:installed] if args.key?(:installed)
          @kind = args[:kind] if args.key?(:kind)
          @long_description = args[:long_description] if args.key?(:long_description)
          @name = args[:name] if args.key?(:name)
          @object_type = args[:object_type] if args.key?(:object_type)
          @open_url_template = args[:open_url_template] if args.key?(:open_url_template)
          @primary_file_extensions = args[:primary_file_extensions] if args.key?(:primary_file_extensions)
          @primary_mime_types = args[:primary_mime_types] if args.key?(:primary_mime_types)
          @product_id = args[:product_id] if args.key?(:product_id)
          @product_url = args[:product_url] if args.key?(:product_url)
          @secondary_file_extensions = args[:secondary_file_extensions] if args.key?(:secondary_file_extensions)
          @secondary_mime_types = args[:secondary_mime_types] if args.key?(:secondary_mime_types)
          @short_description = args[:short_description] if args.key?(:short_description)
          @supports_create = args[:supports_create] if args.key?(:supports_create)
          @supports_import = args[:supports_import] if args.key?(:supports_import)
          @supports_multi_open = args[:supports_multi_open] if args.key?(:supports_multi_open)
          @supports_offline_create = args[:supports_offline_create] if args.key?(:supports_offline_create)
          @use_by_default = args[:use_by_default] if args.key?(:use_by_default)
        end
        
        # 
        class Icon
          include Google::Apis::Core::Hashable
        
          # Category of the icon. Allowed values are: * `application` - icon for the
          # application * `document` - icon for a file associated with the app * `
          # documentShared` - icon for a shared file associated with the app
          # Corresponds to the JSON property `category`
          # @return [String]
          attr_accessor :category
        
          # URL for the icon.
          # Corresponds to the JSON property `iconUrl`
          # @return [String]
          attr_accessor :icon_url
        
          # Size of the icon. Represented as the maximum of the width and height.
          # Corresponds to the JSON property `size`
          # @return [Fixnum]
          attr_accessor :size
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @category = args[:category] if args.key?(:category)
            @icon_url = args[:icon_url] if args.key?(:icon_url)
            @size = args[:size] if args.key?(:size)
          end
        end
      end
      
      # A list of third-party applications which the user has installed or given
      # access to Google Drive.
      class AppList
        include Google::Apis::Core::Hashable
      
        # List of app IDs that the user has specified to use by default. The list is in
        # reverse-priority order (lowest to highest).
        # Corresponds to the JSON property `defaultAppIds`
        # @return [Array<String>]
        attr_accessor :default_app_ids
      
        # The ETag of the list.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The list of apps.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DriveV2::App>]
        attr_accessor :items
      
        # This is always `drive#appList`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A link back to this list.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_app_ids = args[:default_app_ids] if args.key?(:default_app_ids)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Representation of a change to a file or shared drive.
      class Change
        include Google::Apis::Core::Hashable
      
        # The type of the change. Possible values are `file` and `drive`.
        # Corresponds to the JSON property `changeType`
        # @return [String]
        attr_accessor :change_type
      
        # Whether the file or shared drive has been removed from this list of changes,
        # for example by deletion or loss of access.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # Representation of a shared drive. Some resource methods (such as `drives.
        # update`) require a `driveId`. Use the `drives.list` method to retrieve the ID
        # for a shared drive.
        # Corresponds to the JSON property `drive`
        # @return [Google::Apis::DriveV2::Drive]
        attr_accessor :drive
      
        # The ID of the shared drive associated with this change.
        # Corresponds to the JSON property `driveId`
        # @return [String]
        attr_accessor :drive_id
      
        # The metadata for a file. Some resource methods (such as `files.update`)
        # require a `fileId`. Use the `files.list` method to retrieve the ID for a file.
        # Corresponds to the JSON property `file`
        # @return [Google::Apis::DriveV2::File]
        attr_accessor :file
      
        # The ID of the file associated with this change.
        # Corresponds to the JSON property `fileId`
        # @return [String]
        attr_accessor :file_id
      
        # The ID of the change.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # This is always `drive#change`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The time of this modification.
        # Corresponds to the JSON property `modificationDate`
        # @return [DateTime]
        attr_accessor :modification_date
      
        # A link back to this change.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Deprecated: Use the `drive` collection instead.
        # Corresponds to the JSON property `teamDrive`
        # @return [Google::Apis::DriveV2::TeamDrive]
        attr_accessor :team_drive
      
        # Deprecated: Use `driveId` instead.
        # Corresponds to the JSON property `teamDriveId`
        # @return [String]
        attr_accessor :team_drive_id
      
        # Deprecated: Use `changeType` instead.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @change_type = args[:change_type] if args.key?(:change_type)
          @deleted = args[:deleted] if args.key?(:deleted)
          @drive = args[:drive] if args.key?(:drive)
          @drive_id = args[:drive_id] if args.key?(:drive_id)
          @file = args[:file] if args.key?(:file)
          @file_id = args[:file_id] if args.key?(:file_id)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @modification_date = args[:modification_date] if args.key?(:modification_date)
          @self_link = args[:self_link] if args.key?(:self_link)
          @team_drive = args[:team_drive] if args.key?(:team_drive)
          @team_drive_id = args[:team_drive_id] if args.key?(:team_drive_id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A list of changes for a user.
      class ChangeList
        include Google::Apis::Core::Hashable
      
        # The ETag of the list.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The list of changes. If nextPageToken is populated, then this list may be
        # incomplete and an additional page of results should be fetched.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DriveV2::Change>]
        attr_accessor :items
      
        # This is always `drive#changeList`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The current largest change ID.
        # Corresponds to the JSON property `largestChangeId`
        # @return [Fixnum]
        attr_accessor :largest_change_id
      
        # The starting page token for future changes. This will be present only if the
        # end of the current changes list has been reached.
        # Corresponds to the JSON property `newStartPageToken`
        # @return [String]
        attr_accessor :new_start_page_token
      
        # A link to the next page of changes.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # The page token for the next page of changes. This will be absent if the end of
        # the changes list has been reached. If the token is rejected for any reason, it
        # should be discarded, and pagination should be restarted from the first page of
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A link back to this list.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @largest_change_id = args[:largest_change_id] if args.key?(:largest_change_id)
          @new_start_page_token = args[:new_start_page_token] if args.key?(:new_start_page_token)
          @next_link = args[:next_link] if args.key?(:next_link)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A notification channel used to watch for resource changes.
      class Channel
        include Google::Apis::Core::Hashable
      
        # The address where notifications are delivered for this channel.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Date and time of notification channel expiration, expressed as a Unix
        # timestamp, in milliseconds. Optional.
        # Corresponds to the JSON property `expiration`
        # @return [Fixnum]
        attr_accessor :expiration
      
        # A UUID or similar unique string that identifies this channel.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies this as a notification channel used to watch for changes to a
        # resource, which is `api#channel`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Additional parameters controlling delivery channel behavior. Optional.
        # Corresponds to the JSON property `params`
        # @return [Hash<String,String>]
        attr_accessor :params
      
        # A Boolean value to indicate whether payload is wanted. Optional.
        # Corresponds to the JSON property `payload`
        # @return [Boolean]
        attr_accessor :payload
        alias_method :payload?, :payload
      
        # An opaque ID that identifies the resource being watched on this channel.
        # Stable across different API versions.
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # A version-specific identifier for the watched resource.
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        # An arbitrary string delivered to the target address with each notification
        # delivered over this channel. Optional.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # The type of delivery mechanism used for this channel. Valid values are "
        # web_hook" or "webhook".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @expiration = args[:expiration] if args.key?(:expiration)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @params = args[:params] if args.key?(:params)
          @payload = args[:payload] if args.key?(:payload)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
          @token = args[:token] if args.key?(:token)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A list of children of a file.
      class ChildList
        include Google::Apis::Core::Hashable
      
        # The ETag of the list.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The list of children. If nextPageToken is populated, then this list may be
        # incomplete and an additional page of results should be fetched.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DriveV2::ChildReference>]
        attr_accessor :items
      
        # This is always `drive#childList`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A link to the next page of children.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # The page token for the next page of children. This will be absent if the end
        # of the children list has been reached. If the token is rejected for any reason,
        # it should be discarded, and pagination should be restarted from the first
        # page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A link back to this list.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_link = args[:next_link] if args.key?(:next_link)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A reference to a folder's child. Some resource methods (such as `children.get`)
      # require a `childId`. Use the `children.list` method to retrieve the ID of the
      # child.
      class ChildReference
        include Google::Apis::Core::Hashable
      
        # Output only. A link to the child.
        # Corresponds to the JSON property `childLink`
        # @return [String]
        attr_accessor :child_link
      
        # The ID of the child.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. This is always `drive#childReference`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Output only. A link back to this reference.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @child_link = args[:child_link] if args.key?(:child_link)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A comment on a file in Google Drive. Some resource methods (such as `comments.
      # update`) require a `commentId`. Use the `comments.list` method to retrieve the
      # ID for a comment in a file.
      class Comment
        include Google::Apis::Core::Hashable
      
        # A region of the document represented as a JSON string. For details on defining
        # anchor properties, refer to [Add comments and replies](https://developers.
        # google.com/workspace/drive/api/v2/manage-comments).
        # Corresponds to the JSON property `anchor`
        # @return [String]
        attr_accessor :anchor
      
        # Information about a Drive user.
        # Corresponds to the JSON property `author`
        # @return [Google::Apis::DriveV2::User]
        attr_accessor :author
      
        # Output only. The ID of the comment.
        # Corresponds to the JSON property `commentId`
        # @return [String]
        attr_accessor :comment_id
      
        # The plain text content used to create this comment. This is not HTML safe and
        # should only be used as a starting point to make edits to a comment's content.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The context of the file which is being commented on.
        # Corresponds to the JSON property `context`
        # @return [Google::Apis::DriveV2::Comment::Context]
        attr_accessor :context
      
        # The date when this comment was first created.
        # Corresponds to the JSON property `createdDate`
        # @return [DateTime]
        attr_accessor :created_date
      
        # Output only. Whether this comment has been deleted. If a comment has been
        # deleted the content will be cleared and this will only represent a comment
        # that once existed.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # Output only. The file which this comment is addressing.
        # Corresponds to the JSON property `fileId`
        # @return [String]
        attr_accessor :file_id
      
        # Output only. The title of the file which this comment is addressing.
        # Corresponds to the JSON property `fileTitle`
        # @return [String]
        attr_accessor :file_title
      
        # Output only. HTML formatted content for this comment.
        # Corresponds to the JSON property `htmlContent`
        # @return [String]
        attr_accessor :html_content
      
        # Output only. This is always `drive#comment`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The date when this comment or any of its replies were last modified.
        # Corresponds to the JSON property `modifiedDate`
        # @return [DateTime]
        attr_accessor :modified_date
      
        # Output only. Replies to this post.
        # Corresponds to the JSON property `replies`
        # @return [Array<Google::Apis::DriveV2::CommentReply>]
        attr_accessor :replies
      
        # Output only. A link back to this comment.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Output only. The status of this comment. Status can be changed by posting a
        # reply to a comment with the desired status. * `open` - The comment is still
        # open. * `resolved` - The comment has been resolved by one of its replies.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @anchor = args[:anchor] if args.key?(:anchor)
          @author = args[:author] if args.key?(:author)
          @comment_id = args[:comment_id] if args.key?(:comment_id)
          @content = args[:content] if args.key?(:content)
          @context = args[:context] if args.key?(:context)
          @created_date = args[:created_date] if args.key?(:created_date)
          @deleted = args[:deleted] if args.key?(:deleted)
          @file_id = args[:file_id] if args.key?(:file_id)
          @file_title = args[:file_title] if args.key?(:file_title)
          @html_content = args[:html_content] if args.key?(:html_content)
          @kind = args[:kind] if args.key?(:kind)
          @modified_date = args[:modified_date] if args.key?(:modified_date)
          @replies = args[:replies] if args.key?(:replies)
          @self_link = args[:self_link] if args.key?(:self_link)
          @status = args[:status] if args.key?(:status)
        end
        
        # The context of the file which is being commented on.
        class Context
          include Google::Apis::Core::Hashable
        
          # The MIME type of the context snippet.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          # Data representation of the segment of the file being commented on. In the case
          # of a text file for example, this would be the actual text that the comment is
          # about.
          # Corresponds to the JSON property `value`
          # @return [String]
          attr_accessor :value
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @type = args[:type] if args.key?(:type)
            @value = args[:value] if args.key?(:value)
          end
        end
      end
      
      # A list of comments on a file in Google Drive.
      class CommentList
        include Google::Apis::Core::Hashable
      
        # The list of comments. If nextPageToken is populated, then this list may be
        # incomplete and an additional page of results should be fetched.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DriveV2::Comment>]
        attr_accessor :items
      
        # This is always `drive#commentList`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A link to the next page of comments.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # The page token for the next page of comments. This will be absent if the end
        # of the comments list has been reached. If the token is rejected for any reason,
        # it should be discarded, and pagination should be restarted from the first
        # page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A link back to this list.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_link = args[:next_link] if args.key?(:next_link)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A comment on a file in Google Drive. Some resource methods (such as `replies.
      # update`) require a `replyId`. Use the `replies.list` method to retrieve the ID
      # for a reply.
      class CommentReply
        include Google::Apis::Core::Hashable
      
        # Information about a Drive user.
        # Corresponds to the JSON property `author`
        # @return [Google::Apis::DriveV2::User]
        attr_accessor :author
      
        # The plain text content used to create this reply. This is not HTML safe and
        # should only be used as a starting point to make edits to a reply's content.
        # This field is required on inserts if no verb is specified (resolve/reopen).
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The date when this reply was first created.
        # Corresponds to the JSON property `createdDate`
        # @return [DateTime]
        attr_accessor :created_date
      
        # Output only. Whether this reply has been deleted. If a reply has been deleted
        # the content will be cleared and this will only represent a reply that once
        # existed.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # Output only. HTML formatted content for this reply.
        # Corresponds to the JSON property `htmlContent`
        # @return [String]
        attr_accessor :html_content
      
        # Output only. This is always `drive#commentReply`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The date when this reply was last modified.
        # Corresponds to the JSON property `modifiedDate`
        # @return [DateTime]
        attr_accessor :modified_date
      
        # Output only. The ID of the reply.
        # Corresponds to the JSON property `replyId`
        # @return [String]
        attr_accessor :reply_id
      
        # The action this reply performed to the parent comment. When creating a new
        # reply this is the action to be perform to the parent comment. Possible values
        # are: * `resolve` - To resolve a comment. * `reopen` - To reopen (un-resolve) a
        # comment.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @author = args[:author] if args.key?(:author)
          @content = args[:content] if args.key?(:content)
          @created_date = args[:created_date] if args.key?(:created_date)
          @deleted = args[:deleted] if args.key?(:deleted)
          @html_content = args[:html_content] if args.key?(:html_content)
          @kind = args[:kind] if args.key?(:kind)
          @modified_date = args[:modified_date] if args.key?(:modified_date)
          @reply_id = args[:reply_id] if args.key?(:reply_id)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # A list of replies to a comment on a file in Google Drive.
      class CommentReplyList
        include Google::Apis::Core::Hashable
      
        # The list of replies. If nextPageToken is populated, then this list may be
        # incomplete and an additional page of results should be fetched.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DriveV2::CommentReply>]
        attr_accessor :items
      
        # This is always `drive#commentReplyList`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A link to the next page of replies.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # The page token for the next page of replies. This will be absent if the end of
        # the replies list has been reached. If the token is rejected for any reason, it
        # should be discarded, and pagination should be restarted from the first page of
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A link back to this list.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_link = args[:next_link] if args.key?(:next_link)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A restriction for accessing the content of the file.
      class ContentRestriction
        include Google::Apis::Core::Hashable
      
        # Whether the content restriction can only be modified or removed by a user who
        # owns the file. For files in shared drives, any user with `organizer`
        # capabilities can modify or remove this content restriction.
        # Corresponds to the JSON property `ownerRestricted`
        # @return [Boolean]
        attr_accessor :owner_restricted
        alias_method :owner_restricted?, :owner_restricted
      
        # Whether the content of the file is read-only. If a file is read-only, a new
        # revision of the file may not be added, comments may not be added or modified,
        # and the title of the file may not be modified.
        # Corresponds to the JSON property `readOnly`
        # @return [Boolean]
        attr_accessor :read_only
        alias_method :read_only?, :read_only
      
        # Reason for why the content of the file is restricted. This is only mutable on
        # requests that also set `readOnly=true`.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # Information about a Drive user.
        # Corresponds to the JSON property `restrictingUser`
        # @return [Google::Apis::DriveV2::User]
        attr_accessor :restricting_user
      
        # The time at which the content restriction was set (formatted RFC 3339
        # timestamp). Only populated if readOnly is true.
        # Corresponds to the JSON property `restrictionDate`
        # @return [DateTime]
        attr_accessor :restriction_date
      
        # Output only. Whether the content restriction was applied by the system, for
        # example due to an esignature. Users cannot modify or remove system restricted
        # content restrictions.
        # Corresponds to the JSON property `systemRestricted`
        # @return [Boolean]
        attr_accessor :system_restricted
        alias_method :system_restricted?, :system_restricted
      
        # Output only. The type of the content restriction. Currently the only possible
        # value is `globalContentRestriction`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @owner_restricted = args[:owner_restricted] if args.key?(:owner_restricted)
          @read_only = args[:read_only] if args.key?(:read_only)
          @reason = args[:reason] if args.key?(:reason)
          @restricting_user = args[:restricting_user] if args.key?(:restricting_user)
          @restriction_date = args[:restriction_date] if args.key?(:restriction_date)
          @system_restricted = args[:system_restricted] if args.key?(:system_restricted)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Representation of a shared drive. Some resource methods (such as `drives.
      # update`) require a `driveId`. Use the `drives.list` method to retrieve the ID
      # for a shared drive.
      class Drive
        include Google::Apis::Core::Hashable
      
        # An image file and cropping parameters from which a background image for this
        # shared drive is set. This is a write only field; it can only be set on `drive.
        # drives.update` requests that don't set `themeId`. When specified, all fields
        # of the `backgroundImageFile` must be set.
        # Corresponds to the JSON property `backgroundImageFile`
        # @return [Google::Apis::DriveV2::Drive::BackgroundImageFile]
        attr_accessor :background_image_file
      
        # Output only. A short-lived link to this shared drive's background image.
        # Corresponds to the JSON property `backgroundImageLink`
        # @return [String]
        attr_accessor :background_image_link
      
        # Output only. Capabilities the current user has on this shared drive.
        # Corresponds to the JSON property `capabilities`
        # @return [Google::Apis::DriveV2::Drive::Capabilities]
        attr_accessor :capabilities
      
        # The color of this shared drive as an RGB hex string. It can only be set on a `
        # drive.drives.update` request that does not set `themeId`.
        # Corresponds to the JSON property `colorRgb`
        # @return [String]
        attr_accessor :color_rgb
      
        # The time at which the shared drive was created (RFC 3339 date-time).
        # Corresponds to the JSON property `createdDate`
        # @return [DateTime]
        attr_accessor :created_date
      
        # Whether the shared drive is hidden from default view.
        # Corresponds to the JSON property `hidden`
        # @return [Boolean]
        attr_accessor :hidden
        alias_method :hidden?, :hidden
      
        # Output only. The ID of this shared drive which is also the ID of the top level
        # folder of this shared drive.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. This is always `drive#drive`
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of this shared drive.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The organizational unit of this shared drive. This field is only
        # populated on `drives.list` responses when the `useDomainAdminAccess` parameter
        # is set to `true`.
        # Corresponds to the JSON property `orgUnitId`
        # @return [String]
        attr_accessor :org_unit_id
      
        # A set of restrictions that apply to this shared drive or items inside this
        # shared drive.
        # Corresponds to the JSON property `restrictions`
        # @return [Google::Apis::DriveV2::Drive::Restrictions]
        attr_accessor :restrictions
      
        # The ID of the theme from which the background image and color will be set. The
        # set of possible `driveThemes` can be retrieved from a `drive.about.get`
        # response. When not specified on a `drive.drives.insert` request, a random
        # theme is chosen from which the background image and color are set. This is a
        # write-only field; it can only be set on requests that don't set `colorRgb` or `
        # backgroundImageFile`.
        # Corresponds to the JSON property `themeId`
        # @return [String]
        attr_accessor :theme_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @background_image_file = args[:background_image_file] if args.key?(:background_image_file)
          @background_image_link = args[:background_image_link] if args.key?(:background_image_link)
          @capabilities = args[:capabilities] if args.key?(:capabilities)
          @color_rgb = args[:color_rgb] if args.key?(:color_rgb)
          @created_date = args[:created_date] if args.key?(:created_date)
          @hidden = args[:hidden] if args.key?(:hidden)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @org_unit_id = args[:org_unit_id] if args.key?(:org_unit_id)
          @restrictions = args[:restrictions] if args.key?(:restrictions)
          @theme_id = args[:theme_id] if args.key?(:theme_id)
        end
        
        # An image file and cropping parameters from which a background image for this
        # shared drive is set. This is a write only field; it can only be set on `drive.
        # drives.update` requests that don't set `themeId`. When specified, all fields
        # of the `backgroundImageFile` must be set.
        class BackgroundImageFile
          include Google::Apis::Core::Hashable
        
          # The ID of an image file in Google Drive to use for the background image.
          # Corresponds to the JSON property `id`
          # @return [String]
          attr_accessor :id
        
          # The width of the cropped image in the closed range of 0 to 1. This value
          # represents the width of the cropped image divided by the width of the entire
          # image. The height is computed by applying a width to height aspect ratio of 80
          # to 9. The resulting image must be at least 1280 pixels wide and 144 pixels
          # high.
          # Corresponds to the JSON property `width`
          # @return [Float]
          attr_accessor :width
        
          # The X coordinate of the upper left corner of the cropping area in the
          # background image. This is a value in the closed range of 0 to 1. This value
          # represents the horizontal distance from the left side of the entire image to
          # the left side of the cropping area divided by the width of the entire image.
          # Corresponds to the JSON property `xCoordinate`
          # @return [Float]
          attr_accessor :x_coordinate
        
          # The Y coordinate of the upper left corner of the cropping area in the
          # background image. This is a value in the closed range of 0 to 1. This value
          # represents the vertical distance from the top side of the entire image to the
          # top side of the cropping area divided by the height of the entire image.
          # Corresponds to the JSON property `yCoordinate`
          # @return [Float]
          attr_accessor :y_coordinate
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @id = args[:id] if args.key?(:id)
            @width = args[:width] if args.key?(:width)
            @x_coordinate = args[:x_coordinate] if args.key?(:x_coordinate)
            @y_coordinate = args[:y_coordinate] if args.key?(:y_coordinate)
          end
        end
        
        # Output only. Capabilities the current user has on this shared drive.
        class Capabilities
          include Google::Apis::Core::Hashable
        
          # Output only. Whether the current user can add children to folders in this
          # shared drive.
          # Corresponds to the JSON property `canAddChildren`
          # @return [Boolean]
          attr_accessor :can_add_children
          alias_method :can_add_children?, :can_add_children
        
          # Output only. Whether the current user can change the `
          # copyRequiresWriterPermission` restriction of this shared drive.
          # Corresponds to the JSON property `canChangeCopyRequiresWriterPermissionRestriction`
          # @return [Boolean]
          attr_accessor :can_change_copy_requires_writer_permission_restriction
          alias_method :can_change_copy_requires_writer_permission_restriction?, :can_change_copy_requires_writer_permission_restriction
        
          # Output only. Whether the current user can change the `domainUsersOnly`
          # restriction of this shared drive.
          # Corresponds to the JSON property `canChangeDomainUsersOnlyRestriction`
          # @return [Boolean]
          attr_accessor :can_change_domain_users_only_restriction
          alias_method :can_change_domain_users_only_restriction?, :can_change_domain_users_only_restriction
        
          # Output only. Whether the current user can change the background of this shared
          # drive.
          # Corresponds to the JSON property `canChangeDriveBackground`
          # @return [Boolean]
          attr_accessor :can_change_drive_background
          alias_method :can_change_drive_background?, :can_change_drive_background
        
          # Output only. Whether the current user can change the `driveMembersOnly`
          # restriction of this shared drive.
          # Corresponds to the JSON property `canChangeDriveMembersOnlyRestriction`
          # @return [Boolean]
          attr_accessor :can_change_drive_members_only_restriction
          alias_method :can_change_drive_members_only_restriction?, :can_change_drive_members_only_restriction
        
          # Output only. Whether the current user can change the `
          # sharingFoldersRequiresOrganizerPermission` restriction of this shared drive.
          # Corresponds to the JSON property `canChangeSharingFoldersRequiresOrganizerPermissionRestriction`
          # @return [Boolean]
          attr_accessor :can_change_sharing_folders_requires_organizer_permission_restriction
          alias_method :can_change_sharing_folders_requires_organizer_permission_restriction?, :can_change_sharing_folders_requires_organizer_permission_restriction
        
          # Output only. Whether the current user can comment on files in this shared
          # drive.
          # Corresponds to the JSON property `canComment`
          # @return [Boolean]
          attr_accessor :can_comment
          alias_method :can_comment?, :can_comment
        
          # Output only. Whether the current user can copy files in this shared drive.
          # Corresponds to the JSON property `canCopy`
          # @return [Boolean]
          attr_accessor :can_copy
          alias_method :can_copy?, :can_copy
        
          # Output only. Whether the current user can delete children from folders in this
          # shared drive.
          # Corresponds to the JSON property `canDeleteChildren`
          # @return [Boolean]
          attr_accessor :can_delete_children
          alias_method :can_delete_children?, :can_delete_children
        
          # Output only. Whether the current user can delete this shared drive. Attempting
          # to delete the shared drive may still fail if there are untrashed items inside
          # the shared drive.
          # Corresponds to the JSON property `canDeleteDrive`
          # @return [Boolean]
          attr_accessor :can_delete_drive
          alias_method :can_delete_drive?, :can_delete_drive
        
          # Output only. Whether the current user can download files in this shared drive.
          # Corresponds to the JSON property `canDownload`
          # @return [Boolean]
          attr_accessor :can_download
          alias_method :can_download?, :can_download
        
          # Output only. Whether the current user can edit files in this shared drive
          # Corresponds to the JSON property `canEdit`
          # @return [Boolean]
          attr_accessor :can_edit
          alias_method :can_edit?, :can_edit
        
          # Output only. Whether the current user can list the children of folders in this
          # shared drive.
          # Corresponds to the JSON property `canListChildren`
          # @return [Boolean]
          attr_accessor :can_list_children
          alias_method :can_list_children?, :can_list_children
        
          # Output only. Whether the current user can add members to this shared drive or
          # remove them or change their role.
          # Corresponds to the JSON property `canManageMembers`
          # @return [Boolean]
          attr_accessor :can_manage_members
          alias_method :can_manage_members?, :can_manage_members
        
          # Output only. Whether the current user can read the revisions resource of files
          # in this shared drive.
          # Corresponds to the JSON property `canReadRevisions`
          # @return [Boolean]
          attr_accessor :can_read_revisions
          alias_method :can_read_revisions?, :can_read_revisions
        
          # Output only. Whether the current user can rename files or folders in this
          # shared drive.
          # Corresponds to the JSON property `canRename`
          # @return [Boolean]
          attr_accessor :can_rename
          alias_method :can_rename?, :can_rename
        
          # Output only. Whether the current user can rename this shared drive.
          # Corresponds to the JSON property `canRenameDrive`
          # @return [Boolean]
          attr_accessor :can_rename_drive
          alias_method :can_rename_drive?, :can_rename_drive
        
          # Output only. Whether the current user can reset the shared drive restrictions
          # to defaults.
          # Corresponds to the JSON property `canResetDriveRestrictions`
          # @return [Boolean]
          attr_accessor :can_reset_drive_restrictions
          alias_method :can_reset_drive_restrictions?, :can_reset_drive_restrictions
        
          # Output only. Whether the current user can share files or folders in this
          # shared drive.
          # Corresponds to the JSON property `canShare`
          # @return [Boolean]
          attr_accessor :can_share
          alias_method :can_share?, :can_share
        
          # Output only. Whether the current user can trash children from folders in this
          # shared drive.
          # Corresponds to the JSON property `canTrashChildren`
          # @return [Boolean]
          attr_accessor :can_trash_children
          alias_method :can_trash_children?, :can_trash_children
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @can_add_children = args[:can_add_children] if args.key?(:can_add_children)
            @can_change_copy_requires_writer_permission_restriction = args[:can_change_copy_requires_writer_permission_restriction] if args.key?(:can_change_copy_requires_writer_permission_restriction)
            @can_change_domain_users_only_restriction = args[:can_change_domain_users_only_restriction] if args.key?(:can_change_domain_users_only_restriction)
            @can_change_drive_background = args[:can_change_drive_background] if args.key?(:can_change_drive_background)
            @can_change_drive_members_only_restriction = args[:can_change_drive_members_only_restriction] if args.key?(:can_change_drive_members_only_restriction)
            @can_change_sharing_folders_requires_organizer_permission_restriction = args[:can_change_sharing_folders_requires_organizer_permission_restriction] if args.key?(:can_change_sharing_folders_requires_organizer_permission_restriction)
            @can_comment = args[:can_comment] if args.key?(:can_comment)
            @can_copy = args[:can_copy] if args.key?(:can_copy)
            @can_delete_children = args[:can_delete_children] if args.key?(:can_delete_children)
            @can_delete_drive = args[:can_delete_drive] if args.key?(:can_delete_drive)
            @can_download = args[:can_download] if args.key?(:can_download)
            @can_edit = args[:can_edit] if args.key?(:can_edit)
            @can_list_children = args[:can_list_children] if args.key?(:can_list_children)
            @can_manage_members = args[:can_manage_members] if args.key?(:can_manage_members)
            @can_read_revisions = args[:can_read_revisions] if args.key?(:can_read_revisions)
            @can_rename = args[:can_rename] if args.key?(:can_rename)
            @can_rename_drive = args[:can_rename_drive] if args.key?(:can_rename_drive)
            @can_reset_drive_restrictions = args[:can_reset_drive_restrictions] if args.key?(:can_reset_drive_restrictions)
            @can_share = args[:can_share] if args.key?(:can_share)
            @can_trash_children = args[:can_trash_children] if args.key?(:can_trash_children)
          end
        end
        
        # A set of restrictions that apply to this shared drive or items inside this
        # shared drive.
        class Restrictions
          include Google::Apis::Core::Hashable
        
          # Whether administrative privileges on this shared drive are required to modify
          # restrictions.
          # Corresponds to the JSON property `adminManagedRestrictions`
          # @return [Boolean]
          attr_accessor :admin_managed_restrictions
          alias_method :admin_managed_restrictions?, :admin_managed_restrictions
        
          # Whether the options to copy, print, or download files inside this shared drive,
          # should be disabled for readers and commenters. When this restriction is set
          # to `true`, it will override the similarly named field to `true` for any file
          # inside this shared drive.
          # Corresponds to the JSON property `copyRequiresWriterPermission`
          # @return [Boolean]
          attr_accessor :copy_requires_writer_permission
          alias_method :copy_requires_writer_permission?, :copy_requires_writer_permission
        
          # Whether access to this shared drive and items inside this shared drive is
          # restricted to users of the domain to which this shared drive belongs. This
          # restriction may be overridden by other sharing policies controlled outside of
          # this shared drive.
          # Corresponds to the JSON property `domainUsersOnly`
          # @return [Boolean]
          attr_accessor :domain_users_only
          alias_method :domain_users_only?, :domain_users_only
        
          # Whether access to items inside this shared drive is restricted to its members.
          # Corresponds to the JSON property `driveMembersOnly`
          # @return [Boolean]
          attr_accessor :drive_members_only
          alias_method :drive_members_only?, :drive_members_only
        
          # If true, only users with the organizer role can share folders. If false, users
          # with either the organizer role or the file organizer role can share folders.
          # Corresponds to the JSON property `sharingFoldersRequiresOrganizerPermission`
          # @return [Boolean]
          attr_accessor :sharing_folders_requires_organizer_permission
          alias_method :sharing_folders_requires_organizer_permission?, :sharing_folders_requires_organizer_permission
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @admin_managed_restrictions = args[:admin_managed_restrictions] if args.key?(:admin_managed_restrictions)
            @copy_requires_writer_permission = args[:copy_requires_writer_permission] if args.key?(:copy_requires_writer_permission)
            @domain_users_only = args[:domain_users_only] if args.key?(:domain_users_only)
            @drive_members_only = args[:drive_members_only] if args.key?(:drive_members_only)
            @sharing_folders_requires_organizer_permission = args[:sharing_folders_requires_organizer_permission] if args.key?(:sharing_folders_requires_organizer_permission)
          end
        end
      end
      
      # A list of shared drives.
      class DriveList
        include Google::Apis::Core::Hashable
      
        # The list of shared drives. If nextPageToken is populated, then this list may
        # be incomplete and an additional page of results should be fetched.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DriveV2::Drive>]
        attr_accessor :items
      
        # This is always `drive#driveList`
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The page token for the next page of shared drives. This will be absent if the
        # end of the list has been reached. If the token is rejected for any reason, it
        # should be discarded, and pagination should be restarted from the first page of
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The metadata for a file. Some resource methods (such as `files.update`)
      # require a `fileId`. Use the `files.list` method to retrieve the ID for a file.
      class File
        include Google::Apis::Core::Hashable
      
        # Output only. A link for opening the file in a relevant Google editor or viewer.
        # Corresponds to the JSON property `alternateLink`
        # @return [String]
        attr_accessor :alternate_link
      
        # Output only. Whether this file is in the Application Data folder.
        # Corresponds to the JSON property `appDataContents`
        # @return [Boolean]
        attr_accessor :app_data_contents
        alias_method :app_data_contents?, :app_data_contents
      
        # Output only. Deprecated: Use `capabilities/canComment` instead.
        # Corresponds to the JSON property `canComment`
        # @return [Boolean]
        attr_accessor :can_comment
        alias_method :can_comment?, :can_comment
      
        # Output only. Deprecated: Use `capabilities/canReadRevisions` instead.
        # Corresponds to the JSON property `canReadRevisions`
        # @return [Boolean]
        attr_accessor :can_read_revisions
        alias_method :can_read_revisions?, :can_read_revisions
      
        # Output only. Capabilities the current user has on this file. Each capability
        # corresponds to a fine-grained action that a user may take.
        # Corresponds to the JSON property `capabilities`
        # @return [Google::Apis::DriveV2::File::Capabilities]
        attr_accessor :capabilities
      
        # Restrictions for accessing the content of the file. Only populated if such a
        # restriction exists.
        # Corresponds to the JSON property `contentRestrictions`
        # @return [Array<Google::Apis::DriveV2::ContentRestriction>]
        attr_accessor :content_restrictions
      
        # Whether the options to copy, print, or download this file, should be disabled
        # for readers and commenters.
        # Corresponds to the JSON property `copyRequiresWriterPermission`
        # @return [Boolean]
        attr_accessor :copy_requires_writer_permission
        alias_method :copy_requires_writer_permission?, :copy_requires_writer_permission
      
        # Output only. Deprecated: Use `capabilities/canCopy` instead.
        # Corresponds to the JSON property `copyable`
        # @return [Boolean]
        attr_accessor :copyable
        alias_method :copyable?, :copyable
      
        # Create time for this file (formatted RFC 3339 timestamp).
        # Corresponds to the JSON property `createdDate`
        # @return [DateTime]
        attr_accessor :created_date
      
        # Output only. A link to open this file with the user's default app for this
        # file. Only populated when the drive.apps.readonly scope is used.
        # Corresponds to the JSON property `defaultOpenWithLink`
        # @return [String]
        attr_accessor :default_open_with_link
      
        # A short description of the file.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Short lived download URL for the file. This field is only
        # populated for files with content stored in Google Drive; it is not populated
        # for Google Docs or shortcut files.
        # Corresponds to the JSON property `downloadUrl`
        # @return [String]
        attr_accessor :download_url
      
        # Output only. ID of the shared drive the file resides in. Only populated for
        # items in shared drives.
        # Corresponds to the JSON property `driveId`
        # @return [String]
        attr_accessor :drive_id
      
        # Output only. Deprecated: Use `capabilities/canEdit` instead.
        # Corresponds to the JSON property `editable`
        # @return [Boolean]
        attr_accessor :editable
        alias_method :editable?, :editable
      
        # Output only. A link for embedding the file.
        # Corresponds to the JSON property `embedLink`
        # @return [String]
        attr_accessor :embed_link
      
        # Output only. ETag of the file.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. Whether this file has been explicitly trashed, as opposed to
        # recursively trashed.
        # Corresponds to the JSON property `explicitlyTrashed`
        # @return [Boolean]
        attr_accessor :explicitly_trashed
        alias_method :explicitly_trashed?, :explicitly_trashed
      
        # Output only. Links for exporting Docs Editors files to specific formats.
        # Corresponds to the JSON property `exportLinks`
        # @return [Hash<String,String>]
        attr_accessor :export_links
      
        # Output only. The final component of `fullFileExtension` with trailing text
        # that does not appear to be part of the extension removed. This field is only
        # populated for files with content stored in Google Drive; it is not populated
        # for Docs Editors or shortcut files.
        # Corresponds to the JSON property `fileExtension`
        # @return [String]
        attr_accessor :file_extension
      
        # Output only. Size in bytes of blobs and first party editor files. Won't be
        # populated for files that have no size, like shortcuts and folders.
        # Corresponds to the JSON property `fileSize`
        # @return [Fixnum]
        attr_accessor :file_size
      
        # Folder color as an RGB hex string if the file is a folder or a shortcut to a
        # folder. The list of supported colors is available in the folderColorPalette
        # field of the About resource. If an unsupported color is specified, it will be
        # changed to the closest color in the palette.
        # Corresponds to the JSON property `folderColorRgb`
        # @return [String]
        attr_accessor :folder_color_rgb
      
        # Output only. The full file extension; extracted from the title. May contain
        # multiple concatenated extensions, such as "tar.gz". Removing an extension from
        # the title does not clear this field; however, changing the extension on the
        # title does update this field. This field is only populated for files with
        # content stored in Google Drive; it is not populated for Docs Editors or
        # shortcut files.
        # Corresponds to the JSON property `fullFileExtension`
        # @return [String]
        attr_accessor :full_file_extension
      
        # Output only. Whether there are permissions directly on this file. This field
        # is only populated for items in shared drives.
        # Corresponds to the JSON property `hasAugmentedPermissions`
        # @return [Boolean]
        attr_accessor :has_augmented_permissions
        alias_method :has_augmented_permissions?, :has_augmented_permissions
      
        # Output only. Whether this file has a thumbnail. This does not indicate whether
        # the requesting app has access to the thumbnail. To check access, look for the
        # presence of the thumbnailLink field.
        # Corresponds to the JSON property `hasThumbnail`
        # @return [Boolean]
        attr_accessor :has_thumbnail
        alias_method :has_thumbnail?, :has_thumbnail
      
        # Output only. The ID of the file's head revision. This field is only populated
        # for files with content stored in Google Drive; it is not populated for Docs
        # Editors or shortcut files.
        # Corresponds to the JSON property `headRevisionId`
        # @return [String]
        attr_accessor :head_revision_id
      
        # Output only. A link to the file's icon.
        # Corresponds to the JSON property `iconLink`
        # @return [String]
        attr_accessor :icon_link
      
        # The ID of the file.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. Metadata about image media. This will only be present for image
        # types, and its contents will depend on what can be parsed from the image
        # content.
        # Corresponds to the JSON property `imageMediaMetadata`
        # @return [Google::Apis::DriveV2::File::ImageMediaMetadata]
        attr_accessor :image_media_metadata
      
        # Indexable text attributes for the file (can only be written)
        # Corresponds to the JSON property `indexableText`
        # @return [Google::Apis::DriveV2::File::IndexableText]
        attr_accessor :indexable_text
      
        # Whether this file has inherited permissions disabled. Inherited permissions
        # are enabled by default.
        # Corresponds to the JSON property `inheritedPermissionsDisabled`
        # @return [Boolean]
        attr_accessor :inherited_permissions_disabled
        alias_method :inherited_permissions_disabled?, :inherited_permissions_disabled
      
        # Output only. Whether the file was created or opened by the requesting app.
        # Corresponds to the JSON property `isAppAuthorized`
        # @return [Boolean]
        attr_accessor :is_app_authorized
        alias_method :is_app_authorized?, :is_app_authorized
      
        # Output only. The type of file. This is always `drive#file`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Output only. An overview of the labels on the file.
        # Corresponds to the JSON property `labelInfo`
        # @return [Google::Apis::DriveV2::File::LabelInfo]
        attr_accessor :label_info
      
        # A group of labels for the file.
        # Corresponds to the JSON property `labels`
        # @return [Google::Apis::DriveV2::File::Labels]
        attr_accessor :labels
      
        # Information about a Drive user.
        # Corresponds to the JSON property `lastModifyingUser`
        # @return [Google::Apis::DriveV2::User]
        attr_accessor :last_modifying_user
      
        # Output only. Name of the last user to modify this file.
        # Corresponds to the JSON property `lastModifyingUserName`
        # @return [String]
        attr_accessor :last_modifying_user_name
      
        # Last time this file was viewed by the user (formatted RFC 3339 timestamp).
        # Corresponds to the JSON property `lastViewedByMeDate`
        # @return [DateTime]
        attr_accessor :last_viewed_by_me_date
      
        # Contains details about the link URLs that clients are using to refer to this
        # item.
        # Corresponds to the JSON property `linkShareMetadata`
        # @return [Google::Apis::DriveV2::File::LinkShareMetadata]
        attr_accessor :link_share_metadata
      
        # Deprecated.
        # Corresponds to the JSON property `markedViewedByMeDate`
        # @return [DateTime]
        attr_accessor :marked_viewed_by_me_date
      
        # Output only. An MD5 checksum for the content of this file. This field is only
        # populated for files with content stored in Google Drive; it is not populated
        # for Docs Editors or shortcut files.
        # Corresponds to the JSON property `md5Checksum`
        # @return [String]
        attr_accessor :md5_checksum
      
        # The MIME type of the file. This is only mutable on update when uploading new
        # content. This field can be left blank, and the mimetype will be determined
        # from the uploaded content's MIME type.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Last time this file was modified by the user (formatted RFC 3339 timestamp).
        # Note that setting modifiedDate will also update the modifiedByMe date for the
        # user which set the date.
        # Corresponds to the JSON property `modifiedByMeDate`
        # @return [DateTime]
        attr_accessor :modified_by_me_date
      
        # Last time this file was modified by anyone (formatted RFC 3339 timestamp).
        # This is only mutable on update when the setModifiedDate parameter is set.
        # Corresponds to the JSON property `modifiedDate`
        # @return [DateTime]
        attr_accessor :modified_date
      
        # Output only. A map of the id of each of the user's apps to a link to open this
        # file with that app. Only populated when the drive.apps.readonly scope is used.
        # Corresponds to the JSON property `openWithLinks`
        # @return [Hash<String,String>]
        attr_accessor :open_with_links
      
        # The original filename of the uploaded content if available, or else the
        # original value of the `title` field. This is only available for files with
        # binary content in Google Drive.
        # Corresponds to the JSON property `originalFilename`
        # @return [String]
        attr_accessor :original_filename
      
        # Output only. Whether the file is owned by the current user. Not populated for
        # items in shared drives.
        # Corresponds to the JSON property `ownedByMe`
        # @return [Boolean]
        attr_accessor :owned_by_me
        alias_method :owned_by_me?, :owned_by_me
      
        # Output only. Name(s) of the owner(s) of this file. Not populated for items in
        # shared drives.
        # Corresponds to the JSON property `ownerNames`
        # @return [Array<String>]
        attr_accessor :owner_names
      
        # Output only. The owner of this file. Only certain legacy files may have more
        # than one owner. This field isn't populated for items in shared drives.
        # Corresponds to the JSON property `owners`
        # @return [Array<Google::Apis::DriveV2::User>]
        attr_accessor :owners
      
        # The ID of the parent folder containing the file. A file can only have one
        # parent folder; specifying multiple parents isn't supported. If not specified
        # as part of an insert request, the file is placed directly in the user's My
        # Drive folder. If not specified as part of a copy request, the file inherits
        # any discoverable parent of the source file. Update requests must use the `
        # addParents` and `removeParents` parameters to modify the parents list.
        # Corresponds to the JSON property `parents`
        # @return [Array<Google::Apis::DriveV2::ParentReference>]
        attr_accessor :parents
      
        # Output only. List of permission IDs for users with access to this file.
        # Corresponds to the JSON property `permissionIds`
        # @return [Array<String>]
        attr_accessor :permission_ids
      
        # Output only. The list of permissions for users with access to this file. Not
        # populated for items in shared drives.
        # Corresponds to the JSON property `permissions`
        # @return [Array<Google::Apis::DriveV2::Permission>]
        attr_accessor :permissions
      
        # The list of properties.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::DriveV2::Property>]
        attr_accessor :properties
      
        # Output only. The number of quota bytes used by this file.
        # Corresponds to the JSON property `quotaBytesUsed`
        # @return [Fixnum]
        attr_accessor :quota_bytes_used
      
        # Output only. A key needed to access the item via a shared link.
        # Corresponds to the JSON property `resourceKey`
        # @return [String]
        attr_accessor :resource_key
      
        # Output only. A link back to this file.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Output only. The SHA1 checksum associated with this file, if available. This
        # field is only populated for files with content stored in Google Drive; it is
        # not populated for Docs Editors or shortcut files.
        # Corresponds to the JSON property `sha1Checksum`
        # @return [String]
        attr_accessor :sha1_checksum
      
        # Output only. The SHA256 checksum associated with this file, if available. This
        # field is only populated for files with content stored in Google Drive; it is
        # not populated for Docs Editors or shortcut files.
        # Corresponds to the JSON property `sha256Checksum`
        # @return [String]
        attr_accessor :sha256_checksum
      
        # Output only. Deprecated: Use `capabilities/canShare` instead.
        # Corresponds to the JSON property `shareable`
        # @return [Boolean]
        attr_accessor :shareable
        alias_method :shareable?, :shareable
      
        # Output only. Whether the file has been shared. Not populated for items in
        # shared drives.
        # Corresponds to the JSON property `shared`
        # @return [Boolean]
        attr_accessor :shared
        alias_method :shared?, :shared
      
        # Time at which this file was shared with the user (formatted RFC 3339 timestamp)
        # .
        # Corresponds to the JSON property `sharedWithMeDate`
        # @return [DateTime]
        attr_accessor :shared_with_me_date
      
        # Information about a Drive user.
        # Corresponds to the JSON property `sharingUser`
        # @return [Google::Apis::DriveV2::User]
        attr_accessor :sharing_user
      
        # Shortcut file details. Only populated for shortcut files, which have the
        # mimeType field set to `application/vnd.google-apps.shortcut`. Can only be set
        # on `files.insert` requests.
        # Corresponds to the JSON property `shortcutDetails`
        # @return [Google::Apis::DriveV2::File::ShortcutDetails]
        attr_accessor :shortcut_details
      
        # Output only. The list of spaces which contain the file. Supported values are `
        # drive`, `appDataFolder` and `photos`.
        # Corresponds to the JSON property `spaces`
        # @return [Array<String>]
        attr_accessor :spaces
      
        # Output only. Deprecated: Use `driveId` instead.
        # Corresponds to the JSON property `teamDriveId`
        # @return [String]
        attr_accessor :team_drive_id
      
        # A thumbnail for the file. This will only be used if a standard thumbnail
        # cannot be generated.
        # Corresponds to the JSON property `thumbnail`
        # @return [Google::Apis::DriveV2::File::Thumbnail]
        attr_accessor :thumbnail
      
        # Output only. A short-lived link to the file's thumbnail, if available.
        # Typically lasts on the order of hours. Not intended for direct usage on web
        # applications due to [Cross-Origin Resource Sharing (CORS)](https://developer.
        # mozilla.org/en-US/docs/Web/HTTP/CORS), consider using a proxy server. Only
        # populated when the requesting app can access the file's content. If the file
        # isn't shared publicly, the URL returned in `Files.thumbnailLink` must be
        # fetched using a credentialed request.
        # Corresponds to the JSON property `thumbnailLink`
        # @return [String]
        attr_accessor :thumbnail_link
      
        # Output only. The thumbnail version for use in thumbnail cache invalidation.
        # Corresponds to the JSON property `thumbnailVersion`
        # @return [Fixnum]
        attr_accessor :thumbnail_version
      
        # The title of this file. Note that for immutable items such as the top level
        # folders of shared drives, My Drive root folder, and Application Data folder
        # the title is constant.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The time that the item was trashed (formatted RFC 3339 timestamp). Only
        # populated for items in shared drives.
        # Corresponds to the JSON property `trashedDate`
        # @return [DateTime]
        attr_accessor :trashed_date
      
        # Information about a Drive user.
        # Corresponds to the JSON property `trashingUser`
        # @return [Google::Apis::DriveV2::User]
        attr_accessor :trashing_user
      
        # A permission for a file. A permission grants a user, group, domain, or the
        # world access to a file or a folder hierarchy. Some resource methods (such as `
        # permissions.update`) require a `permissionId`. Use the `permissions.list`
        # method to retrieve the ID for a file, folder, or shared drive.
        # Corresponds to the JSON property `userPermission`
        # @return [Google::Apis::DriveV2::Permission]
        attr_accessor :user_permission
      
        # Output only. A monotonically increasing version number for the file. This
        # reflects every change made to the file on the server, even those not visible
        # to the requesting user.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        # Output only. Metadata about video media. This will only be present for video
        # types.
        # Corresponds to the JSON property `videoMediaMetadata`
        # @return [Google::Apis::DriveV2::File::VideoMediaMetadata]
        attr_accessor :video_media_metadata
      
        # Output only. A link for downloading the content of the file in a browser using
        # cookie based authentication. In cases where the content is shared publicly,
        # the content can be downloaded without any credentials.
        # Corresponds to the JSON property `webContentLink`
        # @return [String]
        attr_accessor :web_content_link
      
        # Output only. A link only available on public folders for viewing their static
        # web assets (HTML, CSS, JS, etc) via Google Drive's Website Hosting.
        # Corresponds to the JSON property `webViewLink`
        # @return [String]
        attr_accessor :web_view_link
      
        # Whether writers can share the document with other users. Not populated for
        # items in shared drives.
        # Corresponds to the JSON property `writersCanShare`
        # @return [Boolean]
        attr_accessor :writers_can_share
        alias_method :writers_can_share?, :writers_can_share
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate_link = args[:alternate_link] if args.key?(:alternate_link)
          @app_data_contents = args[:app_data_contents] if args.key?(:app_data_contents)
          @can_comment = args[:can_comment] if args.key?(:can_comment)
          @can_read_revisions = args[:can_read_revisions] if args.key?(:can_read_revisions)
          @capabilities = args[:capabilities] if args.key?(:capabilities)
          @content_restrictions = args[:content_restrictions] if args.key?(:content_restrictions)
          @copy_requires_writer_permission = args[:copy_requires_writer_permission] if args.key?(:copy_requires_writer_permission)
          @copyable = args[:copyable] if args.key?(:copyable)
          @created_date = args[:created_date] if args.key?(:created_date)
          @default_open_with_link = args[:default_open_with_link] if args.key?(:default_open_with_link)
          @description = args[:description] if args.key?(:description)
          @download_url = args[:download_url] if args.key?(:download_url)
          @drive_id = args[:drive_id] if args.key?(:drive_id)
          @editable = args[:editable] if args.key?(:editable)
          @embed_link = args[:embed_link] if args.key?(:embed_link)
          @etag = args[:etag] if args.key?(:etag)
          @explicitly_trashed = args[:explicitly_trashed] if args.key?(:explicitly_trashed)
          @export_links = args[:export_links] if args.key?(:export_links)
          @file_extension = args[:file_extension] if args.key?(:file_extension)
          @file_size = args[:file_size] if args.key?(:file_size)
          @folder_color_rgb = args[:folder_color_rgb] if args.key?(:folder_color_rgb)
          @full_file_extension = args[:full_file_extension] if args.key?(:full_file_extension)
          @has_augmented_permissions = args[:has_augmented_permissions] if args.key?(:has_augmented_permissions)
          @has_thumbnail = args[:has_thumbnail] if args.key?(:has_thumbnail)
          @head_revision_id = args[:head_revision_id] if args.key?(:head_revision_id)
          @icon_link = args[:icon_link] if args.key?(:icon_link)
          @id = args[:id] if args.key?(:id)
          @image_media_metadata = args[:image_media_metadata] if args.key?(:image_media_metadata)
          @indexable_text = args[:indexable_text] if args.key?(:indexable_text)
          @inherited_permissions_disabled = args[:inherited_permissions_disabled] if args.key?(:inherited_permissions_disabled)
          @is_app_authorized = args[:is_app_authorized] if args.key?(:is_app_authorized)
          @kind = args[:kind] if args.key?(:kind)
          @label_info = args[:label_info] if args.key?(:label_info)
          @labels = args[:labels] if args.key?(:labels)
          @last_modifying_user = args[:last_modifying_user] if args.key?(:last_modifying_user)
          @last_modifying_user_name = args[:last_modifying_user_name] if args.key?(:last_modifying_user_name)
          @last_viewed_by_me_date = args[:last_viewed_by_me_date] if args.key?(:last_viewed_by_me_date)
          @link_share_metadata = args[:link_share_metadata] if args.key?(:link_share_metadata)
          @marked_viewed_by_me_date = args[:marked_viewed_by_me_date] if args.key?(:marked_viewed_by_me_date)
          @md5_checksum = args[:md5_checksum] if args.key?(:md5_checksum)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @modified_by_me_date = args[:modified_by_me_date] if args.key?(:modified_by_me_date)
          @modified_date = args[:modified_date] if args.key?(:modified_date)
          @open_with_links = args[:open_with_links] if args.key?(:open_with_links)
          @original_filename = args[:original_filename] if args.key?(:original_filename)
          @owned_by_me = args[:owned_by_me] if args.key?(:owned_by_me)
          @owner_names = args[:owner_names] if args.key?(:owner_names)
          @owners = args[:owners] if args.key?(:owners)
          @parents = args[:parents] if args.key?(:parents)
          @permission_ids = args[:permission_ids] if args.key?(:permission_ids)
          @permissions = args[:permissions] if args.key?(:permissions)
          @properties = args[:properties] if args.key?(:properties)
          @quota_bytes_used = args[:quota_bytes_used] if args.key?(:quota_bytes_used)
          @resource_key = args[:resource_key] if args.key?(:resource_key)
          @self_link = args[:self_link] if args.key?(:self_link)
          @sha1_checksum = args[:sha1_checksum] if args.key?(:sha1_checksum)
          @sha256_checksum = args[:sha256_checksum] if args.key?(:sha256_checksum)
          @shareable = args[:shareable] if args.key?(:shareable)
          @shared = args[:shared] if args.key?(:shared)
          @shared_with_me_date = args[:shared_with_me_date] if args.key?(:shared_with_me_date)
          @sharing_user = args[:sharing_user] if args.key?(:sharing_user)
          @shortcut_details = args[:shortcut_details] if args.key?(:shortcut_details)
          @spaces = args[:spaces] if args.key?(:spaces)
          @team_drive_id = args[:team_drive_id] if args.key?(:team_drive_id)
          @thumbnail = args[:thumbnail] if args.key?(:thumbnail)
          @thumbnail_link = args[:thumbnail_link] if args.key?(:thumbnail_link)
          @thumbnail_version = args[:thumbnail_version] if args.key?(:thumbnail_version)
          @title = args[:title] if args.key?(:title)
          @trashed_date = args[:trashed_date] if args.key?(:trashed_date)
          @trashing_user = args[:trashing_user] if args.key?(:trashing_user)
          @user_permission = args[:user_permission] if args.key?(:user_permission)
          @version = args[:version] if args.key?(:version)
          @video_media_metadata = args[:video_media_metadata] if args.key?(:video_media_metadata)
          @web_content_link = args[:web_content_link] if args.key?(:web_content_link)
          @web_view_link = args[:web_view_link] if args.key?(:web_view_link)
          @writers_can_share = args[:writers_can_share] if args.key?(:writers_can_share)
        end
        
        # Output only. Capabilities the current user has on this file. Each capability
        # corresponds to a fine-grained action that a user may take.
        class Capabilities
          include Google::Apis::Core::Hashable
        
          # Output only. Whether the current user is the pending owner of the file. Not
          # populated for shared drive files.
          # Corresponds to the JSON property `canAcceptOwnership`
          # @return [Boolean]
          attr_accessor :can_accept_ownership
          alias_method :can_accept_ownership?, :can_accept_ownership
        
          # Output only. Whether the current user can add children to this folder. This is
          # always false when the item is not a folder.
          # Corresponds to the JSON property `canAddChildren`
          # @return [Boolean]
          attr_accessor :can_add_children
          alias_method :can_add_children?, :can_add_children
        
          # Output only. Whether the current user can add a folder from another drive (
          # different shared drive or My Drive) to this folder. This is false when the
          # item is not a folder. Only populated for items in shared drives.
          # Corresponds to the JSON property `canAddFolderFromAnotherDrive`
          # @return [Boolean]
          attr_accessor :can_add_folder_from_another_drive
          alias_method :can_add_folder_from_another_drive?, :can_add_folder_from_another_drive
        
          # Output only. Whether the current user can add a parent for the item without
          # removing an existing parent in the same request. Not populated for shared
          # drive files.
          # Corresponds to the JSON property `canAddMyDriveParent`
          # @return [Boolean]
          attr_accessor :can_add_my_drive_parent
          alias_method :can_add_my_drive_parent?, :can_add_my_drive_parent
        
          # Output only. Whether the current user can change the `
          # copyRequiresWriterPermission` restriction of this file.
          # Corresponds to the JSON property `canChangeCopyRequiresWriterPermission`
          # @return [Boolean]
          attr_accessor :can_change_copy_requires_writer_permission
          alias_method :can_change_copy_requires_writer_permission?, :can_change_copy_requires_writer_permission
        
          # Output only. Deprecated.
          # Corresponds to the JSON property `canChangeRestrictedDownload`
          # @return [Boolean]
          attr_accessor :can_change_restricted_download
          alias_method :can_change_restricted_download?, :can_change_restricted_download
        
          # Output only. Whether the current user can change the securityUpdateEnabled
          # field on link share metadata.
          # Corresponds to the JSON property `canChangeSecurityUpdateEnabled`
          # @return [Boolean]
          attr_accessor :can_change_security_update_enabled
          alias_method :can_change_security_update_enabled?, :can_change_security_update_enabled
        
          # Output only. Whether the current user can comment on this file.
          # Corresponds to the JSON property `canComment`
          # @return [Boolean]
          attr_accessor :can_comment
          alias_method :can_comment?, :can_comment
        
          # Output only. Whether the current user can copy this file. For an item in a
          # shared drive, whether the current user can copy non-folder descendants of this
          # item, or this item itself if it is not a folder.
          # Corresponds to the JSON property `canCopy`
          # @return [Boolean]
          attr_accessor :can_copy
          alias_method :can_copy?, :can_copy
        
          # Output only. Whether the current user can delete this file.
          # Corresponds to the JSON property `canDelete`
          # @return [Boolean]
          attr_accessor :can_delete
          alias_method :can_delete?, :can_delete
        
          # Output only. Whether the current user can delete children of this folder. This
          # is false when the item is not a folder. Only populated for items in shared
          # drives.
          # Corresponds to the JSON property `canDeleteChildren`
          # @return [Boolean]
          attr_accessor :can_delete_children
          alias_method :can_delete_children?, :can_delete_children
        
          # Output only. Whether a user can disable inherited permissions.
          # Corresponds to the JSON property `canDisableInheritedPermissions`
          # @return [Boolean]
          attr_accessor :can_disable_inherited_permissions
          alias_method :can_disable_inherited_permissions?, :can_disable_inherited_permissions
        
          # Output only. Whether the current user can download this file.
          # Corresponds to the JSON property `canDownload`
          # @return [Boolean]
          attr_accessor :can_download
          alias_method :can_download?, :can_download
        
          # Output only. Whether the current user can edit this file. Other factors may
          # limit the type of changes a user can make to a file. For example, see `
          # canChangeCopyRequiresWriterPermission` or `canModifyContent`.
          # Corresponds to the JSON property `canEdit`
          # @return [Boolean]
          attr_accessor :can_edit
          alias_method :can_edit?, :can_edit
        
          # Output only. Whether a user can re-enable inherited permissions.
          # Corresponds to the JSON property `canEnableInheritedPermissions`
          # @return [Boolean]
          attr_accessor :can_enable_inherited_permissions
          alias_method :can_enable_inherited_permissions?, :can_enable_inherited_permissions
        
          # Output only. Whether the current user can list the children of this folder.
          # This is always false when the item is not a folder.
          # Corresponds to the JSON property `canListChildren`
          # @return [Boolean]
          attr_accessor :can_list_children
          alias_method :can_list_children?, :can_list_children
        
          # Output only. Whether the current user can modify the content of this file.
          # Corresponds to the JSON property `canModifyContent`
          # @return [Boolean]
          attr_accessor :can_modify_content
          alias_method :can_modify_content?, :can_modify_content
        
          # Deprecated: Output only. Use one of `canModifyEditorContentRestriction`, `
          # canModifyOwnerContentRestriction` or `canRemoveContentRestriction`.
          # Corresponds to the JSON property `canModifyContentRestriction`
          # @return [Boolean]
          attr_accessor :can_modify_content_restriction
          alias_method :can_modify_content_restriction?, :can_modify_content_restriction
        
          # Output only. Whether the current user can add or modify content restrictions
          # on the file which are editor restricted.
          # Corresponds to the JSON property `canModifyEditorContentRestriction`
          # @return [Boolean]
          attr_accessor :can_modify_editor_content_restriction
          alias_method :can_modify_editor_content_restriction?, :can_modify_editor_content_restriction
        
          # Output only. Whether the current user can modify the labels on the file.
          # Corresponds to the JSON property `canModifyLabels`
          # @return [Boolean]
          attr_accessor :can_modify_labels
          alias_method :can_modify_labels?, :can_modify_labels
        
          # Output only. Whether the current user can add or modify content restrictions
          # which are owner restricted.
          # Corresponds to the JSON property `canModifyOwnerContentRestriction`
          # @return [Boolean]
          attr_accessor :can_modify_owner_content_restriction
          alias_method :can_modify_owner_content_restriction?, :can_modify_owner_content_restriction
        
          # Output only. Whether the current user can move children of this folder outside
          # of the shared drive. This is false when the item is not a folder. Only
          # populated for items in shared drives.
          # Corresponds to the JSON property `canMoveChildrenOutOfDrive`
          # @return [Boolean]
          attr_accessor :can_move_children_out_of_drive
          alias_method :can_move_children_out_of_drive?, :can_move_children_out_of_drive
        
          # Output only. Deprecated: Use `canMoveChildrenOutOfDrive` instead.
          # Corresponds to the JSON property `canMoveChildrenOutOfTeamDrive`
          # @return [Boolean]
          attr_accessor :can_move_children_out_of_team_drive
          alias_method :can_move_children_out_of_team_drive?, :can_move_children_out_of_team_drive
        
          # Output only. Whether the current user can move children of this folder within
          # this drive. This is false when the item is not a folder. Note that a request
          # to move the child may still fail depending on the current user's access to the
          # child and to the destination folder.
          # Corresponds to the JSON property `canMoveChildrenWithinDrive`
          # @return [Boolean]
          attr_accessor :can_move_children_within_drive
          alias_method :can_move_children_within_drive?, :can_move_children_within_drive
        
          # Output only. Deprecated: Use `canMoveChildrenWithinDrive` instead.
          # Corresponds to the JSON property `canMoveChildrenWithinTeamDrive`
          # @return [Boolean]
          attr_accessor :can_move_children_within_team_drive
          alias_method :can_move_children_within_team_drive?, :can_move_children_within_team_drive
        
          # Output only. Deprecated: Use `canMoveItemOutOfDrive` instead.
          # Corresponds to the JSON property `canMoveItemIntoTeamDrive`
          # @return [Boolean]
          attr_accessor :can_move_item_into_team_drive
          alias_method :can_move_item_into_team_drive?, :can_move_item_into_team_drive
        
          # Output only. Whether the current user can move this item outside of this drive
          # by changing its parent. Note that a request to change the parent of the item
          # may still fail depending on the new parent that is being added.
          # Corresponds to the JSON property `canMoveItemOutOfDrive`
          # @return [Boolean]
          attr_accessor :can_move_item_out_of_drive
          alias_method :can_move_item_out_of_drive?, :can_move_item_out_of_drive
        
          # Output only. Deprecated: Use `canMoveItemOutOfDrive` instead.
          # Corresponds to the JSON property `canMoveItemOutOfTeamDrive`
          # @return [Boolean]
          attr_accessor :can_move_item_out_of_team_drive
          alias_method :can_move_item_out_of_team_drive?, :can_move_item_out_of_team_drive
        
          # Output only. Whether the current user can move this item within this drive.
          # Note that a request to change the parent of the item may still fail depending
          # on the new parent that is being added and the parent that is being removed.
          # Corresponds to the JSON property `canMoveItemWithinDrive`
          # @return [Boolean]
          attr_accessor :can_move_item_within_drive
          alias_method :can_move_item_within_drive?, :can_move_item_within_drive
        
          # Output only. Deprecated: Use `canMoveItemWithinDrive` instead.
          # Corresponds to the JSON property `canMoveItemWithinTeamDrive`
          # @return [Boolean]
          attr_accessor :can_move_item_within_team_drive
          alias_method :can_move_item_within_team_drive?, :can_move_item_within_team_drive
        
          # Output only. Deprecated: Use `canMoveItemWithinDrive` or `
          # canMoveItemOutOfDrive` instead.
          # Corresponds to the JSON property `canMoveTeamDriveItem`
          # @return [Boolean]
          attr_accessor :can_move_team_drive_item
          alias_method :can_move_team_drive_item?, :can_move_team_drive_item
        
          # Output only. Whether the current user can read the shared drive to which this
          # file belongs. Only populated for items in shared drives.
          # Corresponds to the JSON property `canReadDrive`
          # @return [Boolean]
          attr_accessor :can_read_drive
          alias_method :can_read_drive?, :can_read_drive
        
          # Output only. Whether the current user can read the labels on the file.
          # Corresponds to the JSON property `canReadLabels`
          # @return [Boolean]
          attr_accessor :can_read_labels
          alias_method :can_read_labels?, :can_read_labels
        
          # Output only. Whether the current user can read the revisions resource of this
          # file. For a shared drive item, whether revisions of non-folder descendants of
          # this item, or this item itself if it is not a folder, can be read.
          # Corresponds to the JSON property `canReadRevisions`
          # @return [Boolean]
          attr_accessor :can_read_revisions
          alias_method :can_read_revisions?, :can_read_revisions
        
          # Output only. Deprecated: Use `canReadDrive` instead.
          # Corresponds to the JSON property `canReadTeamDrive`
          # @return [Boolean]
          attr_accessor :can_read_team_drive
          alias_method :can_read_team_drive?, :can_read_team_drive
        
          # Output only. Whether the current user can remove children from this folder.
          # This is always false when the item is not a folder. For a folder in a shared
          # drive, use `canDeleteChildren` or `canTrashChildren` instead.
          # Corresponds to the JSON property `canRemoveChildren`
          # @return [Boolean]
          attr_accessor :can_remove_children
          alias_method :can_remove_children?, :can_remove_children
        
          # Output only. Whether there is a content restriction on the file that can be
          # removed by the current user.
          # Corresponds to the JSON property `canRemoveContentRestriction`
          # @return [Boolean]
          attr_accessor :can_remove_content_restriction
          alias_method :can_remove_content_restriction?, :can_remove_content_restriction
        
          # Output only. Whether the current user can remove a parent from the item
          # without adding another parent in the same request. Not populated for shared
          # drive files.
          # Corresponds to the JSON property `canRemoveMyDriveParent`
          # @return [Boolean]
          attr_accessor :can_remove_my_drive_parent
          alias_method :can_remove_my_drive_parent?, :can_remove_my_drive_parent
        
          # Output only. Whether the current user can rename this file.
          # Corresponds to the JSON property `canRename`
          # @return [Boolean]
          attr_accessor :can_rename
          alias_method :can_rename?, :can_rename
        
          # Output only. Whether the current user can modify the sharing settings for this
          # file.
          # Corresponds to the JSON property `canShare`
          # @return [Boolean]
          attr_accessor :can_share
          alias_method :can_share?, :can_share
        
          # Output only. Whether the current user can move this file to trash.
          # Corresponds to the JSON property `canTrash`
          # @return [Boolean]
          attr_accessor :can_trash
          alias_method :can_trash?, :can_trash
        
          # Output only. Whether the current user can trash children of this folder. This
          # is false when the item is not a folder. Only populated for items in shared
          # drives.
          # Corresponds to the JSON property `canTrashChildren`
          # @return [Boolean]
          attr_accessor :can_trash_children
          alias_method :can_trash_children?, :can_trash_children
        
          # Output only. Whether the current user can restore this file from trash.
          # Corresponds to the JSON property `canUntrash`
          # @return [Boolean]
          attr_accessor :can_untrash
          alias_method :can_untrash?, :can_untrash
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @can_accept_ownership = args[:can_accept_ownership] if args.key?(:can_accept_ownership)
            @can_add_children = args[:can_add_children] if args.key?(:can_add_children)
            @can_add_folder_from_another_drive = args[:can_add_folder_from_another_drive] if args.key?(:can_add_folder_from_another_drive)
            @can_add_my_drive_parent = args[:can_add_my_drive_parent] if args.key?(:can_add_my_drive_parent)
            @can_change_copy_requires_writer_permission = args[:can_change_copy_requires_writer_permission] if args.key?(:can_change_copy_requires_writer_permission)
            @can_change_restricted_download = args[:can_change_restricted_download] if args.key?(:can_change_restricted_download)
            @can_change_security_update_enabled = args[:can_change_security_update_enabled] if args.key?(:can_change_security_update_enabled)
            @can_comment = args[:can_comment] if args.key?(:can_comment)
            @can_copy = args[:can_copy] if args.key?(:can_copy)
            @can_delete = args[:can_delete] if args.key?(:can_delete)
            @can_delete_children = args[:can_delete_children] if args.key?(:can_delete_children)
            @can_disable_inherited_permissions = args[:can_disable_inherited_permissions] if args.key?(:can_disable_inherited_permissions)
            @can_download = args[:can_download] if args.key?(:can_download)
            @can_edit = args[:can_edit] if args.key?(:can_edit)
            @can_enable_inherited_permissions = args[:can_enable_inherited_permissions] if args.key?(:can_enable_inherited_permissions)
            @can_list_children = args[:can_list_children] if args.key?(:can_list_children)
            @can_modify_content = args[:can_modify_content] if args.key?(:can_modify_content)
            @can_modify_content_restriction = args[:can_modify_content_restriction] if args.key?(:can_modify_content_restriction)
            @can_modify_editor_content_restriction = args[:can_modify_editor_content_restriction] if args.key?(:can_modify_editor_content_restriction)
            @can_modify_labels = args[:can_modify_labels] if args.key?(:can_modify_labels)
            @can_modify_owner_content_restriction = args[:can_modify_owner_content_restriction] if args.key?(:can_modify_owner_content_restriction)
            @can_move_children_out_of_drive = args[:can_move_children_out_of_drive] if args.key?(:can_move_children_out_of_drive)
            @can_move_children_out_of_team_drive = args[:can_move_children_out_of_team_drive] if args.key?(:can_move_children_out_of_team_drive)
            @can_move_children_within_drive = args[:can_move_children_within_drive] if args.key?(:can_move_children_within_drive)
            @can_move_children_within_team_drive = args[:can_move_children_within_team_drive] if args.key?(:can_move_children_within_team_drive)
            @can_move_item_into_team_drive = args[:can_move_item_into_team_drive] if args.key?(:can_move_item_into_team_drive)
            @can_move_item_out_of_drive = args[:can_move_item_out_of_drive] if args.key?(:can_move_item_out_of_drive)
            @can_move_item_out_of_team_drive = args[:can_move_item_out_of_team_drive] if args.key?(:can_move_item_out_of_team_drive)
            @can_move_item_within_drive = args[:can_move_item_within_drive] if args.key?(:can_move_item_within_drive)
            @can_move_item_within_team_drive = args[:can_move_item_within_team_drive] if args.key?(:can_move_item_within_team_drive)
            @can_move_team_drive_item = args[:can_move_team_drive_item] if args.key?(:can_move_team_drive_item)
            @can_read_drive = args[:can_read_drive] if args.key?(:can_read_drive)
            @can_read_labels = args[:can_read_labels] if args.key?(:can_read_labels)
            @can_read_revisions = args[:can_read_revisions] if args.key?(:can_read_revisions)
            @can_read_team_drive = args[:can_read_team_drive] if args.key?(:can_read_team_drive)
            @can_remove_children = args[:can_remove_children] if args.key?(:can_remove_children)
            @can_remove_content_restriction = args[:can_remove_content_restriction] if args.key?(:can_remove_content_restriction)
            @can_remove_my_drive_parent = args[:can_remove_my_drive_parent] if args.key?(:can_remove_my_drive_parent)
            @can_rename = args[:can_rename] if args.key?(:can_rename)
            @can_share = args[:can_share] if args.key?(:can_share)
            @can_trash = args[:can_trash] if args.key?(:can_trash)
            @can_trash_children = args[:can_trash_children] if args.key?(:can_trash_children)
            @can_untrash = args[:can_untrash] if args.key?(:can_untrash)
          end
        end
        
        # Output only. Metadata about image media. This will only be present for image
        # types, and its contents will depend on what can be parsed from the image
        # content.
        class ImageMediaMetadata
          include Google::Apis::Core::Hashable
        
          # Output only. The aperture used to create the photo (f-number).
          # Corresponds to the JSON property `aperture`
          # @return [Float]
          attr_accessor :aperture
        
          # Output only. The make of the camera used to create the photo.
          # Corresponds to the JSON property `cameraMake`
          # @return [String]
          attr_accessor :camera_make
        
          # Output only. The model of the camera used to create the photo.
          # Corresponds to the JSON property `cameraModel`
          # @return [String]
          attr_accessor :camera_model
        
          # Output only. The color space of the photo.
          # Corresponds to the JSON property `colorSpace`
          # @return [String]
          attr_accessor :color_space
        
          # Output only. The date and time the photo was taken (EXIF format timestamp).
          # Corresponds to the JSON property `date`
          # @return [String]
          attr_accessor :date
        
          # Output only. The exposure bias of the photo (APEX value).
          # Corresponds to the JSON property `exposureBias`
          # @return [Float]
          attr_accessor :exposure_bias
        
          # Output only. The exposure mode used to create the photo.
          # Corresponds to the JSON property `exposureMode`
          # @return [String]
          attr_accessor :exposure_mode
        
          # Output only. The length of the exposure, in seconds.
          # Corresponds to the JSON property `exposureTime`
          # @return [Float]
          attr_accessor :exposure_time
        
          # Output only. Whether a flash was used to create the photo.
          # Corresponds to the JSON property `flashUsed`
          # @return [Boolean]
          attr_accessor :flash_used
          alias_method :flash_used?, :flash_used
        
          # Output only. The focal length used to create the photo, in millimeters.
          # Corresponds to the JSON property `focalLength`
          # @return [Float]
          attr_accessor :focal_length
        
          # Output only. The height of the image in pixels.
          # Corresponds to the JSON property `height`
          # @return [Fixnum]
          attr_accessor :height
        
          # Output only. The ISO speed used to create the photo.
          # Corresponds to the JSON property `isoSpeed`
          # @return [Fixnum]
          attr_accessor :iso_speed
        
          # Output only. The lens used to create the photo.
          # Corresponds to the JSON property `lens`
          # @return [String]
          attr_accessor :lens
        
          # Output only. Geographic location information stored in the image.
          # Corresponds to the JSON property `location`
          # @return [Google::Apis::DriveV2::File::ImageMediaMetadata::Location]
          attr_accessor :location
        
          # Output only. The smallest f-number of the lens at the focal length used to
          # create the photo (APEX value).
          # Corresponds to the JSON property `maxApertureValue`
          # @return [Float]
          attr_accessor :max_aperture_value
        
          # Output only. The metering mode used to create the photo.
          # Corresponds to the JSON property `meteringMode`
          # @return [String]
          attr_accessor :metering_mode
        
          # Output only. The number of clockwise 90 degree rotations applied from the
          # image's original orientation.
          # Corresponds to the JSON property `rotation`
          # @return [Fixnum]
          attr_accessor :rotation
        
          # Output only. The type of sensor used to create the photo.
          # Corresponds to the JSON property `sensor`
          # @return [String]
          attr_accessor :sensor
        
          # Output only. The distance to the subject of the photo, in meters.
          # Corresponds to the JSON property `subjectDistance`
          # @return [Fixnum]
          attr_accessor :subject_distance
        
          # Output only. The white balance mode used to create the photo.
          # Corresponds to the JSON property `whiteBalance`
          # @return [String]
          attr_accessor :white_balance
        
          # Output only. The width of the image in pixels.
          # Corresponds to the JSON property `width`
          # @return [Fixnum]
          attr_accessor :width
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @aperture = args[:aperture] if args.key?(:aperture)
            @camera_make = args[:camera_make] if args.key?(:camera_make)
            @camera_model = args[:camera_model] if args.key?(:camera_model)
            @color_space = args[:color_space] if args.key?(:color_space)
            @date = args[:date] if args.key?(:date)
            @exposure_bias = args[:exposure_bias] if args.key?(:exposure_bias)
            @exposure_mode = args[:exposure_mode] if args.key?(:exposure_mode)
            @exposure_time = args[:exposure_time] if args.key?(:exposure_time)
            @flash_used = args[:flash_used] if args.key?(:flash_used)
            @focal_length = args[:focal_length] if args.key?(:focal_length)
            @height = args[:height] if args.key?(:height)
            @iso_speed = args[:iso_speed] if args.key?(:iso_speed)
            @lens = args[:lens] if args.key?(:lens)
            @location = args[:location] if args.key?(:location)
            @max_aperture_value = args[:max_aperture_value] if args.key?(:max_aperture_value)
            @metering_mode = args[:metering_mode] if args.key?(:metering_mode)
            @rotation = args[:rotation] if args.key?(:rotation)
            @sensor = args[:sensor] if args.key?(:sensor)
            @subject_distance = args[:subject_distance] if args.key?(:subject_distance)
            @white_balance = args[:white_balance] if args.key?(:white_balance)
            @width = args[:width] if args.key?(:width)
          end
          
          # Output only. Geographic location information stored in the image.
          class Location
            include Google::Apis::Core::Hashable
          
            # Output only. The altitude stored in the image.
            # Corresponds to the JSON property `altitude`
            # @return [Float]
            attr_accessor :altitude
          
            # Output only. The latitude stored in the image.
            # Corresponds to the JSON property `latitude`
            # @return [Float]
            attr_accessor :latitude
          
            # Output only. The longitude stored in the image.
            # Corresponds to the JSON property `longitude`
            # @return [Float]
            attr_accessor :longitude
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @altitude = args[:altitude] if args.key?(:altitude)
              @latitude = args[:latitude] if args.key?(:latitude)
              @longitude = args[:longitude] if args.key?(:longitude)
            end
          end
        end
        
        # Indexable text attributes for the file (can only be written)
        class IndexableText
          include Google::Apis::Core::Hashable
        
          # The text to be indexed for this file.
          # Corresponds to the JSON property `text`
          # @return [String]
          attr_accessor :text
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @text = args[:text] if args.key?(:text)
          end
        end
        
        # Output only. An overview of the labels on the file.
        class LabelInfo
          include Google::Apis::Core::Hashable
        
          # Output only. The set of labels on the file as requested by the label IDs in
          # the `includeLabels` parameter. By default, no labels are returned.
          # Corresponds to the JSON property `labels`
          # @return [Array<Google::Apis::DriveV2::Label>]
          attr_accessor :labels
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @labels = args[:labels] if args.key?(:labels)
          end
        end
        
        # A group of labels for the file.
        class Labels
          include Google::Apis::Core::Hashable
        
          # Output only. Deprecated.
          # Corresponds to the JSON property `hidden`
          # @return [Boolean]
          attr_accessor :hidden
          alias_method :hidden?, :hidden
        
          # Output only. Whether the file has been modified by this user.
          # Corresponds to the JSON property `modified`
          # @return [Boolean]
          attr_accessor :modified
          alias_method :modified?, :modified
        
          # Output only. Deprecated: Use `copyRequiresWriterPermission` instead.
          # Corresponds to the JSON property `restricted`
          # @return [Boolean]
          attr_accessor :restricted
          alias_method :restricted?, :restricted
        
          # Whether this file is starred by the user.
          # Corresponds to the JSON property `starred`
          # @return [Boolean]
          attr_accessor :starred
          alias_method :starred?, :starred
        
          # Whether this file has been trashed. This label applies to all users accessing
          # the file; however, only owners are allowed to see and untrash files.
          # Corresponds to the JSON property `trashed`
          # @return [Boolean]
          attr_accessor :trashed
          alias_method :trashed?, :trashed
        
          # Whether this file has been viewed by this user.
          # Corresponds to the JSON property `viewed`
          # @return [Boolean]
          attr_accessor :viewed
          alias_method :viewed?, :viewed
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @hidden = args[:hidden] if args.key?(:hidden)
            @modified = args[:modified] if args.key?(:modified)
            @restricted = args[:restricted] if args.key?(:restricted)
            @starred = args[:starred] if args.key?(:starred)
            @trashed = args[:trashed] if args.key?(:trashed)
            @viewed = args[:viewed] if args.key?(:viewed)
          end
        end
        
        # Contains details about the link URLs that clients are using to refer to this
        # item.
        class LinkShareMetadata
          include Google::Apis::Core::Hashable
        
          # Output only. Whether the file is eligible for security update.
          # Corresponds to the JSON property `securityUpdateEligible`
          # @return [Boolean]
          attr_accessor :security_update_eligible
          alias_method :security_update_eligible?, :security_update_eligible
        
          # Output only. Whether the security update is enabled for this file.
          # Corresponds to the JSON property `securityUpdateEnabled`
          # @return [Boolean]
          attr_accessor :security_update_enabled
          alias_method :security_update_enabled?, :security_update_enabled
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @security_update_eligible = args[:security_update_eligible] if args.key?(:security_update_eligible)
            @security_update_enabled = args[:security_update_enabled] if args.key?(:security_update_enabled)
          end
        end
        
        # Shortcut file details. Only populated for shortcut files, which have the
        # mimeType field set to `application/vnd.google-apps.shortcut`. Can only be set
        # on `files.insert` requests.
        class ShortcutDetails
          include Google::Apis::Core::Hashable
        
          # The ID of the file that this shortcut points to. Can only be set on `files.
          # insert` requests.
          # Corresponds to the JSON property `targetId`
          # @return [String]
          attr_accessor :target_id
        
          # Output only. The MIME type of the file that this shortcut points to. The value
          # of this field is a snapshot of the target's MIME type, captured when the
          # shortcut is created.
          # Corresponds to the JSON property `targetMimeType`
          # @return [String]
          attr_accessor :target_mime_type
        
          # Output only. The ResourceKey for the target file.
          # Corresponds to the JSON property `targetResourceKey`
          # @return [String]
          attr_accessor :target_resource_key
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @target_id = args[:target_id] if args.key?(:target_id)
            @target_mime_type = args[:target_mime_type] if args.key?(:target_mime_type)
            @target_resource_key = args[:target_resource_key] if args.key?(:target_resource_key)
          end
        end
        
        # A thumbnail for the file. This will only be used if a standard thumbnail
        # cannot be generated.
        class Thumbnail
          include Google::Apis::Core::Hashable
        
          # The URL-safe Base64 encoded bytes of the thumbnail image. It should conform to
          # RFC 4648 section 5.
          # Corresponds to the JSON property `image`
          # NOTE: Values are automatically base64 encoded/decoded in the client library.
          # @return [String]
          attr_accessor :image
        
          # The MIME type of the thumbnail.
          # Corresponds to the JSON property `mimeType`
          # @return [String]
          attr_accessor :mime_type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @image = args[:image] if args.key?(:image)
            @mime_type = args[:mime_type] if args.key?(:mime_type)
          end
        end
        
        # Output only. Metadata about video media. This will only be present for video
        # types.
        class VideoMediaMetadata
          include Google::Apis::Core::Hashable
        
          # Output only. The duration of the video in milliseconds.
          # Corresponds to the JSON property `durationMillis`
          # @return [Fixnum]
          attr_accessor :duration_millis
        
          # Output only. The height of the video in pixels.
          # Corresponds to the JSON property `height`
          # @return [Fixnum]
          attr_accessor :height
        
          # Output only. The width of the video in pixels.
          # Corresponds to the JSON property `width`
          # @return [Fixnum]
          attr_accessor :width
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @duration_millis = args[:duration_millis] if args.key?(:duration_millis)
            @height = args[:height] if args.key?(:height)
            @width = args[:width] if args.key?(:width)
          end
        end
      end
      
      # A list of files.
      class FileList
        include Google::Apis::Core::Hashable
      
        # The ETag of the list.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Whether the search process was incomplete. If true, then some search results
        # may be missing, since all documents were not searched. This may occur when
        # searching multiple drives with the "allDrives" corpora, but all corpora could
        # not be searched. When this happens, it is suggested that clients narrow their
        # query by choosing a different corpus such as "default" or "drive".
        # Corresponds to the JSON property `incompleteSearch`
        # @return [Boolean]
        attr_accessor :incomplete_search
        alias_method :incomplete_search?, :incomplete_search
      
        # The list of files. If nextPageToken is populated, then this list may be
        # incomplete and an additional page of results should be fetched.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DriveV2::File>]
        attr_accessor :items
      
        # This is always `drive#fileList`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A link to the next page of files.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # The page token for the next page of files. This will be absent if the end of
        # the files list has been reached. If the token is rejected for any reason, it
        # should be discarded, and pagination should be restarted from the first page of
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A link back to this list.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @incomplete_search = args[:incomplete_search] if args.key?(:incomplete_search)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_link = args[:next_link] if args.key?(:next_link)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A list of generated IDs which can be provided in insert requests
      class GeneratedIds
        include Google::Apis::Core::Hashable
      
        # The IDs generated for the requesting user in the specified space.
        # Corresponds to the JSON property `ids`
        # @return [Array<String>]
        attr_accessor :ids
      
        # This is always `drive#generatedIds`
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The type of file that can be created with these IDs.
        # Corresponds to the JSON property `space`
        # @return [String]
        attr_accessor :space
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ids = args[:ids] if args.key?(:ids)
          @kind = args[:kind] if args.key?(:kind)
          @space = args[:space] if args.key?(:space)
        end
      end
      
      # Representation of a label and label fields.
      class Label
        include Google::Apis::Core::Hashable
      
        # A map of the fields on the label, keyed by the field's ID.
        # Corresponds to the JSON property `fields`
        # @return [Hash<String,Google::Apis::DriveV2::LabelField>]
        attr_accessor :fields
      
        # The ID of the label.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # This is always `drive#label`
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The revision ID of the label.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
        end
      end
      
      # Representation of field, which is a typed key-value pair.
      class LabelField
        include Google::Apis::Core::Hashable
      
        # Only present if valueType is dateString. RFC 3339 formatted date: YYYY-MM-DD.
        # Corresponds to the JSON property `dateString`
        # @return [Array<Date>]
        attr_accessor :date_string
      
        # The identifier of this label field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Only present if `valueType` is `integer`.
        # Corresponds to the JSON property `integer`
        # @return [Array<Fixnum>]
        attr_accessor :integer
      
        # This is always `drive#labelField`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Only present if `valueType` is `selection`
        # Corresponds to the JSON property `selection`
        # @return [Array<String>]
        attr_accessor :selection
      
        # Only present if `valueType` is `text`.
        # Corresponds to the JSON property `text`
        # @return [Array<String>]
        attr_accessor :text
      
        # Only present if `valueType` is `user`.
        # Corresponds to the JSON property `user`
        # @return [Array<Google::Apis::DriveV2::User>]
        attr_accessor :user
      
        # The field type. While new values may be supported in the future, the following
        # are currently allowed: * `dateString` * `integer` * `selection` * `text` * `
        # user`
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_string = args[:date_string] if args.key?(:date_string)
          @id = args[:id] if args.key?(:id)
          @integer = args[:integer] if args.key?(:integer)
          @kind = args[:kind] if args.key?(:kind)
          @selection = args[:selection] if args.key?(:selection)
          @text = args[:text] if args.key?(:text)
          @user = args[:user] if args.key?(:user)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # A modification to a label's field.
      class LabelFieldModification
        include Google::Apis::Core::Hashable
      
        # The ID of the field to be modified.
        # Corresponds to the JSON property `fieldId`
        # @return [String]
        attr_accessor :field_id
      
        # This is always `drive#labelFieldModification`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Replaces the value of a dateString Field with these new values. The string
        # must be in the RFC 3339 full-date format: YYYY-MM-DD.
        # Corresponds to the JSON property `setDateValues`
        # @return [Array<Date>]
        attr_accessor :set_date_values
      
        # Replaces the value of an `integer` field with these new values.
        # Corresponds to the JSON property `setIntegerValues`
        # @return [Array<Fixnum>]
        attr_accessor :set_integer_values
      
        # Replaces a `selection` field with these new values.
        # Corresponds to the JSON property `setSelectionValues`
        # @return [Array<String>]
        attr_accessor :set_selection_values
      
        # Sets the value of a `text` field.
        # Corresponds to the JSON property `setTextValues`
        # @return [Array<String>]
        attr_accessor :set_text_values
      
        # Replaces a `user` field with these new values. The values must be valid email
        # addresses.
        # Corresponds to the JSON property `setUserValues`
        # @return [Array<String>]
        attr_accessor :set_user_values
      
        # Unsets the values for this field.
        # Corresponds to the JSON property `unsetValues`
        # @return [Boolean]
        attr_accessor :unset_values
        alias_method :unset_values?, :unset_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_id = args[:field_id] if args.key?(:field_id)
          @kind = args[:kind] if args.key?(:kind)
          @set_date_values = args[:set_date_values] if args.key?(:set_date_values)
          @set_integer_values = args[:set_integer_values] if args.key?(:set_integer_values)
          @set_selection_values = args[:set_selection_values] if args.key?(:set_selection_values)
          @set_text_values = args[:set_text_values] if args.key?(:set_text_values)
          @set_user_values = args[:set_user_values] if args.key?(:set_user_values)
          @unset_values = args[:unset_values] if args.key?(:unset_values)
        end
      end
      
      # A list of labels applied to a file.
      class LabelList
        include Google::Apis::Core::Hashable
      
        # The list of labels.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DriveV2::Label>]
        attr_accessor :items
      
        # This is always `drive#labelList`
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The page token for the next page of labels. This field will be absent if the
        # end of the list has been reached. If the token is rejected for any reason, it
        # should be discarded, and pagination should be restarted from the first page of
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A modification to a label on a file. A LabelModification can be used to apply
      # a label to a file, update an existing label on a file, or remove a label from
      # a file.
      class LabelModification
        include Google::Apis::Core::Hashable
      
        # The list of modifications to this label's fields.
        # Corresponds to the JSON property `fieldModifications`
        # @return [Array<Google::Apis::DriveV2::LabelFieldModification>]
        attr_accessor :field_modifications
      
        # This is always `drive#labelModification`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The ID of the label to modify.
        # Corresponds to the JSON property `labelId`
        # @return [String]
        attr_accessor :label_id
      
        # If true, the label will be removed from the file.
        # Corresponds to the JSON property `removeLabel`
        # @return [Boolean]
        attr_accessor :remove_label
        alias_method :remove_label?, :remove_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_modifications = args[:field_modifications] if args.key?(:field_modifications)
          @kind = args[:kind] if args.key?(:kind)
          @label_id = args[:label_id] if args.key?(:label_id)
          @remove_label = args[:remove_label] if args.key?(:remove_label)
        end
      end
      
      # A request to modify the set of labels on a file. This request may contain many
      # modifications that will either all succeed or all fail atomically.
      class ModifyLabelsRequest
        include Google::Apis::Core::Hashable
      
        # This is always `drive#modifyLabelsRequest`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The list of modifications to apply to the labels on the file.
        # Corresponds to the JSON property `labelModifications`
        # @return [Array<Google::Apis::DriveV2::LabelModification>]
        attr_accessor :label_modifications
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @label_modifications = args[:label_modifications] if args.key?(:label_modifications)
        end
      end
      
      # Response to a ModifyLabels request. This contains only those labels which were
      # added or updated by the request.
      class ModifyLabelsResponse
        include Google::Apis::Core::Hashable
      
        # This is always `drive#modifyLabelsResponse`
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The list of labels which were added or updated by the request.
        # Corresponds to the JSON property `modifiedLabels`
        # @return [Array<Google::Apis::DriveV2::Label>]
        attr_accessor :modified_labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @modified_labels = args[:modified_labels] if args.key?(:modified_labels)
        end
      end
      
      # A list of a file's parents.
      class ParentList
        include Google::Apis::Core::Hashable
      
        # The ETag of the list.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The list of parents.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DriveV2::ParentReference>]
        attr_accessor :items
      
        # This is always `drive#parentList`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A link back to this list.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A reference to a file's parent. A file can only have one parent folder;
      # specifying multiple parents isn't supported. Some resource methods (such as `
      # parents.get`) require a `parentId`. Use the `parents.list` method to retrieve
      # the ID for a parent.
      class ParentReference
        include Google::Apis::Core::Hashable
      
        # The ID of the parent.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. Whether or not the parent is the root folder.
        # Corresponds to the JSON property `isRoot`
        # @return [Boolean]
        attr_accessor :is_root
        alias_method :is_root?, :is_root
      
        # Output only. This is always `drive#parentReference`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Output only. A link to the parent.
        # Corresponds to the JSON property `parentLink`
        # @return [String]
        attr_accessor :parent_link
      
        # Output only. A link back to this reference.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @is_root = args[:is_root] if args.key?(:is_root)
          @kind = args[:kind] if args.key?(:kind)
          @parent_link = args[:parent_link] if args.key?(:parent_link)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A permission for a file. A permission grants a user, group, domain, or the
      # world access to a file or a folder hierarchy. Some resource methods (such as `
      # permissions.update`) require a `permissionId`. Use the `permissions.list`
      # method to retrieve the ID for a file, folder, or shared drive.
      class Permission
        include Google::Apis::Core::Hashable
      
        # Additional roles for this user. Only `commenter` is currently allowed, though
        # more may be supported in the future.
        # Corresponds to the JSON property `additionalRoles`
        # @return [Array<String>]
        attr_accessor :additional_roles
      
        # Output only. Deprecated.
        # Corresponds to the JSON property `authKey`
        # @return [String]
        attr_accessor :auth_key
      
        # Output only. Whether the account associated with this permission has been
        # deleted. This field only pertains to user and group permissions.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # Output only. The domain name of the entity this permission refers to. This is
        # an output-only field which is present when the permission type is `user`, `
        # group` or `domain`.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Output only. The email address of the user or group this permission refers to.
        # This is an output-only field which is present when the permission type is `
        # user` or `group`.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # Output only. The ETag of the permission.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The time at which this permission will expire (RFC 3339 date-time). Expiration
        # dates have the following restrictions: - They can only be set on user and
        # group permissions - The date must be in the future - The date cannot be more
        # than a year in the future - The date can only be set on drive.permissions.
        # update or drive.permissions.patch requests
        # Corresponds to the JSON property `expirationDate`
        # @return [DateTime]
        attr_accessor :expiration_date
      
        # The ID of the user this permission refers to, and identical to the `
        # permissionId` in the About and Files resources. When making a `drive.
        # permissions.insert` request, exactly one of the `id` or `value` fields must be
        # specified unless the permission type is `anyone`, in which case both `id` and `
        # value` are ignored.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # When true, only organizers, owners, and users with permissions added directly
        # on the item can access it.
        # Corresponds to the JSON property `inheritedPermissionsDisabled`
        # @return [Boolean]
        attr_accessor :inherited_permissions_disabled
        alias_method :inherited_permissions_disabled?, :inherited_permissions_disabled
      
        # Output only. This is always `drive#permission`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Output only. The name for this permission.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether the account associated with this permission is a pending owner. Only
        # populated for `user` type permissions for files that are not in a shared drive.
        # Corresponds to the JSON property `pendingOwner`
        # @return [Boolean]
        attr_accessor :pending_owner
        alias_method :pending_owner?, :pending_owner
      
        # Output only. Details of whether the permissions on this item are inherited or
        # directly on this item.
        # Corresponds to the JSON property `permissionDetails`
        # @return [Array<Google::Apis::DriveV2::Permission::PermissionDetail>]
        attr_accessor :permission_details
      
        # Output only. A link to the profile photo, if available.
        # Corresponds to the JSON property `photoLink`
        # @return [String]
        attr_accessor :photo_link
      
        # The primary role for this user. While new values may be supported in the
        # future, the following are currently allowed: * `owner` * `organizer` * `
        # fileOrganizer` * `writer` * `reader`
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Output only. A link back to this permission.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Output only. Deprecated: Use `permissionDetails` instead.
        # Corresponds to the JSON property `teamDrivePermissionDetails`
        # @return [Array<Google::Apis::DriveV2::Permission::TeamDrivePermissionDetail>]
        attr_accessor :team_drive_permission_details
      
        # The account type. Allowed values are: * `user` * `group` * `domain` * `anyone`
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The email address or domain name for the entity. This is used during inserts
        # and is not populated in responses. When making a `drive.permissions.insert`
        # request, exactly one of the `id` or `value` fields must be specified unless
        # the permission type is `anyone`, in which case both `id` and `value` are
        # ignored.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # Indicates the view for this permission. Only populated for permissions that
        # belong to a view. published and metadata are the only supported values. -
        # published: The permission's role is published_reader. - metadata: The item is
        # only visible to the metadata view because the item has limited access and the
        # scope has at least read access to the parent. Note: The metadata view is
        # currently only supported on folders.
        # Corresponds to the JSON property `view`
        # @return [String]
        attr_accessor :view
      
        # Whether the link is required for this permission.
        # Corresponds to the JSON property `withLink`
        # @return [Boolean]
        attr_accessor :with_link
        alias_method :with_link?, :with_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_roles = args[:additional_roles] if args.key?(:additional_roles)
          @auth_key = args[:auth_key] if args.key?(:auth_key)
          @deleted = args[:deleted] if args.key?(:deleted)
          @domain = args[:domain] if args.key?(:domain)
          @email_address = args[:email_address] if args.key?(:email_address)
          @etag = args[:etag] if args.key?(:etag)
          @expiration_date = args[:expiration_date] if args.key?(:expiration_date)
          @id = args[:id] if args.key?(:id)
          @inherited_permissions_disabled = args[:inherited_permissions_disabled] if args.key?(:inherited_permissions_disabled)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @pending_owner = args[:pending_owner] if args.key?(:pending_owner)
          @permission_details = args[:permission_details] if args.key?(:permission_details)
          @photo_link = args[:photo_link] if args.key?(:photo_link)
          @role = args[:role] if args.key?(:role)
          @self_link = args[:self_link] if args.key?(:self_link)
          @team_drive_permission_details = args[:team_drive_permission_details] if args.key?(:team_drive_permission_details)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
          @view = args[:view] if args.key?(:view)
          @with_link = args[:with_link] if args.key?(:with_link)
        end
        
        # 
        class PermissionDetail
          include Google::Apis::Core::Hashable
        
          # Output only. Additional roles for this user. Only `commenter` is currently
          # possible, though more may be supported in the future.
          # Corresponds to the JSON property `additionalRoles`
          # @return [Array<String>]
          attr_accessor :additional_roles
        
          # Output only. Whether this permission is inherited. This field is always
          # populated.
          # Corresponds to the JSON property `inherited`
          # @return [Boolean]
          attr_accessor :inherited
          alias_method :inherited?, :inherited
        
          # Output only. The ID of the item from which this permission is inherited. This
          # is only populated for items in shared drives.
          # Corresponds to the JSON property `inheritedFrom`
          # @return [String]
          attr_accessor :inherited_from
        
          # Output only. The permission type for this user. While new values may be added
          # in future, the following are currently possible: * `file` * `member`
          # Corresponds to the JSON property `permissionType`
          # @return [String]
          attr_accessor :permission_type
        
          # Output only. The primary role for this user. While new values may be added in
          # the future, the following are currently possible: * `organizer` * `
          # fileOrganizer` * `writer` * `reader`
          # Corresponds to the JSON property `role`
          # @return [String]
          attr_accessor :role
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @additional_roles = args[:additional_roles] if args.key?(:additional_roles)
            @inherited = args[:inherited] if args.key?(:inherited)
            @inherited_from = args[:inherited_from] if args.key?(:inherited_from)
            @permission_type = args[:permission_type] if args.key?(:permission_type)
            @role = args[:role] if args.key?(:role)
          end
        end
        
        # 
        class TeamDrivePermissionDetail
          include Google::Apis::Core::Hashable
        
          # Output only. Deprecated: Use `permissionDetails/additionalRoles` instead.
          # Corresponds to the JSON property `additionalRoles`
          # @return [Array<String>]
          attr_accessor :additional_roles
        
          # Output only. Deprecated: Use `permissionDetails/inherited` instead.
          # Corresponds to the JSON property `inherited`
          # @return [Boolean]
          attr_accessor :inherited
          alias_method :inherited?, :inherited
        
          # Output only. Deprecated: Use `permissionDetails/inheritedFrom` instead.
          # Corresponds to the JSON property `inheritedFrom`
          # @return [String]
          attr_accessor :inherited_from
        
          # Output only. Deprecated: Use `permissionDetails/role` instead.
          # Corresponds to the JSON property `role`
          # @return [String]
          attr_accessor :role
        
          # Output only. Deprecated: Use `permissionDetails/permissionType` instead.
          # Corresponds to the JSON property `teamDrivePermissionType`
          # @return [String]
          attr_accessor :team_drive_permission_type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @additional_roles = args[:additional_roles] if args.key?(:additional_roles)
            @inherited = args[:inherited] if args.key?(:inherited)
            @inherited_from = args[:inherited_from] if args.key?(:inherited_from)
            @role = args[:role] if args.key?(:role)
            @team_drive_permission_type = args[:team_drive_permission_type] if args.key?(:team_drive_permission_type)
          end
        end
      end
      
      # An ID for a user or group as seen in Permission items.
      class PermissionId
        include Google::Apis::Core::Hashable
      
        # The permission ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # This is always `drive#permissionId`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A list of permissions associated with a file.
      class PermissionList
        include Google::Apis::Core::Hashable
      
        # The ETag of the list.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The list of permissions.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DriveV2::Permission>]
        attr_accessor :items
      
        # This is always `drive#permissionList`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The page token for the next page of permissions. This field will be absent if
        # the end of the permissions list has been reached. If the token is rejected for
        # any reason, it should be discarded, and pagination should be restarted from
        # the first page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A link back to this list.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A key-value pair attached to a file that is either public or private to an
      # application. The following limits apply to file properties: * Maximum of 100
      # properties total per file * Maximum of 30 private properties per app * Maximum
      # of 30 public properties * Maximum of 124 bytes size limit on (key + value)
      # string in UTF-8 encoding for a single property Some resource methods (such as `
      # properties.update`) require a `propertyKey`. Use the `properties.list` method
      # to retrieve the key for a property.
      class Property
        include Google::Apis::Core::Hashable
      
        # Output only. ETag of the property.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The key of this property.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Output only. This is always `drive#property`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Output only. The link back to this property.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The value of this property.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # The visibility of this property. Allowed values are PRIVATE (default) and
        # PUBLIC. Private properties can only be retrieved using an authenticated
        # request. An authenticated request uses an access token obtained with a OAuth 2
        # client ID. You cannot use an API key to retrieve private properties.
        # Corresponds to the JSON property `visibility`
        # @return [String]
        attr_accessor :visibility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @key = args[:key] if args.key?(:key)
          @kind = args[:kind] if args.key?(:kind)
          @self_link = args[:self_link] if args.key?(:self_link)
          @value = args[:value] if args.key?(:value)
          @visibility = args[:visibility] if args.key?(:visibility)
        end
      end
      
      # A collection of properties, key-value pairs that are either public or private
      # to an application.
      class PropertyList
        include Google::Apis::Core::Hashable
      
        # The ETag of the list.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The list of properties.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DriveV2::Property>]
        attr_accessor :items
      
        # This is always `drive#propertyList`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The link back to this list.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A revision of a file. Some resource methods (such as `revisions.update`)
      # require a `revisionId`. Use the `revisions.list` method to retrieve the ID for
      # a revision.
      class Revision
        include Google::Apis::Core::Hashable
      
        # Output only. Short term download URL for the file. This will only be populated
        # on files with content stored in Drive.
        # Corresponds to the JSON property `downloadUrl`
        # @return [String]
        attr_accessor :download_url
      
        # Output only. The ETag of the revision.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. Links for exporting Docs Editors files to specific formats.
        # Corresponds to the JSON property `exportLinks`
        # @return [Hash<String,String>]
        attr_accessor :export_links
      
        # Output only. The size of the revision in bytes. This will only be populated on
        # files with content stored in Drive.
        # Corresponds to the JSON property `fileSize`
        # @return [Fixnum]
        attr_accessor :file_size
      
        # Output only. The ID of the revision.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. This is always `drive#revision`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Information about a Drive user.
        # Corresponds to the JSON property `lastModifyingUser`
        # @return [Google::Apis::DriveV2::User]
        attr_accessor :last_modifying_user
      
        # Output only. Name of the last user to modify this revision.
        # Corresponds to the JSON property `lastModifyingUserName`
        # @return [String]
        attr_accessor :last_modifying_user_name
      
        # Output only. An MD5 checksum for the content of this revision. This will only
        # be populated on files with content stored in Drive.
        # Corresponds to the JSON property `md5Checksum`
        # @return [String]
        attr_accessor :md5_checksum
      
        # Output only. The MIME type of the revision.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Last time this revision was modified (formatted RFC 3339 timestamp).
        # Corresponds to the JSON property `modifiedDate`
        # @return [DateTime]
        attr_accessor :modified_date
      
        # Output only. The original filename when this revision was created. This will
        # only be populated on files with content stored in Drive.
        # Corresponds to the JSON property `originalFilename`
        # @return [String]
        attr_accessor :original_filename
      
        # Whether this revision is pinned to prevent automatic purging. If not set, the
        # revision is automatically purged 30 days after newer content is uploaded. This
        # field can only be modified on files with content stored in Drive, excluding
        # Docs Editors files. Revisions can also be pinned when they are created through
        # the drive.files.insert/update/copy by using the pinned query parameter. Pinned
        # revisions are stored indefinitely using additional storage quota, up to a
        # maximum of 200 revisions.
        # Corresponds to the JSON property `pinned`
        # @return [Boolean]
        attr_accessor :pinned
        alias_method :pinned?, :pinned
      
        # Whether subsequent revisions will be automatically republished. This is only
        # populated and can only be modified for Docs Editors files.
        # Corresponds to the JSON property `publishAuto`
        # @return [Boolean]
        attr_accessor :publish_auto
        alias_method :publish_auto?, :publish_auto
      
        # Whether this revision is published. This is only populated and can only be
        # modified for Docs Editors files.
        # Corresponds to the JSON property `published`
        # @return [Boolean]
        attr_accessor :published
        alias_method :published?, :published
      
        # Output only. A link to the published revision. This is only populated for Docs
        # Editors files.
        # Corresponds to the JSON property `publishedLink`
        # @return [String]
        attr_accessor :published_link
      
        # Whether this revision is published outside the domain. This is only populated
        # and can only be modified for Docs Editors files.
        # Corresponds to the JSON property `publishedOutsideDomain`
        # @return [Boolean]
        attr_accessor :published_outside_domain
        alias_method :published_outside_domain?, :published_outside_domain
      
        # Output only. A link back to this revision.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @download_url = args[:download_url] if args.key?(:download_url)
          @etag = args[:etag] if args.key?(:etag)
          @export_links = args[:export_links] if args.key?(:export_links)
          @file_size = args[:file_size] if args.key?(:file_size)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @last_modifying_user = args[:last_modifying_user] if args.key?(:last_modifying_user)
          @last_modifying_user_name = args[:last_modifying_user_name] if args.key?(:last_modifying_user_name)
          @md5_checksum = args[:md5_checksum] if args.key?(:md5_checksum)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @modified_date = args[:modified_date] if args.key?(:modified_date)
          @original_filename = args[:original_filename] if args.key?(:original_filename)
          @pinned = args[:pinned] if args.key?(:pinned)
          @publish_auto = args[:publish_auto] if args.key?(:publish_auto)
          @published = args[:published] if args.key?(:published)
          @published_link = args[:published_link] if args.key?(:published_link)
          @published_outside_domain = args[:published_outside_domain] if args.key?(:published_outside_domain)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A list of revisions of a file.
      class RevisionList
        include Google::Apis::Core::Hashable
      
        # The ETag of the list.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The list of revisions. If nextPageToken is populated, then this list may be
        # incomplete and an additional page of results should be fetched.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DriveV2::Revision>]
        attr_accessor :items
      
        # This is always `drive#revisionList`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The page token for the next page of revisions. This field will be absent if
        # the end of the revisions list has been reached. If the token is rejected for
        # any reason, it should be discarded and pagination should be restarted from the
        # first page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A link back to this list.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class StartPageToken
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string `"drive#
        # startPageToken"`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The starting page token for listing changes.
        # Corresponds to the JSON property `startPageToken`
        # @return [String]
        attr_accessor :start_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @start_page_token = args[:start_page_token] if args.key?(:start_page_token)
        end
      end
      
      # Deprecated: Use the `drive` collection instead.
      class TeamDrive
        include Google::Apis::Core::Hashable
      
        # An image file and cropping parameters from which a background image for this
        # Team Drive is set. This is a write only field; it can only be set on `drive.
        # teamdrives.update` requests that don't set `themeId`. When specified, all
        # fields of the `backgroundImageFile` must be set.
        # Corresponds to the JSON property `backgroundImageFile`
        # @return [Google::Apis::DriveV2::TeamDrive::BackgroundImageFile]
        attr_accessor :background_image_file
      
        # A short-lived link to this Team Drive's background image.
        # Corresponds to the JSON property `backgroundImageLink`
        # @return [String]
        attr_accessor :background_image_link
      
        # Capabilities the current user has on this Team Drive.
        # Corresponds to the JSON property `capabilities`
        # @return [Google::Apis::DriveV2::TeamDrive::Capabilities]
        attr_accessor :capabilities
      
        # The color of this Team Drive as an RGB hex string. It can only be set on a `
        # drive.teamdrives.update` request that does not set `themeId`.
        # Corresponds to the JSON property `colorRgb`
        # @return [String]
        attr_accessor :color_rgb
      
        # The time at which the Team Drive was created (RFC 3339 date-time).
        # Corresponds to the JSON property `createdDate`
        # @return [DateTime]
        attr_accessor :created_date
      
        # The ID of this Team Drive which is also the ID of the top level folder of this
        # Team Drive.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # This is always `drive#teamDrive`
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of this Team Drive.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The organizational unit of this shared drive. This field is only populated on `
        # drives.list` responses when the `useDomainAdminAccess` parameter is set to `
        # true`.
        # Corresponds to the JSON property `orgUnitId`
        # @return [String]
        attr_accessor :org_unit_id
      
        # A set of restrictions that apply to this Team Drive or items inside this Team
        # Drive.
        # Corresponds to the JSON property `restrictions`
        # @return [Google::Apis::DriveV2::TeamDrive::Restrictions]
        attr_accessor :restrictions
      
        # The ID of the theme from which the background image and color will be set. The
        # set of possible `teamDriveThemes` can be retrieved from a `drive.about.get`
        # response. When not specified on a `drive.teamdrives.insert` request, a random
        # theme is chosen from which the background image and color are set. This is a
        # write-only field; it can only be set on requests that don't set `colorRgb` or `
        # backgroundImageFile`.
        # Corresponds to the JSON property `themeId`
        # @return [String]
        attr_accessor :theme_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @background_image_file = args[:background_image_file] if args.key?(:background_image_file)
          @background_image_link = args[:background_image_link] if args.key?(:background_image_link)
          @capabilities = args[:capabilities] if args.key?(:capabilities)
          @color_rgb = args[:color_rgb] if args.key?(:color_rgb)
          @created_date = args[:created_date] if args.key?(:created_date)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @org_unit_id = args[:org_unit_id] if args.key?(:org_unit_id)
          @restrictions = args[:restrictions] if args.key?(:restrictions)
          @theme_id = args[:theme_id] if args.key?(:theme_id)
        end
        
        # An image file and cropping parameters from which a background image for this
        # Team Drive is set. This is a write only field; it can only be set on `drive.
        # teamdrives.update` requests that don't set `themeId`. When specified, all
        # fields of the `backgroundImageFile` must be set.
        class BackgroundImageFile
          include Google::Apis::Core::Hashable
        
          # The ID of an image file in Drive to use for the background image.
          # Corresponds to the JSON property `id`
          # @return [String]
          attr_accessor :id
        
          # The width of the cropped image in the closed range of 0 to 1. This value
          # represents the width of the cropped image divided by the width of the entire
          # image. The height is computed by applying a width to height aspect ratio of 80
          # to 9. The resulting image must be at least 1280 pixels wide and 144 pixels
          # high.
          # Corresponds to the JSON property `width`
          # @return [Float]
          attr_accessor :width
        
          # The X coordinate of the upper left corner of the cropping area in the
          # background image. This is a value in the closed range of 0 to 1. This value
          # represents the horizontal distance from the left side of the entire image to
          # the left side of the cropping area divided by the width of the entire image.
          # Corresponds to the JSON property `xCoordinate`
          # @return [Float]
          attr_accessor :x_coordinate
        
          # The Y coordinate of the upper left corner of the cropping area in the
          # background image. This is a value in the closed range of 0 to 1. This value
          # represents the vertical distance from the top side of the entire image to the
          # top side of the cropping area divided by the height of the entire image.
          # Corresponds to the JSON property `yCoordinate`
          # @return [Float]
          attr_accessor :y_coordinate
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @id = args[:id] if args.key?(:id)
            @width = args[:width] if args.key?(:width)
            @x_coordinate = args[:x_coordinate] if args.key?(:x_coordinate)
            @y_coordinate = args[:y_coordinate] if args.key?(:y_coordinate)
          end
        end
        
        # Capabilities the current user has on this Team Drive.
        class Capabilities
          include Google::Apis::Core::Hashable
        
          # Whether the current user can add children to folders in this Team Drive.
          # Corresponds to the JSON property `canAddChildren`
          # @return [Boolean]
          attr_accessor :can_add_children
          alias_method :can_add_children?, :can_add_children
        
          # Whether the current user can change the `copyRequiresWriterPermission`
          # restriction of this Team Drive.
          # Corresponds to the JSON property `canChangeCopyRequiresWriterPermissionRestriction`
          # @return [Boolean]
          attr_accessor :can_change_copy_requires_writer_permission_restriction
          alias_method :can_change_copy_requires_writer_permission_restriction?, :can_change_copy_requires_writer_permission_restriction
        
          # Whether the current user can change the `domainUsersOnly` restriction of this
          # Team Drive.
          # Corresponds to the JSON property `canChangeDomainUsersOnlyRestriction`
          # @return [Boolean]
          attr_accessor :can_change_domain_users_only_restriction
          alias_method :can_change_domain_users_only_restriction?, :can_change_domain_users_only_restriction
        
          # Whether the current user can change the `
          # sharingFoldersRequiresOrganizerPermission` restriction of this Team Drive.
          # Corresponds to the JSON property `canChangeSharingFoldersRequiresOrganizerPermissionRestriction`
          # @return [Boolean]
          attr_accessor :can_change_sharing_folders_requires_organizer_permission_restriction
          alias_method :can_change_sharing_folders_requires_organizer_permission_restriction?, :can_change_sharing_folders_requires_organizer_permission_restriction
        
          # Whether the current user can change the background of this Team Drive.
          # Corresponds to the JSON property `canChangeTeamDriveBackground`
          # @return [Boolean]
          attr_accessor :can_change_team_drive_background
          alias_method :can_change_team_drive_background?, :can_change_team_drive_background
        
          # Whether the current user can change the `teamMembersOnly` restriction of this
          # Team Drive.
          # Corresponds to the JSON property `canChangeTeamMembersOnlyRestriction`
          # @return [Boolean]
          attr_accessor :can_change_team_members_only_restriction
          alias_method :can_change_team_members_only_restriction?, :can_change_team_members_only_restriction
        
          # Whether the current user can comment on files in this Team Drive.
          # Corresponds to the JSON property `canComment`
          # @return [Boolean]
          attr_accessor :can_comment
          alias_method :can_comment?, :can_comment
        
          # Whether the current user can copy files in this Team Drive.
          # Corresponds to the JSON property `canCopy`
          # @return [Boolean]
          attr_accessor :can_copy
          alias_method :can_copy?, :can_copy
        
          # Whether the current user can delete children from folders in this Team Drive.
          # Corresponds to the JSON property `canDeleteChildren`
          # @return [Boolean]
          attr_accessor :can_delete_children
          alias_method :can_delete_children?, :can_delete_children
        
          # Whether the current user can delete this Team Drive. Attempting to delete the
          # Team Drive may still fail if there are untrashed items inside the Team Drive.
          # Corresponds to the JSON property `canDeleteTeamDrive`
          # @return [Boolean]
          attr_accessor :can_delete_team_drive
          alias_method :can_delete_team_drive?, :can_delete_team_drive
        
          # Whether the current user can download files in this Team Drive.
          # Corresponds to the JSON property `canDownload`
          # @return [Boolean]
          attr_accessor :can_download
          alias_method :can_download?, :can_download
        
          # Whether the current user can edit files in this Team Drive
          # Corresponds to the JSON property `canEdit`
          # @return [Boolean]
          attr_accessor :can_edit
          alias_method :can_edit?, :can_edit
        
          # Whether the current user can list the children of folders in this Team Drive.
          # Corresponds to the JSON property `canListChildren`
          # @return [Boolean]
          attr_accessor :can_list_children
          alias_method :can_list_children?, :can_list_children
        
          # Whether the current user can add members to this Team Drive or remove them or
          # change their role.
          # Corresponds to the JSON property `canManageMembers`
          # @return [Boolean]
          attr_accessor :can_manage_members
          alias_method :can_manage_members?, :can_manage_members
        
          # Whether the current user can read the revisions resource of files in this Team
          # Drive.
          # Corresponds to the JSON property `canReadRevisions`
          # @return [Boolean]
          attr_accessor :can_read_revisions
          alias_method :can_read_revisions?, :can_read_revisions
        
          # Deprecated: Use `canDeleteChildren` or `canTrashChildren` instead.
          # Corresponds to the JSON property `canRemoveChildren`
          # @return [Boolean]
          attr_accessor :can_remove_children
          alias_method :can_remove_children?, :can_remove_children
        
          # Whether the current user can rename files or folders in this Team Drive.
          # Corresponds to the JSON property `canRename`
          # @return [Boolean]
          attr_accessor :can_rename
          alias_method :can_rename?, :can_rename
        
          # Whether the current user can rename this Team Drive.
          # Corresponds to the JSON property `canRenameTeamDrive`
          # @return [Boolean]
          attr_accessor :can_rename_team_drive
          alias_method :can_rename_team_drive?, :can_rename_team_drive
        
          # Whether the current user can reset the Team Drive restrictions to defaults.
          # Corresponds to the JSON property `canResetTeamDriveRestrictions`
          # @return [Boolean]
          attr_accessor :can_reset_team_drive_restrictions
          alias_method :can_reset_team_drive_restrictions?, :can_reset_team_drive_restrictions
        
          # Whether the current user can share files or folders in this Team Drive.
          # Corresponds to the JSON property `canShare`
          # @return [Boolean]
          attr_accessor :can_share
          alias_method :can_share?, :can_share
        
          # Whether the current user can trash children from folders in this Team Drive.
          # Corresponds to the JSON property `canTrashChildren`
          # @return [Boolean]
          attr_accessor :can_trash_children
          alias_method :can_trash_children?, :can_trash_children
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @can_add_children = args[:can_add_children] if args.key?(:can_add_children)
            @can_change_copy_requires_writer_permission_restriction = args[:can_change_copy_requires_writer_permission_restriction] if args.key?(:can_change_copy_requires_writer_permission_restriction)
            @can_change_domain_users_only_restriction = args[:can_change_domain_users_only_restriction] if args.key?(:can_change_domain_users_only_restriction)
            @can_change_sharing_folders_requires_organizer_permission_restriction = args[:can_change_sharing_folders_requires_organizer_permission_restriction] if args.key?(:can_change_sharing_folders_requires_organizer_permission_restriction)
            @can_change_team_drive_background = args[:can_change_team_drive_background] if args.key?(:can_change_team_drive_background)
            @can_change_team_members_only_restriction = args[:can_change_team_members_only_restriction] if args.key?(:can_change_team_members_only_restriction)
            @can_comment = args[:can_comment] if args.key?(:can_comment)
            @can_copy = args[:can_copy] if args.key?(:can_copy)
            @can_delete_children = args[:can_delete_children] if args.key?(:can_delete_children)
            @can_delete_team_drive = args[:can_delete_team_drive] if args.key?(:can_delete_team_drive)
            @can_download = args[:can_download] if args.key?(:can_download)
            @can_edit = args[:can_edit] if args.key?(:can_edit)
            @can_list_children = args[:can_list_children] if args.key?(:can_list_children)
            @can_manage_members = args[:can_manage_members] if args.key?(:can_manage_members)
            @can_read_revisions = args[:can_read_revisions] if args.key?(:can_read_revisions)
            @can_remove_children = args[:can_remove_children] if args.key?(:can_remove_children)
            @can_rename = args[:can_rename] if args.key?(:can_rename)
            @can_rename_team_drive = args[:can_rename_team_drive] if args.key?(:can_rename_team_drive)
            @can_reset_team_drive_restrictions = args[:can_reset_team_drive_restrictions] if args.key?(:can_reset_team_drive_restrictions)
            @can_share = args[:can_share] if args.key?(:can_share)
            @can_trash_children = args[:can_trash_children] if args.key?(:can_trash_children)
          end
        end
        
        # A set of restrictions that apply to this Team Drive or items inside this Team
        # Drive.
        class Restrictions
          include Google::Apis::Core::Hashable
        
          # Whether administrative privileges on this Team Drive are required to modify
          # restrictions.
          # Corresponds to the JSON property `adminManagedRestrictions`
          # @return [Boolean]
          attr_accessor :admin_managed_restrictions
          alias_method :admin_managed_restrictions?, :admin_managed_restrictions
        
          # Whether the options to copy, print, or download files inside this Team Drive,
          # should be disabled for readers and commenters. When this restriction is set to
          # `true`, it will override the similarly named field to `true` for any file
          # inside this Team Drive.
          # Corresponds to the JSON property `copyRequiresWriterPermission`
          # @return [Boolean]
          attr_accessor :copy_requires_writer_permission
          alias_method :copy_requires_writer_permission?, :copy_requires_writer_permission
        
          # Whether access to this Team Drive and items inside this Team Drive is
          # restricted to users of the domain to which this Team Drive belongs. This
          # restriction may be overridden by other sharing policies controlled outside of
          # this Team Drive.
          # Corresponds to the JSON property `domainUsersOnly`
          # @return [Boolean]
          attr_accessor :domain_users_only
          alias_method :domain_users_only?, :domain_users_only
        
          # If true, only users with the organizer role can share folders. If false, users
          # with either the organizer role or the file organizer role can share folders.
          # Corresponds to the JSON property `sharingFoldersRequiresOrganizerPermission`
          # @return [Boolean]
          attr_accessor :sharing_folders_requires_organizer_permission
          alias_method :sharing_folders_requires_organizer_permission?, :sharing_folders_requires_organizer_permission
        
          # Whether access to items inside this Team Drive is restricted to members of
          # this Team Drive.
          # Corresponds to the JSON property `teamMembersOnly`
          # @return [Boolean]
          attr_accessor :team_members_only
          alias_method :team_members_only?, :team_members_only
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @admin_managed_restrictions = args[:admin_managed_restrictions] if args.key?(:admin_managed_restrictions)
            @copy_requires_writer_permission = args[:copy_requires_writer_permission] if args.key?(:copy_requires_writer_permission)
            @domain_users_only = args[:domain_users_only] if args.key?(:domain_users_only)
            @sharing_folders_requires_organizer_permission = args[:sharing_folders_requires_organizer_permission] if args.key?(:sharing_folders_requires_organizer_permission)
            @team_members_only = args[:team_members_only] if args.key?(:team_members_only)
          end
        end
      end
      
      # A list of Team Drives.
      class TeamDriveList
        include Google::Apis::Core::Hashable
      
        # The list of Team Drives.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DriveV2::TeamDrive>]
        attr_accessor :items
      
        # This is always `drive#teamDriveList`
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The page token for the next page of Team Drives.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Information about a Drive user.
      class User
        include Google::Apis::Core::Hashable
      
        # Output only. A plain text displayable name for this user.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The email address of the user. This may not be present in certain
        # contexts if the user has not made their email address visible to the requester.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # Output only. Whether this user is the same as the authenticated user for whom
        # the request was made.
        # Corresponds to the JSON property `isAuthenticatedUser`
        # @return [Boolean]
        attr_accessor :is_authenticated_user
        alias_method :is_authenticated_user?, :is_authenticated_user
      
        # Output only. Identifies what kind of resource this is. Value: the fixed string
        # `drive#user`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Output only. The user's ID as visible in Permission resources.
        # Corresponds to the JSON property `permissionId`
        # @return [String]
        attr_accessor :permission_id
      
        # Output only. The user's profile picture.
        # Corresponds to the JSON property `picture`
        # @return [Google::Apis::DriveV2::User::Picture]
        attr_accessor :picture
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email_address = args[:email_address] if args.key?(:email_address)
          @is_authenticated_user = args[:is_authenticated_user] if args.key?(:is_authenticated_user)
          @kind = args[:kind] if args.key?(:kind)
          @permission_id = args[:permission_id] if args.key?(:permission_id)
          @picture = args[:picture] if args.key?(:picture)
        end
        
        # Output only. The user's profile picture.
        class Picture
          include Google::Apis::Core::Hashable
        
          # Output only. A URL that points to a profile picture of this user.
          # Corresponds to the JSON property `url`
          # @return [String]
          attr_accessor :url
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @url = args[:url] if args.key?(:url)
          end
        end
      end
    end
  end
end
