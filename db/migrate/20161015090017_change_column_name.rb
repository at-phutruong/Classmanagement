class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :schedules, :end, :finish
  end
end
