class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.date :event_date
      t.datetime :start_hour
      t.datetime :end_hour
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
