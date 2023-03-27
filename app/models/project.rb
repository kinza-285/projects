class Project < ApplicationRecord
  enum status: {
    'normal': 1,
    'active': 2,
    'completed': 3
  }
  has_many :comments
  has_many :project_events
end
