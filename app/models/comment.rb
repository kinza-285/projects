class Comment < ApplicationRecord
  belongs_to :project
  belongs_to :user
  after_commit { broadcast_append_to "project_#{project_id}"}
  after_save { ProjectEvent.create!(event_type: 2, user: user, project: project, body: body) }
end
