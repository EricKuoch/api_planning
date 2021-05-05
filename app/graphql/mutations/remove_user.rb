module Mutations
  class RemoveUser < BaseMutation
    field :user, Types::UserType, null: false

    # TODO: define arguments
    argument :id, ID, required: true

    # TODO: define resolve method
    def resolve(id:)
      user = User.find(id)
      user.destroy
      { 
        id: id
      }
    end
  end
end
