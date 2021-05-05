class Event < ApplicationRecord
  belongs_to :user
  scope :weekly_events, -> { where(event_date: Date.today.at_beginning_of_week..Date.today.at_end_of_week) }
  scope :monthly_events, -> { where(event_date: Date.today.at_beginning_of_month..Date.today.at_end_of_month) }
end
