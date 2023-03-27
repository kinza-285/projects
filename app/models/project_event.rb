class ProjectEvent < ApplicationRecord
  enum event_type: {
    'change status': 1,
    'add comment': 2
  }
  belongs_to :user
  belongs_to :project
end
