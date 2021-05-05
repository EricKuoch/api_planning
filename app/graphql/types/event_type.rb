module Types
  class EventType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :event_date, GraphQL::Types::ISO8601Date, null: true
    field :start_hour, Integer, null: true
    field :end_hour, Integer, null: true
    field :user_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
