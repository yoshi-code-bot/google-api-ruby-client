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
    module TasksV1
      # Google Tasks API
      #
      # The Google Tasks API lets you manage your tasks and task lists.
      #
      # @example
      #    require 'google/apis/tasks_v1'
      #
      #    Tasks = Google::Apis::TasksV1 # Alias the module
      #    service = Tasks::TasksService.new
      #
      # @see https://developers.google.com/workspace/tasks/
      class TasksService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://tasks.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-tasks_v1',
                client_version: Google::Apis::TasksV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Deletes the authenticated user's specified task list. If the list contains
        # assigned tasks, both the assigned tasks and the original tasks in the
        # assignment surface (Docs, Chat Spaces) are deleted.
        # @param [String] tasklist
        #   Task list identifier.
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
        def delete_tasklist(tasklist, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'tasks/v1/users/@me/lists/{tasklist}', options)
          command.params['tasklist'] = tasklist unless tasklist.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the authenticated user's specified task list.
        # @param [String] tasklist
        #   Task list identifier.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TasksV1::TaskList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TasksV1::TaskList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_tasklist(tasklist, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tasks/v1/users/@me/lists/{tasklist}', options)
          command.response_representation = Google::Apis::TasksV1::TaskList::Representation
          command.response_class = Google::Apis::TasksV1::TaskList
          command.params['tasklist'] = tasklist unless tasklist.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new task list and adds it to the authenticated user's task lists. A
        # user can have up to 2000 lists at a time.
        # @param [Google::Apis::TasksV1::TaskList] task_list_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TasksV1::TaskList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TasksV1::TaskList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_tasklist(task_list_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tasks/v1/users/@me/lists', options)
          command.request_representation = Google::Apis::TasksV1::TaskList::Representation
          command.request_object = task_list_object
          command.response_representation = Google::Apis::TasksV1::TaskList::Representation
          command.response_class = Google::Apis::TasksV1::TaskList
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all the authenticated user's task lists. A user can have up to 2000
        # lists at a time.
        # @param [Fixnum] max_results
        #   Maximum number of task lists returned on one page. Optional. The default is
        #   1000 (max allowed: 1000).
        # @param [String] page_token
        #   Token specifying the result page to return. Optional.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TasksV1::TaskLists] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TasksV1::TaskLists]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_tasklists(max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tasks/v1/users/@me/lists', options)
          command.response_representation = Google::Apis::TasksV1::TaskLists::Representation
          command.response_class = Google::Apis::TasksV1::TaskLists
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the authenticated user's specified task list. This method supports
        # patch semantics.
        # @param [String] tasklist
        #   Task list identifier.
        # @param [Google::Apis::TasksV1::TaskList] task_list_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TasksV1::TaskList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TasksV1::TaskList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_tasklist(tasklist, task_list_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'tasks/v1/users/@me/lists/{tasklist}', options)
          command.request_representation = Google::Apis::TasksV1::TaskList::Representation
          command.request_object = task_list_object
          command.response_representation = Google::Apis::TasksV1::TaskList::Representation
          command.response_class = Google::Apis::TasksV1::TaskList
          command.params['tasklist'] = tasklist unless tasklist.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the authenticated user's specified task list.
        # @param [String] tasklist
        #   Task list identifier.
        # @param [Google::Apis::TasksV1::TaskList] task_list_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TasksV1::TaskList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TasksV1::TaskList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_tasklist(tasklist, task_list_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'tasks/v1/users/@me/lists/{tasklist}', options)
          command.request_representation = Google::Apis::TasksV1::TaskList::Representation
          command.request_object = task_list_object
          command.response_representation = Google::Apis::TasksV1::TaskList::Representation
          command.response_class = Google::Apis::TasksV1::TaskList
          command.params['tasklist'] = tasklist unless tasklist.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Clears all completed tasks from the specified task list. The affected tasks
        # will be marked as 'hidden' and no longer be returned by default when
        # retrieving all tasks for a task list.
        # @param [String] tasklist
        #   Task list identifier.
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
        def clear_task(tasklist, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tasks/v1/lists/{tasklist}/clear', options)
          command.params['tasklist'] = tasklist unless tasklist.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified task from the task list. If the task is assigned, both
        # the assigned task and the original task (in Docs, Chat Spaces) are deleted. To
        # delete the assigned task only, navigate to the assignment surface and unassign
        # the task from there.
        # @param [String] tasklist
        #   Task list identifier.
        # @param [String] task
        #   Task identifier.
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
        def delete_task(tasklist, task, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'tasks/v1/lists/{tasklist}/tasks/{task}', options)
          command.params['tasklist'] = tasklist unless tasklist.nil?
          command.params['task'] = task unless task.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified task.
        # @param [String] tasklist
        #   Task list identifier.
        # @param [String] task
        #   Task identifier.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TasksV1::Task] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TasksV1::Task]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_task(tasklist, task, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tasks/v1/lists/{tasklist}/tasks/{task}', options)
          command.response_representation = Google::Apis::TasksV1::Task::Representation
          command.response_class = Google::Apis::TasksV1::Task
          command.params['tasklist'] = tasklist unless tasklist.nil?
          command.params['task'] = task unless task.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new task on the specified task list. Tasks assigned from Docs or
        # Chat Spaces cannot be inserted from Tasks Public API; they can only be created
        # by assigning them from Docs or Chat Spaces. A user can have up to 20,000 non-
        # hidden tasks per list and up to 100,000 tasks in total at a time.
        # @param [String] tasklist
        #   Task list identifier.
        # @param [Google::Apis::TasksV1::Task] task_object
        # @param [String] parent
        #   Parent task identifier. If the task is created at the top level, this
        #   parameter is omitted. An assigned task cannot be a parent task, nor can it
        #   have a parent. Setting the parent to an assigned task results in failure of
        #   the request. Optional.
        # @param [String] previous
        #   Previous sibling task identifier. If the task is created at the first position
        #   among its siblings, this parameter is omitted. Optional.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TasksV1::Task] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TasksV1::Task]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_task(tasklist, task_object = nil, parent: nil, previous: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tasks/v1/lists/{tasklist}/tasks', options)
          command.request_representation = Google::Apis::TasksV1::Task::Representation
          command.request_object = task_object
          command.response_representation = Google::Apis::TasksV1::Task::Representation
          command.response_class = Google::Apis::TasksV1::Task
          command.params['tasklist'] = tasklist unless tasklist.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['previous'] = previous unless previous.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all tasks in the specified task list. Doesn't return assigned tasks by
        # default (from Docs, Chat Spaces). A user can have up to 20,000 non-hidden
        # tasks per list and up to 100,000 tasks in total at a time.
        # @param [String] tasklist
        #   Task list identifier.
        # @param [String] completed_max
        #   Upper bound for a task's completion date (as a RFC 3339 timestamp) to filter
        #   by. Optional. The default is not to filter by completion date.
        # @param [String] completed_min
        #   Lower bound for a task's completion date (as a RFC 3339 timestamp) to filter
        #   by. Optional. The default is not to filter by completion date.
        # @param [String] due_max
        #   Upper bound for a task's due date (as a RFC 3339 timestamp) to filter by.
        #   Optional. The default is not to filter by due date.
        # @param [String] due_min
        #   Lower bound for a task's due date (as a RFC 3339 timestamp) to filter by.
        #   Optional. The default is not to filter by due date.
        # @param [Fixnum] max_results
        #   Maximum number of tasks returned on one page. Optional. The default is 20 (max
        #   allowed: 100).
        # @param [String] page_token
        #   Token specifying the result page to return. Optional.
        # @param [Boolean] show_assigned
        #   Optional. Flag indicating whether tasks assigned to the current user are
        #   returned in the result. Optional. The default is False.
        # @param [Boolean] show_completed
        #   Flag indicating whether completed tasks are returned in the result. Note that
        #   showHidden must also be True to show tasks completed in first party clients,
        #   such as the web UI and Google's mobile apps. Optional. The default is True.
        # @param [Boolean] show_deleted
        #   Flag indicating whether deleted tasks are returned in the result. Optional.
        #   The default is False.
        # @param [Boolean] show_hidden
        #   Flag indicating whether hidden tasks are returned in the result. Optional. The
        #   default is False.
        # @param [String] updated_min
        #   Lower bound for a task's last modification time (as a RFC 3339 timestamp) to
        #   filter by. Optional. The default is not to filter by last modification time.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TasksV1::Tasks] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TasksV1::Tasks]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_tasks(tasklist, completed_max: nil, completed_min: nil, due_max: nil, due_min: nil, max_results: nil, page_token: nil, show_assigned: nil, show_completed: nil, show_deleted: nil, show_hidden: nil, updated_min: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'tasks/v1/lists/{tasklist}/tasks', options)
          command.response_representation = Google::Apis::TasksV1::Tasks::Representation
          command.response_class = Google::Apis::TasksV1::Tasks
          command.params['tasklist'] = tasklist unless tasklist.nil?
          command.query['completedMax'] = completed_max unless completed_max.nil?
          command.query['completedMin'] = completed_min unless completed_min.nil?
          command.query['dueMax'] = due_max unless due_max.nil?
          command.query['dueMin'] = due_min unless due_min.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['showAssigned'] = show_assigned unless show_assigned.nil?
          command.query['showCompleted'] = show_completed unless show_completed.nil?
          command.query['showDeleted'] = show_deleted unless show_deleted.nil?
          command.query['showHidden'] = show_hidden unless show_hidden.nil?
          command.query['updatedMin'] = updated_min unless updated_min.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Moves the specified task to another position in the destination task list. If
        # the destination list is not specified, the task is moved within its current
        # list. This can include putting it as a child task under a new parent and/or
        # move it to a different position among its sibling tasks. A user can have up to
        # 2,000 subtasks per task.
        # @param [String] tasklist
        #   Task list identifier.
        # @param [String] task
        #   Task identifier.
        # @param [String] destination_tasklist
        #   Optional. Destination task list identifier. If set, the task is moved from
        #   tasklist to the destinationTasklist list. Otherwise the task is moved within
        #   its current list. Recurrent tasks cannot currently be moved between lists.
        # @param [String] parent
        #   Optional. New parent task identifier. If the task is moved to the top level,
        #   this parameter is omitted. The task set as parent must exist in the task list
        #   and can not be hidden. Exceptions: 1. Assigned and repeating tasks cannot be
        #   set as parent tasks (have subtasks), or be moved under a parent task (become
        #   subtasks). 2. Tasks that are both completed and hidden cannot be nested, so
        #   the parent field must be empty.
        # @param [String] previous
        #   Optional. New previous sibling task identifier. If the task is moved to the
        #   first position among its siblings, this parameter is omitted. The task set as
        #   previous must exist in the task list and can not be hidden. Exceptions: 1.
        #   Tasks that are both completed and hidden can only be moved to position 0, so
        #   the previous field must be empty.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TasksV1::Task] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TasksV1::Task]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def move_task(tasklist, task, destination_tasklist: nil, parent: nil, previous: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'tasks/v1/lists/{tasklist}/tasks/{task}/move', options)
          command.response_representation = Google::Apis::TasksV1::Task::Representation
          command.response_class = Google::Apis::TasksV1::Task
          command.params['tasklist'] = tasklist unless tasklist.nil?
          command.params['task'] = task unless task.nil?
          command.query['destinationTasklist'] = destination_tasklist unless destination_tasklist.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['previous'] = previous unless previous.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified task. This method supports patch semantics.
        # @param [String] tasklist
        #   Task list identifier.
        # @param [String] task
        #   Task identifier.
        # @param [Google::Apis::TasksV1::Task] task_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TasksV1::Task] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TasksV1::Task]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_task(tasklist, task, task_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'tasks/v1/lists/{tasklist}/tasks/{task}', options)
          command.request_representation = Google::Apis::TasksV1::Task::Representation
          command.request_object = task_object
          command.response_representation = Google::Apis::TasksV1::Task::Representation
          command.response_class = Google::Apis::TasksV1::Task
          command.params['tasklist'] = tasklist unless tasklist.nil?
          command.params['task'] = task unless task.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified task.
        # @param [String] tasklist
        #   Task list identifier.
        # @param [String] task
        #   Task identifier.
        # @param [Google::Apis::TasksV1::Task] task_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TasksV1::Task] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TasksV1::Task]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_task(tasklist, task, task_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'tasks/v1/lists/{tasklist}/tasks/{task}', options)
          command.request_representation = Google::Apis::TasksV1::Task::Representation
          command.request_object = task_object
          command.response_representation = Google::Apis::TasksV1::Task::Representation
          command.response_class = Google::Apis::TasksV1::Task
          command.params['tasklist'] = tasklist unless tasklist.nil?
          command.params['task'] = task unless task.nil?
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
