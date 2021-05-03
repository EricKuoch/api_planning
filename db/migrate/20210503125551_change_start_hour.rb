class ChangeStartHour < ActiveRecord::Migration[6.0]
  def change
    change_column :events, :start_hour, :integer
    change_column :events, :end_hour, :integer
  end
end
