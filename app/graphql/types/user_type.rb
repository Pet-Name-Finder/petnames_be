module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :liked_names, [Types::LikedNameType], null: true
    field :user_liked_names, [Types::PetNameType], null: true
    field :user_unviewed_names, [Types::PetNameType], null: true


    def user_liked_names
      object.liked_names.where(liked: true).map do |liked_name|
        liked_name.pet_name
      end
    end
    
    def user_unviewed_names
      unviewed_ids = PetName.all.pluck(:id) - object.liked_names.pluck(:pet_name_id)
      unviewed_ids.map do |id|
        PetName.find(id)
      end
    end
  end
end




