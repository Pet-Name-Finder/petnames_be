module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :liked_names, [Types::LikedNameType], null: true


    def user_liked_names
      object.liked_names.where(liked: true)
    end
    # 
    # def user_not_yet_viewed_names
    #   object.liked_names.where(liked: null)
    # end
  end
end



