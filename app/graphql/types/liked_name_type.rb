module Types
  class LikedNameType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer, null: true
    field :pet_name_id, Integer, null: true
    field :liked, Boolean, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    # field :show_all_liked_names, String, null: true

    
    field :pet_names, [Types::PetNameType], null: true
    
    # def show_all_liked_names
    #   object.pet_name.name 
    # end
  end
end
