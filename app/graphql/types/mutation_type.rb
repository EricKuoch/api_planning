module Types
  class MutationType < Types::BaseObject
    field :authentification_token, mutation: Mutations::AuthentificationToken
    field :remove_user, mutation: Mutations::RemoveUser
    field :update_user_mutation, mutation: Mutations::UpdateUserMutation
    field :create_user_mutation, mutation: Mutations::CreateUserMutation
  end
end
