class CreateProjectEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :project_events do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :project, null: false, foreign_key: true
      t.integer :event_type
      t.string :body

      t.timestamps
    end
  end
end
