module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :create_pet_name, mutation: Mutations::CreatePetName
    field :create_liked_name, mutation: Mutations::CreateLikedName
  end
end
