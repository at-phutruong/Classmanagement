class ChangeDataTypeForStartEndColumn < ActiveRecord::Migration[5.0]
  def change
    change_column :schedules, :start, :string
    change_column :schedules, :end, :string
  end
end
