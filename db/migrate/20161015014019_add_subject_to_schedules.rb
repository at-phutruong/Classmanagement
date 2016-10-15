class AddSubjectToSchedules < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :subject, :string
  end
end
