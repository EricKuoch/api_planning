module Mutations
  class CreateUserMutation < BaseMutation
    # TODO: define return fields
    field :user, Types::UserType, null: false

    # TODO: define arguments
    argument :email, String, required: true do
      description "The email field is a string and required for a new user"
    end
    argument :first_name, String, required: true do
      description "The email field is a string and required for a new user"
    end

    argument :last_name, String, required: true do
      description "The email field is a string and required for a new user"
    end

    argument :password, String, required: true do
      description "The email field is a string and required for a new user"
    end

    # TODO: define resolve method
    def resolve(email:, first_name:, last_name:, password:)
      @user = User.new(email: email, first_name: first_name, last_name: last_name, password: password)
      if (@user.save)
        {
          user: @user,
          errors: []
        } else {
          post: nil,
          errors: [@user.errors.full_messages]
        }
      end
    end
  end
end
