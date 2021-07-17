module Types
  class PackType < Types::BaseObject
    field :id, ID, null: false
    field :animal_gender, String, null: true
    field :animal_type, String, null: true
    field :name, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :owner_id, Integer, null: true
    
    field :users, [Types::UserType], null: true
    field :user_packs, [Types::UserPackType], null: true
    field :liked_names, [Types::LikedNameType], null: true
  end
end
