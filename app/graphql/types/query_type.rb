module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :events,
    [Types::EventType],
    null: false,
    description: "Returns a list of events from current user"

    field :users,
    [Types::UserType],
    null: false,
    description: "Returns a list of users"

    field :weekly_planning,
    [Types::EventType],
    null: false,
    description: "Returns weekly current user planning"

    field :monthly_planning,
    [Types::EventType],
    null: false,
    description: "Returns monthly current user planning"

    field :events_connection,
    Types::EventType.connection_type,
    null: false,
    description: "Returns monthly current user planning"

    def events
      Event.all
    end

    def events_connection
      Event.all
    end

    def users
      User.all
    end

    def weekly_planning
      current_user.events.weekly_events
    end

    def monthly_planning
      current_user.events.monthly_events
    end

  end
end
