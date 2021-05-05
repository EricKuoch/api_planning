module Mutations
  class UpdateUserMutation < BaseMutation
    field :user, Types::UserType, null: false

    # TODO: define arguments
    argument :email, String, required: true do
      description "The email field is a string and required for a new user"
    end

    argument :id, ID, required: true do
      description "ID"
    end
    argument :first_name, String, required: true do
      description "first_name"
    end

    argument :last_name, String, required: true do
      description "last_name"
    end

    argument :password, String, required: true do
      description "password"
    end


    # TODO: define resolve method
    def resolve(id:, email:, first_name:, last_name:, password:)
      user = User.find(id)
      user.update(email: email, first_name: first_name, last_name: last_name, password: password)
      if (user.save)
        {
          user: user,
          errors: []
        } else {
          post: nil,
          errors: [user.errors.full_messages]
        }
      end
    end
  end
end
