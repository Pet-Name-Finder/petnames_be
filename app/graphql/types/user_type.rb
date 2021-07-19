module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :liked_names, [Types::LikedNameType], null: true
    field :user_liked_names, [Types::PetNameType], null: true
    field :names_not_yet_viewed, [Types::LikedNameType], null: true


    def user_liked_names
      array = []
      object.liked_names.where(liked: true).each do |liked_name|
        array << liked_name.pet_name
      end
      array
    end
    
    def names_not_yet_viewed
      object.liked_names.where(liked: null)
    end
  end
end



