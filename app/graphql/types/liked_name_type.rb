module Types
  class LikedNameType < Types::BaseObject
    field :id, ID, null: false
    field :pack_id, Integer, null: true
    field :pet_name_id, Integer, null: true
    field :liked, Boolean, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
