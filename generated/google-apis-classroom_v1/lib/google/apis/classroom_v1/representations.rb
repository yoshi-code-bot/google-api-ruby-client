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
    module ClassroomV1
      
      class AddOnAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddOnAttachmentStudentSubmission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddOnContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Announcement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Assignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssignmentSubmission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudPubsubTopic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CopyHistory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Course
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CourseAlias
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CourseMaterial
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CourseMaterialSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CourseRosterChangesInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CourseWork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CourseWorkChangesInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CourseWorkMaterial
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Criterion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DriveFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DriveFolder
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EmbedUri
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Feed
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Form
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GeminiGem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GlobalPermission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GradeCategory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GradeHistory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GradebookSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GradingPeriod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GradingPeriodSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Guardian
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuardianInvitation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IndividualStudentsOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Invitation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Level
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Link
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAddOnAttachmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAnnouncementsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCourseAliasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCourseWorkMaterialResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCourseWorkResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCoursesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGuardianInvitationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGuardiansResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInvitationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRubricsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListStudentSubmissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListStudentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTeachersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTopicResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Material
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModifyAnnouncementAssigneesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModifyAttachmentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModifyCourseWorkAssigneesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModifyIndividualStudentsOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultipleChoiceQuestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MultipleChoiceSubmission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Name
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NotebookLmNotebook
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReclaimStudentSubmissionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Registration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReturnStudentSubmissionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Rubric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RubricGrade
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SharedDriveFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShortAnswerSubmission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StateHistory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Student
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StudentContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StudentSubmission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubmissionHistory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Teacher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TeacherContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Topic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TurnInStudentSubmissionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class YouTubeVideo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddOnAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :copy_history, as: 'copyHistory', class: Google::Apis::ClassroomV1::CopyHistory, decorator: Google::Apis::ClassroomV1::CopyHistory::Representation
      
          property :course_id, as: 'courseId'
          property :due_date, as: 'dueDate', class: Google::Apis::ClassroomV1::Date, decorator: Google::Apis::ClassroomV1::Date::Representation
      
          property :due_time, as: 'dueTime', class: Google::Apis::ClassroomV1::TimeOfDay, decorator: Google::Apis::ClassroomV1::TimeOfDay::Representation
      
          property :id, as: 'id'
          property :item_id, as: 'itemId'
          property :max_points, as: 'maxPoints'
          property :post_id, as: 'postId'
          property :student_view_uri, as: 'studentViewUri', class: Google::Apis::ClassroomV1::EmbedUri, decorator: Google::Apis::ClassroomV1::EmbedUri::Representation
      
          property :student_work_review_uri, as: 'studentWorkReviewUri', class: Google::Apis::ClassroomV1::EmbedUri, decorator: Google::Apis::ClassroomV1::EmbedUri::Representation
      
          property :teacher_view_uri, as: 'teacherViewUri', class: Google::Apis::ClassroomV1::EmbedUri, decorator: Google::Apis::ClassroomV1::EmbedUri::Representation
      
          property :title, as: 'title'
        end
      end
      
      class AddOnAttachmentStudentSubmission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :points_earned, as: 'pointsEarned'
          property :post_submission_state, as: 'postSubmissionState'
        end
      end
      
      class AddOnContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :course_id, as: 'courseId'
          property :item_id, as: 'itemId'
          property :post_id, as: 'postId'
          property :student_context, as: 'studentContext', class: Google::Apis::ClassroomV1::StudentContext, decorator: Google::Apis::ClassroomV1::StudentContext::Representation
      
          property :supports_student_work, as: 'supportsStudentWork'
          property :teacher_context, as: 'teacherContext', class: Google::Apis::ClassroomV1::TeacherContext, decorator: Google::Apis::ClassroomV1::TeacherContext::Representation
      
        end
      end
      
      class Announcement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alternate_link, as: 'alternateLink'
          property :assignee_mode, as: 'assigneeMode'
          property :course_id, as: 'courseId'
          property :creation_time, as: 'creationTime'
          property :creator_user_id, as: 'creatorUserId'
          property :id, as: 'id'
          property :individual_students_options, as: 'individualStudentsOptions', class: Google::Apis::ClassroomV1::IndividualStudentsOptions, decorator: Google::Apis::ClassroomV1::IndividualStudentsOptions::Representation
      
          collection :materials, as: 'materials', class: Google::Apis::ClassroomV1::Material, decorator: Google::Apis::ClassroomV1::Material::Representation
      
          property :scheduled_time, as: 'scheduledTime'
          property :state, as: 'state'
          property :text, as: 'text'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Assignment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :student_work_folder, as: 'studentWorkFolder', class: Google::Apis::ClassroomV1::DriveFolder, decorator: Google::Apis::ClassroomV1::DriveFolder::Representation
      
        end
      end
      
      class AssignmentSubmission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attachments, as: 'attachments', class: Google::Apis::ClassroomV1::Attachment, decorator: Google::Apis::ClassroomV1::Attachment::Representation
      
        end
      end
      
      class Attachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :drive_file, as: 'driveFile', class: Google::Apis::ClassroomV1::DriveFile, decorator: Google::Apis::ClassroomV1::DriveFile::Representation
      
          property :form, as: 'form', class: Google::Apis::ClassroomV1::Form, decorator: Google::Apis::ClassroomV1::Form::Representation
      
          property :link, as: 'link', class: Google::Apis::ClassroomV1::Link, decorator: Google::Apis::ClassroomV1::Link::Representation
      
          property :you_tube_video, as: 'youTubeVideo', class: Google::Apis::ClassroomV1::YouTubeVideo, decorator: Google::Apis::ClassroomV1::YouTubeVideo::Representation
      
        end
      end
      
      class CloudPubsubTopic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topic_name, as: 'topicName'
        end
      end
      
      class CopyHistory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attachment_id, as: 'attachmentId'
          property :course_id, as: 'courseId'
          property :item_id, as: 'itemId'
          property :post_id, as: 'postId'
        end
      end
      
      class Course
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alternate_link, as: 'alternateLink'
          property :calendar_id, as: 'calendarId'
          property :course_group_email, as: 'courseGroupEmail'
          collection :course_material_sets, as: 'courseMaterialSets', class: Google::Apis::ClassroomV1::CourseMaterialSet, decorator: Google::Apis::ClassroomV1::CourseMaterialSet::Representation
      
          property :course_state, as: 'courseState'
          property :creation_time, as: 'creationTime'
          property :description, as: 'description'
          property :description_heading, as: 'descriptionHeading'
          property :enrollment_code, as: 'enrollmentCode'
          property :gradebook_settings, as: 'gradebookSettings', class: Google::Apis::ClassroomV1::GradebookSettings, decorator: Google::Apis::ClassroomV1::GradebookSettings::Representation
      
          property :guardians_enabled, as: 'guardiansEnabled'
          property :id, as: 'id'
          property :name, as: 'name'
          property :owner_id, as: 'ownerId'
          property :room, as: 'room'
          property :section, as: 'section'
          property :teacher_folder, as: 'teacherFolder', class: Google::Apis::ClassroomV1::DriveFolder, decorator: Google::Apis::ClassroomV1::DriveFolder::Representation
      
          property :teacher_group_email, as: 'teacherGroupEmail'
          property :update_time, as: 'updateTime'
        end
      end
      
      class CourseAlias
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alias, as: 'alias'
        end
      end
      
      class CourseMaterial
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :drive_file, as: 'driveFile', class: Google::Apis::ClassroomV1::DriveFile, decorator: Google::Apis::ClassroomV1::DriveFile::Representation
      
          property :form, as: 'form', class: Google::Apis::ClassroomV1::Form, decorator: Google::Apis::ClassroomV1::Form::Representation
      
          property :link, as: 'link', class: Google::Apis::ClassroomV1::Link, decorator: Google::Apis::ClassroomV1::Link::Representation
      
          property :you_tube_video, as: 'youTubeVideo', class: Google::Apis::ClassroomV1::YouTubeVideo, decorator: Google::Apis::ClassroomV1::YouTubeVideo::Representation
      
        end
      end
      
      class CourseMaterialSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :materials, as: 'materials', class: Google::Apis::ClassroomV1::CourseMaterial, decorator: Google::Apis::ClassroomV1::CourseMaterial::Representation
      
          property :title, as: 'title'
        end
      end
      
      class CourseRosterChangesInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :course_id, as: 'courseId'
        end
      end
      
      class CourseWork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alternate_link, as: 'alternateLink'
          property :assignee_mode, as: 'assigneeMode'
          property :assignment, as: 'assignment', class: Google::Apis::ClassroomV1::Assignment, decorator: Google::Apis::ClassroomV1::Assignment::Representation
      
          property :associated_with_developer, as: 'associatedWithDeveloper'
          property :course_id, as: 'courseId'
          property :creation_time, as: 'creationTime'
          property :creator_user_id, as: 'creatorUserId'
          property :description, as: 'description'
          property :due_date, as: 'dueDate', class: Google::Apis::ClassroomV1::Date, decorator: Google::Apis::ClassroomV1::Date::Representation
      
          property :due_time, as: 'dueTime', class: Google::Apis::ClassroomV1::TimeOfDay, decorator: Google::Apis::ClassroomV1::TimeOfDay::Representation
      
          property :grade_category, as: 'gradeCategory', class: Google::Apis::ClassroomV1::GradeCategory, decorator: Google::Apis::ClassroomV1::GradeCategory::Representation
      
          property :grading_period_id, as: 'gradingPeriodId'
          property :id, as: 'id'
          property :individual_students_options, as: 'individualStudentsOptions', class: Google::Apis::ClassroomV1::IndividualStudentsOptions, decorator: Google::Apis::ClassroomV1::IndividualStudentsOptions::Representation
      
          collection :materials, as: 'materials', class: Google::Apis::ClassroomV1::Material, decorator: Google::Apis::ClassroomV1::Material::Representation
      
          property :max_points, as: 'maxPoints'
          property :multiple_choice_question, as: 'multipleChoiceQuestion', class: Google::Apis::ClassroomV1::MultipleChoiceQuestion, decorator: Google::Apis::ClassroomV1::MultipleChoiceQuestion::Representation
      
          property :scheduled_time, as: 'scheduledTime'
          property :state, as: 'state'
          property :submission_modification_mode, as: 'submissionModificationMode'
          property :title, as: 'title'
          property :topic_id, as: 'topicId'
          property :update_time, as: 'updateTime'
          property :work_type, as: 'workType'
        end
      end
      
      class CourseWorkChangesInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :course_id, as: 'courseId'
        end
      end
      
      class CourseWorkMaterial
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alternate_link, as: 'alternateLink'
          property :assignee_mode, as: 'assigneeMode'
          property :course_id, as: 'courseId'
          property :creation_time, as: 'creationTime'
          property :creator_user_id, as: 'creatorUserId'
          property :description, as: 'description'
          property :id, as: 'id'
          property :individual_students_options, as: 'individualStudentsOptions', class: Google::Apis::ClassroomV1::IndividualStudentsOptions, decorator: Google::Apis::ClassroomV1::IndividualStudentsOptions::Representation
      
          collection :materials, as: 'materials', class: Google::Apis::ClassroomV1::Material, decorator: Google::Apis::ClassroomV1::Material::Representation
      
          property :scheduled_time, as: 'scheduledTime'
          property :state, as: 'state'
          property :title, as: 'title'
          property :topic_id, as: 'topicId'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Criterion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :id, as: 'id'
          collection :levels, as: 'levels', class: Google::Apis::ClassroomV1::Level, decorator: Google::Apis::ClassroomV1::Level::Representation
      
          property :title, as: 'title'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class DriveFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alternate_link, as: 'alternateLink'
          property :id, as: 'id'
          property :thumbnail_url, as: 'thumbnailUrl'
          property :title, as: 'title'
        end
      end
      
      class DriveFolder
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alternate_link, as: 'alternateLink'
          property :id, as: 'id'
          property :title, as: 'title'
        end
      end
      
      class EmbedUri
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Feed
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :course_roster_changes_info, as: 'courseRosterChangesInfo', class: Google::Apis::ClassroomV1::CourseRosterChangesInfo, decorator: Google::Apis::ClassroomV1::CourseRosterChangesInfo::Representation
      
          property :course_work_changes_info, as: 'courseWorkChangesInfo', class: Google::Apis::ClassroomV1::CourseWorkChangesInfo, decorator: Google::Apis::ClassroomV1::CourseWorkChangesInfo::Representation
      
          property :feed_type, as: 'feedType'
        end
      end
      
      class Form
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :form_url, as: 'formUrl'
          property :response_url, as: 'responseUrl'
          property :thumbnail_url, as: 'thumbnailUrl'
          property :title, as: 'title'
        end
      end
      
      class GeminiGem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :title, as: 'title'
          property :url, as: 'url'
        end
      end
      
      class GlobalPermission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :permission, as: 'permission'
        end
      end
      
      class GradeCategory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_grade_denominator, as: 'defaultGradeDenominator'
          property :id, as: 'id'
          property :name, as: 'name'
          property :weight, as: 'weight'
        end
      end
      
      class GradeHistory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :actor_user_id, as: 'actorUserId'
          property :grade_change_type, as: 'gradeChangeType'
          property :grade_timestamp, as: 'gradeTimestamp'
          property :max_points, as: 'maxPoints'
          property :points_earned, as: 'pointsEarned'
        end
      end
      
      class GradebookSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :calculation_type, as: 'calculationType'
          property :display_setting, as: 'displaySetting'
          collection :grade_categories, as: 'gradeCategories', class: Google::Apis::ClassroomV1::GradeCategory, decorator: Google::Apis::ClassroomV1::GradeCategory::Representation
      
        end
      end
      
      class GradingPeriod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', class: Google::Apis::ClassroomV1::Date, decorator: Google::Apis::ClassroomV1::Date::Representation
      
          property :id, as: 'id'
          property :start_date, as: 'startDate', class: Google::Apis::ClassroomV1::Date, decorator: Google::Apis::ClassroomV1::Date::Representation
      
          property :title, as: 'title'
        end
      end
      
      class GradingPeriodSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apply_to_existing_coursework, as: 'applyToExistingCoursework'
          collection :grading_periods, as: 'gradingPeriods', class: Google::Apis::ClassroomV1::GradingPeriod, decorator: Google::Apis::ClassroomV1::GradingPeriod::Representation
      
        end
      end
      
      class Guardian
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :guardian_id, as: 'guardianId'
          property :guardian_profile, as: 'guardianProfile', class: Google::Apis::ClassroomV1::UserProfile, decorator: Google::Apis::ClassroomV1::UserProfile::Representation
      
          property :invited_email_address, as: 'invitedEmailAddress'
          property :student_id, as: 'studentId'
        end
      end
      
      class GuardianInvitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_time, as: 'creationTime'
          property :invitation_id, as: 'invitationId'
          property :invited_email_address, as: 'invitedEmailAddress'
          property :state, as: 'state'
          property :student_id, as: 'studentId'
        end
      end
      
      class IndividualStudentsOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :student_ids, as: 'studentIds'
        end
      end
      
      class Invitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :course_id, as: 'courseId'
          property :id, as: 'id'
          property :role, as: 'role'
          property :user_id, as: 'userId'
        end
      end
      
      class Level
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :id, as: 'id'
          property :points, as: 'points'
          property :title, as: 'title'
        end
      end
      
      class Link
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :thumbnail_url, as: 'thumbnailUrl'
          property :title, as: 'title'
          property :url, as: 'url'
        end
      end
      
      class ListAddOnAttachmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :add_on_attachments, as: 'addOnAttachments', class: Google::Apis::ClassroomV1::AddOnAttachment, decorator: Google::Apis::ClassroomV1::AddOnAttachment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAnnouncementsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :announcements, as: 'announcements', class: Google::Apis::ClassroomV1::Announcement, decorator: Google::Apis::ClassroomV1::Announcement::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCourseAliasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aliases, as: 'aliases', class: Google::Apis::ClassroomV1::CourseAlias, decorator: Google::Apis::ClassroomV1::CourseAlias::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCourseWorkMaterialResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :course_work_material, as: 'courseWorkMaterial', class: Google::Apis::ClassroomV1::CourseWorkMaterial, decorator: Google::Apis::ClassroomV1::CourseWorkMaterial::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCourseWorkResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :course_work, as: 'courseWork', class: Google::Apis::ClassroomV1::CourseWork, decorator: Google::Apis::ClassroomV1::CourseWork::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCoursesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :courses, as: 'courses', class: Google::Apis::ClassroomV1::Course, decorator: Google::Apis::ClassroomV1::Course::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListGuardianInvitationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :guardian_invitations, as: 'guardianInvitations', class: Google::Apis::ClassroomV1::GuardianInvitation, decorator: Google::Apis::ClassroomV1::GuardianInvitation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListGuardiansResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :guardians, as: 'guardians', class: Google::Apis::ClassroomV1::Guardian, decorator: Google::Apis::ClassroomV1::Guardian::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListInvitationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :invitations, as: 'invitations', class: Google::Apis::ClassroomV1::Invitation, decorator: Google::Apis::ClassroomV1::Invitation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListRubricsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rubrics, as: 'rubrics', class: Google::Apis::ClassroomV1::Rubric, decorator: Google::Apis::ClassroomV1::Rubric::Representation
      
        end
      end
      
      class ListStudentSubmissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :student_submissions, as: 'studentSubmissions', class: Google::Apis::ClassroomV1::StudentSubmission, decorator: Google::Apis::ClassroomV1::StudentSubmission::Representation
      
        end
      end
      
      class ListStudentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :students, as: 'students', class: Google::Apis::ClassroomV1::Student, decorator: Google::Apis::ClassroomV1::Student::Representation
      
        end
      end
      
      class ListTeachersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :teachers, as: 'teachers', class: Google::Apis::ClassroomV1::Teacher, decorator: Google::Apis::ClassroomV1::Teacher::Representation
      
        end
      end
      
      class ListTopicResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :topic, as: 'topic', class: Google::Apis::ClassroomV1::Topic, decorator: Google::Apis::ClassroomV1::Topic::Representation
      
        end
      end
      
      class Material
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :drive_file, as: 'driveFile', class: Google::Apis::ClassroomV1::SharedDriveFile, decorator: Google::Apis::ClassroomV1::SharedDriveFile::Representation
      
          property :form, as: 'form', class: Google::Apis::ClassroomV1::Form, decorator: Google::Apis::ClassroomV1::Form::Representation
      
          property :gem_prop, as: 'gem', class: Google::Apis::ClassroomV1::GeminiGem, decorator: Google::Apis::ClassroomV1::GeminiGem::Representation
      
          property :link, as: 'link', class: Google::Apis::ClassroomV1::Link, decorator: Google::Apis::ClassroomV1::Link::Representation
      
          property :notebook, as: 'notebook', class: Google::Apis::ClassroomV1::NotebookLmNotebook, decorator: Google::Apis::ClassroomV1::NotebookLmNotebook::Representation
      
          property :youtube_video, as: 'youtubeVideo', class: Google::Apis::ClassroomV1::YouTubeVideo, decorator: Google::Apis::ClassroomV1::YouTubeVideo::Representation
      
        end
      end
      
      class ModifyAnnouncementAssigneesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assignee_mode, as: 'assigneeMode'
          property :modify_individual_students_options, as: 'modifyIndividualStudentsOptions', class: Google::Apis::ClassroomV1::ModifyIndividualStudentsOptions, decorator: Google::Apis::ClassroomV1::ModifyIndividualStudentsOptions::Representation
      
        end
      end
      
      class ModifyAttachmentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :add_attachments, as: 'addAttachments', class: Google::Apis::ClassroomV1::Attachment, decorator: Google::Apis::ClassroomV1::Attachment::Representation
      
        end
      end
      
      class ModifyCourseWorkAssigneesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assignee_mode, as: 'assigneeMode'
          property :modify_individual_students_options, as: 'modifyIndividualStudentsOptions', class: Google::Apis::ClassroomV1::ModifyIndividualStudentsOptions, decorator: Google::Apis::ClassroomV1::ModifyIndividualStudentsOptions::Representation
      
        end
      end
      
      class ModifyIndividualStudentsOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :add_student_ids, as: 'addStudentIds'
          collection :remove_student_ids, as: 'removeStudentIds'
        end
      end
      
      class MultipleChoiceQuestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :choices, as: 'choices'
        end
      end
      
      class MultipleChoiceSubmission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer'
        end
      end
      
      class Name
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :family_name, as: 'familyName'
          property :full_name, as: 'fullName'
          property :given_name, as: 'givenName'
        end
      end
      
      class NotebookLmNotebook
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :title, as: 'title'
          property :url, as: 'url'
        end
      end
      
      class ReclaimStudentSubmissionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Registration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_pubsub_topic, as: 'cloudPubsubTopic', class: Google::Apis::ClassroomV1::CloudPubsubTopic, decorator: Google::Apis::ClassroomV1::CloudPubsubTopic::Representation
      
          property :expiry_time, as: 'expiryTime'
          property :feed, as: 'feed', class: Google::Apis::ClassroomV1::Feed, decorator: Google::Apis::ClassroomV1::Feed::Representation
      
          property :registration_id, as: 'registrationId'
        end
      end
      
      class ReturnStudentSubmissionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Rubric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :course_id, as: 'courseId'
          property :course_work_id, as: 'courseWorkId'
          property :creation_time, as: 'creationTime'
          collection :criteria, as: 'criteria', class: Google::Apis::ClassroomV1::Criterion, decorator: Google::Apis::ClassroomV1::Criterion::Representation
      
          property :id, as: 'id'
          property :source_spreadsheet_id, as: 'sourceSpreadsheetId'
          property :update_time, as: 'updateTime'
        end
      end
      
      class RubricGrade
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :criterion_id, as: 'criterionId'
          property :level_id, as: 'levelId'
          property :points, as: 'points'
        end
      end
      
      class SharedDriveFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :drive_file, as: 'driveFile', class: Google::Apis::ClassroomV1::DriveFile, decorator: Google::Apis::ClassroomV1::DriveFile::Representation
      
          property :share_mode, as: 'shareMode'
        end
      end
      
      class ShortAnswerSubmission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer'
        end
      end
      
      class StateHistory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :actor_user_id, as: 'actorUserId'
          property :state, as: 'state'
          property :state_timestamp, as: 'stateTimestamp'
        end
      end
      
      class Student
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :course_id, as: 'courseId'
          property :profile, as: 'profile', class: Google::Apis::ClassroomV1::UserProfile, decorator: Google::Apis::ClassroomV1::UserProfile::Representation
      
          property :student_work_folder, as: 'studentWorkFolder', class: Google::Apis::ClassroomV1::DriveFolder, decorator: Google::Apis::ClassroomV1::DriveFolder::Representation
      
          property :user_id, as: 'userId'
        end
      end
      
      class StudentContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :submission_id, as: 'submissionId'
        end
      end
      
      class StudentSubmission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alternate_link, as: 'alternateLink'
          property :assigned_grade, as: 'assignedGrade'
          hash :assigned_rubric_grades, as: 'assignedRubricGrades', class: Google::Apis::ClassroomV1::RubricGrade, decorator: Google::Apis::ClassroomV1::RubricGrade::Representation
      
          property :assignment_submission, as: 'assignmentSubmission', class: Google::Apis::ClassroomV1::AssignmentSubmission, decorator: Google::Apis::ClassroomV1::AssignmentSubmission::Representation
      
          property :associated_with_developer, as: 'associatedWithDeveloper'
          property :course_id, as: 'courseId'
          property :course_work_id, as: 'courseWorkId'
          property :course_work_type, as: 'courseWorkType'
          property :creation_time, as: 'creationTime'
          property :draft_grade, as: 'draftGrade'
          hash :draft_rubric_grades, as: 'draftRubricGrades', class: Google::Apis::ClassroomV1::RubricGrade, decorator: Google::Apis::ClassroomV1::RubricGrade::Representation
      
          property :id, as: 'id'
          property :late, as: 'late'
          property :multiple_choice_submission, as: 'multipleChoiceSubmission', class: Google::Apis::ClassroomV1::MultipleChoiceSubmission, decorator: Google::Apis::ClassroomV1::MultipleChoiceSubmission::Representation
      
          property :short_answer_submission, as: 'shortAnswerSubmission', class: Google::Apis::ClassroomV1::ShortAnswerSubmission, decorator: Google::Apis::ClassroomV1::ShortAnswerSubmission::Representation
      
          property :state, as: 'state'
          collection :submission_history, as: 'submissionHistory', class: Google::Apis::ClassroomV1::SubmissionHistory, decorator: Google::Apis::ClassroomV1::SubmissionHistory::Representation
      
          property :update_time, as: 'updateTime'
          property :user_id, as: 'userId'
        end
      end
      
      class SubmissionHistory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :grade_history, as: 'gradeHistory', class: Google::Apis::ClassroomV1::GradeHistory, decorator: Google::Apis::ClassroomV1::GradeHistory::Representation
      
          property :state_history, as: 'stateHistory', class: Google::Apis::ClassroomV1::StateHistory, decorator: Google::Apis::ClassroomV1::StateHistory::Representation
      
        end
      end
      
      class Teacher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :course_id, as: 'courseId'
          property :profile, as: 'profile', class: Google::Apis::ClassroomV1::UserProfile, decorator: Google::Apis::ClassroomV1::UserProfile::Representation
      
          property :user_id, as: 'userId'
        end
      end
      
      class TeacherContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class TimeOfDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
        end
      end
      
      class Topic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :course_id, as: 'courseId'
          property :name, as: 'name'
          property :topic_id, as: 'topicId'
          property :update_time, as: 'updateTime'
        end
      end
      
      class TurnInStudentSubmissionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UserProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email_address, as: 'emailAddress'
          property :id, as: 'id'
          property :name, as: 'name', class: Google::Apis::ClassroomV1::Name, decorator: Google::Apis::ClassroomV1::Name::Representation
      
          collection :permissions, as: 'permissions', class: Google::Apis::ClassroomV1::GlobalPermission, decorator: Google::Apis::ClassroomV1::GlobalPermission::Representation
      
          property :photo_url, as: 'photoUrl'
          property :verified_teacher, as: 'verifiedTeacher'
        end
      end
      
      class YouTubeVideo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alternate_link, as: 'alternateLink'
          property :id, as: 'id'
          property :thumbnail_url, as: 'thumbnailUrl'
          property :title, as: 'title'
        end
      end
    end
  end
end
